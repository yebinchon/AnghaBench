; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_process_commit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_process_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_eke_data = type { i64, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i64, i32 }
%struct.eap_method_ret = type { i32 }
%struct.wpabuf = type opaque

@EAP_EKE_MAX_KEY_LEN = common dso_local global i32 0, align 4
@EAP_EKE_MAX_DH_LEN = common dso_local global i32 0, align 4
@COMMIT = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"EAP-EKE: EAP-EKE-Commit/Request received in unexpected state (%d)\00", align 1
@EAP_EKE_FAIL_PROTO_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"EAP-EKE: Received EAP-EKE-Commit/Request\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"EAP-EKE: No password configured!\00", align 1
@EAP_EKE_FAIL_PASSWD_NOT_FOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"EAP-EKE: Too short EAP-EKE-Commit\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"EAP-EKE: DHComponent_S\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"EAP-EKE: CBValue\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"EAP-EKE: Failed to derive key\00", align 1
@EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [33 x i8] c"EAP-EKE: Failed to initialize DH\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"EAP-EKE: Failed to derive shared secret\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"EAP-EKE: Failed to derive Ke/Ki\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"EAP-EKE: Sending EAP-EKE-Commit/Response\00", align 1
@EAP_EKE_COMMIT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [39 x i8] c"EAP-EKE: Failed to build DHComponent_P\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"EAP-EKE: DHComponent_P\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"EAP-EKE: Nonce_P\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"EAP-EKE: PNonce_P\00", align 1
@CONFIRM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_eke_data*, %struct.eap_method_ret*, %struct.wpabuf*, i32*, i64)* @eap_eke_process_commit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_eke_process_commit(%struct.eap_sm* %0, %struct.eap_eke_data* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.eap_sm*, align 8
  %9 = alloca %struct.eap_eke_data*, align 8
  %10 = alloca %struct.eap_method_ret*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %8, align 8
  store %struct.eap_eke_data* %1, %struct.eap_eke_data** %9, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %10, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %27 = load i32, i32* @EAP_EKE_MAX_KEY_LEN, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %20, align 8
  %30 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %21, align 8
  %31 = load i32, i32* @EAP_EKE_MAX_DH_LEN, align 4
  %32 = zext i32 %31 to i64
  %33 = alloca i32, i64 %32, align 16
  store i64 %32, i64* %22, align 8
  %34 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %35 = call i32 @eap_get_id(%struct.wpabuf* %34)
  store i32 %35, i32* %25, align 4
  %36 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %37 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @COMMIT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %6
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %44 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %45)
  %47 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %48 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %49 = load i32, i32* %25, align 4
  %50 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %51 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %47, %struct.eap_method_ret* %48, i32 %49, i32 %50)
  store %struct.wpabuf* %51, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

52:                                               ; preds = %6
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.eap_sm*, %struct.eap_sm** %8, align 8
  %56 = call i32* @eap_get_config_password(%struct.eap_sm* %55, i64* %24)
  store i32* %56, i32** %23, align 8
  %57 = load i32*, i32** %23, align 8
  %58 = icmp eq i32* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %52
  %60 = load i32, i32* @MSG_INFO, align 4
  %61 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %63 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %64 = load i32, i32* %25, align 4
  %65 = load i32, i32* @EAP_EKE_FAIL_PASSWD_NOT_FOUND, align 4
  %66 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %62, %struct.eap_method_ret* %63, i32 %64, i32 %65)
  store %struct.wpabuf* %66, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

67:                                               ; preds = %52
  %68 = load i32*, i32** %12, align 8
  store i32* %68, i32** %15, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %16, align 8
  %72 = load i32*, i32** %15, align 8
  %73 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %74 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  %79 = load i32*, i32** %16, align 8
  %80 = icmp ugt i32* %78, %79
  br i1 %80, label %81, label %89

81:                                               ; preds = %67
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %84 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %85 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %86 = load i32, i32* %25, align 4
  %87 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %88 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %84, %struct.eap_method_ret* %85, i32 %86, i32 %87)
  store %struct.wpabuf* %88, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

