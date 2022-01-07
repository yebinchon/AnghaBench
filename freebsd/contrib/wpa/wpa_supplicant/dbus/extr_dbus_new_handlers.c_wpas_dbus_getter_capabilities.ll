; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_capabilities.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/dbus/extr_dbus_new_handlers.c_wpas_dbus_getter_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_dbus_property_desc = type { i32 }
%struct.wpa_supplicant = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wpa_driver_capa = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"active\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"passive\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"ssid\00", align 1
@__const.wpas_dbus_getter_capabilities.scans = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0)], align 16
@DBUS_TYPE_VARIANT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"a{sv}\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ccmp\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"tkip\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@__const.wpas_dbus_getter_capabilities.args = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0)], align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"Pairwise\00", align 1
@WPA_DRIVER_CAPA_ENC_CCMP_256 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"ccmp-256\00", align 1
@WPA_DRIVER_CAPA_ENC_GCMP_256 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c"gcmp-256\00", align 1
@WPA_DRIVER_CAPA_ENC_CCMP = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_GCMP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"gcmp\00", align 1
@WPA_DRIVER_CAPA_ENC_TKIP = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"wep104\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"wep40\00", align 1
@__const.wpas_dbus_getter_capabilities.args.13 = private unnamed_addr constant [4 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)], align 16
@.str.14 = private unnamed_addr constant [6 x i8] c"Group\00", align 1
@WPA_DRIVER_CAPA_ENC_WEP104 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_ENC_WEP40 = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [10 x i8] c"GroupMgmt\00", align 1
@WPA_DRIVER_CAPA_ENC_BIP = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [13 x i8] c"aes-128-cmac\00", align 1
@WPA_DRIVER_CAPA_ENC_BIP_GMAC_128 = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"bip-gmac-128\00", align 1
@WPA_DRIVER_CAPA_ENC_BIP_GMAC_256 = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [13 x i8] c"bip-gmac-256\00", align 1
@WPA_DRIVER_CAPA_ENC_BIP_CMAC_256 = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [13 x i8] c"bip-cmac-256\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"wpa-psk\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"wpa-eap\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"ieee8021x\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"wpa-none\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"KeyMgmt\00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_WPA = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_WPA2 = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_FT = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [11 x i8] c"wpa-ft-eap\00", align 1
@WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK = common dso_local global i32 0, align 4
@WPA_DRIVER_CAPA_KEY_MGMT_FT_PSK = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [11 x i8] c"wpa-ft-psk\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"rsn\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"wpa\00", align 1
@__const.wpas_dbus_getter_capabilities.args.29 = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0)], align 16
@.str.30 = private unnamed_addr constant [9 x i8] c"Protocol\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"shared\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"leap\00", align 1
@__const.wpas_dbus_getter_capabilities.args.34 = private unnamed_addr constant [3 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i32 0, i32 0)], align 16
@.str.35 = private unnamed_addr constant [8 x i8] c"AuthAlg\00", align 1
@WPA_DRIVER_AUTH_OPEN = common dso_local global i32 0, align 4
@WPA_DRIVER_AUTH_SHARED = common dso_local global i32 0, align 4
@WPA_DRIVER_AUTH_LEAP = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [5 x i8] c"Scan\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"Modes\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"infrastructure\00", align 1
@WPA_DRIVER_FLAGS_IBSS = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [7 x i8] c"ad-hoc\00", align 1
@WPA_DRIVER_FLAGS_AP = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [3 x i8] c"ap\00", align 1
@WPA_DRIVER_FLAGS_P2P_CAPABLE = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [4 x i8] c"p2p\00", align 1
@.str.42 = private unnamed_addr constant [12 x i8] c"MaxScanSSID\00", align 1
@TRUE = common dso_local global i32 0, align 4
@DBUS_ERROR_NO_MEMORY = common dso_local global i32 0, align 4
@.str.43 = private unnamed_addr constant [10 x i8] c"no memory\00", align 1
@FALSE = common dso_local global i32 0, align 4
@WPA_DRIVER_FLAGS_MESH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_dbus_getter_capabilities(%struct.wpa_dbus_property_desc* %0, i32* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_dbus_property_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.wpa_supplicant*, align 8
  %11 = alloca %struct.wpa_driver_capa, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca [3 x i8*], align 16
  %19 = alloca [3 x i8*], align 16
  %20 = alloca [4 x i8*], align 16
  %21 = alloca [5 x i8*], align 16
  %22 = alloca [2 x i8*], align 16
  %23 = alloca [3 x i8*], align 16
  %24 = alloca i32, align 4
  store %struct.wpa_dbus_property_desc* %0, %struct.wpa_dbus_property_desc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = bitcast i8* %25 to %struct.wpa_supplicant*
  store %struct.wpa_supplicant* %26, %struct.wpa_supplicant** %10, align 8
  %27 = bitcast [3 x i8*]* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %27, i8* align 16 bitcast ([3 x i8*]* @__const.wpas_dbus_getter_capabilities.scans to i8*), i64 24, i1 false)
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* @DBUS_TYPE_VARIANT, align 4
  %30 = call i32 @dbus_message_iter_open_container(i32* %28, i32 %29, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %17)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = call i32 @wpa_dbus_dict_open_write(i32* %17, i32* %13)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32, %4
  br label %508

