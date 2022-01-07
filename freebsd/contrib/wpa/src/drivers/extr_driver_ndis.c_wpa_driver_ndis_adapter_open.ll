; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_adapter_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_ndis.c_wpa_driver_ndis_adapter_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_ndis_data = type { i32*, i64*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"\\Device\\NPF_%s\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"NDIS: PacketOpenAdapter failed for '%s'\00", align 1
@INVALID_HANDLE_VALUE = common dso_local global i32 0, align 4
@IOCTL_NDISUIO_OPEN_DEVICE = common dso_local global i32 0, align 4
@MAX_NDIS_DEVICE_NAME_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_ndis_data*)* @wpa_driver_ndis_adapter_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_driver_ndis_adapter_open(%struct.wpa_driver_ndis_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_driver_ndis_data*, align 8
  %4 = alloca [128 x i8], align 16
  store %struct.wpa_driver_ndis_data* %0, %struct.wpa_driver_ndis_data** %3, align 8
  %5 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %6 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %7 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = call i32 @os_snprintf(i8* %5, i32 128, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64* %8)
  %10 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %11 = call i32* @PacketOpenAdapter(i8* %10)
  %12 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %13 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.wpa_driver_ndis_data*, %struct.wpa_driver_ndis_data** %3, align 8
  %15 = getelementptr inbounds %struct.wpa_driver_ndis_data, %struct.wpa_driver_ndis_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  store i32 -1, i32* %2, align 4
  br label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i64*) #1

declare dso_local i32* @PacketOpenAdapter(i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
