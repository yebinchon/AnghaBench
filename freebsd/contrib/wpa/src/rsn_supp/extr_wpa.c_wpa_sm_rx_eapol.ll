; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_rx_eapol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/rsn_supp/extr_wpa.c_wpa_sm_rx_eapol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_sm = type { i64, i64, i64, %struct.TYPE_2__*, i32, i64, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee802_1x_hdr = type { i64, i32, i32 }
%struct.wpa_eapol_key = type { i64, i32, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"WPA: EAPOL frame too short to be a WPA EAPOL-Key (len %lu, expecting at least %lu)\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"IEEE 802.1X RX: version=%d type=%d length=%lu\00", align 1
@EAPOL_VERSION = common dso_local global i32 0, align 4
@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [54 x i8] c"WPA: EAPOL frame (type %u) discarded, not a Key frame\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"WPA: RX EAPOL-Key\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"WPA: EAPOL frame payload size %lu invalid (frame size %lu)\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"WPA: ignoring %lu bytes after the IEEE 802.1X data\00", align 1
@EAPOL_KEY_TYPE_WPA = common dso_local global i64 0, align 8
@EAPOL_KEY_TYPE_RSN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [44 x i8] c"WPA: EAPOL-Key type (%d) unknown, discarded\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [59 x i8] c"WPA: Invalid EAPOL-Key frame - key_data overflow (%u > %u)\00", align 1
@WPA_KEY_INFO_TYPE_MASK = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_HMAC_MD5_RC4 = common dso_local global i32 0, align 4
@WPA_KEY_INFO_TYPE_HMAC_SHA1_AES = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"WPA: Unsupported EAPOL-Key descriptor version %d\00", align 1
@WPA_KEY_INFO_TYPE_AKM_DEFINED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [76 x i8] c"RSN: Unsupported EAPOL-Key descriptor version %d (expected AKM defined = 0)\00", align 1
@WPA_CIPHER_CCMP = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [66 x i8] c"WPA: CCMP is used, but EAPOL-Key descriptor version (%d) is not 2\00", align 1
@WPA_KEY_INFO_KEY_TYPE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [76 x i8] c"WPA: Backwards compatibility: allow invalid version for non-CCMP group keys\00", align 1
@WPA_KEY_INFO_TYPE_AES_128_CMAC = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [142 x i8] c"WPA: Interoperability workaround: allow incorrect (should have been HMAC-SHA1), but stronger (is AES-128-CMAC), descriptor version to be used\00", align 1
@WPA_CIPHER_GCMP = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [66 x i8] c"WPA: GCMP is used, but EAPOL-Key descriptor version (%d) is not 2\00", align 1
@WPA_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [65 x i8] c"WPA: EAPOL-Key Replay Counter did not increase - dropping packet\00", align 1
@WPA_KEY_INFO_SMK_MESSAGE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [37 x i8] c"WPA: Unsupported SMK bit in key_info\00", align 1
@WPA_KEY_INFO_ACK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [28 x i8] c"WPA: No Ack bit in key_info\00", align 1
@WPA_KEY_INFO_REQUEST = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [42 x i8] c"WPA: EAPOL-Key with Request bit - dropped\00", align 1
@WPA_KEY_INFO_MIC = common dso_local global i32 0, align 4
@WPA_PROTO_RSN = common dso_local global i64 0, align 8
@WPA_PROTO_OSEN = common dso_local global i64 0, align 8
@WPA_KEY_INFO_ENCR_KEY_DATA = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [62 x i8] c"WPA: Ignore EAPOL-Key with encrypted but unauthenticated data\00", align 1
@WPA_KEY_INFO_KEY_INDEX_MASK = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [58 x i8] c"WPA: Ignored EAPOL-Key (Pairwise) with non-zero key index\00", align 1
@.str.20 = private unnamed_addr constant [54 x i8] c"WPA: EAPOL-Key (Group) without Mic/Encr bit - dropped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_sm_rx_eapol(%struct.wpa_sm* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wpa_sm*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ieee802_1x_hdr*, align 8
  %14 = alloca %struct.wpa_eapol_key*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.wpa_sm* %0, %struct.wpa_sm** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* null, i32** %17, align 8
  store i32 -1, i32* %18, align 4
  %23 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %24 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %27 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @wpa_mic_len(i32 %25, i32 %28)
  store i64 %29, i64* %21, align 8
  %30 = load i64, i64* %21, align 8
  %31 = add i64 24, %30
  %32 = add i64 %31, 2
  store i64 %32, i64* %22, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %22, align 8
  %35 = add i64 16, %34
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %4
  %38 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %39 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %22, align 8
  %46 = add i64 16, %45
  %47 = call i32 (i32, i32, i8*, i64, ...) @wpa_dbg(i32 %42, i32 %43, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %44, i64 %46)
  store i32 0, i32* %5, align 4
  br label %541

48:                                               ; preds = %4
  %49 = load i32*, i32** %8, align 8
  %50 = bitcast i32* %49 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %50, %struct.ieee802_1x_hdr** %13, align 8
  %51 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %13, align 8
  %52 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @be_to_host16(i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* %10, align 8
  %56 = add i64 %55, 16
  store i64 %56, i64* %11, align 8
  %57 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %58 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %13, align 8
  %64 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %13, align 8
  %68 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %10, align 8
  %71 = call i32 (i32, i32, i8*, i64, ...) @wpa_dbg(i32 %61, i32 %62, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %66, i64 %69, i64 %70)
  %72 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %13, align 8
  %73 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @EAPOL_VERSION, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %48
  br label %78

78:                                               ; preds = %77, %48
  %79 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %13, align 8
  %80 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @IEEE802_1X_TYPE_EAPOL_KEY, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %78
  %85 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %86 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %85, i32 0, i32 3
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %13, align 8
  %92 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i32, i32, i8*, i64, ...) @wpa_dbg(i32 %89, i32 %90, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i64 %93)
  store i32 0, i32* %18, align 4
  br label %536

95:                                               ; preds = %78
  %96 = load i32, i32* @MSG_MSGDUMP, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = load i64, i64* %9, align 8
  %99 = call i32 @wpa_hexdump(i32 %96, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %97, i64 %98)
  %100 = load i64, i64* %10, align 8
  %101 = load i64, i64* %9, align 8
  %102 = sub i64 %101, 16
  %103 = icmp ugt i64 %100, %102
  br i1 %103, label %108, label %104

104:                                              ; preds = %95
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* %22, align 8
  %107 = icmp ult i64 %105, %106
  br i1 %107, label %108, label %118

108:                                              ; preds = %104, %95
  %109 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %110 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %109, i32 0, i32 3
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %9, align 8
  %117 = call i32 (i32, i32, i8*, i64, ...) @wpa_dbg(i32 %113, i32 %114, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i64 %115, i64 %116)
  store i32 0, i32* %18, align 4
  br label %536

118:                                              ; preds = %104
  %119 = load i64, i64* %11, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp ult i64 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %118
  %123 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %124 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %123, i32 0, i32 3
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = load i64, i64* %9, align 8
  %130 = load i64, i64* %11, align 8
  %131 = sub i64 %129, %130
  %132 = call i32 (i32, i32, i8*, i64, ...) @wpa_dbg(i32 %127, i32 %128, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i64 %131)
  br label %133

133:                                              ; preds = %122, %118
  %134 = load i32*, i32** %8, align 8
  %135 = load i64, i64* %11, align 8
  %136 = call i32* @os_memdup(i32* %134, i64 %135)
  store i32* %136, i32** %17, align 8
  %137 = load i32*, i32** %17, align 8
  %138 = icmp eq i32* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %133
  br label %536

140:                                              ; preds = %133
  %141 = load i32*, i32** %17, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 16
  %143 = bitcast i32* %142 to %struct.wpa_eapol_key*
  store %struct.wpa_eapol_key* %143, %struct.wpa_eapol_key** %14, align 8
  %144 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %145 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %144, i64 1
  %146 = bitcast %struct.wpa_eapol_key* %145 to i32*
  store i32* %146, i32** %19, align 8
  %147 = load i32*, i32** %19, align 8
  %148 = load i64, i64* %21, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32* %150, i32** %20, align 8
  %151 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %152 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @EAPOL_KEY_TYPE_WPA, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %173

156:                                              ; preds = %140
  %157 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %158 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @EAPOL_KEY_TYPE_RSN, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %156
  %163 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %164 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %163, i32 0, i32 3
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @MSG_DEBUG, align 4
  %169 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %170 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = call i32 (i32, i32, i8*, i64, ...) @wpa_dbg(i32 %167, i32 %168, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i64 %171)
  store i32 0, i32* %18, align 4
  br label %536

173:                                              ; preds = %156, %140
  %174 = load i32*, i32** %19, align 8
  %175 = load i64, i64* %21, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  %177 = call i8* @WPA_GET_BE16(i32* %176)
  %178 = ptrtoint i8* %177 to i64
  store i64 %178, i64* %12, align 8
  %179 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %180 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %181 = load i64, i64* %12, align 8
  %182 = load i32*, i32** %19, align 8
  %183 = load i64, i64* %21, align 8
  %184 = call i32 @wpa_eapol_key_dump(%struct.wpa_sm* %179, %struct.wpa_eapol_key* %180, i64 %181, i32* %182, i64 %183)
  %185 = load i64, i64* %12, align 8
  %186 = load i64, i64* %10, align 8
  %187 = load i64, i64* %22, align 8
  %188 = sub i64 %186, %187
  %189 = icmp ugt i64 %185, %188
  br i1 %189, label %190, label %204

190:                                              ; preds = %173
  %191 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %192 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %191, i32 0, i32 3
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @MSG_INFO, align 4
  %197 = load i64, i64* %12, align 8
  %198 = trunc i64 %197 to i32
  %199 = load i64, i64* %10, align 8
  %200 = load i64, i64* %22, align 8
  %201 = sub i64 %199, %200
  %202 = trunc i64 %201 to i32
  %203 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %195, i32 %196, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %198, i32 %202)
  br label %536

204:                                              ; preds = %173
  %205 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %206 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @eapol_sm_notify_lower_layer_success(i32 %207, i32 0)
  %209 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %210 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %209, i32 0, i32 2
  %211 = load i32*, i32** %210, align 8
  %212 = call i8* @WPA_GET_BE16(i32* %211)
  %213 = ptrtoint i8* %212 to i32
  store i32 %213, i32* %15, align 4
  %214 = load i32, i32* %15, align 4
  %215 = load i32, i32* @WPA_KEY_INFO_TYPE_MASK, align 4
  %216 = and i32 %214, %215
  store i32 %216, i32* %16, align 4
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_MD5_RC4, align 4
  %219 = icmp ne i32 %217, %218
  br i1 %219, label %220, label %239

220:                                              ; preds = %204
  %221 = load i32, i32* %16, align 4
  %222 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 4
  %223 = icmp ne i32 %221, %222
  br i1 %223, label %224, label %239

224:                                              ; preds = %220
  %225 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %226 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %225, i32 0, i32 6
  %227 = load i32, i32* %226, align 8
  %228 = call i64 @wpa_use_akm_defined(i32 %227)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %239, label %230

230:                                              ; preds = %224
  %231 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %232 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %231, i32 0, i32 3
  %233 = load %struct.TYPE_2__*, %struct.TYPE_2__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @MSG_INFO, align 4
  %237 = load i32, i32* %16, align 4
  %238 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %235, i32 %236, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %237)
  br label %536