36:                                               ; preds = %32
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %38 = call i32 @wpa_drv_get_capa(%struct.wpa_supplicant* %37, %struct.wpa_driver_capa* %11)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = bitcast [3 x i8*]* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %42, i8* align 16 bitcast ([3 x i8*]* @__const.wpas_dbus_getter_capabilities.args to i8*), i64 24, i1 false)
  %43 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  %44 = getelementptr inbounds [3 x i8*], [3 x i8*]* %19, i64 0, i64 0
  %45 = call i32 @ARRAY_SIZE(i8** %44)
  %46 = call i32 @wpa_dbus_dict_append_string_array(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8** %43, i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %508

49:                                               ; preds = %41
  br label %112

50:                                               ; preds = %36
  %51 = call i32 @wpa_dbus_dict_begin_string_array(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32* %14, i32* %15, i32* %16)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %110

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @WPA_DRIVER_CAPA_ENC_CCMP_256, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %110

62:                                               ; preds = %59, %53
  %63 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @WPA_DRIVER_CAPA_ENC_GCMP_256, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %110

71:                                               ; preds = %68, %62
  %72 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @WPA_DRIVER_CAPA_ENC_CCMP, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %77, %71
  %81 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @WPA_DRIVER_CAPA_ENC_GCMP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %110

89:                                               ; preds = %86, %80
  %90 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @WPA_DRIVER_CAPA_ENC_TKIP, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %110

98:                                               ; preds = %95, %89
  %99 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %98
  %105 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104, %98
  %108 = call i32 @wpa_dbus_dict_end_string_array(i32* %13, i32* %14, i32* %15, i32* %16)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107, %104, %95, %86, %77, %68, %59, %50
  br label %508

111:                                              ; preds = %107
  br label %112

112:                                              ; preds = %111, %49
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %112
  %116 = bitcast [4 x i8*]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %116, i8* align 16 bitcast ([4 x i8*]* @__const.wpas_dbus_getter_capabilities.args.13 to i8*), i64 32, i1 false)
  %117 = getelementptr inbounds [4 x i8*], [4 x i8*]* %20, i64 0, i64 0
  %118 = getelementptr inbounds [4 x i8*], [4 x i8*]* %20, i64 0, i64 0
  %119 = call i32 @ARRAY_SIZE(i8** %118)
  %120 = call i32 @wpa_dbus_dict_append_string_array(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i8** %117, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %115
  br label %508

123:                                              ; preds = %115
  br label %195

124:                                              ; preds = %112
  %125 = call i32 @wpa_dbus_dict_begin_string_array(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32* %14, i32* %15, i32* %16)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %193

127:                                              ; preds = %124
  %128 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @WPA_DRIVER_CAPA_ENC_CCMP_256, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %193

136:                                              ; preds = %133, %127
  %137 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @WPA_DRIVER_CAPA_ENC_GCMP_256, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %136
  %143 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %193

145:                                              ; preds = %142, %136
  %146 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @WPA_DRIVER_CAPA_ENC_CCMP, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %193

154:                                              ; preds = %151, %145
  %155 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @WPA_DRIVER_CAPA_ENC_GCMP, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %154
  %161 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %193

163:                                              ; preds = %160, %154
  %164 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @WPA_DRIVER_CAPA_ENC_TKIP, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %193

172:                                              ; preds = %169, %163
  %173 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @WPA_DRIVER_CAPA_ENC_WEP104, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %172
  %179 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %193

181:                                              ; preds = %178, %172
  %182 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @WPA_DRIVER_CAPA_ENC_WEP40, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %181
  %188 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187, %181
  %191 = call i32 @wpa_dbus_dict_end_string_array(i32* %13, i32* %14, i32* %15, i32* %16)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %194, label %193

193:                                              ; preds = %190, %187, %178, %169, %160, %151, %142, %133, %124
  br label %508

194:                                              ; preds = %190
  br label %195

195:                                              ; preds = %194, %123
  %196 = call i32 @wpa_dbus_dict_begin_string_array(i32* %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i64 0, i64 0), i32* %14, i32* %15, i32* %16)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %249

