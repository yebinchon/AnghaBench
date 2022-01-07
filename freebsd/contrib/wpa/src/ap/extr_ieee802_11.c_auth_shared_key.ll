; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_auth_shared_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ieee802_11.c_auth_shared_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32 }
%struct.sta_info = type { i32*, i32, i32, i32 }

@HOSTAPD_MODULE_IEEE80211 = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"authentication (shared key, transaction %d)\00", align 1
@WLAN_AUTH_CHALLENGE_LEN = common dso_local global i32 0, align 4
@WLAN_STATUS_UNSPECIFIED_FAILURE = common dso_local global i32 0, align 4
@HOSTAPD_LEVEL_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"shared key authentication - invalid challenge-response\00", align 1
@WLAN_STATUS_CHALLENGE_FAIL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"authentication OK (shared key)\00", align 1
@WLAN_STA_AUTH = common dso_local global i32 0, align 4
@WPA_AUTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.sta_info*, i32, i32*, i32)* @auth_shared_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @auth_shared_key(%struct.hostapd_data* %0, %struct.sta_info* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hostapd_data*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [8 x i32], align 16
  store %struct.hostapd_data* %0, %struct.hostapd_data** %7, align 8
  store %struct.sta_info* %1, %struct.sta_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %14 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %15 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %18 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %19 = load i32, i32* %9, align 4
  %20 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %13, i32 %16, i32 %17, i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %59

23:                                               ; preds = %5
  %24 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %25 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %58, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %30 = call i32* @os_zalloc(i32 %29)
  %31 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %32 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %31, i32 0, i32 0
  store i32* %30, i32** %32, align 8
  %33 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %34 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %38, i32* %6, align 4
  br label %116

39:                                               ; preds = %28
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %41 = call i64 @os_get_random(i32* %40, i32 32)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @os_free(i32* %46)
  %48 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %49 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %48, i32 0, i32 0
  store i32* null, i32** %49, align 8
  %50 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %50, i32* %6, align 4
  br label %116

51:                                               ; preds = %39
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %53 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %54 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %57 = call i32 @rc4_skip(i32* %52, i32 32, i32 0, i32* %55, i32 %56)
  br label %58

58:                                               ; preds = %51, %23
  store i32 0, i32* %6, align 4
  br label %116

59:                                               ; preds = %5
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 3
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* @WLAN_STATUS_UNSPECIFIED_FAILURE, align 4
  store i32 %63, i32* %6, align 4
  br label %116

64:                                               ; preds = %59
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %83

67:                                               ; preds = %64
  %68 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %69 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %83

72:                                               ; preds = %67
  %73 = load i32*, i32** %10, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %83

75:                                               ; preds = %72
  %76 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %77 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* @WLAN_AUTH_CHALLENGE_LEN, align 4
  %81 = call i64 @os_memcmp_const(i32* %78, i32* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %75, %72, %67, %64
  %84 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %85 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %86 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %89 = load i32, i32* @HOSTAPD_LEVEL_INFO, align 4
  %90 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %84, i32 %87, i32 %88, i32 %89, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @WLAN_STATUS_CHALLENGE_FAIL, align 4
  store i32 %91, i32* %6, align 4
  br label %116

92:                                               ; preds = %75
  %93 = load %struct.hostapd_data*, %struct.hostapd_data** %7, align 8
  %94 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %95 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @HOSTAPD_MODULE_IEEE80211, align 4
  %98 = load i32, i32* @HOSTAPD_LEVEL_DEBUG, align 4
  %99 = call i32 (%struct.hostapd_data*, i32, i32, i32, i8*, ...) @hostapd_logger(%struct.hostapd_data* %93, i32 %96, i32 %97, i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %100 = load i32, i32* @WLAN_STA_AUTH, align 4
  %101 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %102 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %106 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @WPA_AUTH, align 4
  %109 = call i32 @wpa_auth_sm_event(i32 %107, i32 %108)
  %110 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %111 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @os_free(i32* %112)
  %114 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %115 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %114, i32 0, i32 0
  store i32* null, i32** %115, align 8
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %92, %83, %62, %58, %43, %37
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @hostapd_logger(%struct.hostapd_data*, i32, i32, i32, i8*, ...) #1

declare dso_local i32* @os_zalloc(i32) #1

declare dso_local i64 @os_get_random(i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @rc4_skip(i32*, i32, i32, i32*, i32) #1

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #1

declare dso_local i32 @wpa_auth_sm_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
