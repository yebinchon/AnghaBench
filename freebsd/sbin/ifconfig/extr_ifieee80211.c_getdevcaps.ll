; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getdevcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getdevcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_devcaps_req = type { i32 }

@IEEE80211_IOC_DEVCAPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"unable to get device capabilities\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ieee80211_devcaps_req*)* @getdevcaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getdevcaps(i32 %0, %struct.ieee80211_devcaps_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_devcaps_req*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.ieee80211_devcaps_req* %1, %struct.ieee80211_devcaps_req** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @IEEE80211_IOC_DEVCAPS, align 4
  %7 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %4, align 8
  %8 = load %struct.ieee80211_devcaps_req*, %struct.ieee80211_devcaps_req** %4, align 8
  %9 = call i32 @IEEE80211_DEVCAPS_SPACE(%struct.ieee80211_devcaps_req* %8)
  %10 = call i64 @get80211(i32 %5, i32 %6, %struct.ieee80211_devcaps_req* %7, i32 %9)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %2
  ret void
}

declare dso_local i64 @get80211(i32, i32, %struct.ieee80211_devcaps_req*, i32) #1

declare dso_local i32 @IEEE80211_DEVCAPS_SPACE(%struct.ieee80211_devcaps_req*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
