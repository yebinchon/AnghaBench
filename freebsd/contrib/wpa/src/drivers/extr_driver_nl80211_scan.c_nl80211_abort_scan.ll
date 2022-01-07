; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_abort_scan.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_scan.c_nl80211_abort_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i802_bss = type { %struct.wpa_driver_nl80211_data* }
%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nl_msg = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"nl80211: Abort scan\00", align 1
@NL80211_CMD_ABORT_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"nl80211: Abort scan failed: ret=%d (%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i802_bss*)* @nl80211_abort_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_abort_scan(%struct.i802_bss* %0) #0 {
  %2 = alloca %struct.i802_bss*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nl_msg*, align 8
  %5 = alloca %struct.wpa_driver_nl80211_data*, align 8
  store %struct.i802_bss* %0, %struct.i802_bss** %2, align 8
  %6 = load %struct.i802_bss*, %struct.i802_bss** %2, align 8
  %7 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %6, i32 0, i32 0
  %8 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %7, align 8
  store %struct.wpa_driver_nl80211_data* %8, %struct.wpa_driver_nl80211_data** %5, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 (i32, i8*, ...) @wpa_printf(i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.i802_bss*, %struct.i802_bss** %2, align 8
  %12 = load i32, i32* @NL80211_CMD_ABORT_SCAN, align 4
  %13 = call %struct.nl_msg* @nl80211_cmd_msg(%struct.i802_bss* %11, i32 0, i32 %12)
  store %struct.nl_msg* %13, %struct.nl_msg** %4, align 8
  %14 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %5, align 8
  %15 = load %struct.nl_msg*, %struct.nl_msg** %4, align 8
  %16 = call i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data* %14, %struct.nl_msg* %15, i32* null, i32* null)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = sub nsw i32 0, %22
  %24 = call i32 @strerror(i32 %23)
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.nl_msg* @nl80211_cmd_msg(%struct.i802_bss*, i32, i32) #1

declare dso_local i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32*, i32*) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
