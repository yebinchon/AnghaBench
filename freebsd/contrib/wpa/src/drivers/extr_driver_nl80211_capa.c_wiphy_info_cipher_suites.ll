; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wiphy_info_cipher_suites.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_wiphy_info_cipher_suites.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy_info_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nlattr = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"nl80211: Supported cipher %02x-%02x-%02x:%d\00", align 1
@WPA_DRIVER_CAPA_ENC_CCMP_256 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_GCMP_256 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_CCMP = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_GCMP = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_TKIP = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_WEP104 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_WEP40 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_BIP = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_BIP_GMAC_128 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_BIP_GMAC_256 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_BIP_CMAC_256 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_GTK_NOT_USED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy_info_data*, %struct.nlattr*)* @wiphy_info_cipher_suites to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiphy_info_cipher_suites(%struct.wiphy_info_data* %0, %struct.nlattr* %1) #0 {
  %3 = alloca %struct.wiphy_info_data*, align 8
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.wiphy_info_data* %0, %struct.wiphy_info_data** %3, align 8
  store %struct.nlattr* %1, %struct.nlattr** %4, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %10 = icmp eq %struct.nlattr* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %143

12:                                               ; preds = %2
  %13 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %14 = call i32 @nla_len(%struct.nlattr* %13)
  %15 = sext i32 %14 to i64
  %16 = udiv i64 %15, 4
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %19 = call i32* @nla_data(%struct.nlattr* %18)
  store i32* %19, i32** %7, align 8
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %140, %12
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %143

24:                                               ; preds = %20
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 24
  %33 = load i32, i32* %8, align 4
  %34 = ashr i32 %33, 16
  %35 = and i32 %34, 255
  %36 = load i32, i32* %8, align 4
  %37 = ashr i32 %36, 8
  %38 = and i32 %37, 255
  %39 = load i32, i32* %8, align 4
  %40 = and i32 %39, 255
  %41 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38, i32 %40)
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %139 [
    i32 134, label %43
    i32 132, label %51
    i32 135, label %59
    i32 133, label %67
    i32 130, label %75
    i32 129, label %83
    i32 128, label %91
    i32 139, label %99
    i32 137, label %107
    i32 136, label %115
    i32 138, label %123
    i32 131, label %131
  ]

43:                                               ; preds = %24
  %44 = load i32, i32* @WPA_DRIVER_CAPA_ENC_CCMP_256, align 4
  %45 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %46 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %44
  store i32 %50, i32* %48, align 4
  br label %139

51:                                               ; preds = %24
  %52 = load i32, i32* @WPA_DRIVER_CAPA_ENC_GCMP_256, align 4
  %53 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %54 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %52
  store i32 %58, i32* %56, align 4
  br label %139

59:                                               ; preds = %24
  %60 = load i32, i32* @WPA_DRIVER_CAPA_ENC_CCMP, align 4
  %61 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %62 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %60
  store i32 %66, i32* %64, align 4
  br label %139

67:                                               ; preds = %24
  %68 = load i32, i32* @WPA_DRIVER_CAPA_ENC_GCMP, align 4
  %69 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %70 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 4
  br label %139

75:                                               ; preds = %24
  %76 = load i32, i32* @WPA_DRIVER_CAPA_ENC_TKIP, align 4
  %77 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %78 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %76
  store i32 %82, i32* %80, align 4
  br label %139

83:                                               ; preds = %24
  %84 = load i32, i32* @WPA_DRIVER_CAPA_ENC_WEP104, align 4
  %85 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %86 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  br label %139

91:                                               ; preds = %24
  %92 = load i32, i32* @WPA_DRIVER_CAPA_ENC_WEP40, align 4
  %93 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %94 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %92
  store i32 %98, i32* %96, align 4
  br label %139

99:                                               ; preds = %24
  %100 = load i32, i32* @WPA_DRIVER_CAPA_ENC_BIP, align 4
  %101 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %102 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 4
  br label %139

107:                                              ; preds = %24
  %108 = load i32, i32* @WPA_DRIVER_CAPA_ENC_BIP_GMAC_128, align 4
  %109 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %110 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %108
  store i32 %114, i32* %112, align 4
  br label %139

115:                                              ; preds = %24
  %116 = load i32, i32* @WPA_DRIVER_CAPA_ENC_BIP_GMAC_256, align 4
  %117 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %118 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %116
  store i32 %122, i32* %120, align 4
  br label %139

123:                                              ; preds = %24
  %124 = load i32, i32* @WPA_DRIVER_CAPA_ENC_BIP_CMAC_256, align 4
  %125 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %126 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %124
  store i32 %130, i32* %128, align 4
  br label %139

131:                                              ; preds = %24
  %132 = load i32, i32* @WPA_DRIVER_CAPA_ENC_GTK_NOT_USED, align 4
  %133 = load %struct.wiphy_info_data*, %struct.wiphy_info_data** %3, align 8
  %134 = getelementptr inbounds %struct.wiphy_info_data, %struct.wiphy_info_data* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %132
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %24, %131, %123, %115, %107, %99, %91, %83, %75, %67, %59, %51, %43
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %20

143:                                              ; preds = %11, %20
  ret void
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
