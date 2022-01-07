; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_validate_crypto_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_teap.c_eap_teap_validate_crypto_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_data = type { i64, i32*, i64, i32, i32, i32, i32, i32 }
%struct.teap_tlv_crypto_binding = type { i32, i64, i64, i32*, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"EAP-TEAP: Reply Crypto-Binding TLV: Version %u Received Version %u Flags %u Sub-Type %u\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"EAP-TEAP: Nonce\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"EAP-TEAP: EMSK Compound MAC\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"EAP-TEAP: MSK Compound MAC\00", align 1
@EAP_TEAP_VERSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [79 x i8] c"EAP-TEAP: Unexpected version in Crypto-Binding: Version %u Received Version %u\00", align 1
@.str.5 = private unnamed_addr constant [49 x i8] c"EAP-TEAP: Unexpected Flags in Crypto-Binding: %u\00", align 1
@TEAP_CRYPTO_BINDING_SUBTYPE_RESPONSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"EAP-TEAP: Unexpected Sub-Type in Crypto-Binding: %u\00", align 1
@EAP_TEAP_NONCE_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [42 x i8] c"EAP-TEAP: Invalid Nonce in Crypto-Binding\00", align 1
@TEAP_CRYPTO_BINDING_MSK_CMAC = common dso_local global i32 0, align 4
@TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC = common dso_local global i32 0, align 4
@EAP_TEAP_COMPOUND_MAC_LEN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [38 x i8] c"EAP-TEAP: Calculated MSK Compound MAC\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"EAP-TEAP: MSK Compound MAC did not match\00", align 1
@TEAP_CRYPTO_BINDING_EMSK_CMAC = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [39 x i8] c"EAP-TEAP: Calculated EMSK Compound MAC\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"EAP-TEAP: EMSK Compound MAC did not match\00", align 1
@.str.12 = private unnamed_addr constant [105 x i8] c"EAP-TEAP: Peer included only EMSK Compound MAC, but no locally generated inner EAP EMSK to validate this\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_teap_data*, %struct.teap_tlv_crypto_binding*, i64)* @eap_teap_validate_crypto_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_validate_crypto_binding(%struct.eap_teap_data* %0, %struct.teap_tlv_crypto_binding* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_teap_data*, align 8
  %6 = alloca %struct.teap_tlv_crypto_binding*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.eap_teap_data* %0, %struct.eap_teap_data** %5, align 8
  store %struct.teap_tlv_crypto_binding* %1, %struct.teap_tlv_crypto_binding** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %16 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 15
  store i32 %18, i32* %9, align 4
  %19 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %20 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %25 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %28 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i64 %26, i64 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @MSG_MSGDUMP, align 4
  %34 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %35 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @wpa_hexdump(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %36, i32 8)
  %38 = load i32, i32* @MSG_MSGDUMP, align 4
  %39 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %40 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @wpa_hexdump(i32 %38, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %41, i32 8)
  %43 = load i32, i32* @MSG_MSGDUMP, align 4
  %44 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %45 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @wpa_hexdump(i32 %43, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32* %46, i32 8)
  %48 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %49 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EAP_TEAP_VERSION, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %61, label %53

53:                                               ; preds = %3
  %54 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %55 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %58 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53, %3
  %62 = load i32, i32* @MSG_DEBUG, align 4
  %63 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %64 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %67 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.4, i64 0, i64 0), i64 %65, i64 %68)
  store i32 -1, i32* %4, align 4
  br label %233

70:                                               ; preds = %53
  %71 = load i32, i32* %8, align 4
  %72 = icmp slt i32 %71, 1
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load i32, i32* %8, align 4
  %75 = icmp sgt i32 %74, 3
  br i1 %75, label %76, label %80

76:                                               ; preds = %73, %70
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load i32, i32* %8, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  store i32 -1, i32* %4, align 4
  br label %233

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @TEAP_CRYPTO_BINDING_SUBTYPE_RESPONSE, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %80
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 (i32, i8*, ...) @wpa_printf(i32 %85, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %86)
  store i32 -1, i32* %4, align 4
  br label %233

