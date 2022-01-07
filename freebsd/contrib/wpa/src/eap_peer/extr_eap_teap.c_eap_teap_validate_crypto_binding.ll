; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_validate_crypto_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_validate_crypto_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_data = type { i64 }
%struct.teap_tlv_crypto_binding = type { i32, i64, i64, i32*, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"EAP-TEAP: Crypto-Binding TLV: Version %u Received Version %u Flags %u Sub-Type %u\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"EAP-TEAP: Nonce\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"EAP-TEAP: EMSK Compound MAC\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"EAP-TEAP: MSK Compound MAC\00", align 1
@EAP_TEAP_VERSION = common dso_local global i64 0, align 8
@TEAP_CRYPTO_BINDING_SUBTYPE_REQUEST = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [116 x i8] c"EAP-TEAP: Invalid Version/Flags/Sub-Type in Crypto-Binding TLV: Version %u Received Version %u Flags %u Sub-Type %u\00", align 1
@EAP_TEAP_NONCE_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [54 x i8] c"EAP-TEAP: Invalid Crypto-Binding TLV Nonce in request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_teap_data*, %struct.teap_tlv_crypto_binding*)* @eap_teap_validate_crypto_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_validate_crypto_binding(%struct.eap_teap_data* %0, %struct.teap_tlv_crypto_binding* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.eap_teap_data*, align 8
  %5 = alloca %struct.teap_tlv_crypto_binding*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.eap_teap_data* %0, %struct.eap_teap_data** %4, align 8
  store %struct.teap_tlv_crypto_binding* %1, %struct.teap_tlv_crypto_binding** %5, align 8
  %8 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %9 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = and i32 %10, 15
  store i32 %11, i32* %7, align 4
  %12 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %13 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %18 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %21 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %19, i64 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @MSG_MSGDUMP, align 4
  %27 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %28 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %27, i32 0, i32 3
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @wpa_hexdump(i32 %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %29, i32 8)
  %31 = load i32, i32* @MSG_MSGDUMP, align 4
  %32 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %33 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %32, i32 0, i32 4
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @wpa_hexdump(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32* %34, i32 8)
  %36 = load i32, i32* @MSG_MSGDUMP, align 4
  %37 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %38 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %37, i32 0, i32 5
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @wpa_hexdump(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32* %39, i32 8)
  %41 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %42 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @EAP_TEAP_VERSION, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %64, label %46

46:                                               ; preds = %2
  %47 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %48 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.eap_teap_data*, %struct.eap_teap_data** %4, align 8
  %51 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %49, %52
  br i1 %53, label %64, label %54

54:                                               ; preds = %46
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @TEAP_CRYPTO_BINDING_SUBTYPE_REQUEST, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 1
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = icmp sgt i32 %62, 3
  br i1 %63, label %64, label %75

64:                                               ; preds = %61, %58, %54, %46, %2
  %65 = load i32, i32* @MSG_INFO, align 4
  %66 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %67 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %70 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str.4, i64 0, i64 0), i64 %68, i64 %71, i32 %72, i32 %73)
  store i32 -1, i32* %3, align 4
  br label %90

75:                                               ; preds = %61
  %76 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %5, align 8
  %77 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @EAP_TEAP_NONCE_LEN, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 1
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %75
  %87 = load i32, i32* @MSG_INFO, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %90

89:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %89, %86, %64
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
