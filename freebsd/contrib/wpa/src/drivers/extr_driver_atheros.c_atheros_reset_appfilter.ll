; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_reset_appfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_atheros.c_atheros_reset_appfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atheros_driver_data = type { i32 }
%struct.ieee80211req_set_filter = type { i64 }

@IEEE80211_IOCTL_FILTERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atheros_driver_data*)* @atheros_reset_appfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atheros_reset_appfilter(%struct.atheros_driver_data* %0) #0 {
  %2 = alloca %struct.atheros_driver_data*, align 8
  %3 = alloca %struct.ieee80211req_set_filter, align 8
  store %struct.atheros_driver_data* %0, %struct.atheros_driver_data** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211req_set_filter, %struct.ieee80211req_set_filter* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = load %struct.atheros_driver_data*, %struct.atheros_driver_data** %2, align 8
  %6 = load i32, i32* @IEEE80211_IOCTL_FILTERFRAME, align 4
  %7 = call i32 @set80211priv(%struct.atheros_driver_data* %5, i32 %6, %struct.ieee80211req_set_filter* %3, i32 8)
  ret i32 %7
}

declare dso_local i32 @set80211priv(%struct.atheros_driver_data*, i32, %struct.ieee80211req_set_filter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
