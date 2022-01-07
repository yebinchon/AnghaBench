; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_wps_success.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_wps_success.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, %struct.TYPE_2__*, i32, i32, i32, %struct.wpa_ssid* }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_ssid = type { i64, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"P2P: Ignore WPS success event - P2P provisioning not in progress\00", align 1
@WPAS_MODE_INFRA = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@wpas_p2p_group_formation_timeout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [84 x i8] c"P2P: Re-start group formation timeout (%d seconds) as client for initial connection\00", align 1
@P2P_MAX_INITIAL_CONN_WAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [80 x i8] c"P2P: Re-start group formation timeout (%d seconds) as GO for initial connection\00", align 1
@P2P_MAX_INITIAL_CONN_WAIT_GO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wpas_p2p_wps_success(%struct.wpa_supplicant* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_ssid*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %11 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %10, i32 0, i32 5
  %12 = load %struct.wpa_ssid*, %struct.wpa_ssid** %11, align 8
  store %struct.wpa_ssid* %12, %struct.wpa_ssid** %7, align 8
  %13 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %14 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @MSG_DEBUG, align 4
  %19 = call i32 @wpa_printf(i32 %18, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  br label %118

20:                                               ; preds = %3
  %21 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %22 = icmp ne %struct.wpa_ssid* %21, null
  br i1 %22, label %23, label %54

23:                                               ; preds = %20
  %24 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %25 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WPAS_MODE_INFRA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %54

29:                                               ; preds = %23
  %30 = load i32, i32* @ETH_ALEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %8, align 8
  %33 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %9, align 8
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @os_memcpy(i32* %33, i32 %36, i32 %37)
  %39 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %41 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %44 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @wpas_p2p_persistent_group(%struct.wpa_supplicant* %39, i32* %33, i32 %42, i32 %45)
  %47 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %48 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @p2p_clear_provisioning_info(i64 %51, i32* %33)
  %53 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %53)
  br label %54

54:                                               ; preds = %29, %23, %20
  %55 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %56 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %57 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @eloop_cancel_timeout(i32 %55, i32 %58, i32* null)
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %61 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %63 = icmp ne %struct.wpa_ssid* %62, null
  br i1 %63, label %64, label %83

64:                                               ; preds = %54
  %65 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %66 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @WPAS_MODE_INFRA, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %64
  %71 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = load i32, i32* @P2P_MAX_INITIAL_CONN_WAIT, align 4
  %74 = call i32 @wpa_dbg(%struct.wpa_supplicant* %71, i32 %72, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @P2P_MAX_INITIAL_CONN_WAIT, align 4
  %76 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @eloop_register_timeout(i32 %75, i32 0, i32 %76, i32 %79, i32* null)
  %81 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %82 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %100

83:                                               ; preds = %64, %54
  %84 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %85 = icmp ne %struct.wpa_ssid* %84, null
  br i1 %85, label %86, label %99

86:                                               ; preds = %83
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = load i32, i32* @P2P_MAX_INITIAL_CONN_WAIT_GO, align 4
  %90 = call i32 @wpa_dbg(%struct.wpa_supplicant* %87, i32 %88, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @P2P_MAX_INITIAL_CONN_WAIT_GO, align 4
  %92 = load i32, i32* @wpas_p2p_group_formation_timeout, align 4
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %94 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @eloop_register_timeout(i32 %91, i32 0, i32 %92, i32 %95, i32* null)
  %97 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %98 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  br label %99

99:                                               ; preds = %86, %83
  br label %100

100:                                              ; preds = %99, %70
  %101 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %102 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %101, i32 0, i32 1
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %115

107:                                              ; preds = %100
  %108 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %109 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32*, i32** %5, align 8
  %114 = call i32 @p2p_wps_success_cb(i64 %112, i32* %113)
  br label %115

115:                                              ; preds = %107, %100
  %116 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %117 = call i32 @wpas_group_formation_completed(%struct.wpa_supplicant* %116, i32 1, i32 0)
  br label %118

118:                                              ; preds = %115, %17
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @wpas_p2p_persistent_group(%struct.wpa_supplicant*, i32*, i32, i32) #1

declare dso_local i32 @p2p_clear_provisioning_info(i64, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @eloop_cancel_timeout(i32, i32, i32*) #1

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @p2p_wps_success_cb(i64, i32*) #1

declare dso_local i32 @wpas_group_formation_completed(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
