; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_process_identity.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_process_identity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.eap_eke_data = type { i64, i32, i32, i32, i32*, i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"EAP-EKE: Received Response/Identity\00", align 1
@IDENTITY = common dso_local global i64 0, align 8
@EAP_EKE_FAIL_PROTO_ERROR = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"EAP-EKE: Too short EAP-EKE-ID payload\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"EAP-EKE: Unexpected NumProposals %d (expected 1)\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"EAP-EKE: Unexpected Proposal (%u:%u:%u:%u)\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"EAP-EKE: Selected Proposal (%u:%u:%u:%u)\00", align 1
@EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"EAP-EKE: Failed to allocate memory for peerid\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"EAP-EKE: Peer IDType %u\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"EAP-EKE: Peer Identity\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"EAP-EKE: Peer Identity not found from user database\00", align 1
@EAP_EKE_FAIL_PASSWD_NOT_FOUND = common dso_local global i32 0, align 4
@EAP_MAX_METHODS = common dso_local global i32 0, align 4
@EAP_VENDOR_IETF = common dso_local global i64 0, align 8
@EAP_TYPE_EKE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [52 x i8] c"EAP-EKE: Matching user entry does not allow EAP-EKE\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"EAP-EKE: No password configured for peer\00", align 1
@COMMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_eke_data*, %struct.wpabuf*, i32*, i64)* @eap_eke_process_identity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_eke_process_identity(%struct.eap_sm* %0, %struct.eap_eke_data* %1, %struct.wpabuf* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_eke_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_eke_data* %1, %struct.eap_eke_data** %7, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %17 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IDENTITY, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %5
  %22 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %23 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %24 = call i32 @eap_eke_fail(%struct.eap_eke_data* %22, i32 %23)
  br label %273

25:                                               ; preds = %5
  %26 = load i32*, i32** %9, align 8
  store i32* %26, i32** %11, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %12, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = getelementptr inbounds i32, i32* %31, i64 4
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = load i32*, i32** %12, align 8
  %35 = icmp ugt i32* %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %25
  %37 = load i32, i32* @MSG_INFO, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %40 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %41 = call i32 @eap_eke_fail(%struct.eap_eke_data* %39, i32 %40)
  br label %273

42:                                               ; preds = %25
  %43 = load i32*, i32** %11, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 1
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load i32, i32* @MSG_INFO, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = load i32, i32* %48, align 4
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %47, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %52 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %53 = call i32 @eap_eke_fail(%struct.eap_eke_data* %51, i32 %52)
  br label %273

54:                                               ; preds = %42
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32* %56, i32** %11, align 8
  %57 = load i32*, i32** %11, align 8
  %58 = call i32 @supported_proposal(i32* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %78, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* @MSG_INFO, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %64, i32 %67, i32 %70, i32 %73)
  %75 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %76 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %77 = call i32 @eap_eke_fail(%struct.eap_eke_data* %75, i32 %76)
  br label %273

78:                                               ; preds = %54
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = load i32*, i32** %11, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32*, i32** %11, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %11, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %85, i32 %88, i32 %91)
  %93 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %94 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %93, i32 0, i32 6
  %95 = load i32*, i32** %11, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %11, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %11, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 3
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @eap_eke_session_init(i32* %94, i32 %97, i32 %100, i32 %103, i32 %106)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %78
  %110 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %111 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %112 = call i32 @eap_eke_fail(%struct.eap_eke_data* %110, i32 %111)
  br label %273

113:                                              ; preds = %78
  %114 = load i32*, i32** %11, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  store i32* %115, i32** %11, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = getelementptr inbounds i32, i32* %116, i32 1
  store i32* %117, i32** %11, align 8
  %118 = load i32, i32* %116, align 4
  %119 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %120 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  %121 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %122 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @os_free(i32* %123)
  %125 = load i32*, i32** %11, align 8
  %126 = load i32*, i32** %12, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = ptrtoint i32* %126 to i64
  %129 = ptrtoint i32* %127 to i64
  %130 = sub i64 %128, %129
  %131 = sdiv exact i64 %130, 4
  %132 = trunc i64 %131 to i32
  %133 = call i32* @os_memdup(i32* %125, i32 %132)
  %134 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %135 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %134, i32 0, i32 4
  store i32* %133, i32** %135, align 8
  %136 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %137 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %136, i32 0, i32 4
  %138 = load i32*, i32** %137, align 8
  %139 = icmp eq i32* %138, null
  br i1 %139, label %140, label %146

140:                                              ; preds = %113
  %141 = load i32, i32* @MSG_INFO, align 4
  %142 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  %143 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %144 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %145 = call i32 @eap_eke_fail(%struct.eap_eke_data* %143, i32 %144)
  br label %273

