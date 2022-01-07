; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i64 }
%struct.eap_method_ret = type { i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i32 }
%struct.eap_teap_data = type { i32, i32, i64, i32, %struct.wpabuf*, i64, %struct.TYPE_3__, i64, i32, %struct.wpabuf* }
%struct.TYPE_3__ = type { i32 }
%struct.eap_peer_config = type { i64 }

@EAP_TYPE_TEAP = common dso_local global i32 0, align 4
@EAP_TLS_FLAGS_START = common dso_local global i32 0, align 4
@EAP_TEAP_FLAGS_OUTER_TLV_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"EAP-TEAP: Outer TLVs present in non-Start message -> ignore message\00", align 1
@METHOD_DONE = common dso_local global i8* null, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@EXT_CERT_CHECK_GOOD = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"EAP-TEAP: External certificate check succeeded - continue handshake\00", align 1
@EXT_CERT_CHECK_BAD = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [75 x i8] c"EAP-TEAP: External certificate check failed - force authentication failure\00", align 1
@.str.3 = private unnamed_addr constant [68 x i8] c"EAP-TEAP: Continuing to wait external server certificate validation\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"EAP-TEAP: TLS processing failed\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"EAP-TEAP: Waiting external server certificate validation\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"EAP-TEAP: TLS done, proceed to Phase 2\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"EAP-TEAP: TLS cipher suite 0x%04x\00", align 1
@EAP_TEAP_PROV_AUTH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"ADH-\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"anon\00", align 1
@.str.10 = private unnamed_addr constant [57 x i8] c"EAP-TEAP: Using anonymous (unauthenticated) provisioning\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"EAP-TEAP: Could not derive keys\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_teap_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_teap_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
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
  %17 = alloca %struct.eap_teap_data*, align 8
  %18 = alloca %struct.wpabuf, align 4
  %19 = alloca %struct.eap_peer_config*, align 8
  %20 = alloca [80 x i8], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.eap_teap_data*
  store %struct.eap_teap_data* %22, %struct.eap_teap_data** %17, align 8
  %23 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %24 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %25 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %24, i32 0, i32 6
  %26 = load i32, i32* @EAP_TYPE_TEAP, align 4
  %27 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %29 = call i32* @eap_peer_tls_process_init(%struct.eap_sm* %23, %struct.TYPE_3__* %25, i32 %26, %struct.eap_method_ret* %27, %struct.wpabuf* %28, i64* %11, i32* %13)
  store i32* %29, i32** %16, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %295

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
  br i1 %42, label %43, label %53

