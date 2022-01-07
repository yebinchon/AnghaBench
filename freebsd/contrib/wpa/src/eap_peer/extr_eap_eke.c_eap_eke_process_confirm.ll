; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_process_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_eke.c_eap_eke_process_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_data = type { i64, %struct.TYPE_7__, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i64, i64 }
%struct.eap_method_ret = type { i32, i32, i32 }
%struct.wpabuf = type { i32 }

@EAP_EKE_MAX_NONCE_LEN = common dso_local global i32 0, align 4
@EAP_EKE_MAX_HASH_LEN = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"EAP-EKE: EAP-EKE-Confirm/Request received in unexpected state (%d)\00", align 1
@EAP_EKE_FAIL_PROTO_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"EAP-EKE: Received EAP-EKE-Confirm/Request\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"EAP-EKE: Too short EAP-EKE-Confirm\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"EAP-EKE: Failed to decrypt PNonce_PS\00", align 1
@EAP_EKE_FAIL_AUTHENTICATION_FAIL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [86 x i8] c"EAP-EKE: PNonce_PS protected data length does not match length of Nonce_P and Nonce_S\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"EAP-EKE: Received Nonce_P | Nonce_S\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"EAP-EKE: Received Nonce_P does not match transmitted Nonce_P\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"EAP-EKE: Nonce_S\00", align 1
@EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"EAP-EKE server\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"EAP-EKE: Auth_S\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"EAP-EKE: Auth_S does not match\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"EAP-EKE: Sending EAP-EKE-Confirm/Response\00", align 1
@EAP_EKE_CONFIRM = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [13 x i8] c"EAP-EKE peer\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"EAP-EKE: Auth_P\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"EAP-EKE: Failed to derive MSK/EMSK\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@METHOD_MAY_CONT = common dso_local global i32 0, align 4
@DECISION_COND_SUCC = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_eke_data*, %struct.eap_method_ret*, %struct.wpabuf*, i32*, i64)* @eap_eke_process_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_eke_process_confirm(%struct.eap_eke_data* %0, %struct.eap_method_ret* %1, %struct.wpabuf* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_eke_data*, align 8
  %8 = alloca %struct.eap_method_ret*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.eap_eke_data* %0, %struct.eap_eke_data** %7, align 8
  store %struct.eap_method_ret* %1, %struct.eap_method_ret** %8, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %23 = load i32, i32* @EAP_EKE_MAX_NONCE_LEN, align 4
  %24 = mul nsw i32 2, %23
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %28 = load i32, i32* @EAP_EKE_MAX_HASH_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %18, align 8
  %31 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %32 = call i32 @eap_get_id(%struct.wpabuf* %31)
  store i32 %32, i32* %21, align 4
  %33 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %34 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @CONFIRM, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %5
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %41 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %45 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %48 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %44, %struct.eap_method_ret* %45, i32 %46, i32 %47)
  store %struct.wpabuf* %48, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

49:                                               ; preds = %5
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32*, i32** %10, align 8
  store i32* %52, i32** %13, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = load i64, i64* %11, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %14, align 8
  %56 = load i32*, i32** %13, align 8
  %57 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %58 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %56, i64 %61
  %63 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %64 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load i32*, i32** %14, align 8
  %69 = icmp ugt i32* %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %49
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %74 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %75 = load i32, i32* %21, align 4
  %76 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %77 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %73, %struct.eap_method_ret* %74, i32 %75, i32 %76)
  store %struct.wpabuf* %77, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

78:                                               ; preds = %49
  %79 = mul nuw i64 4, %25
  store i64 %79, i64* %19, align 8
  %80 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %81 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %80, i32 0, i32 1
  %82 = load i32*, i32** %13, align 8
  %83 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %84 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @eap_eke_decrypt_prot(%struct.TYPE_7__* %81, i32* %82, i32 %86, i32* %27, i64* %19)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %78
  %90 = load i32, i32* @MSG_INFO, align 4
  %91 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %92 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %93 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* @EAP_EKE_FAIL_AUTHENTICATION_FAIL, align 4
  %96 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %92, %struct.eap_method_ret* %93, i32 %94, i32 %95)
  store %struct.wpabuf* %96, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

97:                                               ; preds = %78
  %98 = load i64, i64* %19, align 8
  %99 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %100 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = mul i64 2, %102
  %104 = icmp ne i64 %98, %103
  br i1 %104, label %105, label %113

105:                                              ; preds = %97
  %106 = load i32, i32* @MSG_INFO, align 4
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  %108 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %109 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %110 = load i32, i32* %21, align 4
  %111 = load i32, i32* @EAP_EKE_FAIL_AUTHENTICATION_FAIL, align 4
  %112 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %108, %struct.eap_method_ret* %109, i32 %110, i32 %111)
  store %struct.wpabuf* %112, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

