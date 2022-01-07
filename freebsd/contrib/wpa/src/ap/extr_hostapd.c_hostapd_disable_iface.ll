; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_disable_iface.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_hostapd_disable_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i32, i32, i64, %struct.hostapd_data**, %struct.TYPE_5__* }
%struct.hostapd_data = type { %struct.TYPE_6__*, i32*, %struct.wpa_driver_ops*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.wpa_driver_ops = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Interface %s already disabled\00", align 1
@AP_EVENT_DISABLED = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Interface %s disabled\00", align 1
@HAPD_IFACE_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_disable_iface(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.wpa_driver_ops*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.hostapd_data*, align 8
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %8 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %9 = icmp eq %struct.hostapd_iface* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %110

11:                                               ; preds = %1
  %12 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %13 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %12, i32 0, i32 3
  %14 = load %struct.hostapd_data**, %struct.hostapd_data*** %13, align 8
  %15 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %14, i64 0
  %16 = load %struct.hostapd_data*, %struct.hostapd_data** %15, align 8
  %17 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %11
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %23 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %22, i32 0, i32 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %26, i64 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wpa_printf(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %2, align 4
  br label %110

32:                                               ; preds = %11
  %33 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %34 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %33, i32 0, i32 3
  %35 = load %struct.hostapd_data**, %struct.hostapd_data*** %34, align 8
  %36 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %35, i64 0
  %37 = load %struct.hostapd_data*, %struct.hostapd_data** %36, align 8
  %38 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MSG_INFO, align 4
  %41 = load i32, i32* @AP_EVENT_DISABLED, align 4
  %42 = call i32 @wpa_msg(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %44 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %43, i32 0, i32 3
  %45 = load %struct.hostapd_data**, %struct.hostapd_data*** %44, align 8
  %46 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %45, i64 0
  %47 = load %struct.hostapd_data*, %struct.hostapd_data** %46, align 8
  %48 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %47, i32 0, i32 2
  %49 = load %struct.wpa_driver_ops*, %struct.wpa_driver_ops** %48, align 8
  store %struct.wpa_driver_ops* %49, %struct.wpa_driver_ops** %5, align 8
  %50 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %51 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %50, i32 0, i32 3
  %52 = load %struct.hostapd_data**, %struct.hostapd_data*** %51, align 8
  %53 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %52, i64 0
  %54 = load %struct.hostapd_data*, %struct.hostapd_data** %53, align 8
  %55 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = bitcast i32* %56 to i8*
  store i8* %57, i8** %6, align 8
  %58 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %59 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @WPA_DRIVER_FLAGS_AP_TEARDOWN_SUPPORT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %68 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  store i64 0, i64* %4, align 8
  br label %69

69:                                               ; preds = %86, %32
  %70 = load i64, i64* %4, align 8
  %71 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %72 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ult i64 %70, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %77 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %76, i32 0, i32 3
  %78 = load %struct.hostapd_data**, %struct.hostapd_data*** %77, align 8
  %79 = load i64, i64* %4, align 8
  %80 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %78, i64 %79
  %81 = load %struct.hostapd_data*, %struct.hostapd_data** %80, align 8
  store %struct.hostapd_data* %81, %struct.hostapd_data** %7, align 8
  %82 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %83 = call i32 @hostapd_bss_deinit_no_free(%struct.hostapd_data* %82)
  %84 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %85 = call i32 @hostapd_free_hapd_data(%struct.hostapd_data* %84)
  br label %86

86:                                               ; preds = %75
  %87 = load i64, i64* %4, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %4, align 8
  br label %69

89:                                               ; preds = %69
  %90 = load %struct.wpa_driver_ops*, %struct.wpa_driver_ops** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %93 = call i32 @hostapd_deinit_driver(%struct.wpa_driver_ops* %90, i8* %91, %struct.hostapd_iface* %92)
  %94 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %95 = call i32 @hostapd_cleanup_iface_partial(%struct.hostapd_iface* %94)
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %98 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %97, i32 0, i32 3
  %99 = load %struct.hostapd_data**, %struct.hostapd_data*** %98, align 8
  %100 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %99, i64 0
  %101 = load %struct.hostapd_data*, %struct.hostapd_data** %100, align 8
  %102 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @wpa_printf(i32 %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %108 = load i32, i32* @HAPD_IFACE_DISABLED, align 4
  %109 = call i32 @hostapd_set_state(%struct.hostapd_iface* %107, i32 %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %89, %20, %10
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i32 @wpa_msg(i32, i32, i32) #1

declare dso_local i32 @hostapd_bss_deinit_no_free(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_free_hapd_data(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_deinit_driver(%struct.wpa_driver_ops*, i8*, %struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_cleanup_iface_partial(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_set_state(%struct.hostapd_iface*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
