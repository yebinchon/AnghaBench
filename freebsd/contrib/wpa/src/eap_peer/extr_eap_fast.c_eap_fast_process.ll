; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i64 }
%struct.eap_method_ret = type { i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i32 }
%struct.eap_fast_data = type { i32, i32, i32, %struct.wpabuf*, i64, %struct.TYPE_3__, i64, %struct.wpabuf* }
%struct.TYPE_3__ = type { i32 }
%struct.eap_peer_config = type { i64 }

@EAP_TYPE_FAST = common dso_local global i32 0, align 4
@EAP_TLS_FLAGS_START = common dso_local global i32 0, align 4
@METHOD_DONE = common dso_local global i8* null, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@EXT_CERT_CHECK_GOOD = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"EAP-FAST: External certificate check succeeded - continue handshake\00", align 1
@EXT_CERT_CHECK_BAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [75 x i8] c"EAP-FAST: External certificate check failed - force authentication failure\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"EAP-FAST: Continuing to wait external server certificate validation\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"EAP-FAST: TLS processing failed\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"EAP-FAST: Waiting external server certificate validation\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"EAP-FAST: TLS done, proceed to Phase 2\00", align 1
@EAP_FAST_PROV_AUTH = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"ADH-\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"anon\00", align 1
@.str.8 = private unnamed_addr constant [57 x i8] c"EAP-FAST: Using anonymous (unauthenticated) provisioning\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"EAP-FAST: Could not derive keys\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, i8*, %struct.eap_method_ret*, %struct.wpabuf*)* @eap_fast_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_fast_process(%struct.eap_sm* %0, i8* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3) #0 {
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
  %17 = alloca %struct.eap_fast_data*, align 8
  %18 = alloca %struct.wpabuf, align 4
  %19 = alloca %struct.eap_peer_config*, align 8
  %20 = alloca [80 x i8], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %9, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.eap_fast_data*
  store %struct.eap_fast_data* %22, %struct.eap_fast_data** %17, align 8
  %23 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %24 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %25 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %24, i32 0, i32 5
  %26 = load i32, i32* @EAP_TYPE_FAST, align 4
  %27 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %29 = call i32* @eap_peer_tls_process_init(%struct.eap_sm* %23, %struct.TYPE_3__* %25, i32 %26, %struct.eap_method_ret* %27, %struct.wpabuf* %28, i64* %11, i32* %13)
  store i32* %29, i32** %16, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %274

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
  %45 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %16, align 8
  %48 = load i64, i64* %11, align 8
  %49 = call i64 @eap_fast_process_start(%struct.eap_sm* %44, %struct.eap_fast_data* %45, i32 %46, i32* %47, i64 %48)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %274

52:                                               ; preds = %43
  store i64 0, i64* %11, align 8
  br label %53

53:                                               ; preds = %52, %33
  %54 = load i32*, i32** %16, align 8
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @wpabuf_set(%struct.wpabuf* %18, i32* %54, i64 %55)
  store %struct.wpabuf* null, %struct.wpabuf** %15, align 8
  %57 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %58 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %61 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @tls_connection_established(i32 %59, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %87

66:                                               ; preds = %53
  %67 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %68 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %66
  %72 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %73 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %74 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @eap_fast_decrypt(%struct.eap_sm* %72, %struct.eap_fast_data* %73, %struct.eap_method_ret* %74, i32 %75, %struct.wpabuf* %18, %struct.wpabuf** %15)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load i8*, i8** @METHOD_DONE, align 8
  %81 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %82 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** @DECISION_FAIL, align 8
  %84 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %85 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  store i32 1, i32* %12, align 4
  br label %86

86:                                               ; preds = %79, %71
  br label %260

87:                                               ; preds = %66, %53
  %88 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %89 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %136

92:                                               ; preds = %87
  %93 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %94 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %93, i32 0, i32 7
  %95 = load %struct.wpabuf*, %struct.wpabuf** %94, align 8
  %96 = icmp ne %struct.wpabuf* %95, null
  br i1 %96, label %97, label %136

97:                                               ; preds = %92
  %98 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %99 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %98)
  store %struct.eap_peer_config* %99, %struct.eap_peer_config** %19, align 8
  %100 = load %struct.eap_peer_config*, %struct.eap_peer_config** %19, align 8
  %101 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @EXT_CERT_CHECK_GOOD, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %116

