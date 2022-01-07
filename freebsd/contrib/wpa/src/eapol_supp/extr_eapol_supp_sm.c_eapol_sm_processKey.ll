; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_processKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eapol_supp/extr_eapol_supp_sm.c_eapol_sm_processKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eapol_sm = type { i32, %struct.TYPE_4__*, i8*, %struct.TYPE_3__, i8*, i8*, %struct.ieee802_1x_eapol_key*, i8*, i32* }
%struct.TYPE_4__ = type { i64 (i32, i32, i32, %struct.ieee802_1x_eapol_key*, i32)*, i32, i32 (i32)* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee802_1x_eapol_key = type { i32, %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key*, i32, i32 }
%struct.ieee802_1x_hdr = type { i32, i32, i32 }
%struct.eap_key_data = type { %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key* }

@IEEE8021X_KEY_SIGN_LEN = common dso_local global i32 0, align 4
@IEEE8021X_KEY_IV_LEN = common dso_local global i32 0, align 4
@IEEE8021X_ENCR_KEY_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"EAPOL: processKey\00", align 1
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [95 x i8] c"EAPOL: Received IEEE 802.1X EAPOL-Key even though this was not accepted - ignoring this packet\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"EAPOL: Too short EAPOL-Key frame\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"EAPOL: RX IEEE 802.1X ver=%d type=%d len=%d EAPOL-Key: type=%d key_length=%d key_index=0x%x\00", align 1
@IEEE8021X_SIGN_KEY_LEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [62 x i8] c"EAPOL: Could not get master key for decrypting EAPOL-Key keys\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"EAPOL: Could not get LEAP master key for decrypting EAPOL-Key keys\00", align 1
@.str.6 = private unnamed_addr constant [83 x i8] c"EAPOL: Could not get enough master key data for decrypting EAPOL-Key keys (res=%d)\00", align 1
@IEEE8021X_REPLAY_COUNTER_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [64 x i8] c"EAPOL: EAPOL-Key replay counter did not increase - ignoring key\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"EAPOL: last replay counter\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"EAPOL: received replay counter\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"EAPOL: Invalid key signature in EAPOL-Key packet\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"EAPOL: EAPOL-Key key signature verified\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"EAPOL: Too long key data length %d\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"EAPOL: Decrypted(RC4) key\00", align 1
@.str.14 = private unnamed_addr constant [61 x i8] c"EAPOL: using part of EAP keying material data encryption key\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"EAPOL: Invalid key data length %d (key_length=%d)\00", align 1
@TRUE = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [52 x i8] c"EAPOL: Setting dynamic WEP key: %s keyidx %d len %d\00", align 1
@IEEE8021X_KEY_INDEX_FLAG = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"unicast\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"broadcast\00", align 1
@IEEE8021X_KEY_INDEX_MASK = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [45 x i8] c"EAPOL: Failed to set WEP key to the  driver.\00", align 1
@EAPOL_REQUIRE_KEY_UNICAST = common dso_local global i32 0, align 4
@EAPOL_REQUIRE_KEY_BROADCAST = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [46 x i8] c"EAPOL: all required EAPOL-Key frames received\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eapol_sm*)* @eapol_sm_processKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eapol_sm_processKey(%struct.eapol_sm* %0) #0 {
  %2 = alloca %struct.eapol_sm*, align 8
  %3 = alloca %struct.ieee802_1x_hdr*, align 8
  %4 = alloca %struct.ieee802_1x_eapol_key*, align 8
  %5 = alloca %struct.eap_key_data, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [32 x %struct.ieee802_1x_eapol_key], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.eapol_sm* %0, %struct.eapol_sm** %2, align 8
  %17 = load i32, i32* @IEEE8021X_KEY_SIGN_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %6, align 8
  %20 = alloca %struct.ieee802_1x_eapol_key, i64 %18, align 16
  store i64 %18, i64* %7, align 8
  %21 = load i32, i32* @IEEE8021X_KEY_IV_LEN, align 4
  %22 = load i32, i32* @IEEE8021X_ENCR_KEY_LEN, align 4
  %23 = add nsw i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = alloca %struct.ieee802_1x_eapol_key, i64 %24, align 16
  store i64 %24, i64* %9, align 8
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %29 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %28, i32 0, i32 8
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 1, i32* %16, align 4
  br label %413

33:                                               ; preds = %1
  %34 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %35 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @MSG_WARNING, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %413

42:                                               ; preds = %33
  %43 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %44 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 52
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 1, i32* %16, align 4
  br label %413

49:                                               ; preds = %42
  %50 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %51 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %50, i32 0, i32 8
  %52 = load i32*, i32** %51, align 8
  %53 = bitcast i32* %52 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %53, %struct.ieee802_1x_hdr** %3, align 8
  %54 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %3, align 8
  %55 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %54, i64 1
  %56 = bitcast %struct.ieee802_1x_hdr* %55 to %struct.ieee802_1x_eapol_key*
  store %struct.ieee802_1x_eapol_key* %56, %struct.ieee802_1x_eapol_key** %4, align 8
  %57 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %3, align 8
  %58 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @be_to_host16(i32 %59)
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %15, align 8
  %62 = load i64, i64* %15, align 8
  %63 = add i64 12, %62
  %64 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %65 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %63, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %49
  %70 = load i64, i64* %15, align 8
  %71 = icmp ult i64 %70, 40
  br i1 %71, label %72, label %75

72:                                               ; preds = %69, %49
  %73 = load i32, i32* @MSG_WARNING, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %413

75:                                               ; preds = %69
  %76 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %77 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @WPA_GET_BE16(i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %3, align 8
  %82 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %3, align 8
  %85 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %3, align 8
  %88 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @be_to_host16(i32 %89)
  %91 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %92 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %96 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0), i32 %83, i32 %86, i32 %90, i32 %93, i32 %94, i32 %97)
  %99 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %100 = call i32 @eapol_sm_notify_lower_layer_success(%struct.eapol_sm* %99, i32 1)
  %101 = load i32, i32* @IEEE8021X_SIGN_KEY_LEN, align 4
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* @IEEE8021X_ENCR_KEY_LEN, align 4
  store i32 %102, i32* %13, align 4
  %103 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %104 = bitcast %struct.eap_key_data* %5 to %struct.ieee802_1x_eapol_key*
  %105 = call i32 @eapol_sm_get_key(%struct.eapol_sm* %103, %struct.ieee802_1x_eapol_key* %104, i32 16)
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %75
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = call i32 (i32, i8*, ...) @wpa_printf(i32 %109, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %413

111:                                              ; preds = %75
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 16
  br i1 %113, label %114, label %129

114:                                              ; preds = %111
  %115 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %116 = bitcast %struct.eap_key_data* %5 to %struct.ieee802_1x_eapol_key*
  %117 = call i32 @eapol_sm_get_key(%struct.eapol_sm* %115, %struct.ieee802_1x_eapol_key* %116, i32 16)
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %114
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %121, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %413

123:                                              ; preds = %114
  store i32 16, i32* %12, align 4
  store i32 16, i32* %13, align 4
  %124 = getelementptr inbounds %struct.eap_key_data, %struct.eap_key_data* %5, i32 0, i32 1
  %125 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %124, align 8
  %126 = getelementptr inbounds %struct.eap_key_data, %struct.eap_key_data* %5, i32 0, i32 0
  %127 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %126, align 8
  %128 = call i32 @os_memcpy(%struct.ieee802_1x_eapol_key* %125, %struct.ieee802_1x_eapol_key* %127, i32 16)
  br label %137

129:                                              ; preds = %111
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32, i32* @MSG_DEBUG, align 4
  %134 = load i32, i32* %11, align 4
  %135 = call i32 (i32, i8*, ...) @wpa_printf(i32 %133, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.6, i64 0, i64 0), i32 %134)
  store i32 1, i32* %16, align 4
  br label %413

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %123
  %138 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %139 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %138, i32 0, i32 7
  %140 = load i8*, i8** %139, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %167

