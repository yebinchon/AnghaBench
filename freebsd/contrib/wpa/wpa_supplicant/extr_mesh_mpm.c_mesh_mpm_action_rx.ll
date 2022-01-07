; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_action_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_mesh_mpm.c_mesh_mpm_action_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.mesh_conf*, %struct.hostapd_data** }
%struct.mesh_conf = type { i32, i64 }
%struct.hostapd_data = type { i32, i32 }
%struct.ieee80211_mgmt = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.sta_info = type { i32, i64, i32, i32, %struct.wpa_state_machine*, %struct.TYPE_10__* }
%struct.wpa_state_machine = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.ieee802_11_elems = type { i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.mesh_peer_mgmt_ie = type { i32*, i32*, i32*, i32 }

@WLAN_ACTION_SELF_PROTECTED = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"MPM: Ignore too short action frame %u ie_len %u\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"MPM: Received PLINK action %u\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"MPM: Capability 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"MPM: AID 0x%x\00", align 1
@ParseFailed = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"MPM: Failed to parse PLINK IEs\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"MPM: No Mesh Peering Management element\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"MPM: No Mesh ID or Mesh Configuration element\00", align 1
@.str.7 = private unnamed_addr constant [67 x i8] c"MPM: Mesh ID or Mesh Configuration element do not match local MBSS\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"MPM: Mesh parsing rejected frame\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"MPM: plid=0x%x llid=0x%x\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"MPM: close reason=%u\00", align 1
@MESH_CONF_SEC_AMPE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"MPM: No STA entry for peer\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"MPM: RSN process rejected frame (res=%d)\00", align 1
@OPN_RJCT = common dso_local global i32 0, align 4
@WLAN_REASON_MESH_INVALID_GTK = common dso_local global i32 0, align 4
@PLINK_BLOCKED = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [19 x i8] c"MPM: PLINK_BLOCKED\00", align 1
@REQ_RJCT = common dso_local global i32 0, align 4
@WLAN_REASON_MESH_MAX_PEERS = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [34 x i8] c"MPM: Peer link num over quota(%d)\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"MPM: peer_lid mismatch: 0x%x != 0x%x\00", align 1
@OPN_ACPT = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [66 x i8] c"MPM: lid mismatch: my_lid: 0x%x != 0x%x or peer_lid: 0x%x != 0x%x\00", align 1
@CNF_ACPT = common dso_local global i32 0, align 4
@PLINK_ESTAB = common dso_local global i64 0, align 8
@CLS_ACPT = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [35 x i8] c"MPM: my_lid mismatch: 0x%x != 0x%x\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@SAE_ACCEPTED = common dso_local global i64 0, align 8
@WPA_CAPABILITY_OCVC = common dso_local global i32 0, align 4
@ocv_errorstr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mesh_mpm_action_rx(%struct.wpa_supplicant* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.wpa_supplicant*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hostapd_data*, align 8
  %9 = alloca %struct.mesh_conf*, align 8
  %10 = alloca %struct.sta_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee802_11_elems, align 8
  %16 = alloca %struct.mesh_peer_mgmt_ie, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load %struct.hostapd_data**, %struct.hostapd_data*** %25, align 8
  %27 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %26, i64 0
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %27, align 8
  store %struct.hostapd_data* %28, %struct.hostapd_data** %8, align 8
  %29 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %30 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %29, i32 0, i32 0
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.mesh_conf*, %struct.mesh_conf** %32, align 8
  store %struct.mesh_conf* %33, %struct.mesh_conf** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %20, align 4
  %34 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @WLAN_ACTION_SELF_PROTECTED, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %3
  br label %436

42:                                               ; preds = %3
  %43 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %44 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 128
  br i1 %51, label %52, label %59

52:                                               ; preds = %42
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 129
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 130
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %436

59:                                               ; preds = %55, %52, %42
  %60 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %17, align 8
  %67 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %68 = bitcast %struct.ieee80211_mgmt* %67 to i32*
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %72 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = ptrtoint i32* %70 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  store i64 %81, i64* %18, align 8
  %82 = load i64, i64* %18, align 8
  %83 = icmp ult i64 %82, 4
  br i1 %83, label %84, label %90

84:                                               ; preds = %59
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i64, i64* %18, align 8
  %88 = trunc i64 %87 to i32
  %89 = call i32 (i32, i8*, ...) @wpa_printf(i32 %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %88)
  br label %436

90:                                               ; preds = %59
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 128
  br i1 %95, label %99, label %96

96:                                               ; preds = %90
  %97 = load i32, i32* %7, align 4
  %98 = icmp eq i32 %97, 129
  br i1 %98, label %99, label %108

99:                                               ; preds = %96, %90
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = load i32*, i32** %17, align 8
  %102 = call i32 @WPA_GET_LE16(i32* %101)
  %103 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32*, i32** %17, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 2
  store i32* %105, i32** %17, align 8
  %106 = load i64, i64* %18, align 8
  %107 = sub i64 %106, 2
  store i64 %107, i64* %18, align 8
  br label %108

108:                                              ; preds = %99, %96
  %109 = load i32, i32* %7, align 4
  %110 = icmp eq i32 %109, 129
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load i32*, i32** %17, align 8
  %113 = call i32 @WPA_GET_LE16(i32* %112)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = load i32, i32* %13, align 4
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load i32*, i32** %17, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  store i32* %118, i32** %17, align 8
  %119 = load i64, i64* %18, align 8
  %120 = sub i64 %119, 2
  store i64 %120, i64* %18, align 8
  br label %121

121:                                              ; preds = %111, %108
  %122 = load i32*, i32** %17, align 8
  %123 = load i64, i64* %18, align 8
  %124 = call i64 @ieee802_11_parse_elems(i32* %122, i64 %123, %struct.ieee802_11_elems* %15, i32 0)
  %125 = load i64, i64* @ParseFailed, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = call i32 (i32, i8*, ...) @wpa_printf(i32 %128, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %436

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %137, label %134

134:                                              ; preds = %130
  %135 = load i32, i32* @MSG_DEBUG, align 4
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %135, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  br label %436

137:                                              ; preds = %130
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 130
  br i1 %139, label %140, label %159

140:                                              ; preds = %137
  %141 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 7
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %151, label %148

148:                                              ; preds = %144, %140
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %149, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0))
  br label %436

151:                                              ; preds = %144
  %152 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %153 = call i32 @matches_local(%struct.wpa_supplicant* %152, %struct.ieee802_11_elems* %15)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %158, label %155

155:                                              ; preds = %151
  %156 = load i32, i32* @MSG_DEBUG, align 4
  %157 = call i32 (i32, i8*, ...) @wpa_printf(i32 %156, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.7, i64 0, i64 0))
  br label %436

