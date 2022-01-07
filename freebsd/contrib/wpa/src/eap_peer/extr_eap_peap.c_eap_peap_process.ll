; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i64, i32, i64 }
%struct.eap_method_ret = type { i64, i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i32 }
%struct.eap_peap_data = type { i32, i32, i32, %struct.wpabuf*, i64, i32, i64, %struct.TYPE_5__, i64, i64, %struct.wpabuf* }
%struct.TYPE_5__ = type { i32 }
%struct.eap_peer_config = type { i64 }

@EAP_TYPE_PEAP = common dso_local global i32 0, align 4
@EAP_TLS_FLAGS_START = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"EAP-PEAP: Start (server ver=%d, own ver=%d)\00", align 1
@EAP_TLS_VERSION_MASK = common dso_local global i32 0, align 4
@MSG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"EAP-PEAP: Failed to select forced PEAP version %d\00", align 1
@METHOD_DONE = common dso_local global i64 0, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"EAP-PEAP: Using PEAP version %d\00", align 1
@EXT_CERT_CHECK_GOOD = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"EAP-PEAP: External certificate check succeeded - continue handshake\00", align 1
@EXT_CERT_CHECK_BAD = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [75 x i8] c"EAP-PEAP: External certificate check failed - force authentication failure\00", align 1
@.str.5 = private unnamed_addr constant [68 x i8] c"EAP-PEAP: Continuing to wait external server certificate validation\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"EAP-PEAP: TLS processing failed\00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"EAP-PEAP: Waiting external server certificate validation\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"EAP-PEAP: TLS done, proceed to Phase 2\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"client PEAP encryption\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"client EAP encryption\00", align 1
@.str.11 = private unnamed_addr constant [45 x i8] c"EAP-PEAP: using label '%s' in key derivation\00", align 1
@EAP_TLS_KEY_LEN = common dso_local global i64 0, align 8
@EAP_EMSK_LEN = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [22 x i8] c"EAP-PEAP: Derived key\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"EAP-PEAP: Derived EMSK\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"EAP-PEAP: Failed to derive key\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"EAP-PEAP: Derived Session-Id\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [38 x i8] c"EAP-PEAP: Failed to derive Session-Id\00", align 1
@.str.17 = private unnamed_addr constant [76 x i8] c"EAP-PEAP: Workaround - allow outer EAP-Success to terminate PEAP resumption\00", align 1
@DECISION_COND_SUCC = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_peap_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_peap_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca %struct.eap_hdr*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.wpabuf*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.eap_peap_data*, align 8
  %18 = alloca %struct.wpabuf, align 4
  %19 = alloca %struct.eap_peer_config*, align 8
  %20 = alloca i8*, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.eap_peap_data*
  store %struct.eap_peap_data* %22, %struct.eap_peap_data** %17, align 8
  %23 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %24 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %25 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %24, i32 0, i32 7
  %26 = load i32, i32* @EAP_TYPE_PEAP, align 4
  %27 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %29 = call i32* @eap_peer_tls_process_init(%struct.eap_sm* %23, %struct.TYPE_5__* %25, i32 %26, %struct.eap_method_ret* %27, %struct.wpabuf* %28, i64* %11, i32* %13)
  store i32* %29, i32** %16, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %358

33:                                               ; preds = %4
  %34 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %35 = call %struct.eap_hdr* @wpabuf_head(%struct.wpabuf* %34)
  store %struct.eap_hdr* %35, %struct.eap_hdr** %10, align 8
  %36 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %37 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @EAP_TLS_FLAGS_START, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %99

43:                                               ; preds = %33
  %44 = load i32, i32* @MSG_DEBUG, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @EAP_TLS_VERSION_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %49 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %50)
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @EAP_TLS_VERSION_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %56 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %43
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @EAP_TLS_VERSION_MASK, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %64 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %59, %43
  %66 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %67 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  %71 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %72 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %75 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %73, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %70
  %79 = load i32, i32* @MSG_WARNING, align 4
  %80 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %81 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  %84 = load i64, i64* @METHOD_DONE, align 8
  %85 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %86 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i8*, i8** @DECISION_FAIL, align 8
  %88 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %89 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** @FALSE, align 8
  %91 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %92 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %91, i32 0, i32 1
  store i8* %90, i8** %92, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %358

