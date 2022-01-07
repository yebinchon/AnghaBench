; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_request_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_acs.c_acs_request_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32*, %struct.TYPE_4__*, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32 }
%struct.wpa_driver_scan_params = type { i32* }

@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@acs_scan_complete = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ACS: Scanning %d / %d\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"ACS: Failed to request initial scan\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*)* @acs_request_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acs_request_scan(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca %struct.wpa_driver_scan_params, align 8
  %5 = alloca %struct.hostapd_channel_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %8 = call i32 @os_memset(%struct.wpa_driver_scan_params* %4, i32 0, i32 8)
  %9 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %10 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  %15 = call i32* @os_calloc(i32 %14, i32 4)
  %16 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 0
  store i32* %15, i32** %16, align 8
  %17 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %98

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  store i32* %23, i32** %7, align 8
  store i32 0, i32* %6, align 4
  br label %24

24:                                               ; preds = %60, %21
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %27 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %26, i32 0, i32 4
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %25, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %24
  %33 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %34 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %33, i32 0, i32 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %37, i64 %39
  store %struct.hostapd_channel_data* %40, %struct.hostapd_channel_data** %5, align 8
  %41 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %42 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %32
  br label %60

48:                                               ; preds = %32
  %49 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %50 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %51 = call i32 @is_in_chanlist(%struct.hostapd_iface* %49, %struct.hostapd_channel_data* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %60

54:                                               ; preds = %48
  %55 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %5, align 8
  %56 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i32 1
  store i32* %59, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  br label %60

60:                                               ; preds = %54, %53, %47
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %24

63:                                               ; preds = %24
  %64 = load i32*, i32** %7, align 8
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* @acs_scan_complete, align 4
  %66 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %67 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %70 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  %73 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %74 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %72, i32 %77)
  %79 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %80 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @hostapd_driver_scan(i32 %83, %struct.wpa_driver_scan_params* %4)
  %85 = icmp slt i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %63
  %87 = load i32, i32* @MSG_ERROR, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %90 = call i32 @acs_cleanup(%struct.hostapd_iface* %89)
  %91 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i32 @os_free(i32* %92)
  store i32 -1, i32* %2, align 4
  br label %98

94:                                               ; preds = %63
  %95 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %4, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @os_free(i32* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %86, %20
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @os_memset(%struct.wpa_driver_scan_params*, i32, i32) #1

declare dso_local i32* @os_calloc(i32, i32) #1

declare dso_local i32 @is_in_chanlist(%struct.hostapd_iface*, %struct.hostapd_channel_data*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @hostapd_driver_scan(i32, %struct.wpa_driver_scan_params*) #1

declare dso_local i32 @acs_cleanup(%struct.hostapd_iface*) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