142:                                              ; preds = %137
  %143 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %144 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %143, i32 0, i32 6
  %145 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %144, align 8
  %146 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %147 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %146, i32 0, i32 1
  %148 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %147, align 8
  %149 = load i32, i32* @IEEE8021X_REPLAY_COUNTER_LEN, align 4
  %150 = call i64 @os_memcmp(%struct.ieee802_1x_eapol_key* %145, %struct.ieee802_1x_eapol_key* %148, i32 %149)
  %151 = icmp sge i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %142
  %153 = load i32, i32* @MSG_WARNING, align 4
  %154 = call i32 (i32, i8*, ...) @wpa_printf(i32 %153, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %155 = load i32, i32* @MSG_DEBUG, align 4
  %156 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %157 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %156, i32 0, i32 6
  %158 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %157, align 8
  %159 = load i32, i32* @IEEE8021X_REPLAY_COUNTER_LEN, align 4
  %160 = call i32 @wpa_hexdump(i32 %155, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0), %struct.ieee802_1x_eapol_key* %158, i32 %159)
  %161 = load i32, i32* @MSG_DEBUG, align 4
  %162 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %163 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %162, i32 0, i32 1
  %164 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %163, align 8
  %165 = load i32, i32* @IEEE8021X_REPLAY_COUNTER_LEN, align 4
  %166 = call i32 @wpa_hexdump(i32 %161, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), %struct.ieee802_1x_eapol_key* %164, i32 %165)
  store i32 1, i32* %16, align 4
  br label %413