239:                                              ; preds = %224, %220, %204
  %240 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %241 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 8
  %243 = call i64 @wpa_use_akm_defined(i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %258

245:                                              ; preds = %239
  %246 = load i32, i32* %16, align 4
  %247 = load i32, i32* @WPA_KEY_INFO_TYPE_AKM_DEFINED, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %258

249:                                              ; preds = %245
  %250 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %251 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %250, i32 0, i32 3
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @MSG_INFO, align 4
  %256 = load i32, i32* %16, align 4
  %257 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %254, i32 %255, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.9, i64 0, i64 0), i32 %256)
  br label %536

258:                                              ; preds = %245, %239
  %259 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %260 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = load i64, i64* @WPA_CIPHER_CCMP, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %316

264:                                              ; preds = %258
  %265 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %266 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %265, i32 0, i32 6
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @wpa_use_akm_defined(i32 %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %316, label %270

270:                                              ; preds = %264
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 4
  %273 = icmp ne i32 %271, %272
  br i1 %273, label %274, label %316

274:                                              ; preds = %270
  %275 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %276 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %275, i32 0, i32 3
  %277 = load %struct.TYPE_2__*, %struct.TYPE_2__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @MSG_INFO, align 4
  %281 = load i32, i32* %16, align 4
  %282 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %279, i32 %280, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i32 %281)
  %283 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %284 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %283, i32 0, i32 1
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @WPA_CIPHER_CCMP, align 8
  %287 = icmp ne i64 %285, %286
  br i1 %287, label %288, label %301

