; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_wpa_supplicant_mesh_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh.c_wpa_supplicant_mesh_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32*, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.wpa_ssid*, i32, i32, %struct.hostapd_iface*, i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.hostapd_iface = type { i32, %struct.mesh_conf*, %struct.hostapd_data**, %struct.hostapd_config*, i32 }
%struct.mesh_conf = type { i32 }
%struct.hostapd_data = type { i32*, %struct.TYPE_6__*, i32, i32, %struct.hostapd_config*, i32, %struct.hostapd_iface*, i32, i32, %struct.wpa_supplicant* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.hostapd_config = type { i32, i32, i8*, i64, i32, i32, i64, i32, i32, i32*, %struct.TYPE_6__** }
%struct.wpa_ssid = type { i32, i32, i64, i32, i32*, i64 }
%struct.hostapd_freq_params = type { i32, i32 }

@__const.wpa_supplicant_mesh_init.basic_rates_erp = private unnamed_addr constant [8 x i32] [i32 10, i32 20, i32 55, i32 60, i32 110, i32 120, i32 240, i32 -1], align 16
@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"user_mpm is not enabled in configuration\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@mesh_mpm_free_sta = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"mesh: pri/sec channels switched\00", align 1
@MESH_ENABLED = common dso_local global i32 0, align 4
@NUM_HOSTAPD_MODES = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Unsupported mesh mode frequency: %d MHz\00", align 1
@HOSTAPD_MODE_IEEE80211A = common dso_local global i64 0, align 8
@DEFAULT_MAX_OPER_CHWIDTH = common dso_local global i64 0, align 8
@HOSTAPD_MODE_IEEE80211G = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to init mesh in driver\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Failed to initialize hostapd interface for mesh\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.hostapd_freq_params*)* @wpa_supplicant_mesh_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpa_supplicant_mesh_init(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, %struct.hostapd_freq_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca %struct.hostapd_freq_params*, align 8
  %8 = alloca %struct.hostapd_iface*, align 8
  %9 = alloca %struct.hostapd_data*, align 8
  %10 = alloca %struct.hostapd_config*, align 8
  %11 = alloca %struct.mesh_conf*, align 8
  %12 = alloca [8 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %6, align 8
  store %struct.hostapd_freq_params* %2, %struct.hostapd_freq_params** %7, align 8
  %15 = bitcast [8 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %15, i8* align 16 bitcast ([8 x i32]* @__const.wpa_supplicant_mesh_init.basic_rates_erp to i8*), i64 32, i1 false)
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %24 = load i32, i32* @MSG_WARNING, align 4
  %25 = call i32 @wpa_msg(%struct.wpa_supplicant* %23, i32 %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %443

26:                                               ; preds = %3
  %27 = call %struct.hostapd_iface* (...) @hostapd_alloc_iface()
  store %struct.hostapd_iface* %27, %struct.hostapd_iface** %8, align 8
  %28 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %29 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %28, i32 0, i32 8
  store %struct.hostapd_iface* %27, %struct.hostapd_iface** %29, align 8
  %30 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %31 = icmp ne %struct.hostapd_iface* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %443

35:                                               ; preds = %26
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %40 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 8
  %41 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %42 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 8
  %45 = load %struct.hostapd_iface*, %struct.hostapd_iface** %44, align 8
  %46 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i8* @os_calloc(i32 %47, i32 8)
  %49 = bitcast i8* %48 to %struct.hostapd_data**
  %50 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %51 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %50, i32 0, i32 2
  store %struct.hostapd_data** %49, %struct.hostapd_data*** %51, align 8
  %52 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %53 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %52, i32 0, i32 2
  %54 = load %struct.hostapd_data**, %struct.hostapd_data*** %53, align 8
  %55 = icmp ne %struct.hostapd_data** %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %35
  br label %438

57:                                               ; preds = %35
  %58 = call %struct.hostapd_data* @hostapd_alloc_bss_data(i32* null, i32* null, i32* null)
  store %struct.hostapd_data* %58, %struct.hostapd_data** %9, align 8
  %59 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %60 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %59, i32 0, i32 2
  %61 = load %struct.hostapd_data**, %struct.hostapd_data*** %60, align 8
  %62 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %61, i64 0
  store %struct.hostapd_data* %58, %struct.hostapd_data** %62, align 8
  %63 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %64 = icmp ne %struct.hostapd_data* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  br label %438

66:                                               ; preds = %57
  %67 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %68 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %69 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %68, i32 0, i32 2
  %70 = load %struct.hostapd_data**, %struct.hostapd_data*** %69, align 8
  %71 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %70, i64 0
  %72 = load %struct.hostapd_data*, %struct.hostapd_data** %71, align 8
  %73 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %72, i32 0, i32 9
  store %struct.wpa_supplicant* %67, %struct.wpa_supplicant** %73, align 8
  %74 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %75 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* @ETH_ALEN, align 4
  %81 = call i32 @os_memcpy(i32* %76, i32* %79, i32 %80)
  %82 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %83 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %82, i32 0, i32 7
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %86 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %85, i32 0, i32 8
  store i32 %84, i32* %86, align 4
  %87 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %88 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %91 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 8
  %92 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %93 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %94 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %93, i32 0, i32 6
  store %struct.hostapd_iface* %92, %struct.hostapd_iface** %94, align 8
  %95 = load i32, i32* @mesh_mpm_free_sta, align 4
  %96 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %97 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %99 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %7, align 8
  %103 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %101, %104
  br i1 %105, label %106, label %123

106:                                              ; preds = %66
  %107 = load i32, i32* %14, align 4
  %108 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %7, align 8
  %109 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %7, align 8
  %112 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = mul nsw i32 %113, 20
  %115 = add nsw i32 %110, %114
  %116 = icmp eq i32 %107, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %106
  %118 = load i32, i32* @MSG_DEBUG, align 4
  %119 = call i32 (i32, i8*, ...) @wpa_printf(i32 %118, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %120 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %7, align 8
  %121 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %14, align 4
  br label %123

123:                                              ; preds = %117, %106, %66
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %126 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 8
  %127 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %128 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %129 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %128, i32 0, i32 5
  store %struct.wpa_ssid* %127, %struct.wpa_ssid** %129, align 8
  %130 = call %struct.hostapd_config* (...) @hostapd_config_defaults()
  store %struct.hostapd_config* %130, %struct.hostapd_config** %10, align 8
  %131 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %132 = icmp ne %struct.hostapd_config* %131, null
  br i1 %132, label %134, label %133

133:                                              ; preds = %123
  br label %438

134:                                              ; preds = %123
  %135 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %136 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %135, i32 0, i32 10
  %137 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %136, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %140 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %139, i32 0, i32 1
  store %struct.TYPE_6__* %138, %struct.TYPE_6__** %140, align 8
  %141 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %142 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i32 1, i32* %144, align 4
  %145 = load i32, i32* @MESH_ENABLED, align 4
  %146 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %147 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  store i32 %145, i32* %149, align 4
  %150 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %151 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %150, i32 0, i32 3
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %156 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %155, i32 0, i32 1
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 2
  store i32 %154, i32* %158, align 4
  %159 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %160 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %163 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %167 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @ieee80211_is_dfs(i32 %161, i32 %165, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %213

172:                                              ; preds = %134
  %173 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %174 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %173, i32 0, i32 3
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 0
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 0
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %213

182:                                              ; preds = %172
  %183 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %184 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %183, i32 0, i32 0
  store i32 1, i32* %184, align 8
  %185 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %186 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %185, i32 0, i32 1
  store i32 1, i32* %186, align 4
  %187 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %188 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %187, i32 0, i32 3
  %189 = load %struct.TYPE_5__*, %struct.TYPE_5__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = load i8, i8* %192, align 1
  %194 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %195 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 0
  store i8 %193, i8* %197, align 1
  %198 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %199 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %198, i32 0, i32 3
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 0
  %202 = load i8*, i8** %201, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 1
  %204 = load i8, i8* %203, align 1
  %205 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %206 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 1
  store i8 %204, i8* %208, align 1
  %209 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %210 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %209, i32 0, i32 2
  %211 = load i8*, i8** %210, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 2
  store i8 32, i8* %212, align 1
  br label %213

213:                                              ; preds = %182, %172, %134
  %214 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %215 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %216 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %215, i32 0, i32 4
  store %struct.hostapd_config* %214, %struct.hostapd_config** %216, align 8
  %217 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %218 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %219 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %218, i32 0, i32 3
  store %struct.hostapd_config* %217, %struct.hostapd_config** %219, align 8
  %220 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %221 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %220, i32 0, i32 3
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %226 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %225, i32 0, i32 2
  %227 = load %struct.hostapd_data**, %struct.hostapd_data*** %226, align 8
  %228 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %227, i64 0
  %229 = load %struct.hostapd_data*, %struct.hostapd_data** %228, align 8
  %230 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %229, i32 0, i32 3
  store i32 %224, i32* %230, align 4
  %231 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %232 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %231, i32 0, i32 3
  %233 = load %struct.TYPE_5__*, %struct.TYPE_5__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %237 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %236, i32 0, i32 2
  %238 = load %struct.hostapd_data**, %struct.hostapd_data*** %237, align 8
  %239 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %238, i64 0
  %240 = load %struct.hostapd_data*, %struct.hostapd_data** %239, align 8
  %241 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %240, i32 0, i32 2
  store i32 %235, i32* %241, align 8
  %242 = load %struct.hostapd_data*, %struct.hostapd_data** %9, align 8
  %243 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %242, i32 0, i32 1
  %244 = load %struct.TYPE_6__*, %struct.TYPE_6__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %248 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @os_strlcpy(i32 %246, i32 %249, i32 4)
  %251 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %252 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %253 = call %struct.mesh_conf* @mesh_config_create(%struct.wpa_supplicant* %251, %struct.wpa_ssid* %252)
  store %struct.mesh_conf* %253, %struct.mesh_conf** %11, align 8
  %254 = load %struct.mesh_conf*, %struct.mesh_conf** %11, align 8
  %255 = icmp ne %struct.mesh_conf* %254, null
  br i1 %255, label %257, label %256

256:                                              ; preds = %213
  br label %438

257:                                              ; preds = %213
  %258 = load %struct.mesh_conf*, %struct.mesh_conf** %11, align 8
  %259 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %260 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %259, i32 0, i32 1
  store %struct.mesh_conf* %258, %struct.mesh_conf** %260, align 8
  %261 = load i32, i32* %14, align 4
  %262 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %263 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %262, i32 0, i32 4
  %264 = call i64 @ieee80211_freq_to_chan(i32 %261, i32* %263)
  %265 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %266 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %265, i32 0, i32 3
  store i64 %264, i64* %266, align 8
  %267 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %268 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @NUM_HOSTAPD_MODES, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %276

272:                                              ; preds = %257
  %273 = load i32, i32* @MSG_ERROR, align 4
  %274 = load i32, i32* %14, align 4
  %275 = call i32 (i32, i8*, ...) @wpa_printf(i32 %273, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %274)
  br label %438

276:                                              ; preds = %257
  %277 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %278 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %287

281:                                              ; preds = %276
  %282 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %283 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %286 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %285, i32 0, i32 5
  store i32 %284, i32* %286, align 4
  br label %287

287:                                              ; preds = %281, %276
  %288 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %289 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = load i64, i64* @HOSTAPD_MODE_IEEE80211A, align 8
  %292 = icmp eq i64 %290, %291
  br i1 %292, label %293, label %351

293:                                              ; preds = %287
  %294 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %295 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %294, i32 0, i32 5
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %351

298:                                              ; preds = %293
  %299 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %300 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %299, i32 0, i32 2
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @DEFAULT_MAX_OPER_CHWIDTH, align 8
  %303 = icmp ne i64 %301, %302
  br i1 %303, label %304, label %310

304:                                              ; preds = %298
  %305 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %306 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %305, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %309 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %308, i32 0, i32 6
  store i64 %307, i64* %309, align 8
  br label %310

310:                                              ; preds = %304, %298
  %311 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %312 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %311, i32 0, i32 6
  %313 = load i64, i64* %312, align 8
  switch i64 %313, label %344 [
    i64 129, label %314
    i64 128, label %314
    i64 130, label %327
  ]

314:                                              ; preds = %310, %310
  %315 = load i32, i32* %14, align 4
  %316 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %317 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %316, i32 0, i32 7
  %318 = call i64 @ieee80211_freq_to_chan(i32 %315, i32* %317)
  %319 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %320 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = mul nsw i32 %321, 2
  %323 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %324 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %323, i32 0, i32 7
  %325 = load i32, i32* %324, align 8
  %326 = add nsw i32 %325, %322
  store i32 %326, i32* %324, align 8
  br label %344

327:                                              ; preds = %310
  %328 = load i32, i32* %14, align 4
  %329 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %330 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %329, i32 0, i32 7
  %331 = call i64 @ieee80211_freq_to_chan(i32 %328, i32* %330)
  %332 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %333 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = mul nsw i32 %334, 2
  %336 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %337 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, %335
  store i32 %339, i32* %337, align 8
  %340 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %341 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %340, i32 0, i32 7
  %342 = load i32, i32* %341, align 8
  %343 = add nsw i32 %342, 8
  store i32 %343, i32* %341, align 8
  br label %344

344:                                              ; preds = %310, %327, %314
  %345 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %346 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %345, i32 0, i32 3
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %349 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %348, i32 0, i32 8
  %350 = call i64 @ieee80211_freq_to_chan(i32 %347, i32* %349)
  br label %351

351:                                              ; preds = %344, %293, %287
  %352 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %353 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %352, i32 0, i32 4
  %354 = load i32*, i32** %353, align 8
  %355 = icmp eq i32* %354, null
  br i1 %355, label %356, label %374

356:                                              ; preds = %351
  %357 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %358 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %357, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @HOSTAPD_MODE_IEEE80211G, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %373

362:                                              ; preds = %356
  %363 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %364 = call i32* @os_memdup(i32* %363, i32 32)
  %365 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %366 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %365, i32 0, i32 9
  store i32* %364, i32** %366, align 8
  %367 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %368 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %367, i32 0, i32 9
  %369 = load i32*, i32** %368, align 8
  %370 = icmp ne i32* %369, null
  br i1 %370, label %372, label %371

371:                                              ; preds = %362
  br label %438

372:                                              ; preds = %362
  br label %373

373:                                              ; preds = %372, %356
  br label %418

374:                                              ; preds = %351
  store i32 0, i32* %13, align 4
  br label %375

375:                                              ; preds = %374, %385
  %376 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %377 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %376, i32 0, i32 4
  %378 = load i32*, i32** %377, align 8
  %379 = load i32, i32* %13, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %378, i64 %380
  %382 = load i32, i32* %381, align 4
  %383 = icmp slt i32 %382, 1
  br i1 %383, label %384, label %385

384:                                              ; preds = %375
  br label %388

385:                                              ; preds = %375
  %386 = load i32, i32* %13, align 4
  %387 = add nsw i32 %386, 1
  store i32 %387, i32* %13, align 4
  br label %375

388:                                              ; preds = %384
  %389 = load i32, i32* %13, align 4
  %390 = add nsw i32 %389, 1
  %391 = call i8* @os_calloc(i32 %390, i32 4)
  %392 = bitcast i8* %391 to i32*
  %393 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %394 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %393, i32 0, i32 9
  store i32* %392, i32** %394, align 8
  %395 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %396 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %395, i32 0, i32 9
  %397 = load i32*, i32** %396, align 8
  %398 = icmp eq i32* %397, null
  br i1 %398, label %399, label %400

399:                                              ; preds = %388
  br label %438

400:                                              ; preds = %388
  %401 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %402 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %401, i32 0, i32 9
  %403 = load i32*, i32** %402, align 8
  %404 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %405 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %404, i32 0, i32 4
  %406 = load i32*, i32** %405, align 8
  %407 = load i32, i32* %13, align 4
  %408 = sext i32 %407 to i64
  %409 = mul i64 %408, 4
  %410 = trunc i64 %409 to i32
  %411 = call i32 @os_memcpy(i32* %403, i32* %406, i32 %410)
  %412 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %413 = getelementptr inbounds %struct.hostapd_config, %struct.hostapd_config* %412, i32 0, i32 9
  %414 = load i32*, i32** %413, align 8
  %415 = load i32, i32* %13, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds i32, i32* %414, i64 %416
  store i32 -1, i32* %417, align 4
  br label %418

418:                                              ; preds = %400, %373
  %419 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %420 = call i64 @wpa_drv_init_mesh(%struct.wpa_supplicant* %419)
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %418
  %423 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %424 = load i32, i32* @MSG_ERROR, align 4
  %425 = call i32 @wpa_msg(%struct.wpa_supplicant* %423, i32 %424, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %443

426:                                              ; preds = %418
  %427 = load %struct.hostapd_iface*, %struct.hostapd_iface** %8, align 8
  %428 = call i64 @hostapd_setup_interface(%struct.hostapd_iface* %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %426
  %431 = load i32, i32* @MSG_ERROR, align 4
  %432 = call i32 (i32, i8*, ...) @wpa_printf(i32 %431, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %443

433:                                              ; preds = %426
  %434 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %435 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %436 = load %struct.hostapd_config*, %struct.hostapd_config** %10, align 8
  %437 = call i32 @wpa_supplicant_conf_ap_ht(%struct.wpa_supplicant* %434, %struct.wpa_ssid* %435, %struct.hostapd_config* %436)
  store i32 0, i32* %4, align 4
  br label %443

438:                                              ; preds = %399, %371, %272, %256, %133, %65, %56
  %439 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %440 = call i32 @wpa_supplicant_mesh_deinit(%struct.wpa_supplicant* %439)
  %441 = load i32, i32* @ENOMEM, align 4
  %442 = sub nsw i32 0, %441
  store i32 %442, i32* %4, align 4
  br label %443

443:                                              ; preds = %438, %433, %430, %422, %32, %22
  %444 = load i32, i32* %4, align 4
  ret i32 %444
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @wpa_msg(%struct.wpa_supplicant*, i32, i8*) #2

declare dso_local %struct.hostapd_iface* @hostapd_alloc_iface(...) #2

declare dso_local i8* @os_calloc(i32, i32) #2

declare dso_local %struct.hostapd_data* @hostapd_alloc_bss_data(i32*, i32*, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local %struct.hostapd_config* @hostapd_config_defaults(...) #2

declare dso_local i64 @ieee80211_is_dfs(i32, i32, i32) #2

declare dso_local i32 @os_strlcpy(i32, i32, i32) #2

declare dso_local %struct.mesh_conf* @mesh_config_create(%struct.wpa_supplicant*, %struct.wpa_ssid*) #2

declare dso_local i64 @ieee80211_freq_to_chan(i32, i32*) #2

declare dso_local i32* @os_memdup(i32*, i32) #2

declare dso_local i64 @wpa_drv_init_mesh(%struct.wpa_supplicant*) #2

declare dso_local i64 @hostapd_setup_interface(%struct.hostapd_iface*) #2

declare dso_local i32 @wpa_supplicant_conf_ap_ht(%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.hostapd_config*) #2

declare dso_local i32 @wpa_supplicant_mesh_deinit(%struct.wpa_supplicant*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