167:                                              ; preds = %142, %137
  %168 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %169 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %168, i32 0, i32 3
  %170 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %169, align 8
  %171 = load i32, i32* @IEEE8021X_KEY_SIGN_LEN, align 4
  %172 = call i32 @os_memcpy(%struct.ieee802_1x_eapol_key* %20, %struct.ieee802_1x_eapol_key* %170, i32 %171)
  %173 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %174 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %173, i32 0, i32 3
  %175 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %174, align 8
  %176 = load i32, i32* @IEEE8021X_KEY_SIGN_LEN, align 4
  %177 = call i32 @os_memset(%struct.ieee802_1x_eapol_key* %175, i32 0, i32 %176)
  %178 = getelementptr inbounds %struct.eap_key_data, %struct.eap_key_data* %5, i32 0, i32 1
  %179 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %178, align 8
  %180 = load i32, i32* %12, align 4
  %181 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %182 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %181, i32 0, i32 8
  %183 = load i32*, i32** %182, align 8
  %184 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %3, align 8
  %185 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @be_to_host16(i32 %186)
  %188 = sext i32 %187 to i64
  %189 = add i64 12, %188
  %190 = trunc i64 %189 to i32
  %191 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %192 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %191, i32 0, i32 3
  %193 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %192, align 8
  %194 = call i32 @hmac_md5(%struct.ieee802_1x_eapol_key* %179, i32 %180, i32* %183, i32 %190, %struct.ieee802_1x_eapol_key* %193)
  %195 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %196 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %195, i32 0, i32 3
  %197 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %196, align 8
  %198 = load i32, i32* @IEEE8021X_KEY_SIGN_LEN, align 4
  %199 = call i64 @os_memcmp_const(%struct.ieee802_1x_eapol_key* %20, %struct.ieee802_1x_eapol_key* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %209

201:                                              ; preds = %167
  %202 = load i32, i32* @MSG_DEBUG, align 4
  %203 = call i32 (i32, i8*, ...) @wpa_printf(i32 %202, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %204 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %205 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %204, i32 0, i32 3
  %206 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %205, align 8
  %207 = load i32, i32* @IEEE8021X_KEY_SIGN_LEN, align 4
  %208 = call i32 @os_memcpy(%struct.ieee802_1x_eapol_key* %206, %struct.ieee802_1x_eapol_key* %20, i32 %207)
  store i32 1, i32* %16, align 4
  br label %413

209:                                              ; preds = %167
  %210 = load i32, i32* @MSG_DEBUG, align 4
  %211 = call i32 (i32, i8*, ...) @wpa_printf(i32 %210, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %212 = load i64, i64* %15, align 8
  %213 = sub i64 %212, 40
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %10, align 4
  %215 = load i32, i32* %10, align 4
  %216 = icmp sgt i32 %215, 32
  br i1 %216, label %220, label %217

217:                                              ; preds = %209
  %218 = load i32, i32* %14, align 4
  %219 = icmp sgt i32 %218, 32
  br i1 %219, label %220, label %231

220:                                              ; preds = %217, %209
  %221 = load i32, i32* @MSG_WARNING, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %220
  %225 = load i32, i32* %10, align 4
  br label %228

226:                                              ; preds = %220
  %227 = load i32, i32* %14, align 4
  br label %228

228:                                              ; preds = %226, %224
  %229 = phi i32 [ %225, %224 ], [ %227, %226 ]
  %230 = call i32 (i32, i8*, ...) @wpa_printf(i32 %221, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0), i32 %229)
  store i32 1, i32* %16, align 4
  br label %413

231:                                              ; preds = %217
  %232 = load i32, i32* %10, align 4
  %233 = load i32, i32* %14, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %263

235:                                              ; preds = %231
  %236 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %237 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %236, i32 0, i32 2
  %238 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %237, align 8
  %239 = load i32, i32* @IEEE8021X_KEY_IV_LEN, align 4
  %240 = call i32 @os_memcpy(%struct.ieee802_1x_eapol_key* %25, %struct.ieee802_1x_eapol_key* %238, i32 %239)
  %241 = load i32, i32* @IEEE8021X_KEY_IV_LEN, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %25, i64 %242
  %244 = getelementptr inbounds %struct.eap_key_data, %struct.eap_key_data* %5, i32 0, i32 0
  %245 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %244, align 8
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @os_memcpy(%struct.ieee802_1x_eapol_key* %243, %struct.ieee802_1x_eapol_key* %245, i32 %246)
  %248 = getelementptr inbounds [32 x %struct.ieee802_1x_eapol_key], [32 x %struct.ieee802_1x_eapol_key]* %8, i64 0, i64 0
  %249 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %250 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %249, i64 1
  %251 = load i32, i32* %10, align 4
  %252 = call i32 @os_memcpy(%struct.ieee802_1x_eapol_key* %248, %struct.ieee802_1x_eapol_key* %250, i32 %251)
  %253 = load i32, i32* @IEEE8021X_KEY_IV_LEN, align 4
  %254 = load i32, i32* %13, align 4
  %255 = add nsw i32 %253, %254
  %256 = getelementptr inbounds [32 x %struct.ieee802_1x_eapol_key], [32 x %struct.ieee802_1x_eapol_key]* %8, i64 0, i64 0
  %257 = load i32, i32* %10, align 4
  %258 = call i32 @rc4_skip(%struct.ieee802_1x_eapol_key* %25, i32 %255, i32 0, %struct.ieee802_1x_eapol_key* %256, i32 %257)
  %259 = load i32, i32* @MSG_DEBUG, align 4
  %260 = getelementptr inbounds [32 x %struct.ieee802_1x_eapol_key], [32 x %struct.ieee802_1x_eapol_key]* %8, i64 0, i64 0
  %261 = load i32, i32* %10, align 4
  %262 = call i32 @wpa_hexdump_key(i32 %259, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), %struct.ieee802_1x_eapol_key* %260, i32 %261)
  br label %283

263:                                              ; preds = %231
  %264 = load i32, i32* %10, align 4
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %277

266:                                              ; preds = %263
  %267 = load i32, i32* %14, align 4
  store i32 %267, i32* %10, align 4
  %268 = getelementptr inbounds [32 x %struct.ieee802_1x_eapol_key], [32 x %struct.ieee802_1x_eapol_key]* %8, i64 0, i64 0
  %269 = getelementptr inbounds %struct.eap_key_data, %struct.eap_key_data* %5, i32 0, i32 0
  %270 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %269, align 8
  %271 = load i32, i32* %10, align 4
  %272 = call i32 @os_memcpy(%struct.ieee802_1x_eapol_key* %268, %struct.ieee802_1x_eapol_key* %270, i32 %271)
  %273 = load i32, i32* @MSG_DEBUG, align 4
  %274 = getelementptr inbounds [32 x %struct.ieee802_1x_eapol_key], [32 x %struct.ieee802_1x_eapol_key]* %8, i64 0, i64 0
  %275 = load i32, i32* %10, align 4
  %276 = call i32 @wpa_hexdump_key(i32 %273, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.14, i64 0, i64 0), %struct.ieee802_1x_eapol_key* %274, i32 %275)
  br label %282