198:                                              ; preds = %195
  %199 = load i32, i32* %12, align 4
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %210

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @WPA_DRIVER_CAPA_ENC_BIP, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %249

210:                                              ; preds = %207, %201, %198
  %211 = load i32, i32* %12, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %222

213:                                              ; preds = %210
  %214 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @WPA_DRIVER_CAPA_ENC_BIP_GMAC_128, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %213
  %220 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i64 0, i64 0))
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %249

222:                                              ; preds = %219, %213, %210
  %223 = load i32, i32* %12, align 4
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %234

225:                                              ; preds = %222
  %226 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @WPA_DRIVER_CAPA_ENC_BIP_GMAC_256, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %225
  %232 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0))
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %249

234:                                              ; preds = %231, %225, %222
  %235 = load i32, i32* %12, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %234
  %238 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @WPA_DRIVER_CAPA_ENC_BIP_CMAC_256, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %246

243:                                              ; preds = %237
  %244 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243, %237, %234
  %247 = call i32 @wpa_dbus_dict_end_string_array(i32* %13, i32* %14, i32* %15, i32* %16)
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %250, label %249

249:                                              ; preds = %246, %243, %231, %219, %207, %195
  br label %508

250:                                              ; preds = %246
  %251 = load i32, i32* %12, align 4
  %252 = icmp slt i32 %251, 0
  br i1 %252, label %253, label %268

253:                                              ; preds = %250
  %254 = bitcast [5 x i8*]* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %254, i8 0, i64 40, i1 false)
  %255 = bitcast i8* %254 to [5 x i8*]*
  %256 = getelementptr inbounds [5 x i8*], [5 x i8*]* %255, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i32 0, i32 0), i8** %256, align 16
  %257 = getelementptr inbounds [5 x i8*], [5 x i8*]* %255, i32 0, i32 1
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0), i8** %257, align 8
  %258 = getelementptr inbounds [5 x i8*], [5 x i8*]* %255, i32 0, i32 2
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8** %258, align 16
  %259 = getelementptr inbounds [5 x i8*], [5 x i8*]* %255, i32 0, i32 3
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i32 0, i32 0), i8** %259, align 8
  %260 = getelementptr inbounds [5 x i8*], [5 x i8*]* %255, i32 0, i32 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i32 0, i32 0), i8** %260, align 16
  %261 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 0
  %262 = getelementptr inbounds [5 x i8*], [5 x i8*]* %21, i64 0, i64 0
  %263 = call i32 @ARRAY_SIZE(i8** %262)
  %264 = call i32 @wpa_dbus_dict_append_string_array(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i8** %261, i32 %263)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %267, label %266

