; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_reg_change_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_reg_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nlattr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"nl80211: Regulatory domain change\00", align 1
@NL80211_ATTR_REG_INITIATOR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c" * initiator=%d\00", align 1
@REGDOM_SET_BY_CORE = common dso_local global i32 0, align 4
@REGDOM_SET_BY_USER = common dso_local global i32 0, align 4
@REGDOM_SET_BY_DRIVER = common dso_local global i32 0, align 4
@REGDOM_SET_BY_COUNTRY_IE = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_TYPE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c" * type=%d\00", align 1
@REGDOM_TYPE_COUNTRY = common dso_local global i32 0, align 4
@REGDOM_TYPE_WORLD = common dso_local global i32 0, align 4
@REGDOM_TYPE_CUSTOM_WORLD = common dso_local global i32 0, align 4
@REGDOM_TYPE_INTERSECTION = common dso_local global i32 0, align 4
@NL80211_ATTR_REG_ALPHA2 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c" * alpha2=%s\00", align 1
@EVENT_CHANNEL_LIST_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, %struct.nlattr**)* @nl80211_reg_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_reg_change_event(%struct.wpa_driver_nl80211_data* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %union.wpa_event_data, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %11 = load i64, i64* @NL80211_ATTR_REG_INITIATOR, align 8
  %12 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %10, i64 %11
  %13 = load %struct.nlattr*, %struct.nlattr** %12, align 8
  %14 = icmp eq %struct.nlattr* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %103

16:                                               ; preds = %2
  %17 = call i32 @os_memset(%union.wpa_event_data* %5, i32 0, i32 12)
  %18 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %19 = load i64, i64* @NL80211_ATTR_REG_INITIATOR, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = call i32 @nla_get_u8(%struct.nlattr* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  switch i32 %26, label %43 [
    i32 135, label %27
    i32 132, label %31
    i32 133, label %35
    i32 134, label %39
  ]

27:                                               ; preds = %16
  %28 = load i32, i32* @REGDOM_SET_BY_CORE, align 4
  %29 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %43

31:                                               ; preds = %16
  %32 = load i32, i32* @REGDOM_SET_BY_USER, align 4
  %33 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  br label %43

35:                                               ; preds = %16
  %36 = load i32, i32* @REGDOM_SET_BY_DRIVER, align 4
  %37 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  br label %43

39:                                               ; preds = %16
  %40 = load i32, i32* @REGDOM_SET_BY_COUNTRY_IE, align 4
  %41 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %16, %39, %35, %31, %27
  %44 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %45 = load i64, i64* @NL80211_ATTR_REG_TYPE, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = icmp ne %struct.nlattr* %47, null
  br i1 %48, label %49, label %76

49:                                               ; preds = %43
  %50 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %51 = load i64, i64* @NL80211_ATTR_REG_TYPE, align 8
  %52 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %50, i64 %51
  %53 = load %struct.nlattr*, %struct.nlattr** %52, align 8
  %54 = call i32 @nla_get_u8(%struct.nlattr* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %7, align 4
  switch i32 %58, label %75 [
    i32 131, label %59
    i32 128, label %63
    i32 130, label %67
    i32 129, label %71
  ]

59:                                               ; preds = %49
  %60 = load i32, i32* @REGDOM_TYPE_COUNTRY, align 4
  %61 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %75

63:                                               ; preds = %49
  %64 = load i32, i32* @REGDOM_TYPE_WORLD, align 4
  %65 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %75

67:                                               ; preds = %49
  %68 = load i32, i32* @REGDOM_TYPE_CUSTOM_WORLD, align 4
  %69 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  br label %75

71:                                               ; preds = %49
  %72 = load i32, i32* @REGDOM_TYPE_INTERSECTION, align 4
  %73 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %49, %71, %67, %63, %59
  br label %76

76:                                               ; preds = %75, %43
  %77 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %78 = load i64, i64* @NL80211_ATTR_REG_ALPHA2, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = icmp ne %struct.nlattr* %80, null
  br i1 %81, label %82, label %97

82:                                               ; preds = %76
  %83 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %87 = load i64, i64* @NL80211_ATTR_REG_ALPHA2, align 8
  %88 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %86, i64 %87
  %89 = load %struct.nlattr*, %struct.nlattr** %88, align 8
  %90 = call i32 @nla_get_string(%struct.nlattr* %89)
  %91 = call i32 @os_strlcpy(i32 %85, i32 %90, i32 4)
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %82, %76
  %98 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %99 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @EVENT_CHANNEL_LIST_CHANGED, align 4
  %102 = call i32 @wpa_supplicant_event(i32 %100, i32 %101, %union.wpa_event_data* %5)
  br label %103

103:                                              ; preds = %97, %15
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @os_strlcpy(i32, i32, i32) #1

declare dso_local i32 @nla_get_string(%struct.nlattr*) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
