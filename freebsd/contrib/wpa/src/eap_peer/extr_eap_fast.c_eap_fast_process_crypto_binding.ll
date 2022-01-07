; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_process_crypto_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_process_crypto_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_sm = type { i32 }
%struct.eap_fast_data = type { i32, i32*, i32, i64, i32 }
%struct.eap_method_ret = type { i32, i32 }
%struct.eap_tlv_crypto_binding_tlv = type { i32* }

@EAP_FAST_CMK_LEN = common dso_local global i32 0, align 4
@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"EAP-FAST: Crypto-Binding TLV for Compound MAC calculation\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"EAP-FAST: Received Compound MAC\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"EAP-FAST: Calculated Compound MAC\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"EAP-FAST: Compound MAC did not match\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"EAP-FAST: Failed to generate MSK\00", align 1
@METHOD_DONE = common dso_local global i32 0, align 4
@DECISION_FAIL = common dso_local global i32 0, align 4
@EAP_TYPE_FAST = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"EAP-FAST: Derived Session-Id\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"EAP-FAST: Failed to derive Session-Id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.eap_sm*, %struct.eap_fast_data*, %struct.eap_method_ret*, %struct.eap_tlv_crypto_binding_tlv*, i64)* @eap_fast_process_crypto_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @eap_fast_process_crypto_binding(%struct.eap_sm* %0, %struct.eap_fast_data* %1, %struct.eap_method_ret* %2, %struct.eap_tlv_crypto_binding_tlv* %3, i64 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_fast_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.eap_tlv_crypto_binding_tlv*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_fast_data* %1, %struct.eap_fast_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store %struct.eap_tlv_crypto_binding_tlv* %3, %struct.eap_tlv_crypto_binding_tlv** %10, align 8
  store i64 %4, i64* %11, align 8
  %20 = load i32, i32* @EAP_FAST_CMK_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* @SHA1_MAC_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %16, align 8
  %27 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %10, align 8
  %28 = call i64 @eap_fast_validate_crypto_binding(%struct.eap_tlv_crypto_binding_tlv* %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %5
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %19, align 4
  br label %176

31:                                               ; preds = %5
  %32 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %33 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %34 = call i64 @eap_fast_get_cmk(%struct.eap_sm* %32, %struct.eap_fast_data* %33, i32* %23)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %19, align 4
  br label %176

37:                                               ; preds = %31
  %38 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %10, align 8
  %39 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = mul nuw i64 4, %25
  %42 = trunc i64 %41 to i32
  %43 = call i32 @os_memcpy(i32* %26, i32* %40, i32 %42)
  %44 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %10, align 8
  %45 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = mul nuw i64 4, %25
  %48 = trunc i64 %47 to i32
  %49 = call i32 @os_memset(i32* %46, i32 0, i32 %48)
  %50 = load i32, i32* @MSG_MSGDUMP, align 4
  %51 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %10, align 8
  %52 = bitcast %struct.eap_tlv_crypto_binding_tlv* %51 to i32*
  %53 = load i64, i64* %11, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @wpa_hexdump(i32 %50, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32* %52, i32 %54)
  %56 = load i32, i32* @EAP_FAST_CMK_LEN, align 4
  %57 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %10, align 8
  %58 = bitcast %struct.eap_tlv_crypto_binding_tlv* %57 to i32*
  %59 = load i64, i64* %11, align 8
  %60 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %10, align 8
  %61 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @hmac_sha1(i32* %23, i32 %56, i32* %58, i64 %59, i32* %62)
  %64 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %10, align 8
  %65 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = mul nuw i64 4, %25
  %68 = trunc i64 %67 to i32
  %69 = call i32 @os_memcmp_const(i32* %26, i32* %66, i32 %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* @MSG_MSGDUMP, align 4
  %71 = mul nuw i64 4, %25
  %72 = trunc i64 %71 to i32
  %73 = call i32 @wpa_hexdump(i32 %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32* %26, i32 %72)
  %74 = load i32, i32* @MSG_MSGDUMP, align 4
  %75 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %10, align 8
  %76 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = mul nuw i64 4, %25
  %79 = trunc i64 %78 to i32
  %80 = call i32 @wpa_hexdump(i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32* %77, i32 %79)
  %81 = load i32, i32* %17, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %37
  %84 = load i32, i32* @MSG_INFO, align 4
  %85 = call i32 @wpa_printf(i32 %84, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %86 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %10, align 8
  %87 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = mul nuw i64 4, %25
  %90 = trunc i64 %89 to i32
  %91 = call i32 @os_memcpy(i32* %88, i32* %26, i32 %90)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %19, align 4
  br label %176

92:                                               ; preds = %37
  store i64 8, i64* %18, align 8
  %93 = load i64, i64* %18, align 8
  %94 = call %struct.wpabuf* @wpabuf_alloc(i64 %93)
  store %struct.wpabuf* %94, %struct.wpabuf** %12, align 8
  %95 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %96 = icmp eq %struct.wpabuf* %95, null
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %19, align 4
  br label %176

98:                                               ; preds = %92
  %99 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %100 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %98
  %104 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %105 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %125

108:                                              ; preds = %103
  %109 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %110 = call i64 @eap_fast_derive_msk(%struct.eap_fast_data* %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load i32, i32* @MSG_INFO, align 4
  %114 = call i32 @wpa_printf(i32 %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %115 = load i32, i32* @METHOD_DONE, align 4
  %116 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %117 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @DECISION_FAIL, align 4
  %119 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %120 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %122 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %121, i32 0, i32 3
  store i64 0, i64* %122, align 8
  %123 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %124 = call i32 @wpabuf_clear_free(%struct.wpabuf* %123)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %19, align 4
  br label %176

125:                                              ; preds = %108, %103, %98
  %126 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %127 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %168, label %130

130:                                              ; preds = %125
  %131 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %132 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %168

135:                                              ; preds = %130
  %136 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %137 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @os_free(i32* %138)
  %140 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %141 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %142 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %141, i32 0, i32 2
  %143 = load i32, i32* @EAP_TYPE_FAST, align 4
  %144 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %145 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %144, i32 0, i32 0
  %146 = call i32* @eap_peer_tls_derive_session_id(%struct.eap_sm* %140, i32* %142, i32 %143, i32* %145)
  %147 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %148 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %147, i32 0, i32 1
  store i32* %146, i32** %148, align 8
  %149 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %150 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %162

153:                                              ; preds = %135
  %154 = load i32, i32* @MSG_DEBUG, align 4
  %155 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %156 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.eap_fast_data*, %struct.eap_fast_data** %8, align 8
  %159 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @wpa_hexdump(i32 %154, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32* %157, i32 %160)
  br label %167

162:                                              ; preds = %135
  %163 = load i32, i32* @MSG_ERROR, align 4
  %164 = call i32 @wpa_printf(i32 %163, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %165 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %166 = call i32 @wpabuf_clear_free(%struct.wpabuf* %165)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  store i32 1, i32* %19, align 4
  br label %176

167:                                              ; preds = %153
  br label %168

168:                                              ; preds = %167, %130, %125
  %169 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %170 = call i32* @wpabuf_put(%struct.wpabuf* %169, i32 8)
  store i32* %170, i32** %13, align 8
  %171 = load i32*, i32** %13, align 8
  %172 = bitcast i32* %171 to %struct.eap_tlv_crypto_binding_tlv*
  %173 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %10, align 8
  %174 = call i32 @eap_fast_write_crypto_binding(%struct.eap_tlv_crypto_binding_tlv* %172, %struct.eap_tlv_crypto_binding_tlv* %173, i32* %23)
  %175 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %175, %struct.wpabuf** %6, align 8
  store i32 1, i32* %19, align 4
  br label %176

176:                                              ; preds = %168, %162, %112, %97, %83, %36, %30
  %177 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %177)
  %178 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %178
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @eap_fast_validate_crypto_binding(%struct.eap_tlv_crypto_binding_tlv*) #2

declare dso_local i64 @eap_fast_get_cmk(%struct.eap_sm*, %struct.eap_fast_data*, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @hmac_sha1(i32*, i32, i32*, i64, i32*) #2

declare dso_local i32 @os_memcmp_const(i32*, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #2

declare dso_local i64 @eap_fast_derive_msk(%struct.eap_fast_data*) #2

declare dso_local i32 @wpabuf_clear_free(%struct.wpabuf*) #2

declare dso_local i32 @os_free(i32*) #2

declare dso_local i32* @eap_peer_tls_derive_session_id(%struct.eap_sm*, i32*, i32, i32*) #2

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #2

declare dso_local i32 @eap_fast_write_crypto_binding(%struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
