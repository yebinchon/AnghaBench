; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_process_confirm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_eke.c_eap_eke_process_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32, i32 }
%struct.eap_eke_data = type { i64, %struct.TYPE_5__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i64 }
%struct.wpabuf = type { i32 }

@EAP_EKE_MAX_NONCE_LEN = common dso_local global i32 0, align 4
@EAP_EKE_MAX_HASH_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EAP-EKE: Received Response/Confirm\00", align 1
@CONFIRM = common dso_local global i64 0, align 8
@EAP_EKE_FAIL_PROTO_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"EAP-EKE: Too short EAP-EKE-Confirm\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"EAP-EKE: Failed to decrypt PNonce_S\00", align 1
@EAP_EKE_FAIL_AUTHENTICATION_FAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [62 x i8] c"EAP-EKE: PNonce_S protected data too short to include Nonce_S\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"EAP-EKE: Received Nonce_S\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"EAP-EKE: Received Nonce_S does not match previously sent Nonce_S\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"EAP-EKE peer\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"EAP-EKE: Could not derive Auth_P\00", align 1
@EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [16 x i8] c"EAP-EKE: Auth_P\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"EAP-EKE: Auth_P does not match\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"EAP-EKE: Failed to derive MSK/EMSK\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_eke_data*, %struct.wpabuf*, i32*, i64)* @eap_eke_process_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_eke_process_confirm(%struct.eap_sm* %0, %struct.eap_eke_data* %1, %struct.wpabuf* %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.eap_sm*, align 8
  %7 = alloca %struct.eap_eke_data*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %6, align 8
  store %struct.eap_eke_data* %1, %struct.eap_eke_data** %7, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %16 = load i32, i32* @EAP_EKE_MAX_NONCE_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load i32, i32* @EAP_EKE_MAX_HASH_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %26 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @CONFIRM, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %5
  %31 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %32 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %33 = call i32 @eap_eke_fail(%struct.eap_eke_data* %31, i32 %32)
  store i32 1, i32* %15, align 4
  br label %198

