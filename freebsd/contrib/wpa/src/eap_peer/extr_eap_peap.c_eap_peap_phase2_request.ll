; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_phase2_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_peap_phase2_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32, i32, i32, i64, %struct.wpabuf*, i32*, %struct.TYPE_6__*, %struct.TYPE_4__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)*, i32* (%struct.eap_sm*)* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.eap_method_ret = type { i8*, i8* }
%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i32, i32 }
%struct.eap_peer_config = type { i64, i64, i64, i64, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EAP-PEAP: too short Phase 2 request (len=%lu)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"EAP-PEAP: Phase 2 Request: type=%d\00", align 1
@METHOD_DONE = common dso_local global i8* null, align 8
@DECISION_FAIL = common dso_local global i8* null, align 8
@METHOD_MAY_CONT = common dso_local global i8* null, align 8
@EAP_VENDOR_IETF = common dso_local global i32 0, align 4
@EAP_TYPE_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"EAP-PEAP: Selected Phase 2 EAP vendor %d method %d\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"EAP-PEAP: failed to initialize Phase 2 EAP method %d\00", align 1
@DECISION_UNCOND_SUCC = common dso_local global i8* null, align 8
@DECISION_COND_SUCC = common dso_local global i8* null, align 8
@EAP_CODE_RESPONSE = common dso_local global i32 0, align 4
@EAP_VENDOR_MICROSOFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_peap_data*, %struct.eap_method_ret*, %struct.wpabuf*, %struct.wpabuf**)* @eap_peap_phase2_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_peap_phase2_request(%struct.eap_sm* %0, %struct.eap_peap_data* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3, %struct.wpabuf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_peap_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.wpabuf**, align 8
  %12 = alloca %struct.eap_hdr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.eap_method_ret, align 8
  %16 = alloca %struct.eap_peer_config*, align 8
  %17 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %10, align 8
  store %struct.wpabuf** %4, %struct.wpabuf*** %11, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %19 = call %struct.eap_hdr* @wpabuf_mhead(%struct.wpabuf* %18)
  store %struct.eap_hdr* %19, %struct.eap_hdr** %12, align 8
  %20 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %21 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be_to_host16(i32 %22)
  store i64 %23, i64* %13, align 8
  %24 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %25 = call %struct.eap_peer_config* @eap_get_config(%struct.eap_sm* %24)
  store %struct.eap_peer_config* %25, %struct.eap_peer_config** %16, align 8
  %26 = load i64, i64* %13, align 8
  %27 = icmp ule i64 %26, 8
  br i1 %27, label %28, label %32

28:                                               ; preds = %5
  %29 = load i32, i32* @MSG_INFO, align 4
  %30 = load i64, i64* %13, align 8
  %31 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %30)
  store i32 -1, i32* %6, align 4
  br label %342

32:                                               ; preds = %5
  %33 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %34 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %33, i64 1
  %35 = bitcast %struct.eap_hdr* %34 to i64*
  store i64* %35, i64** %14, align 8
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load i64*, i64** %14, align 8
  %38 = load i64, i64* %37, align 8
  %39 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i64*, i64** %14, align 8
  %41 = load i64, i64* %40, align 8
  switch i64 %41, label %100 [
    i64 129, label %42
    i64 128, label %49
    i64 130, label %99
  ]

42:                                               ; preds = %32
  %43 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %44 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %45 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.wpabuf* @eap_sm_buildIdentity(%struct.eap_sm* %43, i32 %46, i32 1)
  %48 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  store %struct.wpabuf* %47, %struct.wpabuf** %48, align 8
  br label %302

49:                                               ; preds = %32
  %50 = call i32 @os_memset(%struct.eap_method_ret* %15, i32 0, i32 16)
  %51 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %52 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %54 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %55 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %56 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %49
  %60 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %61 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  br label %65