93:                                               ; preds = %70, %65
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %96 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  store i64 0, i64* %11, align 8
  br label %99

99:                                               ; preds = %93, %33
  %100 = load i32*, i32** %16, align 8
  %101 = load i64, i64* %11, align 8
  %102 = call i32 @wpabuf_set(%struct.wpabuf* %18, i32* %100, i64 %101)
  store %struct.wpabuf* null, %struct.wpabuf** %15, align 8
  %103 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %104 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %107 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %106, i32 0, i32 7
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i64 @tls_connection_established(i32 %105, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %99
  %113 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %114 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %113, i32 0, i32 4
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %112
  %118 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %119 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %120 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %121 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %122 = call i32 @eap_peap_decrypt(%struct.eap_sm* %118, %struct.eap_peap_data* %119, %struct.eap_method_ret* %120, %struct.eap_hdr* %121, %struct.wpabuf* %18, %struct.wpabuf** %15)
  store i32 %122, i32* %12, align 4
  br label %334

123:                                              ; preds = %112, %99
  %124 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %125 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %172

128:                                              ; preds = %123
  %129 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %130 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %129, i32 0, i32 10
  %131 = load %struct.wpabuf*, %struct.wpabuf** %130, align 8
  %132 = icmp ne %struct.wpabuf* %131, null
  br i1 %132, label %133, label %172

133:                                              ; preds = %128
  %134 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %135 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %134)
  store %struct.eap_peer_config* %135, %struct.eap_peer_config** %19, align 8
  %136 = load %struct.eap_peer_config*, %struct.eap_peer_config** %19, align 8
  %137 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @EXT_CERT_CHECK_GOOD, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %152

141:                                              ; preds = %133
  %142 = load i32, i32* @MSG_DEBUG, align 4
  %143 = call i32 (i32, i8*, ...) @wpa_printf(i32 %142, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  %144 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %145 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %144, i32 0, i32 10
  %146 = load %struct.wpabuf*, %struct.wpabuf** %145, align 8
  store %struct.wpabuf* %146, %struct.wpabuf** %15, align 8
  %147 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %148 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %147, i32 0, i32 10
  store %struct.wpabuf* null, %struct.wpabuf** %148, align 8
  %149 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %150 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %149, i32 0, i32 2
  store i64 0, i64* %150, align 8
  %151 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %151, %struct.wpabuf** %5, align 8
  br label %358

152:                                              ; preds = %133
  %153 = load %struct.eap_peer_config*, %struct.eap_peer_config** %19, align 8
  %154 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @EXT_CERT_CHECK_BAD, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %152
  %159 = load i32, i32* @MSG_DEBUG, align 4
  %160 = call i32 (i32, i8*, ...) @wpa_printf(i32 %159, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.4, i64 0, i64 0))
  %161 = load i64, i64* @METHOD_DONE, align 8
  %162 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %163 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load i8*, i8** @DECISION_FAIL, align 8
  %165 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %166 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %165, i32 0, i32 2
  store i8* %164, i8** %166, align 8
  %167 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %168 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %167, i32 0, i32 2
  store i64 0, i64* %168, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %358