158:                                              ; preds = %151
  br label %159

159:                                              ; preds = %158, %137
  %160 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %161 = load i32, i32* %7, align 4
  %162 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @mesh_mpm_parse_peer_mgmt(%struct.wpa_supplicant* %160, i32 %161, i32 %163, i32 %165, %struct.mesh_peer_mgmt_ie* %16)
  store i32 %166, i32* %19, align 4
  %167 = load i32, i32* %19, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %159
  %170 = load i32, i32* @MSG_DEBUG, align 4
  %171 = call i32 (i32, i8*, ...) @wpa_printf(i32 %170, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  br label %436

172:                                              ; preds = %159
  %173 = getelementptr inbounds %struct.mesh_peer_mgmt_ie, %struct.mesh_peer_mgmt_ie* %16, i32 0, i32 0
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @WPA_GET_LE16(i32* %174)
  store i32 %175, i32* %11, align 4
  %176 = getelementptr inbounds %struct.mesh_peer_mgmt_ie, %struct.mesh_peer_mgmt_ie* %16, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = getelementptr inbounds %struct.mesh_peer_mgmt_ie, %struct.mesh_peer_mgmt_ie* %16, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @WPA_GET_LE16(i32* %181)
  store i32 %182, i32* %12, align 4
  br label %183

183:                                              ; preds = %179, %172
  %184 = load i32, i32* @MSG_DEBUG, align 4
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %12, align 4
  %187 = call i32 (i32, i8*, ...) @wpa_printf(i32 %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0), i32 %185, i32 %186)
  %188 = load i32, i32* %7, align 4
  %189 = icmp eq i32 %188, 130
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load i32, i32* @MSG_DEBUG, align 4
  %192 = getelementptr inbounds %struct.mesh_peer_mgmt_ie, %struct.mesh_peer_mgmt_ie* %16, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @WPA_GET_LE16(i32* %193)
  %195 = call i32 (i32, i8*, ...) @wpa_printf(i32 %191, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %190, %183
  %197 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %198 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %199 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = call %struct.sta_info* @ap_get_sta(%struct.hostapd_data* %197, i32 %200)
  store %struct.sta_info* %201, %struct.sta_info** %10, align 8
  %202 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %203 = icmp ne %struct.sta_info* %202, null
  br i1 %203, label %229, label %204

204:                                              ; preds = %196
  %205 = load i32, i32* %7, align 4
  %206 = icmp eq i32 %205, 128
  br i1 %206, label %207, label %229

207:                                              ; preds = %204
  %208 = load %struct.mesh_conf*, %struct.mesh_conf** %9, align 8
  %209 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @MESH_CONF_SEC_AMPE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %207
  %215 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %216 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %219 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @wpa_auth_pmksa_get(i32 %217, i32 %220, i32* null)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %214, %207
  %224 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %225 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %226 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = call %struct.sta_info* @mesh_mpm_add_peer(%struct.wpa_supplicant* %224, i32 %227, %struct.ieee802_11_elems* %15)
  store %struct.sta_info* %228, %struct.sta_info** %10, align 8
  br label %229

229:                                              ; preds = %223, %214, %204, %196
  %230 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %231 = icmp ne %struct.sta_info* %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* @MSG_DEBUG, align 4
  %234 = call i32 (i32, i8*, ...) @wpa_printf(i32 %233, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %436

235:                                              ; preds = %229
  %236 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %237 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %244, label %240

240:                                              ; preds = %235
  %241 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %242 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %243 = call i32 @mesh_mpm_init_link(%struct.wpa_supplicant* %241, %struct.sta_info* %242)
  br label %244

244:                                              ; preds = %240, %235
  %245 = load %struct.mesh_conf*, %struct.mesh_conf** %9, align 8
  %246 = getelementptr inbounds %struct.mesh_conf, %struct.mesh_conf* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = load i32, i32* @MESH_CONF_SEC_AMPE, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %282

251:                                              ; preds = %244
  %252 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %253 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %254 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %255 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.mesh_peer_mgmt_ie, %struct.mesh_peer_mgmt_ie* %16, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = load i32*, i32** %17, align 8
  %261 = load i64, i64* %18, align 8
  %262 = call i32 @mesh_rsn_process_ampe(%struct.wpa_supplicant* %252, %struct.sta_info* %253, %struct.ieee802_11_elems* %15, i32* %257, i32 %259, i32* %260, i64 %261)
  store i32 %262, i32* %21, align 4
  %263 = load i32, i32* %21, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %281

265:                                              ; preds = %251
  %266 = load i32, i32* @MSG_DEBUG, align 4
  %267 = load i32, i32* %21, align 4
  %268 = call i32 (i32, i8*, ...) @wpa_printf(i32 %266, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i32 %267)
  %269 = load i32, i32* %7, align 4
  %270 = icmp eq i32 %269, 128
  br i1 %270, label %271, label %280

271:                                              ; preds = %265
  %272 = load i32, i32* %21, align 4
  %273 = icmp eq i32 %272, -2
  br i1 %273, label %274, label %280

274:                                              ; preds = %271
  %275 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %276 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %277 = load i32, i32* @OPN_RJCT, align 4
  %278 = load i32, i32* @WLAN_REASON_MESH_INVALID_GTK, align 4
  %279 = call i32 @mesh_mpm_fsm(%struct.wpa_supplicant* %275, %struct.sta_info* %276, i32 %277, i32 %278)
  br label %280

280:                                              ; preds = %274, %271, %265
  br label %436

281:                                              ; preds = %251
  br label %282

282:                                              ; preds = %281, %244
  %283 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %284 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @PLINK_BLOCKED, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %291

288:                                              ; preds = %282
  %289 = load i32, i32* @MSG_DEBUG, align 4
  %290 = call i32 (i32, i8*, ...) @wpa_printf(i32 %289, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %436

291:                                              ; preds = %282
  %292 = load i32, i32* %7, align 4
  switch i32 %292, label %429 [
    i32 128, label %293
    i32 129, label %330
    i32 130, label %386
  ]

293:                                              ; preds = %291
  %294 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %295 = call i32 @plink_free_count(%struct.hostapd_data* %294)
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %293
  %298 = load i32, i32* @REQ_RJCT, align 4
  store i32 %298, i32* %14, align 4
  %299 = load i32, i32* @WLAN_REASON_MESH_MAX_PEERS, align 4
  store i32 %299, i32* %20, align 4
  %300 = load i32, i32* @MSG_INFO, align 4
  %301 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %302 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = call i32 (i32, i8*, ...) @wpa_printf(i32 %300, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %303)
  br label %329

305:                                              ; preds = %293
  %306 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %307 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %323

310:                                              ; preds = %305
  %311 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %312 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* %11, align 4
  %315 = icmp ne i32 %313, %314
  br i1 %315, label %316, label %323

316:                                              ; preds = %310
  %317 = load i32, i32* @MSG_DEBUG, align 4
  %318 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %319 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* %11, align 4
  %322 = call i32 (i32, i8*, ...) @wpa_printf(i32 %317, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %320, i32 %321)
  br label %436

323:                                              ; preds = %310, %305
  %324 = load i32, i32* %11, align 4
  %325 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %326 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %325, i32 0, i32 2
  store i32 %324, i32* %326, align 8
  %327 = load i32, i32* @OPN_ACPT, align 4
  store i32 %327, i32* %14, align 4
  br label %328

328:                                              ; preds = %323
  br label %329

329:                                              ; preds = %328, %297
  br label %430

330:                                              ; preds = %291
  %331 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %332 = call i32 @plink_free_count(%struct.hostapd_data* %331)
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %342

334:                                              ; preds = %330
  %335 = load i32, i32* @REQ_RJCT, align 4
  store i32 %335, i32* %14, align 4
  %336 = load i32, i32* @WLAN_REASON_MESH_MAX_PEERS, align 4
  store i32 %336, i32* %20, align 4
  %337 = load i32, i32* @MSG_INFO, align 4
  %338 = load %struct.hostapd_data*, %struct.hostapd_data** %8, align 8
  %339 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = call i32 (i32, i8*, ...) @wpa_printf(i32 %337, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i32 %340)
  br label %385

342:                                              ; preds = %330
  %343 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %344 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %12, align 4
  %347 = icmp ne i32 %345, %346
  br i1 %347, label %359, label %348

348:                                              ; preds = %342
  %349 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %350 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %349, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %370

353:                                              ; preds = %348
  %354 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %355 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = load i32, i32* %11, align 4
  %358 = icmp ne i32 %356, %357
  br i1 %358, label %359, label %370

359:                                              ; preds = %353, %342
  %360 = load i32, i32* @MSG_DEBUG, align 4
  %361 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %362 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %361, i32 0, i32 0
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* %12, align 4
  %365 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %366 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* %11, align 4
  %369 = call i32 (i32, i8*, ...) @wpa_printf(i32 %360, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.16, i64 0, i64 0), i32 %363, i32 %364, i32 %367, i32 %368)
  br label %436

370:                                              ; preds = %353, %348
  %371 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %372 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %371, i32 0, i32 2
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %379, label %375

375:                                              ; preds = %370
  %376 = load i32, i32* %11, align 4
  %377 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %378 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %377, i32 0, i32 2
  store i32 %376, i32* %378, align 8
  br label %379

379:                                              ; preds = %375, %370
  %380 = load i32, i32* %13, align 4
  %381 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %382 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %381, i32 0, i32 3
  store i32 %380, i32* %382, align 4
  %383 = load i32, i32* @CNF_ACPT, align 4
  store i32 %383, i32* %14, align 4
  br label %384

384:                                              ; preds = %379
  br label %385

385:                                              ; preds = %384, %334
  br label %430

386:                                              ; preds = %291
  %387 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %388 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %387, i32 0, i32 1
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @PLINK_ESTAB, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %394

392:                                              ; preds = %386
  %393 = load i32, i32* @CLS_ACPT, align 4
  store i32 %393, i32* %14, align 4
  br label %428

394:                                              ; preds = %386
  %395 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %396 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %395, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = load i32, i32* %11, align 4
  %399 = icmp ne i32 %397, %398
  br i1 %399, label %400, label %407

400:                                              ; preds = %394
  %401 = load i32, i32* @MSG_DEBUG, align 4
  %402 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %403 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %402, i32 0, i32 2
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* %11, align 4
  %406 = call i32 (i32, i8*, ...) @wpa_printf(i32 %401, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0), i32 %404, i32 %405)
  br label %436

407:                                              ; preds = %394
  %408 = getelementptr inbounds %struct.mesh_peer_mgmt_ie, %struct.mesh_peer_mgmt_ie* %16, i32 0, i32 1
  %409 = load i32*, i32** %408, align 8
  %410 = icmp ne i32* %409, null
  br i1 %410, label %411, label %424

411:                                              ; preds = %407
  %412 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %413 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 8
  %415 = load i32, i32* %12, align 4
  %416 = icmp ne i32 %414, %415
  br i1 %416, label %417, label %424

417:                                              ; preds = %411
  %418 = load i32, i32* @MSG_DEBUG, align 4
  %419 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %420 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %419, i32 0, i32 0
  %421 = load i32, i32* %420, align 8
  %422 = load i32, i32* %12, align 4
  %423 = call i32 (i32, i8*, ...) @wpa_printf(i32 %418, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0), i32 %421, i32 %422)
  br label %436