288:                                              ; preds = %274
  %289 = load i32, i32* %15, align 4
  %290 = load i32, i32* @WPA_KEY_INFO_KEY_TYPE, align 4
  %291 = and i32 %289, %290
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %301, label %293

293:                                              ; preds = %288
  %294 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %295 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %294, i32 0, i32 3
  %296 = load %struct.TYPE_2__*, %struct.TYPE_2__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @MSG_INFO, align 4
  %300 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %298, i32 %299, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.11, i64 0, i64 0))
  br label %315

301:                                              ; preds = %288, %274
  %302 = load i32, i32* %16, align 4
  %303 = load i32, i32* @WPA_KEY_INFO_TYPE_AES_128_CMAC, align 4
  %304 = icmp eq i32 %302, %303
  br i1 %304, label %305, label %313

305:                                              ; preds = %301
  %306 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %307 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %306, i32 0, i32 3
  %308 = load %struct.TYPE_2__*, %struct.TYPE_2__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* @MSG_INFO, align 4
  %312 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %310, i32 %311, i8* getelementptr inbounds ([142 x i8], [142 x i8]* @.str.12, i64 0, i64 0))
  br label %314

313:                                              ; preds = %301
  br label %536

314:                                              ; preds = %305
  br label %315

315:                                              ; preds = %314, %293
  br label %342