266:                                              ; preds = %253
  br label %508

267:                                              ; preds = %253
  br label %337

268:                                              ; preds = %250
  %269 = call i32 @wpa_dbus_dict_begin_string_array(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0), i32* %14, i32* %15, i32* %16)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %268
  %272 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %277

274:                                              ; preds = %271
  %275 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0))
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %274, %271, %268
  br label %508

278:                                              ; preds = %274
  %279 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA, align 4
  %282 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2, align 4
  %283 = or i32 %281, %282
  %284 = and i32 %280, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %300

286:                                              ; preds = %278
  %287 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i64 0, i64 0))
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %298

289:                                              ; preds = %286
  %290 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_FT, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %289
  %296 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0))
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %299, label %298

298:                                              ; preds = %295, %286
  br label %508

299:                                              ; preds = %295, %289
  br label %300

300:                                              ; preds = %299, %278
  %301 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK, align 4
  %304 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK, align 4
  %305 = or i32 %303, %304
  %306 = and i32 %302, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %322

308:                                              ; preds = %300
  %309 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.20, i64 0, i64 0))
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %320

311:                                              ; preds = %308
  %312 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_FT_PSK, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %321

317:                                              ; preds = %311
  %318 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %317, %308
  br label %508

321:                                              ; preds = %317, %311
  br label %322

322:                                              ; preds = %321, %300
  %323 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA_NONE, align 4
  %326 = and i32 %324, %325
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %328, label %332

328:                                              ; preds = %322
  %329 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.23, i64 0, i64 0))
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %332, label %331

331:                                              ; preds = %328
  br label %508

332:                                              ; preds = %328, %322
  %333 = call i32 @wpa_dbus_dict_end_string_array(i32* %13, i32* %14, i32* %15, i32* %16)
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %336, label %335

335:                                              ; preds = %332
  br label %508

336:                                              ; preds = %332
  br label %337

337:                                              ; preds = %336, %267
  %338 = load i32, i32* %12, align 4
  %339 = icmp slt i32 %338, 0
  br i1 %339, label %340, label %349

340:                                              ; preds = %337
  %341 = bitcast [2 x i8*]* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %341, i8* align 16 bitcast ([2 x i8*]* @__const.wpas_dbus_getter_capabilities.args.29 to i8*), i64 16, i1 false)
  %342 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 0
  %343 = getelementptr inbounds [2 x i8*], [2 x i8*]* %22, i64 0, i64 0
  %344 = call i32 @ARRAY_SIZE(i8** %343)
  %345 = call i32 @wpa_dbus_dict_append_string_array(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i8** %342, i32 %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %348, label %347

347:                                              ; preds = %340
  br label %508

348:                                              ; preds = %340
  br label %379

349:                                              ; preds = %337
  %350 = call i32 @wpa_dbus_dict_begin_string_array(i32* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.30, i64 0, i64 0), i32* %14, i32* %15, i32* %16)
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %377

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2, align 4
  %356 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA2_PSK, align 4
  %357 = or i32 %355, %356
  %358 = and i32 %354, %357
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %363

360:                                              ; preds = %352
  %361 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0))
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %377

363:                                              ; preds = %360, %352
  %364 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA, align 4
  %367 = load i32, i32* @WPA_DRIVER_CAPA_KEY_MGMT_WPA_PSK, align 4
  %368 = or i32 %366, %367
  %369 = and i32 %365, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %363
  %372 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0))
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %377

374:                                              ; preds = %371, %363
  %375 = call i32 @wpa_dbus_dict_end_string_array(i32* %13, i32* %14, i32* %15, i32* %16)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %378, label %377

377:                                              ; preds = %374, %371, %360, %349
  br label %508

378:                                              ; preds = %374
  br label %379

379:                                              ; preds = %378, %348
  %380 = load i32, i32* %12, align 4
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %382, label %391

