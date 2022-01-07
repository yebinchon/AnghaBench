; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_build_model_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_build_model_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_device_data = type { i64 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"WPS:  * Model Number\00", align 1
@ATTR_MODEL_NUMBER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_build_model_number(%struct.wps_device_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_device_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i64, align 8
  store %struct.wps_device_data* %0, %struct.wps_device_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %7 = load i32, i32* @MSG_DEBUG, align 4
  %8 = call i32 @wpa_printf(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %10 = load i64, i64* @ATTR_MODEL_NUMBER, align 8
  %11 = call i32 @wpabuf_put_be16(%struct.wpabuf* %9, i64 %10)
  %12 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %13 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %18 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i64 @os_strlen(i64 %19)
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %16
  %23 = phi i64 [ %20, %16 ], [ 0, %21 ]
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %28 = call i32 @wpabuf_put_be16(%struct.wpabuf* %27, i64 1)
  %29 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %30 = call i32 @wpabuf_put_u8(%struct.wpabuf* %29, i8 signext 32)
  store i32 0, i32* %3, align 4
  br label %41

31:                                               ; preds = %22
  %32 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @wpabuf_put_be16(%struct.wpabuf* %32, i64 %33)
  %35 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %36 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %37 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @wpabuf_put_data(%struct.wpabuf* %35, i64 %38, i64 %39)
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %31, %26
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i64) #1

declare dso_local i64 @os_strlen(i64) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i8 signext) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
