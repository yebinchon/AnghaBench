; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_validate_crypto_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_validate_crypto_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_tlv_crypto_binding_tlv = type { i64, i64, i64, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"EAP-FAST: Crypto-Binding TLV: Version %d Received Version %d SubType %d\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"EAP-FAST: NONCE\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"EAP-FAST: Compound MAC\00", align 1
@EAP_FAST_VERSION = common dso_local global i64 0, align 8
@EAP_TLV_CRYPTO_BINDING_SUBTYPE_REQUEST = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [99 x i8] c"EAP-FAST: Invalid version/subtype in Crypto-Binding TLV: Version %d Received Version %d SubType %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_tlv_crypto_binding_tlv*)* @eap_fast_validate_crypto_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_validate_crypto_binding(%struct.eap_tlv_crypto_binding_tlv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.eap_tlv_crypto_binding_tlv*, align 8
  store %struct.eap_tlv_crypto_binding_tlv* %0, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %4 = load i32, i32* @MSG_DEBUG, align 4
  %5 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %6 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %9 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %12 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @wpa_printf(i32 %4, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %7, i64 %10, i64 %13)
  %15 = load i32, i32* @MSG_MSGDUMP, align 4
  %16 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %17 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wpa_hexdump(i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %18, i32 4)
  %20 = load i32, i32* @MSG_MSGDUMP, align 4
  %21 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %22 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @wpa_hexdump(i32 %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 4)
  %25 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %26 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EAP_FAST_VERSION, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %42, label %30

30:                                               ; preds = %1
  %31 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %32 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @EAP_FAST_VERSION, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %38 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EAP_TLV_CRYPTO_BINDING_SUBTYPE_REQUEST, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36, %30, %1
  %43 = load i32, i32* @MSG_INFO, align 4
  %44 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %45 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %48 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.eap_tlv_crypto_binding_tlv*, %struct.eap_tlv_crypto_binding_tlv** %3, align 8
  %51 = getelementptr inbounds %struct.eap_tlv_crypto_binding_tlv, %struct.eap_tlv_crypto_binding_tlv* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @wpa_printf(i32 %43, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.3, i64 0, i64 0), i64 %46, i64 %49, i64 %52)
  store i32 -1, i32* %2, align 4
  br label %55

54:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @wpa_printf(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
