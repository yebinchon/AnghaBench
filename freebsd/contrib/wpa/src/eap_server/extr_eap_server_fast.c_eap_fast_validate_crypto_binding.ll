; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_validate_crypto_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_validate_crypto_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_data = type { i32*, i32 }
%struct.eap_tlv_crypto_binding_tlv = type { i64, i64, i64, i32*, i32* }

@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"EAP-FAST: Reply Crypto-Binding TLV: Version %d Received Version %d SubType %d\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"EAP-FAST: NONCE\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EAP-FAST: Compound MAC\00", align 1
@EAP_FAST_VERSION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [79 x i8] c"EAP-FAST: Unexpected version in Crypto-Binding: version %d received_version %d\00", align 1
@EAP_TLV_CRYPTO_BINDING_SUBTYPE_RESPONSE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [51 x i8] c"EAP-FAST: Unexpected subtype in Crypto-Binding: %d\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"EAP-FAST: Invalid nonce in Crypto-Binding\00", align 1
@.str.6 = private unnamed_addr constant [58 x i8] c"EAP-FAST: Crypto-Binding TLV for Compound MAC calculation\00", align 1
@EAP_FAST_CMK_LEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"EAP-FAST: Calculated Compound MAC\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"EAP-FAST: Compound MAC did not match\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_fast_data*, %struct.eap_tlv_crypto_binding_tlv*, i64)* @eap_fast_validate_crypto_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_validate_crypto_binding(%struct.eap_fast_data* %0, %struct.eap_tlv_crypto_binding_tlv* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_fast_data*, align 8
  %6 = alloca %struct.eap_tlv_crypto_binding_tlv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.eap_fast_data* %0, %struct.eap_fast_data** %5, align 8
  store %struct.eap_tlv_crypto_binding_tlv* %1, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* @SHA1_MAC_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %8, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %9, align 8
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %17 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %20 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %23 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %18, i64 %21, i64 %24)
  %26 = load i32, i32* @MSG_MSGDUMP, align 4
  %27 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %28 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @wpa_hexdump(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %29, i32 8)
  %31 = load i32, i32* @MSG_MSGDUMP, align 4
  %32 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %33 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @wpa_hexdump(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %34, i32 8)
  %36 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %37 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EAP_FAST_VERSION, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %3
  %42 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %43 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EAP_FAST_VERSION, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41, %3
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %50 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %53 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.3, i64 0, i64 0), i64 %51, i64 %54)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %141

56:                                               ; preds = %41
  %57 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %58 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EAP_TLV_CRYPTO_BINDING_SUBTYPE_RESPONSE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %65 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i64 %66)
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %141

68:                                               ; preds = %56
  %69 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %70 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %73 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %72, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @os_memcmp_const(i32* %71, i32* %74, i32 31)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %68
  %78 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %79 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 31
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, 1
  %84 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %85 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %84, i32 0, i32 3
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 31
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %83, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %77, %68
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %141

93:                                               ; preds = %77
  %94 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %95 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %94, i32 0, i32 4
  %96 = load i32*, i32** %95, align 8
  %97 = mul nuw i64 4, %12
  %98 = trunc i64 %97 to i32
  %99 = call i32 @os_memcpy(i32* %14, i32* %96, i32 %98)
  %100 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %101 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %100, i32 0, i32 4
  %102 = load i32*, i32** %101, align 8
  %103 = mul nuw i64 4, %12
  %104 = trunc i64 %103 to i32
  %105 = call i32 @os_memset(i32* %102, i32 0, i32 %104)
  %106 = load i32, i32* @MSG_MSGDUMP, align 4
  %107 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %108 = bitcast %struct.eap_tlv_crypto_binding_tlv* %107 to i32*
  %109 = load i64, i64* %7, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 @wpa_hexdump(i32 %106, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i32* %108, i32 %110)
  %112 = load %struct.eap_fast_data*, %struct.eap_fast_data** %5, align 8
  %113 = getelementptr inbounds %struct.eap_fast_data, %struct.eap_fast_data* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @EAP_FAST_CMK_LEN, align 4
  %116 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %117 = bitcast %struct.eap_tlv_crypto_binding_tlv* %116 to i32*
  %118 = load i64, i64* %7, align 8
  %119 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %120 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %119, i32 0, i32 4
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @hmac_sha1(i32 %114, i32 %115, i32* %117, i64 %118, i32* %121)
  %123 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %124 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %123, i32 0, i32 4
  %125 = load i32*, i32** %124, align 8
  %126 = mul nuw i64 4, %12
  %127 = trunc i64 %126 to i32
  %128 = call i64 @os_memcmp_const(i32* %14, i32* %125, i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %140

130:                                              ; preds = %93
  %131 = load i32, i32* @MSG_MSGDUMP, align 4
  %132 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %6, align 8
  %133 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = mul nuw i64 4, %12
  %136 = trunc i64 %135 to i32
  %137 = call i32 @wpa_hexdump(i32 %131, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32* %134, i32 %136)
  %138 = load i32, i32* @MSG_INFO, align 4
  %139 = call i32 (i32, i8*, ...) @wpa_printf(i32 %138, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %141

140:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  store i32 1, i32* %10, align 4
  br label %141

141:                                              ; preds = %140, %130, %90, %62, %47
  %142 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %142)
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

declare dso_local i32 @hmac_sha1(i32, i32, i32*, i64, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