316:                                              ; preds = %270, %264, %258
  %317 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %318 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %317, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = load i64, i64* @WPA_CIPHER_GCMP, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %341

322:                                              ; preds = %316
  %323 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %324 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %323, i32 0, i32 6
  %325 = load i32, i32* %324, align 8
  %326 = call i64 @wpa_use_akm_defined(i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %341, label %328

328:                                              ; preds = %322
  %329 = load i32, i32* %16, align 4
  %330 = load i32, i32* @WPA_KEY_INFO_TYPE_HMAC_SHA1_AES, align 4
  %331 = icmp ne i32 %329, %330
  br i1 %331, label %332, label %341

332:                                              ; preds = %328
  %333 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %334 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %333, i32 0, i32 3
  %335 = load %struct.TYPE_2__*, %struct.TYPE_2__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @MSG_INFO, align 4
  %339 = load i32, i32* %16, align 4
  %340 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %337, i32 %338, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.13, i64 0, i64 0), i32 %339)
  br label %536

341:                                              ; preds = %328, %322, %316
  br label %342

342:                                              ; preds = %341, %315
  %343 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %344 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %343, i32 0, i32 5
  %345 = load i64, i64* %344, align 8
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %365

347:                                              ; preds = %342
  %348 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %349 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 8
  %351 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %352 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %351, i32 0, i32 4
  %353 = load i32, i32* %352, align 8
  %354 = load i32, i32* @WPA_REPLAY_COUNTER_LEN, align 4
  %355 = call i64 @os_memcmp(i32 %350, i32 %353, i32 %354)
  %356 = icmp sle i64 %355, 0
  br i1 %356, label %357, label %365

357:                                              ; preds = %347
  %358 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %359 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %358, i32 0, i32 3
  %360 = load %struct.TYPE_2__*, %struct.TYPE_2__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* @MSG_WARNING, align 4
  %364 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %362, i32 %363, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.14, i64 0, i64 0))
  br label %536

365:                                              ; preds = %347, %342
  %366 = load i32, i32* %15, align 4
  %367 = load i32, i32* @WPA_KEY_INFO_SMK_MESSAGE, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %378

370:                                              ; preds = %365
  %371 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %372 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %371, i32 0, i32 3
  %373 = load %struct.TYPE_2__*, %struct.TYPE_2__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load i32, i32* @MSG_INFO, align 4
  %377 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %375, i32 %376, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  br label %536

378:                                              ; preds = %365
  %379 = load i32, i32* %15, align 4
  %380 = load i32, i32* @WPA_KEY_INFO_ACK, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %391, label %383

383:                                              ; preds = %378
  %384 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %385 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %384, i32 0, i32 3
  %386 = load %struct.TYPE_2__*, %struct.TYPE_2__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = load i32, i32* @MSG_INFO, align 4
  %390 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %388, i32 %389, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  br label %536

