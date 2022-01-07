; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_set_regulatory_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_set_regulatory_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.phy_info_arg = type { i32 }
%struct.nl_msg = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@NL80211_CMD_GET_REG = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_SELF_MANAGED_REGULATORY = common dso_local global i32 0, align 4
@NL80211_ATTR_WIPHY = common dso_local global i32 0, align 4
@nl80211_get_reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_driver_nl80211_data*, %struct.phy_info_arg*)* @nl80211_set_regulatory_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_set_regulatory_flags(%struct.wpa_driver_nl80211_data* %0, %struct.phy_info_arg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %5 = alloca %struct.phy_info_arg*, align 8
  %6 = alloca %struct.nl_msg*, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %4, align 8
  store %struct.phy_info_arg* %1, %struct.phy_info_arg** %5, align 8
  %7 = call %struct.nl_msg* (...) @nlmsg_alloc()
  store %struct.nl_msg* %7, %struct.nl_msg** %6, align 8
  %8 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %9 = icmp ne %struct.nl_msg* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %15 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %16 = load i32, i32* @NL80211_CMD_GET_REG, align 4
  %17 = call i32 @nl80211_cmd(%struct.wpa_driver_nl80211_data* %14, %struct.nl_msg* %15, i32 0, i32 %16)
  %18 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %19 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WPA_DRIVER_FLAGS_SELF_MANAGED_REGULATORY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %13
  %26 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %27 = load i32, i32* @NL80211_ATTR_WIPHY, align 4
  %28 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %29 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @nla_put_u32(%struct.nl_msg* %26, i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %35 = call i32 @nlmsg_free(%struct.nl_msg* %34)
  store i32 -1, i32* %3, align 4
  br label %43

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %13
  %38 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %4, align 8
  %39 = load %struct.nl_msg*, %struct.nl_msg** %6, align 8
  %40 = load i32, i32* @nl80211_get_reg, align 4
  %41 = load %struct.phy_info_arg*, %struct.phy_info_arg** %5, align 8
  %42 = call i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data* %38, %struct.nl_msg* %39, i32 %40, %struct.phy_info_arg* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %37, %33, %10
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.nl_msg* @nlmsg_alloc(...) #1

declare dso_local i32 @nl80211_cmd(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.nl_msg*, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.nl_msg*) #1

declare dso_local i32 @send_and_recv_msgs(%struct.wpa_driver_nl80211_data*, %struct.nl_msg*, i32, %struct.phy_info_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
