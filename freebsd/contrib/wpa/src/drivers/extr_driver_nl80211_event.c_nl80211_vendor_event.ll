; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_vendor_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_event.c_nl80211_vendor_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_nl80211_data = type { i32 }
%struct.nlattr = type { i32 }

@NL80211_ATTR_VENDOR_ID = common dso_local global i64 0, align 8
@NL80211_ATTR_VENDOR_SUBCMD = common dso_local global i64 0, align 8
@NL80211_ATTR_WIPHY = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"nl80211: Vendor event: wiphy=%u vendor_id=0x%x subcmd=%u\00", align 1
@NL80211_ATTR_VENDOR_DATA = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"nl80211: Vendor data\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"nl80211: Ignore vendor event for foreign wiphy %u (own: %d)\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"nl80211: Ignore unsupported vendor event\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_nl80211_data*, %struct.nlattr**)* @nl80211_vendor_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_vendor_event(%struct.wpa_driver_nl80211_data* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.wpa_driver_nl80211_data*, align 8
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store %struct.wpa_driver_nl80211_data* %0, %struct.wpa_driver_nl80211_data** %3, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %4, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %9, align 8
  store i64 0, i64* %10, align 8
  %11 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %12 = load i64, i64* @NL80211_ATTR_VENDOR_ID, align 8
  %13 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %11, i64 %12
  %14 = load %struct.nlattr*, %struct.nlattr** %13, align 8
  %15 = icmp ne %struct.nlattr* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %18 = load i64, i64* @NL80211_ATTR_VENDOR_SUBCMD, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = icmp ne %struct.nlattr* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16, %2
  br label %98

23:                                               ; preds = %16
  %24 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %25 = load i64, i64* @NL80211_ATTR_VENDOR_ID, align 8
  %26 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %24, i64 %25
  %27 = load %struct.nlattr*, %struct.nlattr** %26, align 8
  %28 = call i32 @nla_get_u32(%struct.nlattr* %27)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %30 = load i64, i64* @NL80211_ATTR_VENDOR_SUBCMD, align 8
  %31 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %29, i64 %30
  %32 = load %struct.nlattr*, %struct.nlattr** %31, align 8
  %33 = call i32 @nla_get_u32(%struct.nlattr* %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %35 = load i64, i64* @NL80211_ATTR_WIPHY, align 8
  %36 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %34, i64 %35
  %37 = load %struct.nlattr*, %struct.nlattr** %36, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %23
  %40 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %41 = load i64, i64* @NL80211_ATTR_WIPHY, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %40, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = call i32 @nla_get_u32(%struct.nlattr* %43)
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %39, %23
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  %51 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %52 = load i64, i64* @NL80211_ATTR_VENDOR_DATA, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = icmp ne %struct.nlattr* %54, null
  br i1 %55, label %56, label %71

56:                                               ; preds = %45
  %57 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %58 = load i64, i64* @NL80211_ATTR_VENDOR_DATA, align 8
  %59 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %57, i64 %58
  %60 = load %struct.nlattr*, %struct.nlattr** %59, align 8
  %61 = call i32* @nla_data(%struct.nlattr* %60)
  store i32* %61, i32** %9, align 8
  %62 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %63 = load i64, i64* @NL80211_ATTR_VENDOR_DATA, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i64 @nla_len(%struct.nlattr* %65)
  store i64 %66, i64* %10, align 8
  %67 = load i32, i32* @MSG_MSGDUMP, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i32 @wpa_hexdump(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %56, %45
  %72 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %73 = getelementptr inbounds %struct.wpa_driver_nl80211_data, %struct.wpa_driver_nl80211_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @nl80211_get_wiphy_index(i32 %74)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp sge i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %83, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %84, i32 %85)
  br label %98

87:                                               ; preds = %78, %71
  %88 = load i32, i32* %5, align 4
  switch i32 %88, label %95 [
    i32 128, label %89
  ]

89:                                               ; preds = %87
  %90 = load %struct.wpa_driver_nl80211_data*, %struct.wpa_driver_nl80211_data** %3, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = call i32 @nl80211_vendor_event_qca(%struct.wpa_driver_nl80211_data* %90, i32 %91, i32* %92, i64 %93)
  br label %98

95:                                               ; preds = %87
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = call i32 (i32, i8*, ...) @wpa_printf(i32 %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %98

98:                                               ; preds = %22, %82, %95, %89
  ret void
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @nl80211_get_wiphy_index(i32) #1

declare dso_local i32 @nl80211_vendor_event_qca(%struct.wpa_driver_nl80211_data*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
