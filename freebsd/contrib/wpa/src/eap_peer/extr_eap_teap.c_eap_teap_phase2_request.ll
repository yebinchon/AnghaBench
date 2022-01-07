; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_phase2_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_phase2_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i32, i32, i32, i32*, %struct.TYPE_4__*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)*, i32 (%struct.eap_sm*, i32*)* }
%struct.wpabuf = type { i32 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.eap_method_ret = type { i64, i64 }
%struct.eap_hdr = type { i32, i32 }
%struct.eap_peer_config = type { i64, i64, i64, i64, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EAP-TEAP: too short Phase 2 request (len=%lu)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"EAP-TEAP: Phase 2 Request: type=%d\00", align 1
@EAP_TYPE_IDENTITY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [62 x i8] c"EAP-TEAP: Phase 2 EAP sequence - deinitialize previous method\00", align 1
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"EAP-TEAP: Failed to initialize Phase 2 EAP method %d\00", align 1
@METHOD_DONE = common dso_local global i64 0, align 8
@DECISION_FAIL = common dso_local global i64 0, align 8
@METHOD_MAY_CONT = common dso_local global i64 0, align 8
@DECISION_UNCOND_SUCC = common dso_local global i64 0, align 8
@DECISION_COND_SUCC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, %struct.eap_hdr*, %struct.wpabuf**)* @eap_teap_phase2_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_phase2_request(%struct.eap_sm* %0, %struct.eap_teap_data* %1, %struct.eap_method_ret* %2, %struct.eap_hdr* %3, %struct.wpabuf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_teap_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.eap_hdr*, align 8
  %11 = alloca %struct.wpabuf**, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca %struct.eap_method_ret, align 8
  %15 = alloca %struct.eap_peer_config*, align 8
  %16 = alloca %struct.wpabuf, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %8, align 8
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
  br label %267

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
  br label %267

48:                                               ; preds = %29
  %49 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %50 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %91

53:                                               ; preds = %48
  %54 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %55 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %54, i32 0, i32 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = icmp ne %struct.TYPE_4__* %56, null
  br i1 %57, label %58, label %91

58:                                               ; preds = %53
  %59 = load i64*, i64** %13, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %62 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %61, i32 0, i32 7
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %60, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %58
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %67, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %70 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %69, i32 0, i32 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = load i32 (%struct.eap_sm*, i32*)*, i32 (%struct.eap_sm*, i32*)** %72, align 8
  %74 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %75 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %76 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %75, i32 0, i32 3
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 %73(%struct.eap_sm* %74, i32* %77)
  %79 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %80 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %79, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %80, align 8
  %81 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %82 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %81, i32 0, i32 3
  store i32* null, i32** %82, align 8
  %83 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %84 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %85 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %84, i32 0, i32 7
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  store i64 %83, i64* %86, align 8
  %87 = load i64, i64* @EAP_TYPE_NONE, align 8
  %88 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %89 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  br label %91

91:                                               ; preds = %66, %58, %53, %48
  %92 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %93 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %124

98:                                               ; preds = %91
  %99 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %100 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %99, i32 0, i32 7
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @EAP_TYPE_NONE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %98
  %106 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %107 = load i64*, i64** %13, align 8
  %108 = load i64, i64* %107, align 8
  %109 = call i64 @eap_teap_select_phase2_method(%struct.eap_teap_data* %106, i64 %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %113 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %112, i32 0, i32 6
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %116 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %119 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %120 = call i64 @eap_peer_tls_phase2_nak(i32 %114, i32 %117, %struct.eap_hdr* %118, %struct.wpabuf** %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  store i32 -1, i32* %6, align 4
  br label %267

123:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %267

124:                                              ; preds = %105, %98, %91
  %125 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %126 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %131 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %132 = call i64 @eap_teap_init_phase2_method(%struct.eap_sm* %130, %struct.eap_teap_data* %131)
  %133 = icmp slt i64 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %129, %124
  %135 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %136 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %135, i32 0, i32 4
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = icmp ne %struct.TYPE_4__* %137, null
  br i1 %138, label %150, label %139

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
  br label %267

150:                                              ; preds = %134
  %151 = call i32 @os_memset(%struct.eap_method_ret* %14, i32 0, i32 16)
  %152 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %153 = load i64, i64* %12, align 8
  %154 = call i32 @wpabuf_set(%struct.wpabuf* %16, %struct.eap_hdr* %152, i64 %153)
  %155 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %156 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %155, i32 0, i32 4
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)*, %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)** %158, align 8
  %160 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %161 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %162 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %161, i32 0, i32 3
  %163 = load i32*, i32** %162, align 8
  %164 = call %struct.wpabuf* %159(%struct.eap_sm* %160, i32* %163, %struct.eap_method_ret* %14, %struct.wpabuf* %16)
  %165 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  store %struct.wpabuf* %164, %struct.wpabuf** %165, align 8
  %166 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @METHOD_DONE, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %150
  %171 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %172 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %171, i32 0, i32 0
  store i32 1, i32* %172, align 8
  br label %173

173:                                              ; preds = %170, %150
  %174 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %175 = load %struct.wpabuf*, %struct.wpabuf** %174, align 8
  %176 = icmp ne %struct.wpabuf* %175, null
  br i1 %176, label %177, label %187

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @METHOD_DONE, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %194

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @DECISION_FAIL, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %194

187:                                              ; preds = %182, %173
  %188 = load i64, i64* @METHOD_DONE, align 8
  %189 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %190 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %189, i32 0, i32 0
  store i64 %188, i64* %190, align 8
  %191 = load i64, i64* @DECISION_FAIL, align 8
  %192 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %193 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %192, i32 0, i32 1
  store i64 %191, i64* %193, align 8
  br label %218

194:                                              ; preds = %182, %177
  %195 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @METHOD_DONE, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @METHOD_MAY_CONT, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %199, %194
  %205 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @DECISION_UNCOND_SUCC, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %214, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %14, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @DECISION_COND_SUCC, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %209, %204
  %215 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %216 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %215, i32 0, i32 1
  store i32 1, i32* %216, align 4
  br label %217

217:                                              ; preds = %214, %209, %199
  br label %218

218:                                              ; preds = %217, %187
  %219 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %220 = load %struct.wpabuf*, %struct.wpabuf** %219, align 8
  %221 = icmp ne %struct.wpabuf* %220, null
  br i1 %221, label %260, label %222

222:                                              ; preds = %218
  %223 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %224 = icmp ne %struct.eap_peer_config* %223, null
  br i1 %224, label %225, label %260

225:                                              ; preds = %222
  %226 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %227 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %226, i32 0, i32 4
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %250, label %230

230:                                              ; preds = %225
  %231 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %232 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %250, label %235

235:                                              ; preds = %230
  %236 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %237 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %236, i32 0, i32 2
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %250, label %240

240:                                              ; preds = %235
  %241 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %242 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %241, i32 0, i32 1
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %250, label %245

245:                                              ; preds = %240
  %246 = load %struct.eap_peer_config*, %struct.eap_peer_config** %15, align 8
  %247 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %260

250:                                              ; preds = %245, %240, %235, %230, %225
  %251 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %252 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @wpabuf_free(i32 %253)
  %255 = load %struct.eap_hdr*, %struct.eap_hdr** %10, align 8
  %256 = load i64, i64* %12, align 8
  %257 = call i32 @wpabuf_alloc_copy(%struct.eap_hdr* %255, i64 %256)
  %258 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %259 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %258, i32 0, i32 2
  store i32 %257, i32* %259, align 8
  br label %266

260:                                              ; preds = %245, %222, %218
  %261 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %262 = load %struct.wpabuf*, %struct.wpabuf** %261, align 8
  %263 = icmp ne %struct.wpabuf* %262, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %260
  store i32 -1, i32* %6, align 4
  br label %267

265:                                              ; preds = %260
  br label %266

266:                                              ; preds = %265, %250
  store i32 0, i32* %6, align 4
  br label %267

267:                                              ; preds = %266, %264, %139, %123, %122, %41, %25
  %268 = load i32, i32* %6, align 4
  ret i32 %268
}

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpabuf* @eap_sm_buildIdentity(%struct.eap_sm*, i32, i32) #1

declare dso_local i64 @eap_teap_select_phase2_method(%struct.eap_teap_data*, i64) #1

declare dso_local i64 @eap_peer_tls_phase2_nak(i32, i32, %struct.eap_hdr*, %struct.wpabuf**) #1

declare dso_local i64 @eap_teap_init_phase2_method(%struct.eap_sm*, %struct.eap_teap_data*) #1

declare dso_local i32 @os_memset(%struct.eap_method_ret*, i32, i32) #1

declare dso_local i32 @wpabuf_set(%struct.wpabuf*, %struct.eap_hdr*, i64) #1

declare dso_local i32 @wpabuf_free(i32) #1

declare dso_local i32 @wpabuf_alloc_copy(%struct.eap_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