113:                                              ; preds = %97
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %116 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = mul i64 2, %118
  %120 = trunc i64 %119 to i32
  %121 = call i32 @wpa_hexdump_key(i32 %114, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32* %27, i32 %120)
  %122 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %123 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %126 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = call i64 @os_memcmp(i32 %124, i32* %27, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %113
  %133 = load i32, i32* @MSG_INFO, align 4
  %134 = call i32 (i32, i8*, ...) @wpa_printf(i32 %133, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0))
  %135 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %136 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* @EAP_EKE_FAIL_AUTHENTICATION_FAIL, align 4
  %139 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %135, %struct.eap_method_ret* %136, i32 %137, i32 %138)
  store %struct.wpabuf* %139, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

140:                                              ; preds = %113
  %141 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %142 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %141, i32 0, i32 6
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %145 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds i32, i32* %27, i64 %147
  %149 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %150 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = trunc i64 %152 to i32
  %154 = call i32 @os_memcpy(i32* %143, i32* %148, i32 %153)
  %155 = load i32, i32* @MSG_DEBUG, align 4
  %156 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %157 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %156, i32 0, i32 6
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %160 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  %164 = call i32 @wpa_hexdump_key(i32 %155, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32* %158, i32 %163)
  %165 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %166 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %165, i32 0, i32 1
  %167 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %168 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %167, i32 0, i32 10
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %171 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %174 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %173, i32 0, i32 8
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %177 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %176, i32 0, i32 7
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %180 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %183 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %182, i32 0, i32 6
  %184 = load i32*, i32** %183, align 8
  %185 = call i64 @eap_eke_derive_ka(%struct.TYPE_7__* %166, i32 %169, i32 %172, i32 %175, i32 %178, i32 %181, i32* %184)
  %186 = icmp slt i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %140
  %188 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %189 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %192 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %188, %struct.eap_method_ret* %189, i32 %190, i32 %191)
  store %struct.wpabuf* %192, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

193:                                              ; preds = %140
  %194 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %195 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %194, i32 0, i32 1
  %196 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %197 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %196, i32 0, i32 11
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @eap_eke_auth(%struct.TYPE_7__* %195, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %198, i32* %30)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %203 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %204 = load i32, i32* %21, align 4
  %205 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %206 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %202, %struct.eap_method_ret* %203, i32 %204, i32 %205)
  store %struct.wpabuf* %206, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

207:                                              ; preds = %193
  %208 = load i32, i32* @MSG_DEBUG, align 4
  %209 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %210 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @wpa_hexdump(i32 %208, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32* %30, i64 %212)
  %214 = load i32*, i32** %13, align 8
  %215 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %216 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %214, i64 %219
  %221 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %222 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = call i64 @os_memcmp_const(i32* %30, i32* %220, i64 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %207
  %228 = load i32, i32* @MSG_INFO, align 4
  %229 = call i32 (i32, i8*, ...) @wpa_printf(i32 %228, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %230 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %231 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %232 = load i32, i32* %21, align 4
  %233 = load i32, i32* @EAP_EKE_FAIL_AUTHENTICATION_FAIL, align 4
  %234 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %230, %struct.eap_method_ret* %231, i32 %232, i32 %233)
  store %struct.wpabuf* %234, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

235:                                              ; preds = %207
  %236 = load i32, i32* @MSG_DEBUG, align 4
  %237 = call i32 (i32, i8*, ...) @wpa_printf(i32 %236, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  %238 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %239 = load i32, i32* %21, align 4
  %240 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %241 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %245 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = add i64 %243, %247
  %249 = load i32, i32* @EAP_EKE_CONFIRM, align 4
  %250 = call %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data* %238, i32 %239, i64 %248, i32 %249)
  store %struct.wpabuf* %250, %struct.wpabuf** %12, align 8
  %251 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %252 = icmp eq %struct.wpabuf* %251, null
  br i1 %252, label %253, label %259

253:                                              ; preds = %235
  %254 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %255 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %256 = load i32, i32* %21, align 4
  %257 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %258 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %254, %struct.eap_method_ret* %255, i32 %256, i32 %257)
  store %struct.wpabuf* %258, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

259:                                              ; preds = %235
  %260 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %261 = call i64 @wpabuf_tailroom(%struct.wpabuf* %260)
  store i64 %261, i64* %15, align 8
  %262 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %263 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %262, i32 0, i32 1
  %264 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %265 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %264, i32 0, i32 6
  %266 = load i32*, i32** %265, align 8
  %267 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %268 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = trunc i64 %270 to i32
  %272 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %273 = call i32* @wpabuf_put(%struct.wpabuf* %272, i64 0)
  %274 = call i64 @eap_eke_prot(%struct.TYPE_7__* %263, i32* %266, i32 %271, i32* %273, i64* %15)
  %275 = icmp slt i64 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %259
  %277 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %278 = call i32 @wpabuf_free(%struct.wpabuf* %277)
  %279 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %280 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %281 = load i32, i32* %21, align 4
  %282 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %283 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %279, %struct.eap_method_ret* %280, i32 %281, i32 %282)
  store %struct.wpabuf* %283, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