391:                                              ; preds = %378
  %392 = load i32, i32* %15, align 4
  %393 = load i32, i32* @WPA_KEY_INFO_REQUEST, align 4
  %394 = and i32 %392, %393
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %404

396:                                              ; preds = %391
  %397 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %398 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %397, i32 0, i32 3
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 4
  %402 = load i32, i32* @MSG_INFO, align 4
  %403 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %401, i32 %402, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.17, i64 0, i64 0))
  br label %536

404:                                              ; preds = %391
  %405 = load i32, i32* %15, align 4
  %406 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %404
  %410 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %411 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %412 = load i32, i32* %16, align 4
  %413 = load i32*, i32** %17, align 8
  %414 = load i64, i64* %11, align 8
  %415 = call i64 @wpa_supplicant_verify_eapol_key_mic(%struct.wpa_sm* %410, %struct.wpa_eapol_key* %411, i32 %412, i32* %413, i64 %414)
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %418

417:                                              ; preds = %409
  br label %536

418:                                              ; preds = %409, %404
  %419 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %420 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %419, i32 0, i32 2
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @WPA_PROTO_RSN, align 8
  %423 = icmp eq i64 %421, %422
  br i1 %423, label %430, label %424

424:                                              ; preds = %418
  %425 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %426 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %425, i32 0, i32 2
  %427 = load i64, i64* %426, align 8
  %428 = load i64, i64* @WPA_PROTO_OSEN, align 8
  %429 = icmp eq i64 %427, %428
  br i1 %429, label %430, label %461

430:                                              ; preds = %424, %418
  %431 = load i32, i32* %15, align 4
  %432 = load i32, i32* @WPA_KEY_INFO_ENCR_KEY_DATA, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %461

435:                                              ; preds = %430
  %436 = load i64, i64* %21, align 8
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %461

438:                                              ; preds = %435
  %439 = load i32, i32* %15, align 4
  %440 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %451, label %443

443:                                              ; preds = %438
  %444 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %445 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %444, i32 0, i32 3
  %446 = load %struct.TYPE_2__*, %struct.TYPE_2__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 4
  %449 = load i32, i32* @MSG_WARNING, align 4
  %450 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %448, i32 %449, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0))
  br label %536

451:                                              ; preds = %438
  %452 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %453 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %454 = load i64, i64* %21, align 8
  %455 = load i32, i32* %16, align 4
  %456 = load i32*, i32** %20, align 8
  %457 = call i64 @wpa_supplicant_decrypt_key_data(%struct.wpa_sm* %452, %struct.wpa_eapol_key* %453, i64 %454, i32 %455, i32* %456, i64* %12)
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %451
  br label %536

460:                                              ; preds = %451
  br label %461

461:                                              ; preds = %460, %435, %430, %424
  %462 = load i32, i32* %15, align 4
  %463 = load i32, i32* @WPA_KEY_INFO_KEY_TYPE, align 4
  %464 = and i32 %462, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %502

466:                                              ; preds = %461
  %467 = load i32, i32* %15, align 4
  %468 = load i32, i32* @WPA_KEY_INFO_KEY_INDEX_MASK, align 4
  %469 = and i32 %467, %468
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %471, label %479

471:                                              ; preds = %466
  %472 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %473 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %472, i32 0, i32 3
  %474 = load %struct.TYPE_2__*, %struct.TYPE_2__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* @MSG_WARNING, align 4
  %478 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %476, i32 %477, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.19, i64 0, i64 0))
  br label %536

479:                                              ; preds = %466
  %480 = load i32, i32* %15, align 4
  %481 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %482 = load i32, i32* @WPA_KEY_INFO_ENCR_KEY_DATA, align 4
  %483 = or i32 %481, %482
  %484 = and i32 %480, %483
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %493

486:                                              ; preds = %479
  %487 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %488 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %489 = load i32, i32* %16, align 4
  %490 = load i32*, i32** %20, align 8
  %491 = load i64, i64* %12, align 8
  %492 = call i32 @wpa_supplicant_process_3_of_4(%struct.wpa_sm* %487, %struct.wpa_eapol_key* %488, i32 %489, i32* %490, i64 %491)
  br label %501