424:                                              ; preds = %411, %407
  %425 = load i32, i32* @CLS_ACPT, align 4
  store i32 %425, i32* %14, align 4
  br label %426

426:                                              ; preds = %424
  br label %427

427:                                              ; preds = %426
  br label %428

428:                                              ; preds = %427, %392
  br label %430

429:                                              ; preds = %291
  br label %436

430:                                              ; preds = %428, %385, %329
  %431 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %4, align 8
  %432 = load %struct.sta_info*, %struct.sta_info** %10, align 8
  %433 = load i32, i32* %14, align 4
  %434 = load i32, i32* %20, align 4
  %435 = call i32 @mesh_mpm_fsm(%struct.wpa_supplicant* %431, %struct.sta_info* %432, i32 %433, i32 %434)
  br label %436

436:                                              ; preds = %430, %429, %417, %400, %359, %316, %288, %280, %232, %169, %155, %148, %134, %127, %84, %58, %41
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @WPA_GET_LE16(i32*) #1

declare dso_local i64 @ieee802_11_parse_elems(i32*, i64, %struct.ieee802_11_elems*, i32) #1

declare dso_local i32 @matches_local(%struct.wpa_supplicant*, %struct.ieee802_11_elems*) #1

declare dso_local i32 @mesh_mpm_parse_peer_mgmt(%struct.wpa_supplicant*, i32, i32, i32, %struct.mesh_peer_mgmt_ie*) #1

declare dso_local %struct.sta_info* @ap_get_sta(%struct.hostapd_data*, i32) #1

declare dso_local i64 @wpa_auth_pmksa_get(i32, i32, i32*) #1

declare dso_local %struct.sta_info* @mesh_mpm_add_peer(%struct.wpa_supplicant*, i32, %struct.ieee802_11_elems*) #1

declare dso_local i32 @mesh_mpm_init_link(%struct.wpa_supplicant*, %struct.sta_info*) #1

declare dso_local i32 @mesh_rsn_process_ampe(%struct.wpa_supplicant*, %struct.sta_info*, %struct.ieee802_11_elems*, i32*, i32, i32*, i64) #1

declare dso_local i32 @mesh_mpm_fsm(%struct.wpa_supplicant*, %struct.sta_info*, i32, i32) #1

declare dso_local i32 @plink_free_count(%struct.hostapd_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