34:                                               ; preds = %5
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %39 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %44 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add i64 %42, %47
  %49 = icmp ult i64 %37, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %34
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = call i32 @wpa_printf(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %54 = load i32, i32* @EAP_EKE_FAIL_PROTO_ERROR, align 4
  %55 = call i32 @eap_eke_fail(%struct.eap_eke_data* %53, i32 %54)
  store i32 1, i32* %15, align 4
  br label %198

56:                                               ; preds = %34
  %57 = mul nuw i64 4, %17
  store i64 %57, i64* %11, align 8
  %58 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %59 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %58, i32 0, i32 1
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %62 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @eap_eke_decrypt_prot(%struct.TYPE_5__* %59, i32* %60, i32 %64, i32* %19, i64* %11)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %56
  %68 = load i32, i32* @MSG_INFO, align 4
  %69 = call i32 @wpa_printf(i32 %68, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %71 = load i32, i32* @EAP_EKE_FAIL_AUTHENTICATION_FAIL, align 4
  %72 = call i32 @eap_eke_fail(%struct.eap_eke_data* %70, i32 %71)
  store i32 1, i32* %15, align 4
  br label %198

73:                                               ; preds = %56
  %74 = load i64, i64* %11, align 8
  %75 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %76 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp ult i64 %74, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load i32, i32* @MSG_INFO, align 4
  %82 = call i32 @wpa_printf(i32 %81, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %84 = load i32, i32* @EAP_EKE_FAIL_AUTHENTICATION_FAIL, align 4
  %85 = call i32 @eap_eke_fail(%struct.eap_eke_data* %83, i32 %84)
  store i32 1, i32* %15, align 4
  br label %198

86:                                               ; preds = %73
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %89 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @wpa_hexdump_key(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i32* %19, i64 %91)
  %93 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %94 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %97 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @os_memcmp(i32* %19, i32 %95, i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %86
  %103 = load i32, i32* @MSG_INFO, align 4
  %104 = call i32 @wpa_printf(i32 %103, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0))
  %105 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %106 = load i32, i32* @EAP_EKE_FAIL_AUTHENTICATION_FAIL, align 4
  %107 = call i32 @eap_eke_fail(%struct.eap_eke_data* %105, i32 %106)
  store i32 1, i32* %15, align 4
  br label %198

108:                                              ; preds = %86
  %109 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %110 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %109, i32 0, i32 1
  %111 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %112 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @eap_eke_auth(%struct.TYPE_5__* %110, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %113, i32* %22)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %108
  %117 = load i32, i32* @MSG_INFO, align 4
  %118 = call i32 @wpa_printf(i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %119 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %120 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %121 = call i32 @eap_eke_fail(%struct.eap_eke_data* %119, i32 %120)
  store i32 1, i32* %15, align 4
  br label %198

122:                                              ; preds = %108
  %123 = load i32, i32* @MSG_DEBUG, align 4
  %124 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %125 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @wpa_hexdump(i32 %123, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.8, i64 0, i64 0), i32* %22, i32 %127)
  %129 = load i32*, i32** %9, align 8
  %130 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %131 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %129, i64 %134
  %136 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %137 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @os_memcmp_const(i32* %22, i32* %135, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %122
  %143 = load i32, i32* @MSG_INFO, align 4
  %144 = call i32 @wpa_printf(i32 %143, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %145 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %146 = load i32, i32* @EAP_EKE_FAIL_AUTHENTICATION_FAIL, align 4
  %147 = call i32 @eap_eke_fail(%struct.eap_eke_data* %145, i32 %146)
  store i32 1, i32* %15, align 4
  br label %198

148:                                              ; preds = %122
  %149 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %150 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %149, i32 0, i32 1
  %151 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %152 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.eap_sm*, %struct.eap_sm** %6, align 8
  %155 = getelementptr inbounds %struct.eap_sm, %struct.eap_sm* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %158 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %157, i32 0, i32 9
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %161 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %164 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %167 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %170 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %169, i32 0, i32 5
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %173 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = call i64 @eap_eke_derive_msk(%struct.TYPE_5__* %150, i32 %153, i32 %156, i32 %159, i32 %162, i32 %165, i32 %168, i32 %171, i32 %174)
  %176 = icmp slt i64 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %148
  %178 = load i32, i32* @MSG_INFO, align 4
  %179 = call i32 @wpa_printf(i32 %178, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %180 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %181 = load i32, i32* @EAP_EKE_FAIL_PRIVATE_INTERNAL_ERROR, align 4
  %182 = call i32 @eap_eke_fail(%struct.eap_eke_data* %180, i32 %181)
  store i32 1, i32* %15, align 4
  br label %198

183:                                              ; preds = %148
  %184 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %185 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @os_memset(i32 %186, i32 0, i32 4)
  %188 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %189 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @os_memset(i32 %190, i32 0, i32 4)
  %192 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %193 = getelementptr inbounds %struct.eap_eke_data, %struct.eap_eke_data* %192, i32 0, i32 1
  %194 = call i32 @eap_eke_session_clean(%struct.TYPE_5__* %193)
  %195 = load %struct.eap_eke_data*, %struct.eap_eke_data** %7, align 8
  %196 = load i32, i32* @SUCCESS, align 4
  %197 = call i32 @eap_eke_state(%struct.eap_eke_data* %195, i32 %196)
  store i32 0, i32* %15, align 4
  br label %198

198:                                              ; preds = %183, %177, %142, %116, %102, %80, %67, %50, %30
  %199 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %15, align 4
  switch i32 %200, label %202 [
    i32 0, label %201
    i32 1, label %201
  ]

201:                                              ; preds = %198, %198
  ret void

202:                                              ; preds = %198
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @eap_eke_fail(%struct.eap_eke_data*, i32) #2

declare dso_local i64 @eap_eke_decrypt_prot(%struct.TYPE_5__*, i32*, i32, i32*, i64*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #2

declare dso_local i64 @os_memcmp(i32*, i32, i64) #2

declare dso_local i64 @eap_eke_auth(%struct.TYPE_5__*, i8*, i32, i32*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

declare dso_local i64 @eap_eke_derive_msk(%struct.TYPE_5__*, i32, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @os_memset(i32, i32, i32) #2

declare dso_local i32 @eap_eke_session_clean(%struct.TYPE_5__*) #2

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