169:                                              ; preds = %152
  %170 = load i32, i32* @MSG_DEBUG, align 4
  %171 = call i32 (i32, i8*, ...) @wpa_printf(i32 %170, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %358

172:                                              ; preds = %128, %123
  %173 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %174 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %175 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %174, i32 0, i32 7
  %176 = load i32, i32* @EAP_TYPE_PEAP, align 4
  %177 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %178 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %14, align 4
  %181 = call i32 @eap_peer_tls_process_helper(%struct.eap_sm* %173, %struct.TYPE_5__* %175, i32 %176, i32 %179, i32 %180, %struct.wpabuf* %18, %struct.wpabuf** %15)
  store i32 %181, i32* %12, align 4
  %182 = load i32, i32* %12, align 4
  %183 = icmp slt i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %172
  %185 = load i32, i32* @MSG_DEBUG, align 4
  %186 = call i32 (i32, i8*, ...) @wpa_printf(i32 %185, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %187 = load i64, i64* @METHOD_DONE, align 8
  %188 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %189 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load i8*, i8** @DECISION_FAIL, align 8
  %191 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %192 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  %193 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %193, %struct.wpabuf** %5, align 8
  br label %358

194:                                              ; preds = %172
  %195 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %196 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %195, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %209

199:                                              ; preds = %194
  %200 = load i32, i32* @MSG_DEBUG, align 4
  %201 = call i32 (i32, i8*, ...) @wpa_printf(i32 %200, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0))
  %202 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %203 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %202, i32 0, i32 10
  %204 = load %struct.wpabuf*, %struct.wpabuf** %203, align 8
  %205 = call i32 @wpabuf_clear_free(%struct.wpabuf* %204)
  %206 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %207 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %208 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %207, i32 0, i32 10
  store %struct.wpabuf* %206, %struct.wpabuf** %208, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %358

209:                                              ; preds = %194
  %210 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %211 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %214 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %213, i32 0, i32 7
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = call i64 @tls_connection_established(i32 %212, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %317

219:                                              ; preds = %209
  %220 = load i32, i32* @MSG_DEBUG, align 4
  %221 = call i32 (i32, i8*, ...) @wpa_printf(i32 %220, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  %222 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %223 = call i32 @eap_peap_free_key(%struct.eap_peap_data* %222)
  %224 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %225 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %224, i32 0, i32 9
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %219
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i8** %20, align 8
  br label %230

229:                                              ; preds = %219
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8** %20, align 8
  br label %230

230:                                              ; preds = %229, %228
  %231 = load i32, i32* @MSG_DEBUG, align 4
  %232 = load i8*, i8** %20, align 8
  %233 = call i32 (i32, i8*, ...) @wpa_printf(i32 %231, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i8* %232)
  %234 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %235 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %236 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %235, i32 0, i32 7
  %237 = load i8*, i8** %20, align 8
  %238 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %239 = load i64, i64* @EAP_EMSK_LEN, align 8
  %240 = add nsw i64 %238, %239
  %241 = call i64 @eap_peer_tls_derive_key(%struct.eap_sm* %234, %struct.TYPE_5__* %236, i8* %237, i32* null, i32 0, i64 %240)
  %242 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %243 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %242, i32 0, i32 8
  store i64 %241, i64* %243, align 8
  %244 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %245 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %244, i32 0, i32 8
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %263

248:                                              ; preds = %230
  %249 = load i32, i32* @MSG_DEBUG, align 4
  %250 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %251 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %250, i32 0, i32 8
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %254 = call i32 @wpa_hexdump_key(i32 %249, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i64 %252, i64 %253)
  %255 = load i32, i32* @MSG_DEBUG, align 4
  %256 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %257 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %256, i32 0, i32 8
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @EAP_TLS_KEY_LEN, align 8
  %260 = add nsw i64 %258, %259
  %261 = load i64, i64* @EAP_EMSK_LEN, align 8
  %262 = call i32 @wpa_hexdump_key(i32 %255, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0), i64 %260, i64 %261)
  br label %266

263:                                              ; preds = %230
  %264 = load i32, i32* @MSG_DEBUG, align 4
  %265 = call i32 (i32, i8*, ...) @wpa_printf(i32 %264, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  br label %266

266:                                              ; preds = %263, %248
  %267 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %268 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %267, i32 0, i32 6
  %269 = load i64, i64* %268, align 8
  %270 = call i32 @os_free(i64 %269)
  %271 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %272 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %273 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %272, i32 0, i32 7
  %274 = load i32, i32* @EAP_TYPE_PEAP, align 4
  %275 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %276 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %275, i32 0, i32 5
  %277 = call i64 @eap_peer_tls_derive_session_id(%struct.eap_sm* %271, %struct.TYPE_5__* %273, i32 %274, i32* %276)
  %278 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %279 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %278, i32 0, i32 6
  store i64 %277, i64* %279, align 8
  %280 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %281 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %280, i32 0, i32 6
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %293

284:                                              ; preds = %266
  %285 = load i32, i32* @MSG_DEBUG, align 4
  %286 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %287 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %286, i32 0, i32 6
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %290 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %289, i32 0, i32 5
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @wpa_hexdump(i32 %285, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i64 %288, i32 %291)
  br label %296

293:                                              ; preds = %266
  %294 = load i32, i32* @MSG_ERROR, align 4
  %295 = call i32 (i32, i8*, ...) @wpa_printf(i32 %294, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0))
  br label %296

296:                                              ; preds = %293, %284
  %297 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %298 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %314

301:                                              ; preds = %296
  %302 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %303 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %302, i32 0, i32 4
  %304 = load i64, i64* %303, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %314

306:                                              ; preds = %301
  %307 = load i32, i32* @MSG_DEBUG, align 4
  %308 = call i32 (i32, i8*, ...) @wpa_printf(i32 %307, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.17, i64 0, i64 0))
  %309 = load i8*, i8** @DECISION_COND_SUCC, align 8
  %310 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %311 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %310, i32 0, i32 2
  store i8* %309, i8** %311, align 8
  %312 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %313 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %312, i32 0, i32 2
  store i32 1, i32* %313, align 8
  br label %314

314:                                              ; preds = %306, %301, %296
  %315 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %316 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %315, i32 0, i32 4
  store i64 0, i64* %316, align 8
  br label %317

317:                                              ; preds = %314, %209
  %318 = load i32, i32* %12, align 4
  %319 = icmp eq i32 %318, 2
  br i1 %319, label %320, label %333

320:                                              ; preds = %317
  %321 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %322 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %321, i32 0, i32 3
  %323 = load %struct.wpabuf*, %struct.wpabuf** %322, align 8
  %324 = call i32 @wpabuf_clear_free(%struct.wpabuf* %323)
  %325 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %326 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %327 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %326, i32 0, i32 3
  store %struct.wpabuf* %325, %struct.wpabuf** %327, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %15, align 8
  %328 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %329 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %330 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %331 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %332 = call i32 @eap_peap_decrypt(%struct.eap_sm* %328, %struct.eap_peap_data* %329, %struct.eap_method_ret* %330, %struct.eap_hdr* %331, %struct.wpabuf* %18, %struct.wpabuf** %15)
  store i32 %332, i32* %12, align 4
  br label %333

333:                                              ; preds = %320, %317
  br label %334

334:                                              ; preds = %333, %117
  %335 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %336 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load i64, i64* @METHOD_DONE, align 8
  %339 = icmp eq i64 %337, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %334
  %341 = load i8*, i8** @FALSE, align 8
  %342 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %343 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %342, i32 0, i32 1
  store i8* %341, i8** %343, align 8
  br label %344

344:                                              ; preds = %340, %334
  %345 = load i32, i32* %12, align 4
  %346 = icmp eq i32 %345, 1
  br i1 %346, label %347, label %356

347:                                              ; preds = %344
  %348 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %349 = call i32 @wpabuf_clear_free(%struct.wpabuf* %348)
  %350 = load i32, i32* %14, align 4
  %351 = load i32, i32* @EAP_TYPE_PEAP, align 4
  %352 = load %struct.eap_peap_data*, %struct.eap_peap_data** %17, align 8
  %353 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call %struct.wpabuf* @eap_peer_tls_build_ack(i32 %350, i32 %351, i32 %354)
  store %struct.wpabuf* %355, %struct.wpabuf** %5, align 8
  br label %358

356:                                              ; preds = %344
  %357 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %357, %struct.wpabuf** %5, align 8
  br label %358

358:                                              ; preds = %356, %347, %199, %184, %169, %158, %141, %78, %32
  %359 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %359
}

declare dso_local i32* @eap_peer_tls_process_init(%struct.eap_sm*, %struct.TYPE_5__*, i32, %struct.eap_method_ret*, %struct.wpabuf*, i64*, i32*) #1

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i64) #1

declare dso_local i64 @tls_connection_established(i32, i32) #1

declare dso_local i32 @eap_peap_decrypt(%struct.eap_sm*, %struct.eap_peap_data*, %struct.eap_method_ret*, %struct.eap_hdr*, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @eap_peer_tls_process_helper(%struct.eap_sm*, %struct.TYPE_5__*, i32, i32, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i32 @eap_peap_free_key(%struct.eap_peap_data*) #1

declare dso_local i64 @eap_peer_tls_derive_key(%struct.eap_sm*, %struct.TYPE_5__*, i8*, i32*, i32, i64) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64, i64) #1

declare dso_local i32 @os_free(i64) #1

declare dso_local i64 @eap_peer_tls_derive_session_id(%struct.eap_sm*, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64, i32) #1

declare dso_local %struct.wpabuf* @eap_peer_tls_build_ack(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
