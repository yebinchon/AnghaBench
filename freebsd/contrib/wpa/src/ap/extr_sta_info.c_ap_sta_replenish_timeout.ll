; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_sta_info.c_ap_sta_replenish_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_sta_info.c_ap_sta_replenish_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32 }

@ap_handle_session_timer = common dso_local global i32 0, align 4
@HOSTAPD_MODULE_IEEE80211 = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"setting session timeout to %d seconds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ap_sta_replenish_timeout(%struct.hostapd_data* %0, %struct.sta_info* %1, i32 %2) #0 {
  %4 = alloca %struct.hostapd_data*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca i32, align 4
  store %struct.hostapd_data* %0, %struct.hostapd_data** %4, align 8
  store %struct.sta_info* %1, %struct.sta_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ap_handle_session_timer, align 4
  %9 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %10 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %11 = call i32 @eloop_replenish_timeout(i32 %7, i32 0, i32 %8, %struct.hostapd_data* %9, %struct.sta_info* %10)
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %4, align 8
  %15 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %16 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %19 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @hostapd_logger(%struct.hostapd_data* %14, i32 %17, i32 %18, i32 %19, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %13, %3
  ret void
}

declare dso_local i32 @eloop_replenish_timeout(i32, i32, i32, %struct.hostapd_data*, %struct.sta_info*) #1

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
