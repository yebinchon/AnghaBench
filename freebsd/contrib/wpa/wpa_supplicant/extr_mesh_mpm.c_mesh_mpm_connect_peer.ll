; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_connect_peer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_connect_peer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_3__*, %struct.wpa_ssid* }
%struct.TYPE_3__ = type { %struct.mesh_conf*, %struct.hostapd_data** }
%struct.mesh_conf = type { i64 }
%struct.hostapd_data = type { i32 }
%struct.wpa_ssid = type { i32 }
%struct.sta_info = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Mesh is not prepared yet\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"This command is available only with no_auto_peer mesh network\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"No such mesh peer\00", align 1
@PLINK_OPN_SNT = common dso_local global i64 0, align 8
@PLINK_ESTAB = common dso_local global i64 0, align 8
@SAE_NOTHING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"Specified peer is connecting/connected\00", align 1
@MESH_CONF_SEC_NONE = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@peer_add_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mesh_mpm_connect_peer(%struct.wpa_supplicant* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpa_ssid*, align 8
  %9 = alloca %struct.hostapd_data*, align 8
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca %struct.mesh_conf*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %13 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %12, i32 0, i32 1
  %14 = load %struct.wpa_ssid*, %struct.wpa_ssid** %13, align 8
  store %struct.wpa_ssid* %14, %struct.wpa_ssid** %8, align 8
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %16 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %3
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = call i32 @wpa_msg(%struct.wpa_supplicant* %20, i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %118

23:                                               ; preds = %3
  %24 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %25 = icmp ne %struct.wpa_ssid* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.wpa_ssid*, %struct.wpa_ssid** %8, align 8
  %28 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %26, %23
  %32 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %33 = load i32, i32* @MSG_INFO, align 4
  %34 = call i32 @wpa_msg(%struct.wpa_supplicant* %32, i32 %33, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %118

35:                                               ; preds = %26
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load %struct.hostapd_data**, %struct.hostapd_data*** %39, align 8
  %41 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %40, i64 0
  %42 = load %struct.hostapd_data*, %struct.hostapd_data** %41, align 8
  store %struct.hostapd_data* %42, %struct.hostapd_data** %9, align 8
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load %struct.mesh_conf*, %struct.mesh_conf** %46, align 8
  store %struct.mesh_conf* %47, %struct.mesh_conf** %11, align 8
  %48 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %48, i32* %49)
  store %struct.sta_info* %50, %struct.sta_info** %10, align 8
  %51 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %52 = icmp ne %struct.sta_info* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %35
  %54 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %55 = load i32, i32* @MSG_INFO, align 4
  %56 = call i32 @wpa_msg(%struct.wpa_supplicant* %54, i32 %55, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %118

57:                                               ; preds = %35
  %58 = load i64, i64* @PLINK_OPN_SNT, align 8
  %59 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %60 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sle i64 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %65 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PLINK_ESTAB, align 8
  %68 = icmp sle i64 %66, %67
  br i1 %68, label %82, label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %71 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = icmp ne %struct.TYPE_4__* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %76 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SAE_NOTHING, align 8
  %81 = icmp sgt i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %74, %63
  %83 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %84 = load i32, i32* @MSG_INFO, align 4
  %85 = call i32 @wpa_msg(%struct.wpa_supplicant* %83, i32 %84, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %118

86:                                               ; preds = %74, %69
  %87 = load %struct.mesh_conf*, %struct.mesh_conf** %11, align 8
  %88 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MESH_CONF_SEC_NONE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %94 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %95 = load i64, i64* @PLINK_OPN_SNT, align 8
  %96 = call i32 @mesh_mpm_plink_open(%struct.wpa_supplicant* %93, %struct.sta_info* %94, i64 %95)
  br label %117

97:                                               ; preds = %86
  %98 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %99 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %100 = call i32 @mesh_rsn_auth_sae_sta(%struct.wpa_supplicant* %98, %struct.sta_info* %99)
  %101 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %102 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* @ETH_ALEN, align 4
  %106 = call i32 @os_memcpy(i32 %103, i32* %104, i32 %105)
  %107 = load i32, i32* %7, align 4
  %108 = icmp eq i32 %107, -1
  br i1 %108, label %109, label %110

109:                                              ; preds = %97
  br label %112

110:                                              ; preds = %97
  %111 = load i32, i32* %7, align 4
  br label %112

112:                                              ; preds = %110, %109
  %113 = phi i32 [ 10, %109 ], [ %111, %110 ]
  %114 = load i32, i32* @peer_add_timer, align 4
  %115 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %116 = call i32 @eloop_register_timeout(i32 %113, i32 0, i32 %114, %struct.wpa_supplicant* %115, i32* null)
  br label %117

117:                                              ; preds = %112, %92
  store i32 0, i32* %4, align 4
  br label %118

118:                                              ; preds = %117, %82, %53, %31, %19
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32*) #1

declare dso_local i32 @mesh_mpm_plink_open(%struct.wpa_supplicant*, %struct.sta_info*, i64) #1

declare dso_local i32 @mesh_rsn_auth_sae_sta(%struct.wpa_supplicant*, %struct.sta_info*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