382:                                              ; preds = %379
  %383 = bitcast [3 x i8*]* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %383, i8* align 16 bitcast ([3 x i8*]* @__const.wpas_dbus_getter_capabilities.args.34 to i8*), i64 24, i1 false)
  %384 = getelementptr inbounds [3 x i8*], [3 x i8*]* %23, i64 0, i64 0
  %385 = getelementptr inbounds [3 x i8*], [3 x i8*]* %23, i64 0, i64 0
  %386 = call i32 @ARRAY_SIZE(i8** %385)
  %387 = call i32 @wpa_dbus_dict_append_string_array(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i8** %384, i32 %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %390, label %389

389:                                              ; preds = %382
  br label %508

390:                                              ; preds = %382
  br label %427

391:                                              ; preds = %379
  %392 = call i32 @wpa_dbus_dict_begin_string_array(i32* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i64 0, i64 0), i32* %14, i32* %15, i32* %16)
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %395, label %394

394:                                              ; preds = %391
  br label %508

395:                                              ; preds = %391
  %396 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 2
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* @WPA_DRIVER_AUTH_OPEN, align 4
  %399 = and i32 %397, %398
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %404

401:                                              ; preds = %395
  %402 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %425

404:                                              ; preds = %401, %395
  %405 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 2
  %406 = load i32, i32* %405, align 4
  %407 = load i32, i32* @WPA_DRIVER_AUTH_SHARED, align 4
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %413

410:                                              ; preds = %404
  %411 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i64 0, i64 0))
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %425

413:                                              ; preds = %410, %404
  %414 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 2
  %415 = load i32, i32* %414, align 4
  %416 = load i32, i32* @WPA_DRIVER_AUTH_LEAP, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %413
  %420 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.33, i64 0, i64 0))
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %425

422:                                              ; preds = %419, %413
  %423 = call i32 @wpa_dbus_dict_end_string_array(i32* %13, i32* %14, i32* %15, i32* %16)
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %426, label %425

425:                                              ; preds = %422, %419, %410, %401
  br label %508

426:                                              ; preds = %422
  br label %427

427:                                              ; preds = %426, %390
  %428 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  %429 = getelementptr inbounds [3 x i8*], [3 x i8*]* %18, i64 0, i64 0
  %430 = call i32 @ARRAY_SIZE(i8** %429)
  %431 = call i32 @wpa_dbus_dict_append_string_array(i32* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0), i8** %428, i32 %430)
  %432 = icmp ne i32 %431, 0
  br i1 %432, label %434, label %433

433:                                              ; preds = %427
  br label %508

434:                                              ; preds = %427
  %435 = call i32 @wpa_dbus_dict_begin_string_array(i32* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i64 0, i64 0), i32* %14, i32* %15, i32* %16)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %486

437:                                              ; preds = %434
  %438 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.38, i64 0, i64 0))
  %439 = icmp ne i32 %438, 0
  br i1 %439, label %440, label %486

440:                                              ; preds = %437
  %441 = load i32, i32* %12, align 4
  %442 = icmp sge i32 %441, 0
  br i1 %442, label %443, label %452

443:                                              ; preds = %440
  %444 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 3
  %445 = load i32, i32* %444, align 4
  %446 = load i32, i32* @WPA_DRIVER_FLAGS_IBSS, align 4
  %447 = and i32 %445, %446
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %452

449:                                              ; preds = %443
  %450 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i64 0, i64 0))
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %486

452:                                              ; preds = %449, %443, %440
  %453 = load i32, i32* %12, align 4
  %454 = icmp sge i32 %453, 0
  br i1 %454, label %455, label %464

455:                                              ; preds = %452
  %456 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 3
  %457 = load i32, i32* %456, align 4
  %458 = load i32, i32* @WPA_DRIVER_FLAGS_AP, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %455
  %462 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.40, i64 0, i64 0))
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %486