284:                                              ; preds = %259
  %285 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %286 = load i64, i64* %15, align 8
  %287 = call i32* @wpabuf_put(%struct.wpabuf* %285, i64 %286)
  %288 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %289 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %290 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = call i32* @wpabuf_put(%struct.wpabuf* %288, i64 %292)
  store i32* %293, i32** %20, align 8
  %294 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %295 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %294, i32 0, i32 1
  %296 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %297 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %296, i32 0, i32 11
  %298 = load i32, i32* %297, align 8
  %299 = load i32*, i32** %20, align 8
  %300 = call i64 @eap_eke_auth(%struct.TYPE_7__* %295, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i32 %298, i32* %299)
  %301 = icmp slt i64 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %284
  %303 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %304 = call i32 @wpabuf_free(%struct.wpabuf* %303)
  %305 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %306 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %307 = load i32, i32* %21, align 4
  %308 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %309 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %305, %struct.eap_method_ret* %306, i32 %307, i32 %308)
  store %struct.wpabuf* %309, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

310:                                              ; preds = %284
  %311 = load i32, i32* @MSG_DEBUG, align 4
  %312 = load i32*, i32** %20, align 8
  %313 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %314 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %313, i32 0, i32 1
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 1
  %316 = load i64, i64* %315, align 8
  %317 = call i32 @wpa_hexdump(i32 %311, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32* %312, i64 %316)
  %318 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %319 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %318, i32 0, i32 1
  %320 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %321 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %320, i32 0, i32 10
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %324 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %323, i32 0, i32 9
  %325 = load i32, i32* %324, align 8
  %326 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %327 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %326, i32 0, i32 8
  %328 = load i32, i32* %327, align 4
  %329 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %330 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %329, i32 0, i32 7
  %331 = load i32, i32* %330, align 8
  %332 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %333 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %332, i32 0, i32 6
  %334 = load i32*, i32** %333, align 8
  %335 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %336 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %335, i32 0, i32 5
  %337 = load i32, i32* %336, align 4
  %338 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %339 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %338, i32 0, i32 4
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %342 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %341, i32 0, i32 3
  %343 = load i32, i32* %342, align 4
  %344 = call i64 @eap_eke_derive_msk(%struct.TYPE_7__* %319, i32 %322, i32 %325, i32 %328, i32 %331, i32* %334, i32 %337, i32 %340, i32 %343)
  %345 = icmp slt i64 %344, 0
  br i1 %345, label %346, label %356

346:                                              ; preds = %310
  %347 = load i32, i32* @MSG_INFO, align 4
  %348 = call i32 (i32, i8*, ...) @wpa_printf(i32 %347, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  %349 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %350 = call i32 @wpabuf_free(%struct.wpabuf* %349)
  %351 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %352 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %353 = load i32, i32* %21, align 4
  %354 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %355 = call %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data* %351, %struct.eap_method_ret* %352, i32 %353, i32 %354)
  store %struct.wpabuf* %355, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

356:                                              ; preds = %310
  %357 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %358 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = call i32 @os_memset(i32 %359, i32 0, i32 4)
  %361 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %362 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %361, i32 0, i32 1
  %363 = call i32 @eap_eke_session_clean(%struct.TYPE_7__* %362)
  %364 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %365 = load i32, i32* @SUCCESS, align 4
  %366 = call i32 @eap_eke_state(%struct.eap_eke_data* %364, i32 %365)
  %367 = load i32, i32* @METHOD_MAY_CONT, align 4
  %368 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %369 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %368, i32 0, i32 2
  store i32 %367, i32* %369, align 4
  %370 = load i32, i32* @DECISION_COND_SUCC, align 4
  %371 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %372 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %371, i32 0, i32 1
  store i32 %370, i32* %372, align 4
  %373 = load i32, i32* @FALSE, align 4
  %374 = load %struct.eap_method_ret*, %struct.eap_method_ret** %8, align 8
  %375 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %374, i32 0, i32 0
  store i32 %373, i32* %375, align 4
  %376 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %376, %struct.wpabuf** %6, align 8
  store i32 1, i32* %22, align 4
  br label %377

377:                                              ; preds = %356, %346, %302, %276, %253, %227, %201, %187, %132, %105, %89, %70, %38
  %378 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %378)
  %379 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %379
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @eap_get_id(%struct.wpabuf*) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local %struct.wpabuf* @eap_eke_build_fail(%struct.eap_eke_data*, %struct.eap_method_ret*, i32, i32) #2

declare dso_local i64 @eap_eke_decrypt_prot(%struct.TYPE_7__*, i32*, i32, i32*, i64*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i64 @os_memcmp(i32, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i64 @eap_eke_derive_ka(%struct.TYPE_7__*, i32, i32, i32, i32, i32, i32*) #2

declare dso_local i64 @eap_eke_auth(%struct.TYPE_7__*, i8*, i32, i32*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i64) #2

declare dso_local %struct.wpabuf* @eap_eke_build_msg(%struct.eap_eke_data*, i32, i64, i32) #2

declare dso_local i64 @wpabuf_tailroom(%struct.wpabuf*) #2

declare dso_local i64 @eap_eke_prot(%struct.TYPE_7__*, i32*, i32, i32*, i64*) #2

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i64) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i64 @eap_eke_derive_msk(%struct.TYPE_7__*, i32, i32, i32, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @os_memset(i32, i32, i32) #2

declare dso_local i32 @eap_eke_session_clean(%struct.TYPE_7__*) #2

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