43:                                               ; preds = %33
  %44 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %45 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %16, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @eap_teap_process_start(%struct.eap_sm* %44, %struct.eap_teap_data* %45, i32 %46, i32* %47, i64 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %295

52:                                               ; preds = %43
  store i64 0, i64* %11, align 8
  br label %62

53:                                               ; preds = %33
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @EAP_TEAP_FLAGS_OUTER_TLV_LEN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @MSG_INFO, align 4
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %295

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i32*, i32** %16, align 8
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @wpabuf_set(%struct.wpabuf* %18, i32* %63, i64 %64)
  store %struct.wpabuf* null, %struct.wpabuf** %15, align 8
  %66 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %67 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %70 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %69, i32 0, i32 6
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @tls_connection_established(i32 %68, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %96

75:                                               ; preds = %62
  %76 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %77 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %76, i32 0, i32 5
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %75
  %81 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %82 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %83 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @eap_teap_decrypt(%struct.eap_sm* %81, %struct.eap_teap_data* %82, %struct.eap_method_ret* %83, i32 %84, %struct.wpabuf* %18, %struct.wpabuf** %15)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %80
  %89 = load i8*, i8** @METHOD_DONE, align 8
  %90 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %91 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %90, i32 0, i32 1
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @DECISION_FAIL, align 8
  %93 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %94 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  store i32 1, i32* %12, align 4
  br label %95

95:                                               ; preds = %88, %80
  br label %281

96:                                               ; preds = %75, %62
  %97 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %98 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %145

101:                                              ; preds = %96
  %102 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %103 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %102, i32 0, i32 9
  %104 = load %struct.wpabuf*, %struct.wpabuf** %103, align 8
  %105 = icmp ne %struct.wpabuf* %104, null
  br i1 %105, label %106, label %145

106:                                              ; preds = %101
  %107 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %108 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %107)
  store %struct.eap_peer_config* %108, %struct.eap_peer_config** %19, align 8
  %109 = load %struct.eap_peer_config*, %struct.eap_peer_config** %19, align 8
  %110 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @EXT_CERT_CHECK_GOOD, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %106
  %115 = load i32, i32* @MSG_DEBUG, align 4
  %116 = call i32 (i32, i8*, ...) @wpa_printf(i32 %115, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  %117 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %118 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %117, i32 0, i32 9
  %119 = load %struct.wpabuf*, %struct.wpabuf** %118, align 8
  store %struct.wpabuf* %119, %struct.wpabuf** %15, align 8
  %120 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %121 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %120, i32 0, i32 9
  store %struct.wpabuf* null, %struct.wpabuf** %121, align 8
  %122 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %123 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %122, i32 0, i32 1
  store i64 0, i64* %123, align 8
  %124 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %124, %struct.wpabuf** %5, align 8
  br label %295

125:                                              ; preds = %106
  %126 = load %struct.eap_peer_config*, %struct.eap_peer_config** %19, align 8
  %127 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @EXT_CERT_CHECK_BAD, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %125
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = call i32 (i32, i8*, ...) @wpa_printf(i32 %132, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i8*, i8** @METHOD_DONE, align 8
  %135 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %136 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %135, i32 0, i32 1
  store i8* %134, i8** %136, align 8
  %137 = load i8*, i8** @DECISION_FAIL, align 8
  %138 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %139 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %138, i32 0, i32 0
  store i8* %137, i8** %139, align 8
  %140 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %141 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %295

142:                                              ; preds = %125
  %143 = load i32, i32* @MSG_DEBUG, align 4
  %144 = call i32 (i32, i8*, ...) @wpa_printf(i32 %143, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %295

145:                                              ; preds = %101, %96
  %146 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %147 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %148 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %147, i32 0, i32 6
  %149 = load i32, i32* @EAP_TYPE_TEAP, align 4
  %150 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %151 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @eap_peer_tls_process_helper(%struct.eap_sm* %146, %struct.TYPE_3__* %148, i32 %149, i32 %152, i32 %153, %struct.wpabuf* %18, %struct.wpabuf** %15)
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %167

157:                                              ; preds = %145
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = call i32 (i32, i8*, ...) @wpa_printf(i32 %158, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %160 = load i8*, i8** @METHOD_DONE, align 8
  %161 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %162 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %161, i32 0, i32 1
  store i8* %160, i8** %162, align 8
  %163 = load i8*, i8** @DECISION_FAIL, align 8
  %164 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %165 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  %166 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %166, %struct.wpabuf** %5, align 8
  br label %295

167:                                              ; preds = %145
  %168 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %169 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %167
  %173 = load i32, i32* @MSG_DEBUG, align 4
  %174 = call i32 (i32, i8*, ...) @wpa_printf(i32 %173, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %175 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %176 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %175, i32 0, i32 9
  %177 = load %struct.wpabuf*, %struct.wpabuf** %176, align 8
  %178 = call i32 @wpabuf_free(%struct.wpabuf* %177)
  %179 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %180 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %181 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %180, i32 0, i32 9
  store %struct.wpabuf* %179, %struct.wpabuf** %181, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %295

182:                                              ; preds = %167
  %183 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %184 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %187 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %186, i32 0, i32 6
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @tls_connection_established(i32 %185, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %264

192:                                              ; preds = %182
  %193 = load i32, i32* @MSG_DEBUG, align 4
  %194 = call i32 (i32, i8*, ...) @wpa_printf(i32 %193, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %195 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %196 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %195, i32 0, i32 6
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @tls_connection_get_cipher_suite(i32 %198)
  %200 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %201 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %200, i32 0, i32 8
  store i32 %199, i32* %201, align 8
  %202 = load i32, i32* @MSG_DEBUG, align 4
  %203 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %204 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i32, i8*, ...) @wpa_printf(i32 %202, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %205)
  %207 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %208 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %207, i32 0, i32 7
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %242

211:                                              ; preds = %192
  %212 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %213 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @EAP_TEAP_PROV_AUTH, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %237

218:                                              ; preds = %211
  %219 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %220 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %223 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %227 = call i64 @tls_get_cipher(i32 %221, i32 %225, i8* %226, i32 80)
  %228 = icmp slt i64 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %218
  %230 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %231 = call i64 @os_strstr(i8* %230, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %237, label %233

233:                                              ; preds = %229
  %234 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %235 = call i64 @os_strstr(i8* %234, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %242

237:                                              ; preds = %233, %229, %218, %211
  %238 = load i32, i32* @MSG_DEBUG, align 4
  %239 = call i32 (i32, i8*, ...) @wpa_printf(i32 %238, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.10, i64 0, i64 0))
  %240 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %241 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %240, i32 0, i32 1
  store i32 1, i32* %241, align 4
  br label %245

242:                                              ; preds = %233, %192
  %243 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %244 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %243, i32 0, i32 1
  store i32 0, i32* %244, align 4
  br label %245

245:                                              ; preds = %242, %237
  %246 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %247 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %246, i32 0, i32 5
  store i64 0, i64* %247, align 8
  %248 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %249 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %250 = call i64 @eap_teap_derive_key_auth(%struct.eap_sm* %248, %struct.eap_teap_data* %249)
  %251 = icmp slt i64 %250, 0
  br i1 %251, label %252, label %263

252:                                              ; preds = %245
  %253 = load i32, i32* @MSG_DEBUG, align 4
  %254 = call i32 (i32, i8*, ...) @wpa_printf(i32 %253, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %255 = load i8*, i8** @METHOD_DONE, align 8
  %256 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %257 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %256, i32 0, i32 1
  store i8* %255, i8** %257, align 8
  %258 = load i8*, i8** @DECISION_FAIL, align 8
  %259 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %260 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %259, i32 0, i32 0
  store i8* %258, i8** %260, align 8
  %261 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %262 = call i32 @wpabuf_free(%struct.wpabuf* %261)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %295

263:                                              ; preds = %245
  br label %264

264:                                              ; preds = %263, %182
  %265 = load i32, i32* %12, align 4
  %266 = icmp eq i32 %265, 2
  br i1 %266, label %267, label %280

267:                                              ; preds = %264
  %268 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %269 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %268, i32 0, i32 4
  %270 = load %struct.wpabuf*, %struct.wpabuf** %269, align 8
  %271 = call i32 @wpabuf_free(%struct.wpabuf* %270)
  %272 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %273 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %274 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %273, i32 0, i32 4
  store %struct.wpabuf* %272, %struct.wpabuf** %274, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %15, align 8
  %275 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %276 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %277 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %278 = load i32, i32* %14, align 4
  %279 = call i32 @eap_teap_decrypt(%struct.eap_sm* %275, %struct.eap_teap_data* %276, %struct.eap_method_ret* %277, i32 %278, %struct.wpabuf* %18, %struct.wpabuf** %15)
  store i32 %279, i32* %12, align 4
  br label %280

280:                                              ; preds = %267, %264
  br label %281

281:                                              ; preds = %280, %95
  %282 = load i32, i32* %12, align 4
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %293

284:                                              ; preds = %281
  %285 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %286 = call i32 @wpabuf_free(%struct.wpabuf* %285)
  %287 = load i32, i32* %14, align 4
  %288 = load i32, i32* @EAP_TYPE_TEAP, align 4
  %289 = load %struct.eap_teap_data*, %struct.eap_teap_data** %17, align 8
  %290 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = call %struct.wpabuf* @eap_peer_tls_build_ack(i32 %287, i32 %288, i32 %291)
  store %struct.wpabuf* %292, %struct.wpabuf** %5, align 8
  br label %295

293:                                              ; preds = %281
  %294 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %294, %struct.wpabuf** %5, align 8
  br label %295

295:                                              ; preds = %293, %284, %252, %172, %157, %142, %131, %114, %58, %51, %32
  %296 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %296
}

declare dso_local i32* @eap_peer_tls_process_init(%struct.eap_sm*, %struct.TYPE_3__*, i32, %struct.eap_method_ret*, %struct.wpabuf*, i64*, i32*) #1

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @eap_teap_process_start(%struct.eap_sm*, %struct.eap_teap_data*, i32, i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i64) #1

declare dso_local i64 @tls_connection_established(i32, i32) #1

declare dso_local i32 @eap_teap_decrypt(%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @eap_peer_tls_process_helper(%struct.eap_sm*, %struct.TYPE_3__*, i32, i32, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @tls_connection_get_cipher_suite(i32) #1

declare dso_local i64 @tls_get_cipher(i32, i32, i8*, i32) #1

declare dso_local i64 @os_strstr(i8*, i8*) #1

declare dso_local i64 @eap_teap_derive_key_auth(%struct.eap_sm*, %struct.eap_teap_data*) #1

declare dso_local %struct.wpabuf* @eap_peer_tls_build_ack(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
