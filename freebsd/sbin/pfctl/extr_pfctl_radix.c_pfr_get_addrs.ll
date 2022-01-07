; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_get_addrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_radix.c_pfr_get_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_table = type { i32 }
%struct.pfr_addr = type { i32 }
%struct.pfioc_table = type { i32, i32, i32, %struct.pfr_addr*, %struct.pfr_table }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@DIOCRGETADDRS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_get_addrs(%struct.pfr_table* %0, %struct.pfr_addr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfr_table*, align 8
  %7 = alloca %struct.pfr_addr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pfioc_table, align 8
  store %struct.pfr_table* %0, %struct.pfr_table** %6, align 8
  store %struct.pfr_addr* %1, %struct.pfr_addr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.pfr_table*, %struct.pfr_table** %6, align 8
  %12 = icmp eq %struct.pfr_table* %11, null
  br i1 %12, label %27, label %13

13:                                               ; preds = %4
  %14 = load i32*, i32** %8, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %27, label %16

16:                                               ; preds = %13
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.pfr_addr*, %struct.pfr_addr** %7, align 8
  %26 = icmp eq %struct.pfr_addr* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %24, %16, %13, %4
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %52

29:                                               ; preds = %24, %20
  %30 = call i32 @bzero(%struct.pfioc_table* %10, i32 32)
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %10, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %10, i32 0, i32 4
  %34 = load %struct.pfr_table*, %struct.pfr_table** %6, align 8
  %35 = bitcast %struct.pfr_table* %33 to i8*
  %36 = bitcast %struct.pfr_table* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 4 %36, i64 4, i1 false)
  %37 = load %struct.pfr_addr*, %struct.pfr_addr** %7, align 8
  %38 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %10, i32 0, i32 3
  store %struct.pfr_addr* %37, %struct.pfr_addr** %38, align 8
  %39 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %10, i32 0, i32 1
  store i32 4, i32* %39, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %10, i32 0, i32 2
  store i32 %41, i32* %42, align 8
  %43 = load i32, i32* @dev, align 4
  %44 = load i32, i32* @DIOCRGETADDRS, align 4
  %45 = call i64 @ioctl(i32 %43, i32 %44, %struct.pfioc_table* %10)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  br label %52

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.pfioc_table, %struct.pfioc_table* %10, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %47, %27
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @bzero(%struct.pfioc_table*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ioctl(i32, i32, %struct.pfioc_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
