; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_wpa_driver_nl80211_stop_sched_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_wpa_driver_nl80211_stop_sched_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i802_bss = type { %struct.wpa_driver_nl80211_data* }
%struct.wpa_driver_nl80211_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nl_msg = type { i32 }

@NL80211_CMD_STOP_SCHED_SCAN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"nl80211: Sched scan stop failed: ret=%d (%s)\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"nl80211: Sched scan stop sent\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_driver_nl80211_stop_sched_scan(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.i802_bss*, align 8
  %4 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nl_msg*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.i802_bss*
  store %struct.i802_bss* %8, %struct.i802_bss** %3, align 8
  %9 = load %struct.i802_bss*, %struct.i802_bss** %3, align 8
  %10 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %9, i32 0, i32 0
  %11 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %10, align 8
  store %struct.wpa_driver_nl80211_data* %11, %struct.wpa_driver_nl80211_data** %4, align 8
  %12 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %13 = load i32, i32* @NL80211_CMD_STOP_SCHED_SCAN, align 4
  %14 = call %struct.nl_msg* @nl80211_drv_msg(%struct.wpa_driver_nl80211_data* %12, i32 0, i32 %13)
  store %struct.nl_msg* %14, %struct.nl_msg** %6, align 8
  %15 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %16 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %17 = call i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data* %15, %struct.nl_msg* %16, i32* null, i32* null)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = sub nsw i32 0, %23
  %25 = call i32 @strerror(i32 %24)
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %27, %20
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.nl_msg* @nl80211_drv_msg(%struct.wpa_driver_nl80211_data*, i32, i32) #1

declare dso_local i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32*, i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
