; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_build_device_attrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_build_device_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_device_data = type { i32 }
%struct.wpabuf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_device_attrs(%struct.wps_device_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_device_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wps_device_data* %0, %struct.wps_device_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %6 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %7 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %8 = call i64 @wps_build_manufacturer(%struct.wps_device_data* %6, %struct.wpabuf* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %35, label %10

10:                                               ; preds = %2
  %11 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %12 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %13 = call i64 @wps_build_model_name(%struct.wps_device_data* %11, %struct.wpabuf* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %10
  %16 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = call i64 @wps_build_model_number(%struct.wps_device_data* %16, %struct.wpabuf* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %15
  %21 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %22 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %23 = call i64 @wps_build_serial_number(%struct.wps_device_data* %21, %struct.wpabuf* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %28 = call i64 @wps_build_primary_dev_type(%struct.wps_device_data* %26, %struct.wpabuf* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %32 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %33 = call i64 @wps_build_dev_name(%struct.wps_device_data* %31, %struct.wpabuf* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %25, %20, %15, %10, %2
  store i32 -1, i32* %3, align 4
  br label %37

36:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i64 @wps_build_manufacturer(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_model_name(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_model_number(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_serial_number(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_primary_dev_type(%struct.wps_device_data*, %struct.wpabuf*) #1

declare dso_local i64 @wps_build_dev_name(%struct.wps_device_data*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
