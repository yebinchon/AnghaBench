; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_addr_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_net_help.c_addr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr_in6 = type { i32 }
%struct.sockaddr_in = type { i32 }

@__const.addr_mask.mask = private unnamed_addr constant [8 x i32] [i32 0, i32 128, i32 192, i32 224, i32 240, i32 248, i32 252, i32 254], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @addr_mask(%struct.sockaddr_storage* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sockaddr_storage*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [8 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.sockaddr_storage* %0, %struct.sockaddr_storage** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([8 x i32]* @__const.addr_mask.mask to i8*), i64 32, i1 false)
  %12 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @addr_is_ip6(%struct.sockaddr_storage* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %18 = bitcast %struct.sockaddr_storage* %17 to %struct.sockaddr_in6*
  %19 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %18, i32 0, i32 0
  store i32* %19, i32** %10, align 8
  store i32 128, i32* %9, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %4, align 8
  %22 = bitcast %struct.sockaddr_storage* %21 to %struct.sockaddr_in*
  %23 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %22, i32 0, i32 0
  store i32* %23, i32** %10, align 8
  store i32 32, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %59

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = sdiv i32 %30, 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %43, %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sdiv i32 %35, 8
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %33

46:                                               ; preds = %33
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, 7
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sdiv i32 %53, 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %51
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %46, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @addr_is_ip6(%struct.sockaddr_storage*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
