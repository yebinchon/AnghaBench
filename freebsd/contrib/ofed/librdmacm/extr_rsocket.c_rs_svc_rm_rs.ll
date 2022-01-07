; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_svc_rm_rs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_rs_svc_rm_rs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rs_svc = type { i64, i32, i64, i32* }
%struct.rsocket = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rs_svc*, %struct.rsocket*)* @rs_svc_rm_rs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs_svc_rm_rs(%struct.rs_svc* %0, %struct.rsocket* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rs_svc*, align 8
  %5 = alloca %struct.rsocket*, align 8
  %6 = alloca i32, align 4
  store %struct.rs_svc* %0, %struct.rs_svc** %4, align 8
  store %struct.rsocket* %1, %struct.rsocket** %5, align 8
  %7 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %8 = load %struct.rsocket*, %struct.rsocket** %5, align 8
  %9 = call i32 @rs_svc_index(%struct.rs_svc* %7, %struct.rsocket* %8)
  store i32 %9, i32* %6, align 4
  %10 = icmp sge i32 %9, 0
  br i1 %10, label %11, label %56

11:                                               ; preds = %2
  %12 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %13 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %12, i32 0, i32 3
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %16 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %21 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  %26 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %27 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %31 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %28, %34
  %36 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %37 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %40 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %43 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = mul i64 %41, %45
  %47 = add i64 %38, %46
  %48 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %49 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @memcpy(i64 %35, i64 %47, i32 %50)
  %52 = load %struct.rs_svc*, %struct.rs_svc** %4, align 8
  %53 = getelementptr inbounds %struct.rs_svc, %struct.rs_svc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %53, align 8
  store i32 0, i32* %3, align 4
  br label %58

56:                                               ; preds = %2
  %57 = load i32, i32* @EBADF, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @rs_svc_index(%struct.rs_svc*, %struct.rsocket*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
