; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_phy_info_iftype_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_phy_info_iftype_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.he_capabilities = type { i32, i32, i32*, i32*, i32* }
%struct.nlattr = type { i32 }

@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY = common dso_local global i64 0, align 8
@NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC = common dso_local global i64 0, align 8
@NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET = common dso_local global i64 0, align 8
@NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.he_capabilities*, i32, %struct.nlattr**, %struct.nlattr**)* @phy_info_iftype_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_info_iftype_copy(%struct.he_capabilities* %0, i32 %1, %struct.nlattr** %2, %struct.nlattr** %3) #0 {
  %5 = alloca %struct.he_capabilities*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nlattr**, align 8
  %8 = alloca %struct.nlattr**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.he_capabilities* %0, %struct.he_capabilities** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nlattr** %2, %struct.nlattr*** %7, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %20 [
    i32 129, label %12
    i32 130, label %14
    i32 131, label %16
    i32 128, label %18
  ]

12:                                               ; preds = %4
  %13 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  store i32 %13, i32* %9, align 4
  br label %21

14:                                               ; preds = %4
  %15 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  store i32 %15, i32* %9, align 4
  br label %21

16:                                               ; preds = %4
  %17 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  store i32 %17, i32* %9, align 4
  br label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @NL80211_IFTYPE_MESH_POINT, align 4
  store i32 %19, i32* %9, align 4
  br label %21

20:                                               ; preds = %4
  br label %135

21:                                               ; preds = %18, %16, %14, %12
  %22 = load %struct.nlattr**, %struct.nlattr*** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %22, i64 %24
  %26 = load %struct.nlattr*, %struct.nlattr** %25, align 8
  %27 = call i32 @nla_get_flag(%struct.nlattr* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %135

30:                                               ; preds = %21
  %31 = load %struct.he_capabilities*, %struct.he_capabilities** %5, align 8
  %32 = getelementptr inbounds %struct.he_capabilities, %struct.he_capabilities* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %34 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY, align 8
  %35 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %33, i64 %34
  %36 = load %struct.nlattr*, %struct.nlattr** %35, align 8
  %37 = icmp ne %struct.nlattr* %36, null
  br i1 %37, label %38, label %58

38:                                               ; preds = %30
  %39 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %40 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY, align 8
  %41 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %39, i64 %40
  %42 = load %struct.nlattr*, %struct.nlattr** %41, align 8
  %43 = call i64 @nla_len(%struct.nlattr* %42)
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %10, align 8
  %45 = icmp ugt i64 %44, 8
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i64 8, i64* %10, align 8
  br label %47

47:                                               ; preds = %46, %38
  %48 = load %struct.he_capabilities*, %struct.he_capabilities** %5, align 8
  %49 = getelementptr inbounds %struct.he_capabilities, %struct.he_capabilities* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %52 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_PHY, align 8
  %53 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %51, i64 %52
  %54 = load %struct.nlattr*, %struct.nlattr** %53, align 8
  %55 = call i32 @nla_data(%struct.nlattr* %54)
  %56 = load i64, i64* %10, align 8
  %57 = call i32 @os_memcpy(i32* %50, i32 %55, i64 %56)
  br label %58

58:                                               ; preds = %47, %30
  %59 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %60 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC, align 8
  %61 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %59, i64 %60
  %62 = load %struct.nlattr*, %struct.nlattr** %61, align 8
  %63 = icmp ne %struct.nlattr* %62, null
  br i1 %63, label %64, label %84

64:                                               ; preds = %58
  %65 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %66 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC, align 8
  %67 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %65, i64 %66
  %68 = load %struct.nlattr*, %struct.nlattr** %67, align 8
  %69 = call i64 @nla_len(%struct.nlattr* %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = icmp ugt i64 %70, 8
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  store i64 8, i64* %10, align 8
  br label %73

73:                                               ; preds = %72, %64
  %74 = load %struct.he_capabilities*, %struct.he_capabilities** %5, align 8
  %75 = getelementptr inbounds %struct.he_capabilities, %struct.he_capabilities* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %78 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_MAC, align 8
  %79 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %77, i64 %78
  %80 = load %struct.nlattr*, %struct.nlattr** %79, align 8
  %81 = call i32 @nla_data(%struct.nlattr* %80)
  %82 = load i64, i64* %10, align 8
  %83 = call i32 @os_memcpy(i32* %76, i32 %81, i64 %82)
  br label %84

84:                                               ; preds = %73, %58
  %85 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %86 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET, align 8
  %87 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %85, i64 %86
  %88 = load %struct.nlattr*, %struct.nlattr** %87, align 8
  %89 = icmp ne %struct.nlattr* %88, null
  br i1 %89, label %90, label %110

90:                                               ; preds = %84
  %91 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %92 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET, align 8
  %93 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %91, i64 %92
  %94 = load %struct.nlattr*, %struct.nlattr** %93, align 8
  %95 = call i64 @nla_len(%struct.nlattr* %94)
  store i64 %95, i64* %10, align 8
  %96 = load i64, i64* %10, align 8
  %97 = icmp ugt i64 %96, 8
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  store i64 8, i64* %10, align 8
  br label %99

99:                                               ; preds = %98, %90
  %100 = load %struct.he_capabilities*, %struct.he_capabilities** %5, align 8
  %101 = getelementptr inbounds %struct.he_capabilities, %struct.he_capabilities* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %104 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_MCS_SET, align 8
  %105 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %103, i64 %104
  %106 = load %struct.nlattr*, %struct.nlattr** %105, align 8
  %107 = call i32 @nla_data(%struct.nlattr* %106)
  %108 = load i64, i64* %10, align 8
  %109 = call i32 @os_memcpy(i32* %102, i32 %107, i64 %108)
  br label %110

110:                                              ; preds = %99, %84
  %111 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %112 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE, align 8
  %113 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %111, i64 %112
  %114 = load %struct.nlattr*, %struct.nlattr** %113, align 8
  %115 = icmp ne %struct.nlattr* %114, null
  br i1 %115, label %116, label %135

116:                                              ; preds = %110
  %117 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %118 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE, align 8
  %119 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %117, i64 %118
  %120 = load %struct.nlattr*, %struct.nlattr** %119, align 8
  %121 = call i64 @nla_len(%struct.nlattr* %120)
  store i64 %121, i64* %10, align 8
  %122 = load i64, i64* %10, align 8
  %123 = icmp ugt i64 %122, 4
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i64 4, i64* %10, align 8
  br label %125

125:                                              ; preds = %124, %116
  %126 = load %struct.he_capabilities*, %struct.he_capabilities** %5, align 8
  %127 = getelementptr inbounds %struct.he_capabilities, %struct.he_capabilities* %126, i32 0, i32 1
  %128 = load %struct.nlattr**, %struct.nlattr*** %7, align 8
  %129 = load i64, i64* @NL80211_BAND_IFTYPE_ATTR_HE_CAP_PPE, align 8
  %130 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %128, i64 %129
  %131 = load %struct.nlattr*, %struct.nlattr** %130, align 8
  %132 = call i32 @nla_data(%struct.nlattr* %131)
  %133 = load i64, i64* %10, align 8
  %134 = call i32 @os_memcpy(i32* %127, i32 %132, i64 %133)
  br label %135

135:                                              ; preds = %20, %29, %125, %110
  ret void
}

declare dso_local i32 @nla_get_flag(%struct.nlattr*) #1

declare dso_local i64 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @nla_data(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
