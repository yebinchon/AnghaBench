; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_scan_free_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_scan.c_wpa_scan_free_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_scan_params = type { i64, i64, i64, %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpa_scan_free_params(%struct.wpa_driver_scan_params* %0) #0 {
  %2 = alloca %struct.wpa_driver_scan_params*, align 8
  %3 = alloca i64, align 8
  store %struct.wpa_driver_scan_params* %0, %struct.wpa_driver_scan_params** %2, align 8
  %4 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %2, align 8
  %5 = icmp eq %struct.wpa_driver_scan_params* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %57

7:                                                ; preds = %1
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %24, %7
  %9 = load i64, i64* %3, align 8
  %10 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %2, align 8
  %11 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ult i64 %9, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %8
  %15 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %2, align 8
  %16 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %15, i32 0, i32 7
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.wpa_driver_scan_params*
  %23 = call i32 @os_free(%struct.wpa_driver_scan_params* %22)
  br label %24

24:                                               ; preds = %14
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %2, align 8
  %29 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.wpa_driver_scan_params*
  %32 = call i32 @os_free(%struct.wpa_driver_scan_params* %31)
  %33 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %2, align 8
  %34 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %33, i32 0, i32 5
  %35 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %34, align 8
  %36 = call i32 @os_free(%struct.wpa_driver_scan_params* %35)
  %37 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %2, align 8
  %38 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %37, i32 0, i32 4
  %39 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %38, align 8
  %40 = call i32 @os_free(%struct.wpa_driver_scan_params* %39)
  %41 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %2, align 8
  %42 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %41, i32 0, i32 3
  %43 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %42, align 8
  %44 = call i32 @os_free(%struct.wpa_driver_scan_params* %43)
  %45 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %2, align 8
  %46 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to %struct.wpa_driver_scan_params*
  %49 = call i32 @os_free(%struct.wpa_driver_scan_params* %48)
  %50 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %2, align 8
  %51 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to %struct.wpa_driver_scan_params*
  %54 = call i32 @os_free(%struct.wpa_driver_scan_params* %53)
  %55 = load %struct.wpa_driver_scan_params*, %struct.wpa_driver_scan_params** %2, align 8
  %56 = call i32 @os_free(%struct.wpa_driver_scan_params* %55)
  br label %57

57:                                               ; preds = %27, %6
  ret void
}

declare dso_local i32 @os_free(%struct.wpa_driver_scan_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