493:                                              ; preds = %479
  %494 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %495 = load i32*, i32** %7, align 8
  %496 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %497 = load i32, i32* %16, align 4
  %498 = load i32*, i32** %20, align 8
  %499 = load i64, i64* %12, align 8
  %500 = call i32 @wpa_supplicant_process_1_of_4(%struct.wpa_sm* %494, i32* %495, %struct.wpa_eapol_key* %496, i32 %497, i32* %498, i64 %499)
  br label %501

501:                                              ; preds = %493, %486
  br label %535

502:                                              ; preds = %461
  %503 = load i64, i64* %21, align 8
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %510

505:                                              ; preds = %502
  %506 = load i32, i32* %15, align 4
  %507 = load i32, i32* @WPA_KEY_INFO_MIC, align 4
  %508 = and i32 %506, %507
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %518, label %510

510:                                              ; preds = %505, %502
  %511 = load i64, i64* %21, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %526, label %513

513:                                              ; preds = %510
  %514 = load i32, i32* %15, align 4
  %515 = load i32, i32* @WPA_KEY_INFO_ENCR_KEY_DATA, align 4
  %516 = and i32 %514, %515
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %526

518:                                              ; preds = %513, %505
  %519 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %520 = load i32*, i32** %7, align 8
  %521 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %14, align 8
  %522 = load i32*, i32** %20, align 8
  %523 = load i64, i64* %12, align 8
  %524 = load i32, i32* %16, align 4
  %525 = call i32 @wpa_supplicant_process_1_of_2(%struct.wpa_sm* %519, i32* %520, %struct.wpa_eapol_key* %521, i32* %522, i64 %523, i32 %524)
  br label %534

526:                                              ; preds = %513, %510
  %527 = load %struct.wpa_sm*, %struct.wpa_sm** %6, align 8
  %528 = getelementptr inbounds %struct.wpa_sm, %struct.wpa_sm* %527, i32 0, i32 3
  %529 = load %struct.TYPE_2__*, %struct.TYPE_2__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* @MSG_WARNING, align 4
  %533 = call i32 (i32, i32, i8*, ...) @wpa_msg(i32 %531, i32 %532, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0))
  br label %534

534:                                              ; preds = %526, %518
  br label %535

535:                                              ; preds = %534, %501
  store i32 1, i32* %18, align 4
  br label %536

536:                                              ; preds = %535, %471, %459, %443, %417, %396, %383, %370, %357, %332, %313, %249, %230, %190, %162, %139, %108, %84
  %537 = load i32*, i32** %17, align 8
  %538 = load i64, i64* %11, align 8
  %539 = call i32 @bin_clear_free(i32* %537, i64 %538)
  %540 = load i32, i32* %18, align 4
  store i32 %540, i32* %5, align 4
  br label %541

541:                                              ; preds = %536, %37
  %542 = load i32, i32* %5, align 4
  ret i32 %542
}

declare dso_local i64 @wpa_mic_len(i32, i32) #1

declare dso_local i32 @wpa_dbg(i32, i32, i8*, i64, ...) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32* @os_memdup(i32*, i64) #1

declare dso_local i8* @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpa_eapol_key_dump(%struct.wpa_sm*, %struct.wpa_eapol_key*, i64, i32*, i64) #1

declare dso_local i32 @wpa_msg(i32, i32, i8*, ...) #1

declare dso_local i32 @eapol_sm_notify_lower_layer_success(i32, i32) #1

declare dso_local i64 @wpa_use_akm_defined(i32) #1

declare dso_local i64 @os_memcmp(i32, i32, i32) #1

declare dso_local i64 @wpa_supplicant_verify_eapol_key_mic(%struct.wpa_sm*, %struct.wpa_eapol_key*, i32, i32*, i64) #1

declare dso_local i64 @wpa_supplicant_decrypt_key_data(%struct.wpa_sm*, %struct.wpa_eapol_key*, i64, i32, i32*, i64*) #1

declare dso_local i32 @wpa_supplicant_process_3_of_4(%struct.wpa_sm*, %struct.wpa_eapol_key*, i32, i32*, i64) #1

declare dso_local i32 @wpa_supplicant_process_1_of_4(%struct.wpa_sm*, i32*, %struct.wpa_eapol_key*, i32, i32*, i64) #1

declare dso_local i32 @wpa_supplicant_process_1_of_2(%struct.wpa_sm*, i32*, %struct.wpa_eapol_key*, i32*, i64, i32) #1

declare dso_local i32 @bin_clear_free(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
