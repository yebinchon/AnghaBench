; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_phase2_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_phase2_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32, i32, i32*, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)*, i32 (%struct.eap_sm*, i32*)* }
%struct.wpabuf = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.eap_method_ret = type { i64, i64 }
%struct.eap_hdr = type { i32, i32 }
%struct.eap_peer_config = type { i64, i64, i64, i64, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EAP-FAST: too short Phase 2 request (len=%lu)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"EAP-FAST: Phase 2 Request: type=%d\00", align 1
@EAP_TYPE_IDENTITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"EAP-FAST: Phase 2 EAP sequence - deinitialize previous method\00", align 1
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"EAP-FAST: Failed to initialize Phase 2 EAP method %d\00", align 1
@METHOD_DONE = common dso_local global i64 0, align 8
@DECISION_FAIL = common dso_local global i64 0, align 8
@METHOD_MAY_CONT = common dso_local global i64 0, align 8
@DECISION_UNCOND_SUCC = common dso_local global i64 0, align 8
@DECISION_COND_SUCC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_fast_data*, %struct.eap_method_ret*, %struct.eap_hdr*, %struct.wpabuf**)* @eap_fast_phase2_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_phase2_request(%struct.eap_sm* %0, %struct.eap_fast_data* %1, %struct.eap_method_ret* %2, %struct.eap_hdr* %3, %struct.wpabuf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_fast_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.eap_hdr*, align 8
  %11 = alloca %struct.wpabuf**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.eap_method_ret, align 8
  %15 = alloca %struct.eap_peer_config*, align 8
  %16 = alloca %struct.wpabuf, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store %struct.eap_hdr* %3, %struct.eap_hdr** %10, align 8
  store %struct.wpabuf** %4, %struct.wpabuf*** %11, align 8
  %17 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %18 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @be_to_host16(i32 %19)
  store i64 %20, i64* %12, align 8
  %21 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %22 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %21)
  store %struct.eap_peer_config* %22, %struct.eap_peer_config** %15, align 8
  %23 = load i64, i64* %12, align 8
  %24 = icmp ule i64 %23, 8
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load i32, i32* @MSG_INFO, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %27)
  store i32 -1, i32* %6, align 4
  br label %259

29:                                               ; preds = %5
  %30 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %31 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %30, i64 1
  %32 = bitcast %struct.eap_hdr* %31 to i64*
  store i64* %32, i64** %13, align 8
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i64*, i64** %13, align 8
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i64*, i64** %13, align 8
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EAP_TYPE_IDENTITY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %43 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %44 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.wpabuf* @eap_sm_buildIdentity(%struct.eap_sm* %42, i32 %45, i32 1)
  %47 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  store %struct.wpabuf* %46, %struct.wpabuf** %47, align 8
  store i32 0, i32* %6, align 4
  br label %259

48:                                               ; preds = %29
  %49 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %50 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %91

53:                                               ; preds = %48
  %54 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %55 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %91

58:                                               ; preds = %53
  %59 = load i64*, i64** %13, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %62 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %60, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %58
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %70 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32 (%struct.eap_sm*, i32*)*, i32 (%struct.eap_sm*, i32*)** %72, align 8
  %74 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %75 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %76 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 %73(%struct.eap_sm* %74, i32* %77)
  %79 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %80 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %79, i32 0, i32 3
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %80, align 8
  %81 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %82 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %81, i32 0, i32 2
  store i32* null, i32** %82, align 8
  %83 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %84 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %85 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %84, i32 0, i32 6
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* @EAP_TYPE_NONE, align 8
  %88 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %89 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %88, i32 0, i32 6
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %66, %58, %53, %48
  %92 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %93 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %92, i32 0, i32 6
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %91
  %99 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %100 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @EAP_TYPE_NONE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %98
  %106 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %107 = load i64*, i64** %13, align 8
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @eap_fast_select_phase2_method(%struct.eap_fast_data* %106, i64 %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %113 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %112, i32 0, i32 5
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %116 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %119 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %120 = call i64 @eap_peer_tls_phase2_nak(i32 %114, i32 %117, %struct.eap_hdr* %118, %struct.wpabuf** %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  store i32 -1, i32* %6, align 4
  br label %259

123:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %259

124:                                              ; preds = %105, %98, %91
  %125 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %126 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = icmp eq i32* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %131 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %132 = call i64 @eap_fast_init_phase2_method(%struct.eap_sm* %130, %struct.eap_fast_data* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %129, %124
  %135 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %136 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %135, i32 0, i32 3
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = icmp eq %struct.TYPE_4__* %137, null
  br i1 %138, label %139, label %150

139:                                              ; preds = %134, %129
  %140 = load i32, i32* @MSG_INFO, align 4
  %141 = load i64*, i64** %13, align 8
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %142)
  %144 = load i64, i64* @METHOD_DONE, align 8
  %145 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %146 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %145, i32 0, i32 0
  store i64 %144, i64* %146, align 8
  %147 = load i64, i64* @DECISION_FAIL, align 8
  %148 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %149 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %148, i32 0, i32 1
  store i64 %147, i64* %149, align 8
  store i32 -1, i32* %6, align 4
  br label %259

150:                                              ; preds = %134
  %151 = call i32 @os_memset(%struct.eap_method_ret* %14, i32 0, i32 16)
  %152 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call i32 @wpabuf_set(%struct.wpabuf* %16, %struct.eap_hdr* %152, i64 %153)
  %155 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %156 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %155, i32 0, i32 3
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)*, %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)** %158, align 8
  %160 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %161 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %162 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = call %struct.wpabuf* %159(%struct.eap_sm* %160, i32* %163, %struct.eap_method_ret* %14, %struct.wpabuf* %16)
  %165 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  store %struct.wpabuf* %164, %struct.wpabuf** %165, align 8
  %166 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %167 = load %struct.wpabuf*, %struct.wpabuf** %166, align 8
  %168 = icmp eq %struct.wpabuf* %167, null
  br i1 %168, label %179, label %169