277:                                              ; preds = %263
  %278 = load i32, i32* @MSG_DEBUG, align 4
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* %14, align 4
  %281 = call i32 (i32, i8*, ...) @wpa_printf(i32 %278, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i64 0, i64 0), i32 %279, i32 %280)
  store i32 1, i32* %16, align 4
  br label %413

282:                                              ; preds = %266
  br label %283

283:                                              ; preds = %282, %235
  %284 = load i8*, i8** @TRUE, align 8
  %285 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %286 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %285, i32 0, i32 7
  store i8* %284, i8** %286, align 8
  %287 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %288 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %287, i32 0, i32 6
  %289 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %288, align 8
  %290 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %291 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %290, i32 0, i32 1
  %292 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %291, align 8
  %293 = load i32, i32* @IEEE8021X_REPLAY_COUNTER_LEN, align 4
  %294 = call i32 @os_memcpy(%struct.ieee802_1x_eapol_key* %289, %struct.ieee802_1x_eapol_key* %292, i32 %293)
  %295 = load i32, i32* @MSG_DEBUG, align 4
  %296 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %297 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @IEEE8021X_KEY_INDEX_FLAG, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0)
  %304 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %305 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @IEEE8021X_KEY_INDEX_MASK, align 4
  %308 = and i32 %306, %307
  %309 = load i32, i32* %10, align 4
  %310 = call i32 (i32, i8*, ...) @wpa_printf(i32 %295, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0), i8* %303, i32 %308, i32 %309)
  %311 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %312 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %311, i32 0, i32 1
  %313 = load %struct.TYPE_4__*, %struct.TYPE_4__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = load i64 (i32, i32, i32, %struct.ieee802_1x_eapol_key*, i32)*, i64 (i32, i32, i32, %struct.ieee802_1x_eapol_key*, i32)** %314, align 8
  %316 = icmp ne i64 (i32, i32, i32, %struct.ieee802_1x_eapol_key*, i32)* %315, null
  br i1 %316, label %317, label %345

