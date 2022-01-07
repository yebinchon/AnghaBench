; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_reg_rule_sec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_reg_rule_sec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.phy_info_arg = type { i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NL80211_ATTR_FREQ_RANGE_START = common dso_local global i64 0, align 8
@NL80211_ATTR_FREQ_RANGE_END = common dso_local global i64 0, align 8
@NL80211_ATTR_FREQ_RANGE_MAX_BW = common dso_local global i64 0, align 8
@HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nlattr**, %struct.phy_info_arg*)* @nl80211_reg_rule_sec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_reg_rule_sec(%struct.nlattr** %0, %struct.phy_info_arg* %1) #0 {
  %3 = alloca %struct.nlattr**, align 8
  %4 = alloca %struct.phy_info_arg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %3, align 8
  store %struct.phy_info_arg* %1, %struct.phy_info_arg** %4, align 8
  %9 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %10 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_START, align 8
  %11 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %9, i64 %10
  %12 = load %struct.nlattr*, %struct.nlattr** %11, align 8
  %13 = icmp eq %struct.nlattr* %12, null
  br i1 %13, label %26, label %14

14:                                               ; preds = %2
  %15 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %16 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_END, align 8
  %17 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %16
  %18 = load %struct.nlattr*, %struct.nlattr** %17, align 8
  %19 = icmp eq %struct.nlattr* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %22 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_MAX_BW, align 8
  %23 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %21, i64 %22
  %24 = load %struct.nlattr*, %struct.nlattr** %23, align 8
  %25 = icmp eq %struct.nlattr* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %14, %2
  br label %81

27:                                               ; preds = %20
  %28 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %29 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_START, align 8
  %30 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %28, i64 %29
  %31 = load %struct.nlattr*, %struct.nlattr** %30, align 8
  %32 = call i32 @nla_get_u32(%struct.nlattr* %31)
  %33 = sdiv i32 %32, 1000
  store i32 %33, i32* %5, align 4
  %34 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %35 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_END, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = call i32 @nla_get_u32(%struct.nlattr* %37)
  %39 = sdiv i32 %38, 1000
  store i32 %39, i32* %6, align 4
  %40 = load %struct.nlattr**, %struct.nlattr*** %3, align 8
  %41 = load i64, i64* @NL80211_ATTR_FREQ_RANGE_MAX_BW, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i32 @nla_get_u32(%struct.nlattr* %43)
  %45 = sdiv i32 %44, 1000
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 20
  br i1 %47, label %48, label %49

48:                                               ; preds = %27
  br label %81

49:                                               ; preds = %27
  store i64 0, i64* %8, align 8
  br label %50

50:                                               ; preds = %78, %49
  %51 = load i64, i64* %8, align 8
  %52 = load %struct.phy_info_arg*, %struct.phy_info_arg** %4, align 8
  %53 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %51, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %50
  %58 = load %struct.phy_info_arg*, %struct.phy_info_arg** %4, align 8
  %59 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %57
  br label %78

69:                                               ; preds = %57
  %70 = load %struct.phy_info_arg*, %struct.phy_info_arg** %4, align 8
  %71 = getelementptr inbounds %struct.phy_info_arg, %struct.phy_info_arg* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %73
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @nl80211_set_ht40_mode_sec(%struct.TYPE_2__* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %68
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %50

81:                                               ; preds = %26, %48, %50
  ret void
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nl80211_set_ht40_mode_sec(%struct.TYPE_2__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