89:                                               ; preds = %67
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %93 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = call i32 @wpa_hexdump(i32 %90, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %91, i64 %96)
  %98 = load i32*, i32** %15, align 8
  store i32* %98, i32** %17, align 8
  %99 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %100 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %15, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %15, align 8
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load i32*, i32** %15, align 8
  %108 = load i32*, i32** %16, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = ptrtoint i32* %108 to i64
  %111 = ptrtoint i32* %109 to i64
  %112 = sub i64 %110, %111
  %113 = sdiv exact i64 %112, 4
  %114 = call i32 @wpa_hexdump(i32 %106, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32* %107, i64 %113)
  %115 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %116 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %115, i32 0, i32 2
  %117 = load i32*, i32** %23, align 8
  %118 = load i64, i64* %24, align 8
  %119 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %120 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %119, i32 0, i32 7
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %123 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %126 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %129 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @eap_eke_derive_key(%struct.TYPE_6__* %116, i32* %117, i64 %118, i32 %121, i32 %124, i32 %127, i32 %130, i32* %30)
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %89
  %134 = load i32, i32* @MSG_INFO, align 4
  %135 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %136 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %137 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %138 = load i32, i32* %25, align 4
  %139 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %140 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %136, %struct.eap_method_ret* %137, i32 %138, i32 %139)
  store %struct.wpabuf* %140, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

141:                                              ; preds = %89
  %142 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %143 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %147 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 4
  %149 = call i64 @eap_eke_dh_init(i32 %145, i32 %148, i32* %33)
  %150 = icmp slt i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %141
  %152 = load i32, i32* @MSG_INFO, align 4
  %153 = call i32 (i32, i8*, ...) @wpa_printf(i32 %152, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %154 = mul nuw i64 4, %28
  %155 = trunc i64 %154 to i32
  %156 = call i32 @forced_memzero(i32* %30, i32 %155)
  %157 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %158 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %159 = load i32, i32* %25, align 4
  %160 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %161 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %157, %struct.eap_method_ret* %158, i32 %159, i32 %160)
  store %struct.wpabuf* %161, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

162:                                              ; preds = %141
  %163 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %164 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %163, i32 0, i32 2
  %165 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %166 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %165, i32 0, i32 8
  %167 = load i32, i32* %166, align 4
  %168 = load i32*, i32** %17, align 8
  %169 = call i64 @eap_eke_shared_secret(%struct.TYPE_6__* %164, i32* %30, i32 %167, i32* %168)
  %170 = icmp slt i64 %169, 0
  br i1 %170, label %171, label %182

171:                                              ; preds = %162
  %172 = load i32, i32* @MSG_INFO, align 4
  %173 = call i32 (i32, i8*, ...) @wpa_printf(i32 %172, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  %174 = mul nuw i64 4, %28
  %175 = trunc i64 %174 to i32
  %176 = call i32 @forced_memzero(i32* %30, i32 %175)
  %177 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %178 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %179 = load i32, i32* %25, align 4
  %180 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %181 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %177, %struct.eap_method_ret* %178, i32 %179, i32 %180)
  store %struct.wpabuf* %181, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

182:                                              ; preds = %162
  %183 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %184 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %183, i32 0, i32 2
  %185 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %186 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %185, i32 0, i32 7
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %189 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %192 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %195 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 4
  %197 = call i64 @eap_eke_derive_ke_ki(%struct.TYPE_6__* %184, i32 %187, i32 %190, i32 %193, i32 %196)
  %198 = icmp slt i64 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %182
  %200 = load i32, i32* @MSG_INFO, align 4
  %201 = call i32 (i32, i8*, ...) @wpa_printf(i32 %200, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %202 = mul nuw i64 4, %28
  %203 = trunc i64 %202 to i32
  %204 = call i32 @forced_memzero(i32* %30, i32 %203)
  %205 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %206 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %207 = load i32, i32* %25, align 4
  %208 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %209 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %205, %struct.eap_method_ret* %206, i32 %207, i32 %208)
  store %struct.wpabuf* %209, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

