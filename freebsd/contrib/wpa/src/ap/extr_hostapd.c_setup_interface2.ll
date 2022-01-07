; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_setup_interface2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_hostapd.c_setup_interface2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { %struct.TYPE_6__*, %struct.TYPE_5__**, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Could not select hw_mode and channel. (%d)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Interface initialization will be completed in a callback (ACS)\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Interface initialization will be completed in a callback\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"DFS support is enabled\00", align 1
@HAPD_IFACE_DISABLED = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@AP_EVENT_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_iface*)* @setup_interface2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_interface2(%struct.hostapd_iface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_iface*, align 8
  %4 = alloca i32, align 4
  store %struct.hostapd_iface* %0, %struct.hostapd_iface** %3, align 8
  %5 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %6 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %8 = call i64 @hostapd_get_hw_features(%struct.hostapd_iface* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %49

11:                                               ; preds = %1
  %12 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %13 = call i32 @hostapd_select_hw_mode(%struct.hostapd_iface* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* @MSG_ERROR, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %52

20:                                               ; preds = %11
  %21 = load i32, i32* %4, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %24, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %80

26:                                               ; preds = %20
  %27 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %28 = call i32 @hostapd_check_ht_capab(%struct.hostapd_iface* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %52

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %80

38:                                               ; preds = %32
  %39 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %40 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %39, i32 0, i32 2
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %38
  br label %49

49:                                               ; preds = %48, %10
  %50 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %51 = call i32 @hostapd_setup_interface_complete(%struct.hostapd_iface* %50, i32 0)
  store i32 %51, i32* %2, align 4
  br label %80

52:                                               ; preds = %31, %16
  %53 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %54 = load i32, i32* @HAPD_IFACE_DISABLED, align 4
  %55 = call i32 @hostapd_set_state(%struct.hostapd_iface* %53, i32 %54)
  %56 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %57 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %56, i32 0, i32 1
  %58 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %58, i64 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = load i32, i32* @AP_EVENT_DISABLED, align 4
  %65 = call i32 @wpa_msg(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %67 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %66, i32 0, i32 0
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = icmp ne %struct.TYPE_6__* %68, null
  br i1 %69, label %70, label %79

70:                                               ; preds = %52
  %71 = load %struct.hostapd_iface*, %struct.hostapd_iface** %3, align 8
  %72 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = call i32 (...) @eloop_terminate()
  br label %79

79:                                               ; preds = %77, %70, %52
  store i32 -1, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %49, %35, %23
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @hostapd_get_hw_features(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_select_hw_mode(%struct.hostapd_iface*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @hostapd_check_ht_capab(%struct.hostapd_iface*) #1

declare dso_local i32 @hostapd_setup_interface_complete(%struct.hostapd_iface*, i32) #1

declare dso_local i32 @hostapd_set_state(%struct.hostapd_iface*, i32) #1

declare dso_local i32 @wpa_msg(i32, i32, i32) #1

declare dso_local i32 @eloop_terminate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
