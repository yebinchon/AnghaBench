; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_update_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_ctrl_iface.c_wpa_supplicant_ctrl_iface_update_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.wpa_ssid*, i32 }
%struct.wpa_ssid = type { i64, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"CTRL_IFACE: Failed to set network variable '%s'\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"bssid\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"bssid_hint\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"priority\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"psk\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ssid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_ssid*, i8*, i8*)* @wpa_supplicant_ctrl_iface_update_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_ctrl_iface_update_network(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call i32 @wpa_config_set(%struct.wpa_ssid* %11, i8* %12, i8* %13, i32 0)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 -1, i32* %5, align 4
  br label %97

21:                                               ; preds = %4
  %22 = load i32, i32* %10, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %97

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = call i64 @os_strcmp(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %25
  %30 = load i8*, i8** %8, align 8
  %31 = call i64 @os_strcmp(i8* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %59

33:                                               ; preds = %29
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @os_strcmp(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %42 = call i32 @wpa_sm_pmksa_cache_flush(i32 %40, %struct.wpa_ssid* %41)
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 2
  %45 = load %struct.wpa_ssid*, %struct.wpa_ssid** %44, align 8
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %47 = icmp eq %struct.wpa_ssid* %45, %46
  br i1 %47, label %53, label %48

48:                                               ; preds = %37
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %50 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %49, i32 0, i32 2
  %51 = load %struct.wpa_ssid*, %struct.wpa_ssid** %50, align 8
  %52 = icmp eq %struct.wpa_ssid* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48, %37
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %55 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @eapol_sm_invalidate_cached_session(i32 %56)
  br label %58

58:                                               ; preds = %53, %48
  br label %59

59:                                               ; preds = %58, %33, %29, %25
  %60 = load i8*, i8** %8, align 8
  %61 = call i64 @os_strcmp(i8* %60, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i8*, i8** %9, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 0
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 %67, 34
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %71 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %69, %63, %59
  %75 = load i8*, i8** %8, align 8
  %76 = call i64 @os_strcmp(i8* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %74
  %79 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %80 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78, %69
  %84 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %85 = call i32 @wpa_config_update_psk(%struct.wpa_ssid* %84)
  br label %96

86:                                               ; preds = %78, %74
  %87 = load i8*, i8** %8, align 8
  %88 = call i64 @os_strcmp(i8* %87, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %86
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %92 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @wpa_config_update_prio_list(i32 %93)
  br label %95

95:                                               ; preds = %90, %86
  br label %96

96:                                               ; preds = %95, %83
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %96, %24, %17
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @wpa_config_set(%struct.wpa_ssid*, i8*, i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i32 @wpa_sm_pmksa_cache_flush(i32, %struct.wpa_ssid*) #1

declare dso_local i32 @eapol_sm_invalidate_cached_session(i32) #1

declare dso_local i32 @wpa_config_update_psk(%struct.wpa_ssid*) #1

declare dso_local i32 @wpa_config_update_prio_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