317:                                              ; preds = %283
  %318 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %319 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %318, i32 0, i32 1
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 0
  %322 = load i64 (i32, i32, i32, %struct.ieee802_1x_eapol_key*, i32)*, i64 (i32, i32, i32, %struct.ieee802_1x_eapol_key*, i32)** %321, align 8
  %323 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %324 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %323, i32 0, i32 1
  %325 = load %struct.TYPE_4__*, %struct.TYPE_4__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %329 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @IEEE8021X_KEY_INDEX_FLAG, align 4
  %332 = and i32 %330, %331
  %333 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %334 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @IEEE8021X_KEY_INDEX_MASK, align 4
  %337 = and i32 %335, %336
  %338 = getelementptr inbounds [32 x %struct.ieee802_1x_eapol_key], [32 x %struct.ieee802_1x_eapol_key]* %8, i64 0, i64 0
  %339 = load i32, i32* %10, align 4
  %340 = call i64 %322(i32 %327, i32 %332, i32 %337, %struct.ieee802_1x_eapol_key* %338, i32 %339)
  %341 = icmp slt i64 %340, 0
  br i1 %341, label %342, label %345

342:                                              ; preds = %317
  %343 = load i32, i32* @MSG_WARNING, align 4
  %344 = call i32 (i32, i8*, ...) @wpa_printf(i32 %343, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.19, i64 0, i64 0))
  br label %412

345:                                              ; preds = %317, %283
  %346 = load %struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key** %4, align 8
  %347 = getelementptr inbounds %struct.ieee802_1x_eapol_key, %struct.ieee802_1x_eapol_key* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = load i32, i32* @IEEE8021X_KEY_INDEX_FLAG, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %356

352:                                              ; preds = %345
  %353 = load i8*, i8** @TRUE, align 8
  %354 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %355 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %354, i32 0, i32 5
  store i8* %353, i8** %355, align 8
  br label %360