210:                                              ; preds = %182
  %211 = load i32, i32* @MSG_DEBUG, align 4
  %212 = call i32 (i32, i8*, ...) @wpa_printf(i32 %211, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %213 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %214 = load i32, i32* %25, align 4
  %215 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %216 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %221 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %219, %223
  %225 = load i32, i32* @EAP_EKE_COMMIT, align 4
  %226 = call %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data* %213, i32 %214, i64 %224, i32 %225)
  store %struct.wpabuf* %226, %struct.wpabuf** %14, align 8
  %227 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %228 = icmp eq %struct.wpabuf* %227, null
  br i1 %228, label %229, label %238

229:                                              ; preds = %210
  %230 = mul nuw i64 4, %28
  %231 = trunc i64 %230 to i32
  %232 = call i32 @forced_memzero(i32* %30, i32 %231)
  %233 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %234 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %235 = load i32, i32* %25, align 4
  %236 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %237 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %233, %struct.eap_method_ret* %234, i32 %235, i32 %236)
  store %struct.wpabuf* %237, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

238:                                              ; preds = %210
  %239 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %240 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %241 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = sext i32 %243 to i64
  %245 = call i32* @wpabuf_put(%struct.wpabuf* %239, i64 %244)
  store i32* %245, i32** %19, align 8
  %246 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %247 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %246, i32 0, i32 2
  %248 = load i32*, i32** %19, align 8
  %249 = call i64 @eap_eke_dhcomp(%struct.TYPE_6__* %247, i32* %30, i32* %33, i32* %248)
  %250 = icmp slt i64 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %238
  %252 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %253 = call i32 @wpabuf_free(%struct.wpabuf* %252)
  %254 = load i32, i32* @MSG_INFO, align 4
  %255 = call i32 (i32, i8*, ...) @wpa_printf(i32 %254, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.11, i64 0, i64 0))
  %256 = mul nuw i64 4, %28
  %257 = trunc i64 %256 to i32
  %258 = call i32 @forced_memzero(i32* %30, i32 %257)
  %259 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %260 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %261 = load i32, i32* %25, align 4
  %262 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %263 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %259, %struct.eap_method_ret* %260, i32 %261, i32 %262)
  store %struct.wpabuf* %263, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

264:                                              ; preds = %238
  %265 = mul nuw i64 4, %28
  %266 = trunc i64 %265 to i32
  %267 = call i32 @forced_memzero(i32* %30, i32 %266)
  %268 = load i32, i32* @MSG_DEBUG, align 4
  %269 = load i32*, i32** %19, align 8
  %270 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %271 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = call i32 @wpa_hexdump(i32 %268, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32* %269, i64 %274)
  %276 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %277 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %276, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %280 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = call i64 @random_get_bytes(i32 %278, i32 %282)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %293

285:                                              ; preds = %264
  %286 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %287 = call i32 @wpabuf_free(%struct.wpabuf* %286)
  %288 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %289 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %290 = load i32, i32* %25, align 4
  %291 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %292 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %288, %struct.eap_method_ret* %289, i32 %290, i32 %291)
  store %struct.wpabuf* %292, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

293:                                              ; preds = %264
  %294 = load i32, i32* @MSG_DEBUG, align 4
  %295 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %296 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %299 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @wpa_hexdump_key(i32 %294, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %297, i32 %301)
  %303 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %304 = call i64 @wpabuf_tailroom(%struct.wpabuf* %303)
  store i64 %304, i64* %18, align 8
  %305 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %306 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %305, i32 0, i32 2
  %307 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %308 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %307, i32 0, i32 3
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %311 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %315 = call i32* @wpabuf_put(%struct.wpabuf* %314, i64 0)
  %316 = call i64 @eap_eke_prot(%struct.TYPE_6__* %306, i32 %309, i32 %313, i32* %315, i64* %18)
  %317 = icmp slt i64 %316, 0
  br i1 %317, label %318, label %326

