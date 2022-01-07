; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_start_wps_go.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_start_wps_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i64, %struct.wpa_ssid*, i32, i32, i32, %struct.wpa_supplicant*, i32, %struct.TYPE_4__*, i32, i32, i64, i64, i64 }
%struct.wpa_ssid = type { i32, i32, i32, i32, i32, i32, i32, i32*, i64, i64, i32, i8*, i8*, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.p2p_go_neg_results = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"P2P: Starting GO\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"P2P: Could not copy GO Negotiation results\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"P2P: Could not add network for GO\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@WPAS_MODE_P2P_GROUP_FORMATION = common dso_local global i32 0, align 4
@WPAS_MODE_P2P_GO = common dso_local global i32 0, align 4
@WPA_AUTH_ALG_OPEN = common dso_local global i32 0, align 4
@WPA_KEY_MGMT_PSK = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i32 0, align 4
@WPA_CIPHER_CCMP = common dso_local global i8* null, align 8
@WPA_CIPHER_GCMP = common dso_local global i8* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"P2P: Failed to copy passphrase for GO\00", align 1
@p2p_go_configured = common dso_local global i32 0, align 4
@NORMAL_SCAN_REQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"P2P: Request scan (that will be skipped) to start GO)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, %struct.p2p_go_neg_results*, i32)* @wpas_start_wps_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_start_wps_go(%struct.wpa_supplicant* %0, %struct.p2p_go_neg_results* %1, i32 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.p2p_go_neg_results*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_ssid*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.p2p_go_neg_results* %1, %struct.p2p_go_neg_results** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_dbg(%struct.wpa_supplicant* %8, i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %12 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %13 = call i64 @wpas_copy_go_neg_results(%struct.wpa_supplicant* %11, %struct.p2p_go_neg_results* %12)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_dbg(%struct.wpa_supplicant* %16, i32 %17, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %248

19:                                               ; preds = %3
  %20 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %21 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.wpa_ssid* @wpa_config_add_network(i32 %22)
  store %struct.wpa_ssid* %23, %struct.wpa_ssid** %7, align 8
  %24 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %25 = icmp eq %struct.wpa_ssid* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_dbg(%struct.wpa_supplicant* %27, i32 %28, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %248

30:                                               ; preds = %19
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 13
  store i64 0, i64* %32, align 8
  %33 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %34 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %33, i32 0, i32 12
  store i64 0, i64* %34, align 8
  %35 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %36 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %35, i32 0, i32 11
  store i64 0, i64* %36, align 8
  %37 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %38 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %37, i32 0, i32 10
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 @os_memset(i32 %39, i32 0, i32 %40)
  %42 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %43 = call i32 @wpa_config_set_network_defaults(%struct.wpa_ssid* %42)
  %44 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %45 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %47 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %49 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %56 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %30
  %60 = load i32, i32* @WPAS_MODE_P2P_GROUP_FORMATION, align 4
  br label %63

61:                                               ; preds = %30
  %62 = load i32, i32* @WPAS_MODE_P2P_GO, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %66 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %65, i32 0, i32 22
  store i32 %64, i32* %66, align 4
  %67 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %68 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %71 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %73 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %72, i32 0, i32 10
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %76 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %75, i32 0, i32 21
  store i32 %74, i32* %76, align 8
  %77 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %78 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %77, i32 0, i32 9
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %81 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %80, i32 0, i32 20
  store i32 %79, i32* %81, align 4
  %82 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %83 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %86 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %85, i32 0, i32 19
  store i32 %84, i32* %86, align 8
  %87 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %88 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %91 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %90, i32 0, i32 18
  store i32 %89, i32* %91, align 4
  %92 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %93 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %92, i32 0, i32 6
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %96 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %95, i32 0, i32 17
  store i32 %94, i32* %96, align 8
  %97 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %98 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  %101 = call i64 @os_zalloc(i32 %100)
  %102 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %103 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %102, i32 0, i32 16
  store i64 %101, i64* %103, align 8
  %104 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %105 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %104, i32 0, i32 16
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %63
  %109 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %110 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %109, i32 0, i32 16
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %113 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %116 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @os_memcpy(i64 %111, i32 %114, i32 %117)
  %119 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %120 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %123 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %108, %63
  %125 = load i32, i32* @WPA_AUTH_ALG_OPEN, align 4
  %126 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %127 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %126, i32 0, i32 15
  store i32 %125, i32* %127, align 8
  %128 = load i32, i32* @WPA_KEY_MGMT_PSK, align 4
  %129 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %130 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %129, i32 0, i32 14
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @WPA_PROTO_RSN, align 4
  %132 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %133 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %132, i32 0, i32 13
  store i32 %131, i32* %133, align 8
  %134 = load i8*, i8** @WPA_CIPHER_CCMP, align 8
  %135 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %136 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %135, i32 0, i32 12
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @WPA_CIPHER_CCMP, align 8
  %138 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %139 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %138, i32 0, i32 11
  store i8* %137, i8** %139, align 8
  %140 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %141 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp sgt i32 %142, 56160
  br i1 %143, label %144, label %153

144:                                              ; preds = %124
  %145 = load i8*, i8** @WPA_CIPHER_GCMP, align 8
  %146 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %147 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %146, i32 0, i32 12
  store i8* %145, i8** %147, align 8
  %148 = load i8*, i8** @WPA_CIPHER_GCMP, align 8
  %149 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %150 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %149, i32 0, i32 11
  store i8* %148, i8** %150, align 8
  %151 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %152 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %151, i32 0, i32 5
  store i32 1, i32* %152, align 4
  br label %153

153:                                              ; preds = %144, %124
  %154 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %155 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 8
  %157 = call i64 @os_strlen(i32 %156)
  %158 = icmp sgt i64 %157, 0
  br i1 %158, label %159, label %182

159:                                              ; preds = %153
  %160 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %161 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 8
  %163 = call i32* @os_strdup(i32 %162)
  %164 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %165 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %164, i32 0, i32 7
  store i32* %163, i32** %165, align 8
  %166 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %167 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %166, i32 0, i32 7
  %168 = load i32*, i32** %167, align 8
  %169 = icmp eq i32* %168, null
  br i1 %169, label %170, label %181

170:                                              ; preds = %159
  %171 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %172 = load i32, i32* @MSG_ERROR, align 4
  %173 = call i32 @wpa_msg_global(%struct.wpa_supplicant* %171, i32 %172, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %174 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %175 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %174, i32 0, i32 9
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %178 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %177, i32 0, i32 10
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @wpa_config_remove_network(i32 %176, i32 %179)
  br label %248

181:                                              ; preds = %159
  br label %185

182:                                              ; preds = %153
  %183 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %184 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %183, i32 0, i32 7
  store i32* null, i32** %184, align 8
  br label %185

185:                                              ; preds = %182, %181
  %186 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %187 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %190 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %189, i32 0, i32 9
  store i64 %188, i64* %190, align 8
  %191 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %192 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %191, i32 0, i32 9
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %203

195:                                              ; preds = %185
  %196 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %197 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %196, i32 0, i32 8
  %198 = load i64, i64* %197, align 8
  %199 = load %struct.p2p_go_neg_results*, %struct.p2p_go_neg_results** %5, align 8
  %200 = getelementptr inbounds %struct.p2p_go_neg_results, %struct.p2p_go_neg_results* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @os_memcpy(i64 %198, i32 %201, i32 8)
  br label %212

203:                                              ; preds = %185
  %204 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %205 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %204, i32 0, i32 7
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %210 = call i32 @wpa_config_update_psk(%struct.wpa_ssid* %209)
  br label %211

211:                                              ; preds = %208, %203
  br label %212

212:                                              ; preds = %211, %195
  %213 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %214 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %213, i32 0, i32 8
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %221 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %220, i32 0, i32 6
  store i32 %219, i32* %221, align 8
  %222 = load i32, i32* @p2p_go_configured, align 4
  %223 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %224 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %223, i32 0, i32 7
  store i32 %222, i32* %224, align 8
  %225 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %226 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %227 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %226, i32 0, i32 6
  store %struct.wpa_supplicant* %225, %struct.wpa_supplicant** %227, align 8
  %228 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %229 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %232 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %231, i32 0, i32 5
  store i32 %230, i32* %232, align 8
  %233 = load i32, i32* @NORMAL_SCAN_REQ, align 4
  %234 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %235 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %234, i32 0, i32 3
  store i32 %233, i32* %235, align 8
  %236 = load %struct.wpa_ssid*, %struct.wpa_ssid** %7, align 8
  %237 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %238 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %237, i32 0, i32 2
  store %struct.wpa_ssid* %236, %struct.wpa_ssid** %238, align 8
  %239 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %240 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %239, i32 0, i32 0
  store i32 1, i32* %240, align 8
  %241 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %242 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %241, i32 0, i32 1
  store i64 0, i64* %242, align 8
  %243 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %244 = load i32, i32* @MSG_DEBUG, align 4
  %245 = call i32 @wpa_dbg(%struct.wpa_supplicant* %243, i32 %244, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %246 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %247 = call i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant* %246, i32 0, i32 0)
  br label %248

248:                                              ; preds = %212, %170, %26, %15
  ret void
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i64 @wpas_copy_go_neg_results(%struct.wpa_supplicant*, %struct.p2p_go_neg_results*) #1

declare dso_local %struct.wpa_ssid* @wpa_config_add_network(i32) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i32 @wpa_config_set_network_defaults(%struct.wpa_ssid*) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i64, i32, i32) #1

declare dso_local i64 @os_strlen(i32) #1

declare dso_local i32* @os_strdup(i32) #1

declare dso_local i32 @wpa_msg_global(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @wpa_config_remove_network(i32, i32) #1

declare dso_local i32 @wpa_config_update_psk(%struct.wpa_ssid*) #1

declare dso_local i32 @wpa_supplicant_req_scan(%struct.wpa_supplicant*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