88:                                               ; preds = %80
  %89 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %90 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %93 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %92, i32 0, i32 3
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* @EAP_TEAP_NONCE_LEN, align 4
  %96 = sub nsw i32 %95, 1
  %97 = call i64 @os_memcmp_const(i32* %91, i32* %94, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %118, label %99

99:                                               ; preds = %88
  %100 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %101 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* @EAP_TEAP_NONCE_LEN, align 4
  %104 = sub nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, 1
  %109 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %110 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* @EAP_TEAP_NONCE_LEN, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %108, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %99, %88
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %233

121:                                              ; preds = %99
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* @TEAP_CRYPTO_BINDING_MSK_CMAC, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %129, label %125

125:                                              ; preds = %121
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %168

129:                                              ; preds = %125, %121
  %130 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %131 = zext i32 %130 to i64
  %132 = call i8* @llvm.stacksave()
  store i8* %132, i8** %10, align 8
  %133 = alloca i32, i64 %131, align 16
  store i64 %131, i64* %11, align 8
  %134 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %135 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %138 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %139 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %142 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %145 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @eap_teap_compound_mac(i32 %136, %struct.teap_tlv_crypto_binding* %137, i32 %140, i32 %143, i32 %146, i32* %133)
  %148 = icmp slt i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %129
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %164

150:                                              ; preds = %129
  %151 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %152 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %151, i32 0, i32 5
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %155 = call i64 @os_memcmp_const(i32* %133, i32* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %160 = call i32 @wpa_hexdump(i32 %158, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i32* %133, i32 %159)
  %161 = load i32, i32* @MSG_INFO, align 4
  %162 = call i32 (i32, i8*, ...) @wpa_printf(i32 %161, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %164

163:                                              ; preds = %150
  store i32 0, i32* %12, align 4
  br label %164

164:                                              ; preds = %163, %157, %149
  %165 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %165)
  %166 = load i32, i32* %12, align 4
  switch i32 %166, label %235 [
    i32 0, label %167
    i32 1, label %233
  ]

167:                                              ; preds = %164
  br label %168

168:                                              ; preds = %167, %125
  %169 = load i32, i32* %8, align 4
  %170 = load i32, i32* @TEAP_CRYPTO_BINDING_EMSK_CMAC, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %220

176:                                              ; preds = %172, %168
  %177 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %178 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %220

181:                                              ; preds = %176
  %182 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %183 = zext i32 %182 to i64
  %184 = call i8* @llvm.stacksave()
  store i8* %184, i8** %13, align 8
  %185 = alloca i32, i64 %183, align 16
  store i64 %183, i64* %14, align 8
  %186 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %187 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %190 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %191 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %190, i32 0, i32 5
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %194 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %197 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @eap_teap_compound_mac(i32 %188, %struct.teap_tlv_crypto_binding* %189, i32 %192, i32 %195, i32 %198, i32* %185)
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %181
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %216

202:                                              ; preds = %181
  %203 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %6, align 8
  %204 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %207 = call i64 @os_memcmp_const(i32* %185, i32* %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %215

209:                                              ; preds = %202
  %210 = load i32, i32* @MSG_DEBUG, align 4
  %211 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %212 = call i32 @wpa_hexdump(i32 %210, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0), i32* %185, i32 %211)
  %213 = load i32, i32* @MSG_INFO, align 4
  %214 = call i32 (i32, i8*, ...) @wpa_printf(i32 %213, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %216

215:                                              ; preds = %202
  store i32 0, i32* %12, align 4
  br label %216

216:                                              ; preds = %215, %209, %201
  %217 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %217)
  %218 = load i32, i32* %12, align 4
  switch i32 %218, label %235 [
    i32 0, label %219
    i32 1, label %233
  ]

219:                                              ; preds = %216
  br label %220

220:                                              ; preds = %219, %176, %172
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @TEAP_CRYPTO_BINDING_EMSK_CMAC, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %232

224:                                              ; preds = %220
  %225 = load %struct.eap_teap_data*, %struct.eap_teap_data** %5, align 8
  %226 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %225, i32 0, i32 2
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %224
  %230 = load i32, i32* @MSG_INFO, align 4
  %231 = call i32 (i32, i8*, ...) @wpa_printf(i32 %230, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.12, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %233

232:                                              ; preds = %224, %220
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %232, %229, %216, %164, %118, %84, %76, %61
  %234 = load i32, i32* %4, align 4
  ret i32 %234

235:                                              ; preds = %216, %164
  unreachable
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @eap_teap_compound_mac(i32, %struct.teap_tlv_crypto_binding*, i32, i32, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
