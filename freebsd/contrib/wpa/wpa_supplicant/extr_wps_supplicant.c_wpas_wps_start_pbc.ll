; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_start_pbc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_wps_supplicant.c_wpas_wps_start_pbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.wpa_ssid = type { i32, i32, i32, i32, %struct.TYPE_4__, i64, i64 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"pbc=1%s\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c" multi_ap=1\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"phase1\00", align 1
@WPS_EV_PBC_ACTIVE = common dso_local global i32 0, align 4
@WPS_PBC_WALK_TIME = common dso_local global i32 0, align 4
@wpas_wps_timeout = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_wps_start_pbc(%struct.wpa_supplicant* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_supplicant*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_ssid*, align 8
  %11 = alloca [32 x i8], align 16
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %13 = call i32 @wpas_clear_wps(%struct.wpa_supplicant* %12)
  %14 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = call %struct.wpa_ssid* @wpas_wps_add_network(%struct.wpa_supplicant* %14, i32 0, i32* null, i32* %15)
  store %struct.wpa_ssid* %16, %struct.wpa_ssid** %10, align 8
  %17 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %18 = icmp eq %struct.wpa_ssid* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %73

20:                                               ; preds = %4
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %22 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %25 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %20
  %29 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %30 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %29, i32 0, i32 2
  store i32 2, i32* %30, align 8
  br label %31

31:                                               ; preds = %28, %20
  %32 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %37 = call i32 @os_snprintf(i8* %32, i32 32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %11, i64 0, i64 0
  %40 = call i64 @wpa_config_set_quoted(%struct.wpa_ssid* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 -1, i32* %5, align 4
  br label %73

43:                                               ; preds = %31
  %44 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %45 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %50 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %53 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i64 %51, i64* %54, align 8
  br label %55

55:                                               ; preds = %48, %43
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %60 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %59, i32 0, i32 3
  store i32 1, i32* %60, align 4
  br label %61

61:                                               ; preds = %58, %55
  %62 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %63 = load i32, i32* @WPS_EV_PBC_ACTIVE, align 4
  %64 = call i32 @wpa_supplicant_wps_event(%struct.wpa_supplicant* %62, i32 %63, i32* null)
  %65 = load i32, i32* @WPS_PBC_WALK_TIME, align 4
  %66 = load i32, i32* @wpas_wps_timeout, align 4
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %68 = call i32 @eloop_register_timeout(i32 %65, i32 0, i32 %66, %struct.wpa_supplicant* %67, i32* null)
  %69 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %6, align 8
  %70 = load %struct.wpa_ssid*, %struct.wpa_ssid** %10, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @wpas_wps_reassoc(%struct.wpa_supplicant* %69, %struct.wpa_ssid* %70, i32* %71, i32 0)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %61, %42, %19
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @wpas_clear_wps(%struct.wpa_supplicant*) #1

declare dso_local %struct.wpa_ssid* @wpas_wps_add_network(%struct.wpa_supplicant*, i32, i32*, i32*) #1

declare dso_local i32 @os_snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @wpa_config_set_quoted(%struct.wpa_ssid*, i8*, i8*) #1

declare dso_local i32 @wpa_supplicant_wps_event(%struct.wpa_supplicant*, i32, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

declare dso_local i32 @wpas_wps_reassoc(%struct.wpa_supplicant*, %struct.wpa_ssid*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
