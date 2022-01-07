; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_phy_info_iftype.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_phy_info_iftype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32* }
%struct.nlattr = type { i32 }

@NL80211_BAND_IFTYPE_ATTR_MAX = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MAX = common dso_local global i32 0, align 4
@NL80211_BAND_IFTYPE_ATTR_IFTYPES = common dso_local global i64 0, align 8
@NL_STOP = common dso_local global i32 0, align 4
@IEEE80211_MODE_NUM = common dso_local global i32 0, align 4
@NL_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_hw_modes*, %struct.nlattr*)* @phy_info_iftype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phy_info_iftype(%struct.hostapd_hw_modes* %0, %struct.nlattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hostapd_hw_modes*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %4, align 8
  store %struct.nlattr* %1, %struct.nlattr** %5, align 8
  %11 = load i32, i32* @NL80211_BAND_IFTYPE_ATTR_MAX, align 4
  %12 = add nsw i32 %11, 1
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca %struct.nlattr*, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @NL80211_IFTYPE_MAX, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = alloca %struct.nlattr*, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load i32, i32* @NL80211_BAND_IFTYPE_ATTR_MAX, align 4
  %21 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %22 = call i32 @nla_data(%struct.nlattr* %21)
  %23 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %24 = call i32 @nla_len(%struct.nlattr* %23)
  %25 = call i32 @nla_parse(%struct.nlattr** %15, i32 %20, i32 %22, i32 %24, i32* null)
  %26 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_IFTYPES, align 8
  %27 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %26
  %28 = load %struct.nlattr*, %struct.nlattr** %27, align 8
  %29 = icmp ne %struct.nlattr* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @NL_STOP, align 4
  store i32 %31, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

32:                                               ; preds = %2
  %33 = load i32, i32* @NL80211_IFTYPE_MAX, align 4
  %34 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_IFTYPES, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %15, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = call i64 @nla_parse_nested(%struct.nlattr** %19, i32 %33, %struct.nlattr* %36, i32* null)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @NL_STOP, align 4
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

41:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %42

42:                                               ; preds = %55, %41
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @IEEE80211_MODE_NUM, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %4, align 8
  %48 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @phy_info_iftype_copy(i32* %52, i32 %53, %struct.nlattr** %15, %struct.nlattr** %19)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %9, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %9, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load i32, i32* @NL_OK, align 4
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %58, %39, %30
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nla_parse(%struct.nlattr**, i32, i32, i32, i32*) #2

declare dso_local i32 @nla_data(%struct.nlattr*) #2

declare dso_local i32 @nla_len(%struct.nlattr*) #2

declare dso_local i64 @nla_parse_nested(%struct.nlattr**, i32, %struct.nlattr*, i32*) #2

declare dso_local i32 @phy_info_iftype_copy(i32*, i32, %struct.nlattr**, %struct.nlattr**) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