105:                                              ; preds = %97
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = call i32 @wpa_printf(i32 %106, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %108 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %109 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %108, i32 0, i32 7
  %110 = load %struct.wpabuf*, %struct.wpabuf** %109, align 8
  store %struct.wpabuf* %110, %struct.wpabuf** %15, align 8
  %111 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %112 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %111, i32 0, i32 7
  store %struct.wpabuf* null, %struct.wpabuf** %112, align 8
  %113 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %114 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  %115 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %115, %struct.wpabuf** %5, align 8
  br label %274

116:                                              ; preds = %97
  %117 = load %struct.eap_peer_config*, %struct.eap_peer_config** %19, align 8
  %118 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @EXT_CERT_CHECK_BAD, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = call i32 @wpa_printf(i32 %123, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %125 = load i8*, i8** @METHOD_DONE, align 8
  %126 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %127 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %126, i32 0, i32 1
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** @DECISION_FAIL, align 8
  %129 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %130 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  %131 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %132 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %274

133:                                              ; preds = %116
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = call i32 @wpa_printf(i32 %134, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %274

136:                                              ; preds = %92, %87
  %137 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %138 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %139 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %138, i32 0, i32 5
  %140 = load i32, i32* @EAP_TYPE_FAST, align 4
  %141 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %142 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @eap_peer_tls_process_helper(%struct.eap_sm* %137, %struct.TYPE_3__* %139, i32 %140, i32 %143, i32 %144, %struct.wpabuf* %18, %struct.wpabuf** %15)
  store i32 %145, i32* %12, align 4
  %146 = load i32, i32* %12, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %136
  %149 = load i32, i32* @MSG_DEBUG, align 4
  %150 = call i32 @wpa_printf(i32 %149, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %151 = load i8*, i8** @METHOD_DONE, align 8
  %152 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %153 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %152, i32 0, i32 1
  store i8* %151, i8** %153, align 8
  %154 = load i8*, i8** @DECISION_FAIL, align 8
  %155 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %156 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %155, i32 0, i32 0
  store i8* %154, i8** %156, align 8
  %157 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %157, %struct.wpabuf** %5, align 8
  br label %274

158:                                              ; preds = %136
  %159 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %160 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %158
  %164 = load i32, i32* @MSG_DEBUG, align 4
  %165 = call i32 @wpa_printf(i32 %164, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0))
  %166 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %167 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %166, i32 0, i32 7
  %168 = load %struct.wpabuf*, %struct.wpabuf** %167, align 8
  %169 = call i32 @wpabuf_clear_free(%struct.wpabuf* %168)
  %170 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %171 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %172 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %171, i32 0, i32 7
  store %struct.wpabuf* %170, %struct.wpabuf** %172, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %274

173:                                              ; preds = %158
  %174 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %175 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %178 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i64 @tls_connection_established(i32 %176, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %243

183:                                              ; preds = %173
  %184 = load i32, i32* @MSG_DEBUG, align 4
  %185 = call i32 @wpa_printf(i32 %184, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %186 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %187 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %221

190:                                              ; preds = %183
  %191 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %192 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @EAP_FAST_PROV_AUTH, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %216

197:                                              ; preds = %190
  %198 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %199 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %202 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %206 = call i64 @tls_get_cipher(i32 %200, i32 %204, i8* %205, i32 80)
  %207 = icmp slt i64 %206, 0
  br i1 %207, label %216, label %208

208:                                              ; preds = %197
  %209 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %210 = call i64 @os_strstr(i8* %209, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds [80 x i8], [80 x i8]* %20, i64 0, i64 0
  %214 = call i64 @os_strstr(i8* %213, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %212, %208, %197, %190
  %217 = load i32, i32* @MSG_DEBUG, align 4
  %218 = call i32 @wpa_printf(i32 %217, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.8, i64 0, i64 0))
  %219 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %220 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %219, i32 0, i32 1
  store i32 1, i32* %220, align 4
  br label %224

221:                                              ; preds = %212, %183
  %222 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %223 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %222, i32 0, i32 1
  store i32 0, i32* %223, align 4
  br label %224

224:                                              ; preds = %221, %216
  %225 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %226 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %225, i32 0, i32 4
  store i64 0, i64* %226, align 8
  %227 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %228 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %229 = call i64 @eap_fast_derive_keys(%struct.eap_sm* %227, %struct.eap_fast_data* %228)
  %230 = icmp slt i64 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %224
  %232 = load i32, i32* @MSG_DEBUG, align 4
  %233 = call i32 @wpa_printf(i32 %232, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %234 = load i8*, i8** @METHOD_DONE, align 8
  %235 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %236 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %235, i32 0, i32 1
  store i8* %234, i8** %236, align 8
  %237 = load i8*, i8** @DECISION_FAIL, align 8
  %238 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %239 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %238, i32 0, i32 0
  store i8* %237, i8** %239, align 8
  %240 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %241 = call i32 @wpabuf_clear_free(%struct.wpabuf* %240)
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %274

242:                                              ; preds = %224
  br label %243

243:                                              ; preds = %242, %173
  %244 = load i32, i32* %12, align 4
  %245 = icmp eq i32 %244, 2
  br i1 %245, label %246, label %259

246:                                              ; preds = %243
  %247 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %248 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %247, i32 0, i32 3
  %249 = load %struct.wpabuf*, %struct.wpabuf** %248, align 8
  %250 = call i32 @wpabuf_clear_free(%struct.wpabuf* %249)
  %251 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %252 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %253 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %252, i32 0, i32 3
  store %struct.wpabuf* %251, %struct.wpabuf** %253, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %15, align 8
  %254 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %255 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %256 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %257 = load i32, i32* %14, align 4
  %258 = call i32 @eap_fast_decrypt(%struct.eap_sm* %254, %struct.eap_fast_data* %255, %struct.eap_method_ret* %256, i32 %257, %struct.wpabuf* %18, %struct.wpabuf** %15)
  store i32 %258, i32* %12, align 4
  br label %259

259:                                              ; preds = %246, %243
  br label %260

260:                                              ; preds = %259, %86
  %261 = load i32, i32* %12, align 4
  %262 = icmp eq i32 %261, 1
  br i1 %262, label %263, label %272

263:                                              ; preds = %260
  %264 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %265 = call i32 @wpabuf_clear_free(%struct.wpabuf* %264)
  %266 = load i32, i32* %14, align 4
  %267 = load i32, i32* @EAP_TYPE_FAST, align 4
  %268 = load %struct.eap_fast_data*, %struct.eap_fast_data** %17, align 8
  %269 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = call %struct.wpabuf* @eap_peer_tls_build_ack(i32 %266, i32 %267, i32 %270)
  store %struct.wpabuf* %271, %struct.wpabuf** %5, align 8
  br label %274

272:                                              ; preds = %260
  %273 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  store %struct.wpabuf* %273, %struct.wpabuf** %5, align 8
  br label %274

274:                                              ; preds = %272, %263, %231, %163, %148, %133, %122, %105, %51, %32
  %275 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %275
}

declare dso_local i32* @eap_peer_tls_process_init(%struct.eap_sm*, %struct.TYPE_3__*, i32, %struct.eap_method_ret*, %struct.wpabuf*, i64*, i32*) #1

declare dso_local %struct.eap_hdr* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @eap_fast_process_start(%struct.eap_sm*, %struct.eap_fast_data*, i32, i32*, i64) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, i32*, i64) #1

declare dso_local i64 @tls_connection_established(i32, i32) #1

declare dso_local i32 @eap_fast_decrypt(%struct.eap_sm*, %struct.eap_fast_data*, %struct.eap_method_ret*, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @eap_peer_tls_process_helper(%struct.eap_sm*, %struct.TYPE_3__*, i32, i32, i32, %struct.wpabuf*, %struct.wpabuf**) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local i64 @tls_get_cipher(i32, i32, i8*, i32) #1

declare dso_local i64 @os_strstr(i8*, i8*) #1

declare dso_local i64 @eap_fast_derive_keys(%struct.eap_sm*, %struct.eap_fast_data*) #1

declare dso_local %struct.wpabuf* @eap_peer_tls_build_ack(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
