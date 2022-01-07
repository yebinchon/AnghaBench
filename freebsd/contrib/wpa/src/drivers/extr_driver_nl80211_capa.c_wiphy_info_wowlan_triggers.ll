; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wiphy_info_wowlan_triggers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wiphy_info_wowlan_triggers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_driver_capa = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i32 }

@MAX_NL80211_WOWLAN_TRIG = common dso_local global i32 0, align 4
@NL80211_WOWLAN_TRIG_ANY = common dso_local global i64 0, align 8
@NL80211_WOWLAN_TRIG_DISCONNECT = common dso_local global i64 0, align 8
@NL80211_WOWLAN_TRIG_MAGIC_PKT = common dso_local global i64 0, align 8
@NL80211_WOWLAN_TRIG_GTK_REKEY_FAILURE = common dso_local global i64 0, align 8
@NL80211_WOWLAN_TRIG_EAP_IDENT_REQUEST = common dso_local global i64 0, align 8
@NL80211_WOWLAN_TRIG_4WAY_HANDSHAKE = common dso_local global i64 0, align 8
@NL80211_WOWLAN_TRIG_RFKILL_RELEASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_driver_capa*, %struct.nlattr*)* @wiphy_info_wowlan_triggers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiphy_info_wowlan_triggers(%struct.wpa_driver_capa* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.wpa_driver_capa*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_driver_capa* %0, %struct.wpa_driver_capa** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  %8 = load i32, i32* @MAX_NL80211_WOWLAN_TRIG, align 4
  %9 = add nsw i32 %8, 1
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %5, align 8
  %12 = alloca %struct.nlattr*, i64 %10, align 16
  store i64 %10, i64* %6, align 8
  %13 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %14 = icmp eq %struct.nlattr* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  br label %86

16:                                               ; preds = %2
  %17 = load i32, i32* @MAX_NL80211_WOWLAN_TRIG, align 4
  %18 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %19 = call i64 @nla_parse_nested(%struct.nlattr** %12, i32 %17, %struct.nlattr* %18, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %7, align 4
  br label %86

22:                                               ; preds = %16
  %23 = load i64, i64* @NL80211_WOWLAN_TRIG_ANY, align 8
  %24 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %23
  %25 = load %struct.nlattr*, %struct.nlattr** %24, align 8
  %26 = icmp ne %struct.nlattr* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %3, align 8
  %29 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i64, i64* @NL80211_WOWLAN_TRIG_DISCONNECT, align 8
  %33 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %32
  %34 = load %struct.nlattr*, %struct.nlattr** %33, align 8
  %35 = icmp ne %struct.nlattr* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %3, align 8
  %38 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i64, i64* @NL80211_WOWLAN_TRIG_MAGIC_PKT, align 8
  %42 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %41
  %43 = load %struct.nlattr*, %struct.nlattr** %42, align 8
  %44 = icmp ne %struct.nlattr* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %3, align 8
  %47 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  store i32 1, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i64, i64* @NL80211_WOWLAN_TRIG_GTK_REKEY_FAILURE, align 8
  %51 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %50
  %52 = load %struct.nlattr*, %struct.nlattr** %51, align 8
  %53 = icmp ne %struct.nlattr* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %3, align 8
  %56 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  store i32 1, i32* %57, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i64, i64* @NL80211_WOWLAN_TRIG_EAP_IDENT_REQUEST, align 8
  %60 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %59
  %61 = load %struct.nlattr*, %struct.nlattr** %60, align 8
  %62 = icmp ne %struct.nlattr* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %3, align 8
  %65 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i64, i64* @NL80211_WOWLAN_TRIG_4WAY_HANDSHAKE, align 8
  %69 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %68
  %70 = load %struct.nlattr*, %struct.nlattr** %69, align 8
  %71 = icmp ne %struct.nlattr* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %3, align 8
  %74 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  store i32 1, i32* %75, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i64, i64* @NL80211_WOWLAN_TRIG_RFKILL_RELEASE, align 8
  %78 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %12, i64 %77
  %79 = load %struct.nlattr*, %struct.nlattr** %78, align 8
  %80 = icmp ne %struct.nlattr* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.wpa_driver_capa*, %struct.wpa_driver_capa** %3, align 8
  %83 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 6
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %76
  store i32 0, i32* %7, align 4
  br label %86

86:                                               ; preds = %85, %21, %15
  %87 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %87)
  %88 = load i32, i32* %7, align 4
  switch i32 %88, label %90 [
    i32 0, label %89
    i32 1, label %89
  ]

89:                                               ; preds = %86, %86
  ret void

90:                                               ; preds = %86
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
