; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_pwd_auth_fail.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wps_hostapd.c_wps_pwd_auth_fail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wps_event_pwd_auth_fail = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"WPS: AP PIN authentication failure number %u (%u consecutive)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@WPS_EVENT_AP_SETUP_LOCKED = common dso_local global i32 0, align 4
@hostapd_wps_reenable_ap_pin = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"WPS: AP PIN disabled indefinitely\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"WPS: Disable AP PIN for %u seconds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, i8*)* @wps_pwd_auth_fail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_pwd_auth_fail(%struct.hostapd_data* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wps_event_pwd_auth_fail*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.wps_event_pwd_auth_fail*
  store %struct.wps_event_pwd_auth_fail* %8, %struct.wps_event_pwd_auth_fail** %6, align 8
  %9 = load %struct.wps_event_pwd_auth_fail*, %struct.wps_event_pwd_auth_fail** %6, align 8
  %10 = getelementptr inbounds %struct.wps_event_pwd_auth_fail, %struct.wps_event_pwd_auth_fail* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %2
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 3
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %13
  %21 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %22 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %21, i32 0, i32 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = icmp eq %struct.TYPE_3__* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %13, %2
  store i32 0, i32* %3, align 4
  br label %131

26:                                               ; preds = %20
  %27 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %28 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %32 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %37 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %40 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %44 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 3
  br i1 %46, label %47, label %48

47:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %131

48:                                               ; preds = %26
  %49 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %50 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MSG_INFO, align 4
  %53 = load i32, i32* @WPS_EVENT_AP_SETUP_LOCKED, align 4
  %54 = call i32 @wpa_msg(i32 %51, i32 %52, i32 %53)
  %55 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %56 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %55, i32 0, i32 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %60 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %59, i32 0, i32 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @wps_registrar_update_ie(i32 %63)
  %65 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %66 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %65, i32 0, i32 3
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %82, label %71

71:                                               ; preds = %48
  %72 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %73 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sge i32 %74, 10
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load i32, i32* @hostapd_wps_reenable_ap_pin, align 4
  %78 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %79 = call i32 @eloop_cancel_timeout(i32 %77, %struct.hostapd_data* %78, i32* null)
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %130

82:                                               ; preds = %71, %48
  %83 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %84 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %83, i32 0, i32 3
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %129, label %89

89:                                               ; preds = %82
  %90 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %91 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %89
  %95 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %96 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %95, i32 0, i32 2
  store i32 60, i32* %96, align 8
  br label %114

97:                                               ; preds = %89
  %98 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %99 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %100, 31536000
  br i1 %101, label %102, label %113

102:                                              ; preds = %97
  %103 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %104 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = srem i32 %105, 3
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %102
  %109 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %110 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = mul nsw i32 %111, 2
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %108, %102, %97
  br label %114

114:                                              ; preds = %113, %94
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %117 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* @hostapd_wps_reenable_ap_pin, align 4
  %121 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %122 = call i32 @eloop_cancel_timeout(i32 %120, %struct.hostapd_data* %121, i32* null)
  %123 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %124 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @hostapd_wps_reenable_ap_pin, align 4
  %127 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %128 = call i32 @eloop_register_timeout(i32 %125, i32 0, i32 %126, %struct.hostapd_data* %127, i32* null)
  br label %129

129:                                              ; preds = %114, %82
  br label %130

130:                                              ; preds = %129, %76
  store i32 0, i32* %3, align 4
  br label %131

131:                                              ; preds = %130, %47, %25
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_msg(i32, i32, i32) #1

declare dso_local i32 @wps_registrar_update_ie(i32) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.hostapd_data*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.hostapd_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
