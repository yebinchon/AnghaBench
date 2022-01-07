; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_get_psk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wpa_auth_glue.c_hostapd_wpa_auth_get_psk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.sta_info = type { i64, i64, %struct.hostapd_sta_wpa_psk_short*, i32, i32*, %struct.TYPE_4__* }
%struct.hostapd_sta_wpa_psk_short = type { i32*, %struct.hostapd_sta_wpa_psk_short*, i64, i32 }
%struct.TYPE_4__ = type { i32* }

@PMK_LEN = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@WLAN_AUTH_SAE = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_OWE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i32*, i64*, i32*)* @hostapd_wpa_auth_get_psk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hostapd_wpa_auth_get_psk(i8* %0, i32* %1, i32* %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hostapd_data*, align 8
  %14 = alloca %struct.sta_info*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.hostapd_sta_wpa_psk_short*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.hostapd_data*
  store %struct.hostapd_data* %18, %struct.hostapd_data** %13, align 8
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %20 = load i32*, i32** %8, align 8
  %21 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %19, i32* %20)
  store %struct.sta_info* %21, %struct.sta_info** %14, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32*, i32** %12, align 8
  store i32 0, i32* %25, align 4
  br label %26

26:                                               ; preds = %24, %6
  %27 = load i64*, i64** %11, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i64, i64* @PMK_LEN, align 8
  %31 = load i64*, i64** %11, align 8
  store i64 %30, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %34 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32*, i32** %9, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i32*, i32** %12, align 8
  %40 = call i32* @hostapd_get_psk(%struct.TYPE_6__* %35, i32* %36, i32* %37, i32* %38, i32* %39)
  store i32* %40, i32** %15, align 8
  %41 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %42 = icmp ne %struct.sta_info* %41, null
  br i1 %42, label %43, label %122

43:                                               ; preds = %32
  %44 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 2
  %46 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %45, align 8
  %47 = icmp ne %struct.hostapd_sta_wpa_psk_short* %46, null
  br i1 %47, label %48, label %122

48:                                               ; preds = %43
  %49 = load i32*, i32** %15, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %122, label %51

51:                                               ; preds = %48
  %52 = load i32*, i32** %12, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32*, i32** %12, align 8
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %54, %51
  %57 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %58 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %57, i32 0, i32 2
  %59 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %58, align 8
  %60 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %15, align 8
  %62 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %63 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %62, i32 0, i32 2
  %64 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %63, align 8
  store %struct.hostapd_sta_wpa_psk_short* %64, %struct.hostapd_sta_wpa_psk_short** %16, align 8
  br label %65

65:                                               ; preds = %117, %56
  %66 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %16, align 8
  %67 = icmp ne %struct.hostapd_sta_wpa_psk_short* %66, null
  br i1 %67, label %68, label %121

68:                                               ; preds = %65
  %69 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %16, align 8
  %70 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %68
  %74 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %16, align 8
  %75 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %78 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.hostapd_data*, %struct.hostapd_data** %13, align 8
  %84 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %16, align 8
  %90 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load i64, i64* @PMK_LEN, align 8
  %93 = call i32 @pbkdf2_sha1(i32 %76, i32 %82, i32 %88, i32 4096, i32* %91, i64 %92)
  %94 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %16, align 8
  %95 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %73, %68
  %97 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %16, align 8
  %98 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = icmp eq i32* %99, %100
  br i1 %101, label %102, label %116

102:                                              ; preds = %96
  %103 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %16, align 8
  %104 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %103, i32 0, i32 1
  %105 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %104, align 8
  %106 = icmp ne %struct.hostapd_sta_wpa_psk_short* %105, null
  br i1 %106, label %107, label %113

107:                                              ; preds = %102
  %108 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %16, align 8
  %109 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %108, i32 0, i32 1
  %110 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %109, align 8
  %111 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  br label %114

113:                                              ; preds = %102
  br label %114

114:                                              ; preds = %113, %107
  %115 = phi i32* [ %112, %107 ], [ null, %113 ]
  store i32* %115, i32** %15, align 8
  br label %121

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %16, align 8
  %119 = getelementptr inbounds %struct.hostapd_sta_wpa_psk_short, %struct.hostapd_sta_wpa_psk_short* %118, i32 0, i32 1
  %120 = load %struct.hostapd_sta_wpa_psk_short*, %struct.hostapd_sta_wpa_psk_short** %119, align 8
  store %struct.hostapd_sta_wpa_psk_short* %120, %struct.hostapd_sta_wpa_psk_short** %16, align 8
  br label %65

121:                                              ; preds = %114, %65
  br label %122

122:                                              ; preds = %121, %48, %43, %32
  %123 = load i32*, i32** %15, align 8
  ret i32* %123
}

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #1

declare dso_local i32* @hostapd_get_psk(%struct.TYPE_6__*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @pbkdf2_sha1(i32, i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