146:                                              ; preds = %113
  %147 = load i32*, i32** %12, align 8
  %148 = load i32*, i32** %11, align 8
  %149 = ptrtoint i32* %147 to i64
  %150 = ptrtoint i32* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sdiv exact i64 %151, 4
  %153 = trunc i64 %152 to i32
  %154 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %155 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load i32, i32* @MSG_DEBUG, align 4
  %157 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %158 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i32, i8*, ...) @wpa_printf(i32 %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @MSG_DEBUG, align 4
  %162 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %163 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %162, i32 0, i32 4
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %166 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @wpa_hexdump_ascii(i32 %161, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %164, i32 %167)
  %169 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %170 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %171 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %174 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %177 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = call i64 @eap_user_get(%struct.eap_sm* %169, i32* %172, i32 %175, i32 %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %146
  %182 = load i32, i32* @MSG_INFO, align 4
  %183 = call i32 (i32, i8*, ...) @wpa_printf(i32 %182, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %184 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %185 = load i32, i32* @EAP_EKE_FAIL_PASSWD_NOT_FOUND, align 4
  %186 = call i32 @eap_eke_fail(%struct.eap_eke_data* %184, i32 %185)
  br label %273

187:                                              ; preds = %146
  store i32 0, i32* %13, align 4
  br label %188

188:                                              ; preds = %220, %187
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* @EAP_MAX_METHODS, align 4
  %191 = icmp slt i32 %189, %190
  br i1 %191, label %192, label %223

192:                                              ; preds = %188
  %193 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %194 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_3__*, %struct.TYPE_3__** %196, align 8
  %198 = load i32, i32* %13, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @EAP_VENDOR_IETF, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %219

205:                                              ; preds = %192
  %206 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %207 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %206, i32 0, i32 0
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_3__*, %struct.TYPE_3__** %209, align 8
  %211 = load i32, i32* %13, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @EAP_TYPE_EKE, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %205
  br label %223

219:                                              ; preds = %205, %192
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %13, align 4
  br label %188

223:                                              ; preds = %218, %188
  %224 = load i32, i32* %13, align 4
  %225 = load i32, i32* @EAP_MAX_METHODS, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %233

227:                                              ; preds = %223
  %228 = load i32, i32* @MSG_INFO, align 4
  %229 = call i32 (i32, i8*, ...) @wpa_printf(i32 %228, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  %230 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %231 = load i32, i32* @EAP_EKE_FAIL_PASSWD_NOT_FOUND, align 4
  %232 = call i32 @eap_eke_fail(%struct.eap_eke_data* %230, i32 %231)
  br label %273

233:                                              ; preds = %223
  %234 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %235 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %234, i32 0, i32 0
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 1
  %238 = load i32*, i32** %237, align 8
  %239 = icmp eq i32* %238, null
  br i1 %239, label %247, label %240

240:                                              ; preds = %233
  %241 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %242 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %241, i32 0, i32 0
  %243 = load %struct.TYPE_4__*, %struct.TYPE_4__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %240, %233
  %248 = load i32, i32* @MSG_INFO, align 4
  %249 = call i32 (i32, i8*, ...) @wpa_printf(i32 %248, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %250 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %251 = load i32, i32* @EAP_EKE_FAIL_PASSWD_NOT_FOUND, align 4
  %252 = call i32 @eap_eke_fail(%struct.eap_eke_data* %250, i32 %251)
  br label %273

253:                                              ; preds = %240
  %254 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %255 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %254, i32 0, i32 2
  %256 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %257 = call i32 @wpabuf_len(%struct.wpabuf* %256)
  %258 = call i64 @wpabuf_resize(i32* %255, i32 %257)
  %259 = icmp slt i64 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %253
  %261 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %262 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %263 = call i32 @eap_eke_fail(%struct.eap_eke_data* %261, i32 %262)
  br label %273

264:                                              ; preds = %253
  %265 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %266 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %269 = call i32 @wpabuf_put_buf(i32 %267, %struct.wpabuf* %268)
  %270 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %271 = load i32, i32* @COMMIT, align 4
  %272 = call i32 @eap_eke_state(%struct.eap_eke_data* %270, i32 %271)
  br label %273

273:                                              ; preds = %264, %260, %247, %227, %181, %140, %109, %60, %46, %36, %21
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_eke_fail(%struct.eap_eke_data*, i32) #1

declare dso_local i32 @supported_proposal(i32*) #1

declare dso_local i64 @eap_eke_session_init(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32* @os_memdup(i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i32) #1

declare dso_local i64 @eap_user_get(%struct.eap_sm*, i32*, i32, i32) #1

declare dso_local i64 @wpabuf_resize(i32*, i32) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(i32, %struct.wpabuf*) #1

declare dso_local i32 @eap_eke_state(%struct.eap_eke_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
