; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_process_primary_dev_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_dev_attr.c_wps_process_primary_dev_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_device_data = type { i32 }

@WPS_DEV_TYPE_BUFSIZE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WPS: No Primary Device Type received\00", align 1
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"WPS: Primary Device Type: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_device_data*, i32*)* @wps_process_primary_dev_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_primary_dev_type(%struct.wps_device_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_device_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.wps_device_data* %0, %struct.wps_device_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @WPS_DEV_TYPE_BUFSIZE, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %6, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %20 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %24 = call i32 @os_memcpy(i32 %21, i32* %22, i32 %23)
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = load %struct.wps_device_data*, %struct.wps_device_data** %4, align 8
  %27 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = trunc i64 %10 to i32
  %30 = call i32 @wps_dev_type_bin2str(i32 %28, i8* %12, i32 %29)
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %18, %15
  %33 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %33)
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @os_memcpy(i32, i32*, i32) #2

declare dso_local i32 @wps_dev_type_bin2str(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
