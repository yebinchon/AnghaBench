; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_build_rf_bands.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_build_rf_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_device_data = type { i64 }
%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_rf_bands(%struct.wps_device_data* %0, %struct.wpabuf* %1, i64 %2) #0 {
  %4 = alloca %struct.wps_device_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i64, align 8
  store %struct.wps_device_data* %0, %struct.wps_device_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i64, i64* %6, align 8
  br label %16

12:                                               ; preds = %3
  %13 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %14 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  br label %16

16:                                               ; preds = %12, %10
  %17 = phi i64 [ %11, %10 ], [ %15, %12 ]
  %18 = call i32 @wps_build_rf_bands_attr(%struct.wpabuf* %7, i64 %17)
  ret i32 %18
}

declare dso_local i32 @wps_build_rf_bands_attr(%struct.wpabuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