464:                                              ; preds = %461, %455, %452
  %465 = load i32, i32* %12, align 4
  %466 = icmp sge i32 %465, 0
  br i1 %466, label %467, label %483

467:                                              ; preds = %464
  %468 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 3
  %469 = load i32, i32* %468, align 4
  %470 = load i32, i32* @WPA_DRIVER_FLAGS_P2P_CAPABLE, align 4
  %471 = and i32 %469, %470
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %483

473:                                              ; preds = %467
  %474 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %475 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %474, i32 0, i32 0
  %476 = load %struct.TYPE_2__*, %struct.TYPE_2__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 4
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %483, label %480

480:                                              ; preds = %473
  %481 = call i32 @wpa_dbus_dict_string_array_add_element(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.41, i64 0, i64 0))
  %482 = icmp ne i32 %481, 0
  br i1 %482, label %483, label %486

483:                                              ; preds = %480, %473, %467, %464
  %484 = call i32 @wpa_dbus_dict_end_string_array(i32* %13, i32* %14, i32* %15, i32* %16)
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %487, label %486

486:                                              ; preds = %483, %480, %461, %449, %437, %434
  br label %508

487:                                              ; preds = %483
  %488 = load i32, i32* %12, align 4
  %489 = icmp sge i32 %488, 0
  br i1 %489, label %490, label %498

490:                                              ; preds = %487
  %491 = getelementptr inbounds %struct.wpa_driver_capa, %struct.wpa_driver_capa* %11, i32 0, i32 4
  %492 = load i32, i32* %491, align 4
  store i32 %492, i32* %24, align 4
  %493 = load i32, i32* %24, align 4
  %494 = call i32 @wpa_dbus_dict_append_int32(i32* %13, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 %493)
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %497, label %496

496:                                              ; preds = %490
  br label %508

497:                                              ; preds = %490
  br label %498

498:                                              ; preds = %497, %487
  %499 = call i32 @wpa_dbus_dict_close_write(i32* %17, i32* %13)
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %505

501:                                              ; preds = %498
  %502 = load i32*, i32** %7, align 8
  %503 = call i32 @dbus_message_iter_close_container(i32* %502, i32* %17)
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %506, label %505

505:                                              ; preds = %501, %498
  br label %508

506:                                              ; preds = %501
  %507 = load i32, i32* @TRUE, align 4
  store i32 %507, i32* %5, align 4
  br label %513

508:                                              ; preds = %505, %496, %486, %433, %425, %394, %389, %377, %347, %335, %331, %320, %298, %277, %266, %249, %193, %122, %110, %48, %35
  %509 = load i32*, i32** %8, align 8
  %510 = load i32, i32* @DBUS_ERROR_NO_MEMORY, align 4
  %511 = call i32 @dbus_set_error_const(i32* %509, i32 %510, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i64 0, i64 0))
  %512 = load i32, i32* @FALSE, align 4
  store i32 %512, i32* %5, align 4
  br label %513

513:                                              ; preds = %508, %506
  %514 = load i32, i32* %5, align 4
  ret i32 %514
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dbus_message_iter_open_container(i32*, i32, i8*, i32*) #2

declare dso_local i32 @wpa_dbus_dict_open_write(i32*, i32*) #2

declare dso_local i32 @wpa_drv_get_capa(%struct.wpa_supplicant*, %struct.wpa_driver_capa*) #2

declare dso_local i32 @wpa_dbus_dict_append_string_array(i32*, i8*, i8**, i32) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @wpa_dbus_dict_begin_string_array(i32*, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @wpa_dbus_dict_string_array_add_element(i32*, i8*) #2

declare dso_local i32 @wpa_dbus_dict_end_string_array(i32*, i32*, i32*, i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wpa_dbus_dict_append_int32(i32*, i8*, i32) #2

declare dso_local i32 @wpa_dbus_dict_close_write(i32*, i32*) #2

declare dso_local i32 @dbus_message_iter_close_container(i32*, i32*) #2

declare dso_local i32 @dbus_set_error_const(i32*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
