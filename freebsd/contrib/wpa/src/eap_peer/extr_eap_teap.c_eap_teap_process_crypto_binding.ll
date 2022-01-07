; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_crypto_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_process_crypto_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_teap_data = type { i64, i64, i32, i32, i32 }
%struct.eap_method_ret = type { i32, i32 }
%struct.teap_tlv_crypto_binding = type { i32, i32*, i32* }

@EAP_TEAP_CMK_LEN = common dso_local global i32 0, align 4
@TEAP_CRYPTO_BINDING_MSK_CMAC = common dso_local global i32 0, align 4
@TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC = common dso_local global i32 0, align 4
@EAP_TEAP_COMPOUND_MAC_LEN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"EAP-TEAP: Received MSK Compound MAC\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"EAP-TEAP: Calculated MSK Compound MAC\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"EAP-TEAP: MSK Compound MAC did not match\00", align 1
@TEAP_CRYPTO_BINDING_EMSK_CMAC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"EAP-TEAP: Received EMSK Compound MAC\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"EAP-TEAP: Calculated EMSK Compound MAC\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"EAP-TEAP: EMSK Compound MAC did not match\00", align 1
@.str.6 = private unnamed_addr constant [107 x i8] c"EAP-TEAP: Server included only EMSK Compound MAC, but no locally generated inner EAP EMSK to validate this\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"EAP-TEAP: Failed to generate MSK\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_teap_data*, %struct.eap_method_ret*, %struct.teap_tlv_crypto_binding*, i64)* @eap_teap_process_crypto_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_teap_process_crypto_binding(%struct.eap_sm* %0, %struct.eap_teap_data* %1, %struct.eap_method_ret* %2, %struct.teap_tlv_crypto_binding* %3, i64 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_teap_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.teap_tlv_crypto_binding*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_teap_data* %1, %struct.eap_teap_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store %struct.teap_tlv_crypto_binding* %3, %struct.teap_tlv_crypto_binding** %10, align 8
  store i64 %4, i64* %11, align 8
  %26 = load i32, i32* @EAP_TEAP_CMK_LEN, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %14, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %15, align 8
  %30 = load i32, i32* @EAP_TEAP_CMK_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %16, align 8
  store i32* null, i32** %17, align 8
  %33 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %34 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %10, align 8
  %35 = call i64 @eap_teap_validate_crypto_binding(%struct.eap_teap_data* %33, %struct.teap_tlv_crypto_binding* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %5
  %38 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %39 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %40 = call i64 @eap_teap_get_cmk(%struct.eap_sm* %38, %struct.eap_teap_data* %39, i32* %29, i32* %32)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %5
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %21, align 4
  br label %221

43:                                               ; preds = %37
  %44 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %10, align 8
  %45 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = ashr i32 %46, 4
  store i32 %47, i32* %20, align 4
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* @TEAP_CRYPTO_BINDING_MSK_CMAC, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %20, align 4
  %53 = load i32, i32* @TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %98

55:                                               ; preds = %51, %43
  %56 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %57 = zext i32 %56 to i64
  %58 = call i8* @llvm.stacksave()
  store i8* %58, i8** %22, align 8
  %59 = alloca i32, i64 %57, align 16
  store i64 %57, i64* %23, align 8
  %60 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %61 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %10, align 8
  %64 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %65 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %68 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = call i64 @eap_teap_compound_mac(i32 %62, %struct.teap_tlv_crypto_binding* %63, i32 %66, i32 %69, i32* %29, i32* %59)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %21, align 4
  br label %94

73:                                               ; preds = %55
  %74 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %10, align 8
  %75 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %78 = call i32 @os_memcmp_const(i32* %59, i32* %76, i32 %77)
  store i32 %78, i32* %18, align 4
  %79 = load i32, i32* @MSG_MSGDUMP, align 4
  %80 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %10, align 8
  %81 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %84 = call i32 @wpa_hexdump(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %82, i32 %83)
  %85 = load i32, i32* @MSG_MSGDUMP, align 4
  %86 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %87 = call i32 @wpa_hexdump(i32 %85, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32* %59, i32 %86)
  %88 = load i32, i32* %18, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %73
  %91 = load i32, i32* @MSG_INFO, align 4
  %92 = call i32 @wpa_printf(i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %21, align 4
  br label %94

93:                                               ; preds = %73
  store i32 0, i32* %21, align 4
  br label %94

94:                                               ; preds = %93, %90, %72
  %95 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %95)
  %96 = load i32, i32* %21, align 4
  switch i32 %96, label %221 [
    i32 0, label %97
  ]

97:                                               ; preds = %94
  br label %98

98:                                               ; preds = %97, %51
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* @TEAP_CRYPTO_BINDING_EMSK_CMAC, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %106, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %20, align 4
  %104 = load i32, i32* @TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %154

106:                                              ; preds = %102, %98
  %107 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %108 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %154

111:                                              ; preds = %106
  %112 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %113 = zext i32 %112 to i64
  %114 = call i8* @llvm.stacksave()
  store i8* %114, i8** %24, align 8
  %115 = alloca i32, i64 %113, align 16
  store i64 %113, i64* %25, align 8
  %116 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %117 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %10, align 8
  %120 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %121 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %124 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i64 @eap_teap_compound_mac(i32 %118, %struct.teap_tlv_crypto_binding* %119, i32 %122, i32 %125, i32* %32, i32* %115)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %111
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %21, align 4
  br label %150

129:                                              ; preds = %111
  %130 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %10, align 8
  %131 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %130, i32 0, i32 2
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %134 = call i32 @os_memcmp_const(i32* %115, i32* %132, i32 %133)
  store i32 %134, i32* %18, align 4
  %135 = load i32, i32* @MSG_MSGDUMP, align 4
  %136 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %10, align 8
  %137 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %136, i32 0, i32 2
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %140 = call i32 @wpa_hexdump(i32 %135, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32* %138, i32 %139)
  %141 = load i32, i32* @MSG_MSGDUMP, align 4
  %142 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %143 = call i32 @wpa_hexdump(i32 %141, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32* %115, i32 %142)
  %144 = load i32, i32* %18, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %129
  %147 = load i32, i32* @MSG_INFO, align 4
  %148 = call i32 @wpa_printf(i32 %147, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %21, align 4
  br label %150

149:                                              ; preds = %129
  store i32* %32, i32** %17, align 8
  store i32 0, i32* %21, align 4
  br label %150

150:                                              ; preds = %149, %146, %128
  %151 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %151)
  %152 = load i32, i32* %21, align 4
  switch i32 %152, label %221 [
    i32 0, label %153
  ]

153:                                              ; preds = %150
  br label %154

154:                                              ; preds = %153, %106, %102
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* @TEAP_CRYPTO_BINDING_EMSK_CMAC, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %160 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %158
  %164 = load i32, i32* @MSG_INFO, align 4
  %165 = call i32 @wpa_printf(i32 %164, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.6, i64 0, i64 0))
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %21, align 4
  br label %221

166:                                              ; preds = %158, %154
  store i64 24, i64* %19, align 8
  %167 = load i64, i64* %19, align 8
  %168 = call %struct.wpabuf* @wpabuf_alloc(i64 %167)
  store %struct.wpabuf* %168, %struct.wpabuf** %12, align 8
  %169 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %170 = icmp ne %struct.wpabuf* %169, null
  br i1 %170, label %172, label %171

171:                                              ; preds = %166
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %21, align 4
  br label %221

172:                                              ; preds = %166
  %173 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %174 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %194

177:                                              ; preds = %172
  %178 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %179 = call i64 @eap_teap_derive_msk(%struct.eap_teap_data* %178)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %177
  %182 = load i32, i32* @MSG_INFO, align 4
  %183 = call i32 @wpa_printf(i32 %182, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %184 = load i32, i32* @METHOD_DONE, align 4
  %185 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %186 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @DECISION_FAIL, align 4
  %188 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %189 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %188, i32 0, i32 0
  store i32 %187, i32* %189, align 4
  %190 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %191 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %190, i32 0, i32 0
  store i64 0, i64* %191, align 8
  %192 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %193 = call i32 @wpabuf_free(%struct.wpabuf* %192)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %21, align 4
  br label %221

194:                                              ; preds = %177, %172
  %195 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %196 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %194
  %200 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %201 = call i64 @eap_teap_session_id(%struct.eap_teap_data* %200)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %199
  %204 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %205 = call i32 @wpabuf_free(%struct.wpabuf* %204)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %21, align 4
  br label %221

206:                                              ; preds = %199, %194
  %207 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %208 = call i32* @wpabuf_put(%struct.wpabuf* %207, i32 24)
  store i32* %208, i32** %13, align 8
  %209 = load %struct.eap_teap_data*, %struct.eap_teap_data** %8, align 8
  %210 = load i32*, i32** %13, align 8
  %211 = bitcast i32* %210 to %struct.teap_tlv_crypto_binding*
  %212 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %10, align 8
  %213 = load i32*, i32** %17, align 8
  %214 = call i64 @eap_teap_write_crypto_binding(%struct.eap_teap_data* %209, %struct.teap_tlv_crypto_binding* %211, %struct.teap_tlv_crypto_binding* %212, i32* %29, i32* %213)
  %215 = icmp slt i64 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %206
  %217 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %218 = call i32 @wpabuf_free(%struct.wpabuf* %217)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %21, align 4
  br label %221

219:                                              ; preds = %206
  %220 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %220, %struct.wpabuf** %6, align 8
  store i32 1, i32* %21, align 4
  br label %221

221:                                              ; preds = %219, %216, %203, %181, %171, %163, %150, %94, %42
  %222 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %222)
  %223 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %223
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @eap_teap_validate_crypto_binding(%struct.eap_teap_data*, %struct.teap_tlv_crypto_binding*) #2

declare dso_local i64 @eap_teap_get_cmk(%struct.eap_sm*, %struct.eap_teap_data*, i32*, i32*) #2

declare dso_local i64 @eap_teap_compound_mac(i32, %struct.teap_tlv_crypto_binding*, i32, i32, i32*, i32*) #2

declare dso_local i32 @os_memcmp_const(i32*, i32*, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #2

declare dso_local i64 @eap_teap_derive_msk(%struct.eap_teap_data*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i64 @eap_teap_session_id(%struct.eap_teap_data*) #2

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #2

declare dso_local i64 @eap_teap_write_crypto_binding(%struct.eap_teap_data*, %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
