; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_event_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_hostapd_wps_event_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.wps_event_data = type { i32 }
%struct.hostapd_data = type { i32, i32 (i32, i32, %union.wps_event_data*)*, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@WPS_EVENT_M2D = common dso_local global i32 0, align 4
@WPS_EVENT_SUCCESS = common dso_local global i32 0, align 4
@WPS_EVENT_OVERLAP = common dso_local global i32 0, align 4
@WPS_EVENT_TIMEOUT = common dso_local global i32 0, align 4
@WPS_EVENT_ACTIVE = common dso_local global i32 0, align 4
@WPS_EVENT_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %union.wps_event_data*)* @hostapd_wps_event_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostapd_wps_event_cb(i8* %0, i32 %1, %union.wps_event_data* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.wps_event_data*, align 8
  %7 = alloca %struct.hostapd_data*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.wps_event_data* %2, %union.wps_event_data** %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.hostapd_data*
  store %struct.hostapd_data* %9, %struct.hostapd_data** %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %84 [
    i32 134, label %11
    i32 135, label %18
    i32 128, label %23
    i32 129, label %34
    i32 131, label %39
    i32 130, label %48
    i32 133, label %57
    i32 132, label %66
    i32 141, label %75
    i32 140, label %76
    i32 138, label %77
    i32 137, label %78
    i32 139, label %79
    i32 136, label %80
    i32 142, label %81
  ]

11:                                               ; preds = %3
  %12 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %13 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @MSG_INFO, align 4
  %16 = load i32, i32* @WPS_EVENT_M2D, align 4
  %17 = call i32 @wpa_msg(i32 %14, i32 %15, i32 %16)
  br label %84

18:                                               ; preds = %3
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %20 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %21 = bitcast %union.wps_event_data* %20 to i32*
  %22 = call i32 @hostapd_wps_event_fail(%struct.hostapd_data* %19, i32* %21)
  br label %84

23:                                               ; preds = %3
  %24 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %25 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %26 = bitcast %union.wps_event_data* %25 to i32*
  %27 = call i32 @hostapd_wps_event_success(%struct.hostapd_data* %24, i32* %26)
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %29 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @MSG_INFO, align 4
  %32 = load i32, i32* @WPS_EVENT_SUCCESS, align 4
  %33 = call i32 @wpa_msg(i32 %30, i32 %31, i32 %32)
  br label %84

34:                                               ; preds = %3
  %35 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %36 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %37 = bitcast %union.wps_event_data* %36 to i32*
  %38 = call i32 @hostapd_pwd_auth_fail(%struct.hostapd_data* %35, i32* %37)
  br label %84

39:                                               ; preds = %3
  %40 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %41 = call i32 @hostapd_wps_event_pbc_overlap(%struct.hostapd_data* %40)
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %43 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = load i32, i32* @WPS_EVENT_OVERLAP, align 4
  %47 = call i32 @wpa_msg(i32 %44, i32 %45, i32 %46)
  br label %84

48:                                               ; preds = %3
  %49 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %50 = call i32 @hostapd_wps_event_pbc_timeout(%struct.hostapd_data* %49)
  %51 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %52 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @MSG_INFO, align 4
  %55 = load i32, i32* @WPS_EVENT_TIMEOUT, align 4
  %56 = call i32 @wpa_msg(i32 %53, i32 %54, i32 %55)
  br label %84

57:                                               ; preds = %3
  %58 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %59 = call i32 @hostapd_wps_event_pbc_active(%struct.hostapd_data* %58)
  %60 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %61 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = load i32, i32* @WPS_EVENT_ACTIVE, align 4
  %65 = call i32 @wpa_msg(i32 %62, i32 %63, i32 %64)
  br label %84

66:                                               ; preds = %3
  %67 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %68 = call i32 @hostapd_wps_event_pbc_disable(%struct.hostapd_data* %67)
  %69 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %70 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MSG_INFO, align 4
  %73 = load i32, i32* @WPS_EVENT_DISABLE, align 4
  %74 = call i32 @wpa_msg(i32 %71, i32 %72, i32 %73)
  br label %84

75:                                               ; preds = %3
  br label %84

76:                                               ; preds = %3
  br label %84

77:                                               ; preds = %3
  br label %84

78:                                               ; preds = %3
  br label %84

79:                                               ; preds = %3
  br label %84

80:                                               ; preds = %3
  br label %84

81:                                               ; preds = %3
  %82 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %83 = call i32 @hostapd_wps_ap_pin_success(%struct.hostapd_data* %82)
  br label %84

84:                                               ; preds = %3, %81, %80, %79, %78, %77, %76, %75, %66, %57, %48, %39, %34, %23, %18, %11
  %85 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %86 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %85, i32 0, i32 1
  %87 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %86, align 8
  %88 = icmp ne i32 (i32, i32, %union.wps_event_data*)* %87, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %84
  %90 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %91 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %90, i32 0, i32 1
  %92 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %91, align 8
  %93 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %94 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %5, align 4
  %97 = load %union.wps_event_data*, %union.wps_event_data** %6, align 8
  %98 = call i32 %92(i32 %95, i32 %96, %union.wps_event_data* %97)
  br label %99

99:                                               ; preds = %89, %84
  ret void
}

declare dso_local i32 @wpa_msg(i32, i32, i32) #1

declare dso_local i32 @hostapd_wps_event_fail(%struct.hostapd_data*, i32*) #1

declare dso_local i32 @hostapd_wps_event_success(%struct.hostapd_data*, i32*) #1

declare dso_local i32 @hostapd_pwd_auth_fail(%struct.hostapd_data*, i32*) #1

declare dso_local i32 @hostapd_wps_event_pbc_overlap(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_wps_event_pbc_timeout(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_wps_event_pbc_active(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_wps_event_pbc_disable(%struct.hostapd_data*) #1

declare dso_local i32 @hostapd_wps_ap_pin_success(%struct.hostapd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
