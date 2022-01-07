; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_build_secondary_dev_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_build_secondary_dev_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_device_data = type { i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"WPS:  * Secondary Device Type\00", align 1
@ATTR_SECONDARY_DEV_TYPE_LIST = common dso_local global i32 0, align 4
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_secondary_dev_type(%struct.wps_device_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_device_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  store %struct.wps_device_data* %0, %struct.wps_device_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %6 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %7 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

11:                                               ; preds = %2
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %15 = load i32, i32* @ATTR_SECONDARY_DEV_TYPE_LIST, align 4
  %16 = call i32 @wpabuf_put_be16(%struct.wpabuf* %14, i32 %15)
  %17 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %18 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %19 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %20 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = call i32 @wpabuf_put_be16(%struct.wpabuf* %17, i32 %22)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %25 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %26 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %29 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %30 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = call i32 @wpabuf_put_data(%struct.wpabuf* %24, i32 %27, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %11, %10
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