318:                                              ; preds = %293
  %319 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %320 = call i32 @wpabuf_free(%struct.wpabuf* %319)
  %321 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %322 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %323 = load i32, i32* %25, align 4
  %324 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %325 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %321, %struct.eap_method_ret* %322, i32 %323, i32 %324)
  store %struct.wpabuf* %325, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

326:                                              ; preds = %293
  %327 = load i32, i32* @MSG_DEBUG, align 4
  %328 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %329 = call i32* @wpabuf_put(%struct.wpabuf* %328, i64 0)
  %330 = load i64, i64* %18, align 8
  %331 = call i32 @wpa_hexdump(i32 %327, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32* %329, i64 %330)
  %332 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %333 = load i64, i64* %18, align 8
  %334 = call i32* @wpabuf_put(%struct.wpabuf* %332, i64 %333)
  %335 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %336 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %335, i32 0, i32 1
  %337 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %338 = call i64 @wpabuf_len(%struct.wpabuf* %337)
  %339 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %340 = call i64 @wpabuf_len(%struct.wpabuf* %339)
  %341 = add nsw i64 %338, %340
  %342 = call i64 @wpabuf_resize(i32* %336, i64 %341)
  %343 = icmp slt i64 %342, 0
  br i1 %343, label %344, label %352

344:                                              ; preds = %326
  %345 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %346 = call i32 @wpabuf_free(%struct.wpabuf* %345)
  %347 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %348 = load %struct.eap_method_ret*, %struct.eap_method_ret** %10, align 8
  %349 = load i32, i32* %25, align 4
  %350 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %351 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %347, %struct.eap_method_ret* %348, i32 %349, i32 %350)
  store %struct.wpabuf* %351, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

352:                                              ; preds = %326
  %353 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %354 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %357 = call i32 @wpabuf_put_buf(i32 %355, %struct.wpabuf* %356)
  %358 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %359 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %362 = call i32 @wpabuf_put_buf(i32 %360, %struct.wpabuf* %361)
  %363 = load %struct.eap_eke_data*, %struct.eap_eke_data** %9, align 8
  %364 = load i32, i32* @CONFIRM, align 4
  %365 = call i32 @eap_eke_state(%struct.eap_eke_data* %363, i32 %364)
  %366 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  store %struct.wpabuf* %366, %struct.wpabuf** %7, align 8
  store i32 1, i32* %26, align 4
  br label %367

367:                                              ; preds = %352, %344, %318, %285, %251, %229, %199, %171, %151, %133, %81, %59, %41
  %368 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %368)
  %369 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  ret %struct.wpabuf* %369
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data*, %struct.eap_method_ret*, i32, i32) #2

declare dso_local i32* @eap_get_config_password(%struct.eap_sm*, i64*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local i64 @eap_eke_derive_key(%struct.TYPE_6__*, i32*, i64, i32, i32, i32, i32, i32*) #2

declare dso_local i64 @eap_eke_dh_init(i32, i32, i32*) #2

declare dso_local i32 @forced_memzero(i32*, i32) #2

declare dso_local i64 @eap_eke_shared_secret(%struct.TYPE_6__*, i32*, i32, i32*) #2

declare dso_local i64 @eap_eke_derive_ke_ki(%struct.TYPE_6__*, i32, i32, i32, i32) #2

declare dso_local %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data*, i32, i64, i32) #2

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i64) #2

declare dso_local i64 @eap_eke_dhcomp(%struct.TYPE_6__*, i32*, i32*, i32*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i64 @random_get_bytes(i32, i32) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #2

declare dso_local i64 @wpabuf_tailroom(%struct.wpabuf*) #2

declare dso_local i64 @eap_eke_prot(%struct.TYPE_6__*, i32, i32, i32*, i64*) #2

declare dso_local i64 @wpabuf_resize(i32*, i64) #2

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_put_buf(i32, %struct.wpabuf*) #2

declare dso_local i32 @eap_eke_state(%struct.eap_eke_data*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
