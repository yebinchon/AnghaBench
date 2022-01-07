; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_michael_mic_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_mlme_event_michael_mic_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i802_bss = type { i32 }
%struct.nlattr = type { i32 }
%union.wpa_event_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"nl80211: MLME event Michael MIC failure\00", align 1
@NL80211_ATTR_MAC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"nl80211: Source MAC address\00", align 1
@NL80211_ATTR_KEY_SEQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"nl80211: TSC\00", align 1
@NL80211_ATTR_KEY_TYPE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"nl80211: Key Type %d\00", align 1
@NL80211_KEYTYPE_PAIRWISE = common dso_local global i32 0, align 4
@NL80211_ATTR_KEY_IDX = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [19 x i8] c"nl80211: Key Id %d\00", align 1
@EVENT_MICHAEL_MIC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i802_bss*, %struct.nlattr**)* @mlme_event_michael_mic_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlme_event_michael_mic_failure(%struct.i802_bss* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.i802_bss*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %union.wpa_event_data, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i802_bss* %0, %struct.i802_bss** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @os_memset(%union.wpa_event_data* %5, i32 0, i32 8)
  %11 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %12 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %19 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %20 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %18, i64 %19
  %21 = load %struct.nlattr*, %struct.nlattr** %20, align 8
  %22 = call i32 @nla_data(%struct.nlattr* %21)
  %23 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %24 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %23, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = call i32 @nla_len(%struct.nlattr* %26)
  %28 = call i32 @wpa_hexdump(i32 %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %22, i32 %27)
  %29 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %30 = load i64, i64* @NL80211_ATTR_MAC, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @nla_data(%struct.nlattr* %32)
  %34 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %16, %2
  %37 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %38 = load i64, i64* @NL80211_ATTR_KEY_SEQ, align 8
  %39 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %37, i64 %38
  %40 = load %struct.nlattr*, %struct.nlattr** %39, align 8
  %41 = icmp ne %struct.nlattr* %40, null
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %45 = load i64, i64* @NL80211_ATTR_KEY_SEQ, align 8
  %46 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %44, i64 %45
  %47 = load %struct.nlattr*, %struct.nlattr** %46, align 8
  %48 = call i32 @nla_data(%struct.nlattr* %47)
  %49 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %50 = load i64, i64* @NL80211_ATTR_KEY_SEQ, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %49, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = call i32 @nla_len(%struct.nlattr* %52)
  %54 = call i32 @wpa_hexdump(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %42, %36
  %56 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %57 = load i64, i64* @NL80211_ATTR_KEY_TYPE, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %55
  %62 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %63 = load i64, i64* @NL80211_ATTR_KEY_TYPE, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i32 @nla_get_u32(%struct.nlattr* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @NL80211_KEYTYPE_PAIRWISE, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %61
  %74 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %73, %61
  br label %80

77:                                               ; preds = %55
  %78 = bitcast %union.wpa_event_data* %5 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 1, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %76
  %81 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %82 = load i64, i64* @NL80211_ATTR_KEY_IDX, align 8
  %83 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %81, i64 %82
  %84 = load %struct.nlattr*, %struct.nlattr** %83, align 8
  %85 = icmp ne %struct.nlattr* %84, null
  br i1 %85, label %86, label %95

86:                                               ; preds = %80
  %87 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %88 = load i64, i64* @NL80211_ATTR_KEY_IDX, align 8
  %89 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %87, i64 %88
  %90 = load %struct.nlattr*, %struct.nlattr** %89, align 8
  %91 = call i32 @nla_get_u8(%struct.nlattr* %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %86, %80
  %96 = load %struct.i802_bss*, %struct.i802_bss** %3, align 8
  %97 = getelementptr inbounds %struct.i802_bss, %struct.i802_bss* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @EVENT_MICHAEL_MIC_FAILURE, align 4
  %100 = call i32 @wpa_supplicant_event(i32 %98, i32 %99, %union.wpa_event_data* %5)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memset(%union.wpa_event_data*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_u8(%struct.nlattr*) #1

declare dso_local i32 @wpa_supplicant_event(i32, i32, %union.wpa_event_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