65:                                               ; preds = %59, %49
  %66 = phi i1 [ false, %49 ], [ %64, %59 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @eap_tlv_process(%struct.eap_sm* %51, %struct.eap_peap_data* %52, %struct.eap_method_ret* %15, %struct.wpabuf* %53, %struct.wpabuf** %54, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load i8*, i8** @METHOD_DONE, align 8
  %72 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %73 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** @DECISION_FAIL, align 8
  %75 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %76 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  store i32 -1, i32* %6, align 4
  br label %342

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %15, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = load i8*, i8** @METHOD_DONE, align 8
  %81 = icmp eq i8* %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %15, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i8*, i8** @METHOD_MAY_CONT, align 8
  %86 = icmp eq i8* %84, %85
  br i1 %86, label %87, label %98

87:                                               ; preds = %82, %77
  %88 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %15, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %91 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %15, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %95 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %97 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %96, i32 0, i32 2
  store i32 1, i32* %97, align 8
  br label %98

98:                                               ; preds = %87, %82
  br label %302

99:                                               ; preds = %32
  br label %100

100:                                              ; preds = %32, %99
  %101 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %102 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %178

107:                                              ; preds = %100
  %108 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %109 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %108, i32 0, i32 7
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @EAP_TYPE_NONE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %178

114:                                              ; preds = %107
  store i64 0, i64* %17, align 8
  br label %115

115:                                              ; preds = %174, %114
  %116 = load i64, i64* %17, align 8
  %117 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %118 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ult i64 %116, %119
  br i1 %120, label %121, label %177

121:                                              ; preds = %115
  %122 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %123 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %122, i32 0, i32 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = load i64, i64* %17, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @EAP_VENDOR_IETF, align 4
  %130 = icmp ne i32 %128, %129
  br i1 %130, label %142, label %131

131:                                              ; preds = %121
  %132 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %133 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %132, i32 0, i32 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load i64, i64* %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %14, align 8
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %138, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %131, %121
  br label %174

143:                                              ; preds = %131
  %144 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %145 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %144, i32 0, i32 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load i64, i64* %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %152 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 1
  store i32 %150, i32* %153, align 8
  %154 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %155 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %154, i32 0, i32 8
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = load i64, i64* %17, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %162 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  store i64 %160, i64* %163, align 8
  %164 = load i32, i32* @MSG_DEBUG, align 4
  %165 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %166 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %165, i32 0, i32 7
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %170 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %169, i32 0, i32 7
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 (i32, i8*, ...) @wpa_printf(i32 %164, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %168, i64 %172)
  br label %177

174:                                              ; preds = %142
  %175 = load i64, i64* %17, align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* %17, align 8
  br label %115

177:                                              ; preds = %143, %115
  br label %178

178:                                              ; preds = %177, %107, %100
  %179 = load i64*, i64** %14, align 8
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %182 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %181, i32 0, i32 7
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %180, %184
  br i1 %185, label %191, label %186

186:                                              ; preds = %178
  %187 = load i64*, i64** %14, align 8
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @EAP_TYPE_NONE, align 8
  %190 = icmp eq i64 %188, %189
  br i1 %190, label %191, label %204

191:                                              ; preds = %186, %178
  %192 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %193 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %192, i32 0, i32 8
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %196 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %199 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %200 = call i32 @eap_peer_tls_phase2_nak(%struct.TYPE_5__* %194, i64 %197, %struct.eap_hdr* %198, %struct.wpabuf** %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %191
  store i32 -1, i32* %6, align 4
  br label %342

203:                                              ; preds = %191
  store i32 0, i32* %6, align 4
  br label %342

204:                                              ; preds = %186
  %205 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %206 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = icmp eq i32* %207, null
  br i1 %208, label %209, label %240

209:                                              ; preds = %204
  %210 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %211 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %215 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %214, i32 0, i32 7
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = call %struct.TYPE_6__* @eap_peer_get_eap_method(i32 %213, i64 %217)
  %219 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %220 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %219, i32 0, i32 6
  store %struct.TYPE_6__* %218, %struct.TYPE_6__** %220, align 8
  %221 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %222 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %221, i32 0, i32 6
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = icmp ne %struct.TYPE_6__* %223, null
  br i1 %224, label %225, label %239

225:                                              ; preds = %209
  %226 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %227 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %226, i32 0, i32 0
  store i32 1, i32* %227, align 4
  %228 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %229 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %228, i32 0, i32 6
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i32* (%struct.eap_sm*)*, i32* (%struct.eap_sm*)** %231, align 8
  %233 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %234 = call i32* %232(%struct.eap_sm* %233)
  %235 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %236 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %235, i32 0, i32 5
  store i32* %234, i32** %236, align 8
  %237 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %238 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %237, i32 0, i32 0
  store i32 0, i32* %238, align 4
  br label %239

239:                                              ; preds = %225, %209
  br label %240

240:                                              ; preds = %239, %204
  %241 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %242 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %241, i32 0, i32 5
  %243 = load i32*, i32** %242, align 8
  %244 = icmp eq i32* %243, null
  br i1 %244, label %250, label %245

245:                                              ; preds = %240
  %246 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %247 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %246, i32 0, i32 6
  %248 = load %struct.TYPE_6__*, %struct.TYPE_6__** %247, align 8
  %249 = icmp eq %struct.TYPE_6__* %248, null
  br i1 %249, label %250, label %261

250:                                              ; preds = %245, %240
  %251 = load i32, i32* @MSG_INFO, align 4
  %252 = load i64*, i64** %14, align 8
  %253 = load i64, i64* %252, align 8
  %254 = call i32 (i32, i8*, ...) @wpa_printf(i32 %251, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i64 %253)
  %255 = load i8*, i8** @METHOD_DONE, align 8
  %256 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %257 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %256, i32 0, i32 0
  store i8* %255, i8** %257, align 8
  %258 = load i8*, i8** @DECISION_FAIL, align 8
  %259 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %260 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %259, i32 0, i32 1
  store i8* %258, i8** %260, align 8
  store i32 -1, i32* %6, align 4
  br label %342

261:                                              ; preds = %245
  %262 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %263 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %262, i32 0, i32 0
  store i32 1, i32* %263, align 8
  %264 = call i32 @os_memset(%struct.eap_method_ret* %15, i32 0, i32 16)
  %265 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %266 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %265, i32 0, i32 6
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)*, %struct.wpabuf* (%struct.eap_sm*, i32*, %struct.eap_method_ret*, %struct.wpabuf*)** %268, align 8
  %270 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %271 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %272 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %271, i32 0, i32 5
  %273 = load i32*, i32** %272, align 8
  %274 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %275 = call %struct.wpabuf* %269(%struct.eap_sm* %270, i32* %273, %struct.eap_method_ret* %15, %struct.wpabuf* %274)
  %276 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  store %struct.wpabuf* %275, %struct.wpabuf** %276, align 8
  %277 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %15, i32 0, i32 0
  %278 = load i8*, i8** %277, align 8
  %279 = load i8*, i8** @METHOD_DONE, align 8
  %280 = icmp eq i8* %278, %279
  br i1 %280, label %286, label %281

281:                                              ; preds = %261
  %282 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %15, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  %284 = load i8*, i8** @METHOD_MAY_CONT, align 8
  %285 = icmp eq i8* %283, %284
  br i1 %285, label %286, label %301

286:                                              ; preds = %281, %261
  %287 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %15, i32 0, i32 1
  %288 = load i8*, i8** %287, align 8
  %289 = load i8*, i8** @DECISION_UNCOND_SUCC, align 8
  %290 = icmp eq i8* %288, %289
  br i1 %290, label %296, label %291

291:                                              ; preds = %286
  %292 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %15, i32 0, i32 1
  %293 = load i8*, i8** %292, align 8
  %294 = load i8*, i8** @DECISION_COND_SUCC, align 8
  %295 = icmp eq i8* %293, %294
  br i1 %295, label %296, label %301

296:                                              ; preds = %291, %286
  %297 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %298 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %297, i32 0, i32 1
  store i32 1, i32* %298, align 4
  %299 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %300 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %299, i32 0, i32 2
  store i32 1, i32* %300, align 8
  br label %301

301:                                              ; preds = %296, %291, %281
  br label %302

302:                                              ; preds = %301, %98, %42
  %303 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %304 = load %struct.wpabuf*, %struct.wpabuf** %303, align 8
  %305 = icmp eq %struct.wpabuf* %304, null
  br i1 %305, label %306, label %341

306:                                              ; preds = %302
  %307 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %308 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %307, i32 0, i32 4
  %309 = load i64, i64* %308, align 8
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %331, label %311

311:                                              ; preds = %306
  %312 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %313 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %312, i32 0, i32 3
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %331, label %316

316:                                              ; preds = %311
  %317 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %318 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %317, i32 0, i32 2
  %319 = load i64, i64* %318, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %331, label %321

321:                                              ; preds = %316
  %322 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %323 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %331, label %326

326:                                              ; preds = %321
  %327 = load %struct.eap_peer_config*, %struct.eap_peer_config** %16, align 8
  %328 = getelementptr inbounds %struct.eap_peer_config, %struct.eap_peer_config* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %341

331:                                              ; preds = %326, %321, %316, %311, %306
  %332 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %333 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %332, i32 0, i32 4
  %334 = load %struct.wpabuf*, %struct.wpabuf** %333, align 8
  %335 = call i32 @wpabuf_clear_free(%struct.wpabuf* %334)
  %336 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %337 = load i64, i64* %13, align 8
  %338 = call %struct.wpabuf* @wpabuf_alloc_copy(%struct.eap_hdr* %336, i64 %337)
  %339 = load %struct.eap_peap_data*, %struct.eap_peap_data** %8, align 8
  %340 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %339, i32 0, i32 4
  store %struct.wpabuf* %338, %struct.wpabuf** %340, align 8
  br label %341

341:                                              ; preds = %331, %326, %302
  store i32 0, i32* %6, align 4
  br label %342

342:                                              ; preds = %341, %250, %203, %202, %70, %28
  %343 = load i32, i32* %6, align 4
  ret i32 %343
}

declare dso_local %struct.eap_hdr* @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local %struct.eap_peer_config* @eap_get_config(%struct.eap_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.wpabuf* @eap_sm_buildIdentity(%struct.eap_sm*, i32, i32) #1

declare dso_local i32 @os_memset(%struct.eap_method_ret*, i32, i32) #1

declare dso_local i32 @eap_tlv_process(%struct.eap_sm*, %struct.eap_peap_data*, %struct.eap_method_ret*, %struct.wpabuf*, %struct.wpabuf**, i32) #1

declare dso_local i32 @eap_peer_tls_phase2_nak(%struct.TYPE_5__*, i64, %struct.eap_hdr*, %struct.wpabuf**) #1

declare dso_local %struct.TYPE_6__* @eap_peer_get_eap_method(i32, i64) #1

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc_copy(%struct.eap_hdr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