356:                                              ; preds = %345
  %357 = load i8*, i8** @TRUE, align 8
  %358 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %359 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %358, i32 0, i32 4
  store i8* %357, i8** %359, align 8
  br label %360

360:                                              ; preds = %356, %352
  %361 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %362 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %361, i32 0, i32 5
  %363 = load i8*, i8** %362, align 8
  %364 = icmp ne i8* %363, null
  br i1 %364, label %373, label %365

365:                                              ; preds = %360
  %366 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %367 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* @EAPOL_REQUIRE_KEY_UNICAST, align 4
  %371 = and i32 %369, %370
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %411, label %373

373:                                              ; preds = %365, %360
  %374 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %375 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %374, i32 0, i32 4
  %376 = load i8*, i8** %375, align 8
  %377 = icmp ne i8* %376, null
  br i1 %377, label %386, label %378

378:                                              ; preds = %373
  %379 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %380 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %379, i32 0, i32 3
  %381 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @EAPOL_REQUIRE_KEY_BROADCAST, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %411, label %386

386:                                              ; preds = %378, %373
  %387 = load i32, i32* @MSG_DEBUG, align 4
  %388 = call i32 (i32, i8*, ...) @wpa_printf(i32 %387, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0))
  %389 = load i8*, i8** @TRUE, align 8
  %390 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %391 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %390, i32 0, i32 2
  store i8* %389, i8** %391, align 8
  %392 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %393 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %392, i32 0, i32 1
  %394 = load %struct.TYPE_4__*, %struct.TYPE_4__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 2
  %396 = load i32 (i32)*, i32 (i32)** %395, align 8
  %397 = icmp ne i32 (i32)* %396, null
  br i1 %397, label %398, label %410

398:                                              ; preds = %386
  %399 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %400 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %399, i32 0, i32 1
  %401 = load %struct.TYPE_4__*, %struct.TYPE_4__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %401, i32 0, i32 2
  %403 = load i32 (i32)*, i32 (i32)** %402, align 8
  %404 = load %struct.eapol_sm*, %struct.eapol_sm** %2, align 8
  %405 = getelementptr inbounds %struct.eapol_sm, %struct.eapol_sm* %404, i32 0, i32 1
  %406 = load %struct.TYPE_4__*, %struct.TYPE_4__** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 8
  %409 = call i32 %403(i32 %408)
  br label %410

410:                                              ; preds = %398, %386
  br label %411

411:                                              ; preds = %410, %378, %365
  br label %412

412:                                              ; preds = %411, %342
  store i32 0, i32* %16, align 4
  br label %413

413:                                              ; preds = %412, %277, %228, %201, %152, %132, %120, %108, %72, %48, %39, %32
  %414 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %414)
  %415 = load i32, i32* %16, align 4
  switch i32 %415, label %417 [
    i32 0, label %416
    i32 1, label %416
  ]

416:                                              ; preds = %413, %413
  ret void

417:                                              ; preds = %413
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @be_to_host16(i32) #2

declare dso_local i32 @WPA_GET_BE16(i32) #2

declare dso_local i32 @eapol_sm_notify_lower_layer_success(%struct.eapol_sm*, i32) #2

declare dso_local i32 @eapol_sm_get_key(%struct.eapol_sm*, %struct.ieee802_1x_eapol_key*, i32) #2

declare dso_local i32 @os_memcpy(%struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key*, i32) #2

declare dso_local i64 @os_memcmp(%struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key*, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, %struct.ieee802_1x_eapol_key*, i32) #2

declare dso_local i32 @os_memset(%struct.ieee802_1x_eapol_key*, i32, i32) #2

declare dso_local i32 @hmac_md5(%struct.ieee802_1x_eapol_key*, i32, i32*, i32, %struct.ieee802_1x_eapol_key*) #2

declare dso_local i64 @os_memcmp_const(%struct.ieee802_1x_eapol_key*, %struct.ieee802_1x_eapol_key*, i32) #2

declare dso_local i32 @rc4_skip(%struct.ieee802_1x_eapol_key*, i32, i32, %struct.ieee802_1x_eapol_key*, i32) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, %struct.ieee802_1x_eapol_key*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
