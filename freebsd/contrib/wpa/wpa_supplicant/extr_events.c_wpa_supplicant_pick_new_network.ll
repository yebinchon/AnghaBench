; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_pick_new_network.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_events.c_wpa_supplicant_pick_new_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_ssid = type { i64, i32, i32, i32, %struct.wpa_ssid* }
%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.wpa_ssid** }

@WPAS_MODE_IBSS = common dso_local global i64 0, align 8
@WPA_KEY_MGMT_NONE = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_WPA_NONE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"IBSS RSN not supported in the build - cannot use the profile for SSID '%s'\00", align 1
@WPAS_MODE_AP = common dso_local global i64 0, align 8
@WPAS_MODE_MESH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpa_ssid* (%struct.wpa_supplicant*)* @wpa_supplicant_pick_new_network to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpa_ssid* @wpa_supplicant_pick_new_network(%struct.wpa_supplicant* %0) #0 {
  %2 = alloca %struct.wpa_ssid*, align 8
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %85, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %9 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %88

14:                                               ; preds = %6
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.wpa_ssid**, %struct.wpa_ssid*** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.wpa_ssid*, %struct.wpa_ssid** %19, i64 %21
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %22, align 8
  store %struct.wpa_ssid* %23, %struct.wpa_ssid** %5, align 8
  br label %24

24:                                               ; preds = %80, %14
  %25 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %26 = icmp ne %struct.wpa_ssid* %25, null
  br i1 %26, label %27, label %84

27:                                               ; preds = %24
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %30 = call i64 @wpas_network_disabled(%struct.wpa_supplicant* %28, %struct.wpa_ssid* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %80

33:                                               ; preds = %27
  %34 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %35 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WPAS_MODE_IBSS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %59

39:                                               ; preds = %33
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %41 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @WPA_KEY_MGMT_NONE, align 4
  %44 = load i32, i32* @WPA_KEY_MGMT_WPA_NONE, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %39
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %50 = load i32, i32* @MSG_INFO, align 4
  %51 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %52 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %55 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @wpa_ssid_txt(i32 %53, i32 %56)
  %58 = call i32 @wpa_msg(%struct.wpa_supplicant* %49, i32 %50, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %80

59:                                               ; preds = %39, %33
  %60 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %61 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @WPAS_MODE_IBSS, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %67 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @WPAS_MODE_AP, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %65
  %72 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %73 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @WPAS_MODE_MESH, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %71, %65, %59
  %78 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  store %struct.wpa_ssid* %78, %struct.wpa_ssid** %2, align 8
  br label %89

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %48, %32
  %81 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %82 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %81, i32 0, i32 4
  %83 = load %struct.wpa_ssid*, %struct.wpa_ssid** %82, align 8
  store %struct.wpa_ssid* %83, %struct.wpa_ssid** %5, align 8
  br label %24

84:                                               ; preds = %24
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %4, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %6

88:                                               ; preds = %6
  store %struct.wpa_ssid* null, %struct.wpa_ssid** %2, align 8
  br label %89

89:                                               ; preds = %88, %77
  %90 = load %struct.wpa_ssid*, %struct.wpa_ssid** %2, align 8
  ret %struct.wpa_ssid* %90
}

declare dso_local i64 @wpas_network_disabled(%struct.wpa_supplicant*, %struct.wpa_ssid*) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*, i32) #1

declare dso_local i32 @wpa_ssid_txt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
