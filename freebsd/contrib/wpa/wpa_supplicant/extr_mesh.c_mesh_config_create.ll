; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_mesh_config_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_mesh_config_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mesh_conf = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.wpa_supplicant = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.wpa_ssid = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@WPA_KEY_MGMT_SAE = common dso_local global i32 0, align 4
@MESH_CONF_SEC_AUTH = common dso_local global i32 0, align 4
@MESH_CONF_SEC_AMPE = common dso_local global i32 0, align 4
@MESH_CONF_SEC_NONE = common dso_local global i32 0, align 4
@WPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"mesh: Invalid pairwise cipher\00", align 1
@WPA_CIPHER_GTK_NOT_USED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"mesh: Invalid group cipher\00", align 1
@NO_MGMT_FRAME_PROTECTION = common dso_local global i64 0, align 8
@WPA_CIPHER_AES_128_CMAC = common dso_local global i32 0, align 4
@MESH_PATH_PROTOCOL_HWMP = common dso_local global i32 0, align 4
@MESH_PATH_METRIC_AIRTIME = common dso_local global i32 0, align 4
@MESH_SYNC_METHOD_NEIGHBOR_OFFSET = common dso_local global i32 0, align 4
@MGMT_FRAME_PROTECTION_DEFAULT = common dso_local global i64 0, align 8
@WPA_DRIVER_CAPA_ENC_BIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mesh_conf* (%struct.wpa_supplicant*, %struct.wpa_ssid*)* @mesh_config_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mesh_conf* @mesh_config_create(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1) #0 {
  %3 = alloca %struct.mesh_conf*, align 8
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.mesh_conf*, align 8
  %7 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %5, align 8
  %8 = call %struct.mesh_conf* @os_zalloc(i32 80)
  store %struct.mesh_conf* %8, %struct.mesh_conf** %6, align 8
  %9 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %10 = icmp ne %struct.mesh_conf* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.mesh_conf* null, %struct.mesh_conf** %3, align 8
  br label %145

12:                                               ; preds = %2
  %13 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %14 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %13, i32 0, i32 16
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %20 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @os_memcpy(i32 %15, i32 %18, i32 %21)
  %23 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %24 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %27 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %26, i32 0, i32 15
  store i32 %25, i32* %27, align 8
  %28 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %29 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @WPA_KEY_MGMT_SAE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %12
  %35 = load i32, i32* @MESH_CONF_SEC_AUTH, align 4
  %36 = load i32, i32* @MESH_CONF_SEC_AMPE, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %39 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %48

42:                                               ; preds = %12
  %43 = load i32, i32* @MESH_CONF_SEC_NONE, align 4
  %44 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %45 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %34
  %49 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %50 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @wpa_pick_pairwise_cipher(i32 %51, i32 0)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %55, %48
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %61 = load i32, i32* @MSG_INFO, align 4
  %62 = call i32 @wpa_msg(%struct.wpa_supplicant* %60, i32 %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %63 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %64 = call i32 @os_free(%struct.mesh_conf* %63)
  store %struct.mesh_conf* null, %struct.mesh_conf** %3, align 8
  br label %145

65:                                               ; preds = %55
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %68 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %70 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @wpa_pick_group_cipher(i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %65
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @WPA_CIPHER_TKIP, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %83, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @WPA_CIPHER_GTK_NOT_USED, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %79, %75, %65
  %84 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %85 = load i32, i32* @MSG_INFO, align 4
  %86 = call i32 @wpa_msg(%struct.wpa_supplicant* %84, i32 %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %88 = call i32 @os_free(%struct.mesh_conf* %87)
  store %struct.mesh_conf* null, %struct.mesh_conf** %3, align 8
  br label %145

89:                                               ; preds = %79
  %90 = load i32, i32* %7, align 4
  %91 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %92 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %94 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @NO_MGMT_FRAME_PROTECTION, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %102

98:                                               ; preds = %89
  %99 = load i32, i32* @WPA_CIPHER_AES_128_CMAC, align 4
  %100 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %101 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %100, i32 0, i32 13
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %98, %89
  %103 = load i32, i32* @MESH_PATH_PROTOCOL_HWMP, align 4
  %104 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %105 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %104, i32 0, i32 12
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @MESH_PATH_METRIC_AIRTIME, align 4
  %107 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %108 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %107, i32 0, i32 11
  store i32 %106, i32* %108, align 8
  %109 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %110 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %109, i32 0, i32 10
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* @MESH_SYNC_METHOD_NEIGHBOR_OFFSET, align 4
  %112 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %113 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 4
  %114 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %115 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MESH_CONF_SEC_AUTH, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 1, i32 0
  %122 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %123 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  %124 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %125 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %128 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %127, i32 0, i32 8
  store i32 %126, i32* %128, align 8
  %129 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %130 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %133 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %132, i32 0, i32 7
  store i32 %131, i32* %133, align 4
  %134 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %135 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %138 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 8
  %139 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %140 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  %143 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %142, i32 0, i32 5
  store i32 %141, i32* %143, align 4
  %144 = load %struct.mesh_conf*, %struct.mesh_conf** %6, align 8
  store %struct.mesh_conf* %144, %struct.mesh_conf** %3, align 8
  br label %145

145:                                              ; preds = %102, %83, %59, %11
  %146 = load %struct.mesh_conf*, %struct.mesh_conf** %3, align 8
  ret %struct.mesh_conf* %146
}

declare dso_local %struct.mesh_conf* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @wpa_pick_pairwise_cipher(i32, i32) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @os_free(%struct.mesh_conf*) #1

declare dso_local i32 @wpa_pick_group_cipher(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