169:                                              ; preds = %150
  %170 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @METHOD_DONE, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %186

174:                                              ; preds = %169
  %175 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @DECISION_FAIL, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %174, %150
  %180 = load i64, i64* @METHOD_DONE, align 8
  %181 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %182 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = load i64, i64* @DECISION_FAIL, align 8
  %184 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %185 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  br label %210

186:                                              ; preds = %174, %169
  %187 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @METHOD_DONE, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %196, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @METHOD_MAY_CONT, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %191, %186
  %197 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @DECISION_UNCOND_SUCC, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %206, label %201

201:                                              ; preds = %196
  %202 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @DECISION_COND_SUCC, align 8
  %205 = icmp eq i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %201, %196
  %207 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %208 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  br label %209

209:                                              ; preds = %206, %201, %191
  br label %210

210:                                              ; preds = %209, %179
  %211 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %212 = load %struct.wpabuf*, %struct.wpabuf** %211, align 8
  %213 = icmp eq %struct.wpabuf* %212, null
  br i1 %213, label %214, label %252

214:                                              ; preds = %210
  %215 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %216 = icmp ne %struct.eap_peer_config* %215, null
  br i1 %216, label %217, label %252

217:                                              ; preds = %214
  %218 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %219 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %242, label %222

222:                                              ; preds = %217
  %223 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %224 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %223, i32 0, i32 3
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %242, label %227

227:                                              ; preds = %222
  %228 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %229 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %227
  %233 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %234 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %242, label %237

237:                                              ; preds = %232
  %238 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %239 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %252

242:                                              ; preds = %237, %232, %227, %222, %217
  %243 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %244 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @wpabuf_clear_free(i32 %245)
  %247 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %248 = load i64, i64* %12, align 8
  %249 = call i32 @wpabuf_alloc_copy(%struct.eap_hdr* %247, i64 %248)
  %250 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %251 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %250, i32 0, i32 1
  store i32 %249, i32* %251, align 4
  br label %258

252:                                              ; preds = %237, %214, %210
  %253 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %254 = load %struct.wpabuf*, %struct.wpabuf** %253, align 8
  %255 = icmp eq %struct.wpabuf* %254, null
  br i1 %255, label %256, label %257

256:                                              ; preds = %252
  store i32 -1, i32* %6, align 4
  br label %259

257:                                              ; preds = %252
  br label %258

258:                                              ; preds = %257, %242
  store i32 0, i32* %6, align 4
  br label %259

259:                                              ; preds = %258, %256, %139, %123, %122, %41, %25
  %260 = load i32, i32* %6, align 4
  ret i32 %260
}

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpabuf* @eap_sm_buildIdentity(%struct.eap_sm*, i32, i32) #1

declare dso_local i64 @eap_fast_select_phase2_method(%struct.eap_fast_data*, i64) #1

declare dso_local i64 @eap_peer_tls_phase2_nak(i32, i32, %struct.eap_hdr*, %struct.wpabuf**) #1

declare dso_local i64 @eap_fast_init_phase2_method(%struct.eap_sm*, %struct.eap_fast_data*) #1

declare dso_local i32 @os_memset(%struct.eap_method_ret*, i32, i32) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, %struct.eap_hdr*, i64) #1

declare dso_local i32 @wpabuf_clear_free(i32) #1

declare dso_local i32 @wpabuf_alloc_copy(%struct.eap_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
