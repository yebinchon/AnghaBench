; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_get_nl80211_protocol_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_get_nl80211_protocol_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nl_msg = type { i32 }

@NL80211_CMD_GET_PROTOCOL_FEATURES = common dso_local global i32 0, align 4
@protocol_feature_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_nl80211_data*)* @get_nl80211_protocol_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nl80211_protocol_features(%struct.wpa_driver_nl80211_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nl_msg*, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call %struct.nl_msg* (...) @nlmsg_alloc()
  store %struct.nl_msg* %6, %struct.nl_msg** %5, align 8
  %7 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %8 = icmp ne %struct.nl_msg* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

10:                                               ; preds = %1
  %11 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %12 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %13 = load i32, i32* @NL80211_CMD_GET_PROTOCOL_FEATURES, align 4
  %14 = call i32 @nl80211_cmd(%struct.wpa_driver_nl80211_data* %11, %struct.nl_msg* %12, i32 0, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %18 = call i32 @nlmsg_free(%struct.nl_msg* %17)
  store i32 0, i32* %2, align 4
  br label %28

19:                                               ; preds = %10
  %20 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %21 = load %struct.nl_msg*, %struct.nl_msg** %5, align 8
  %22 = load i32, i32* @protocol_feature_handler, align 4
  %23 = call i64 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data* %20, %struct.nl_msg* %21, i32 %22, i32* %4)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %25, %16, %9
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.nl_msg* @nlmsg_alloc(...) #1

declare dso_local i32 @nl80211_cmd(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

declare dso_local i64 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
