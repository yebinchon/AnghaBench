; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_compound_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_teap_common.c_eap_teap_compound_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.teap_tlv_crypto_binding = type { i32, i32, i32 }
%struct.wpabuf = type { i32 }

@EAP_TEAP_COMPOUND_MAC_LEN = common dso_local global i32 0, align 4
@EAP_TYPE_TEAP = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"EAP-TEAP: CMK for Compound MAC calculation\00", align 1
@EAP_TEAP_CMK_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"EAP-TEAP: BUFFER for Compound MAC calculation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_teap_compound_mac(i32 %0, %struct.teap_tlv_crypto_binding* %1, %struct.wpabuf* %2, %struct.wpabuf* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.teap_tlv_crypto_binding*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.teap_tlv_crypto_binding*, align 8
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.teap_tlv_crypto_binding* %1, %struct.teap_tlv_crypto_binding** %9, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %9, align 8
  %21 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @be_to_host16(i32 %22)
  %24 = sext i32 %23 to i64
  %25 = add i64 4, %24
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* %16, align 8
  %27 = add i64 %26, 1
  store i64 %27, i64* %17, align 8
  %28 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %29 = icmp ne %struct.wpabuf* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %6
  %31 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %32 = call i64 @wpabuf_len(%struct.wpabuf* %31)
  %33 = load i64, i64* %17, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %17, align 8
  br label %35

35:                                               ; preds = %30, %6
  %36 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %37 = icmp ne %struct.wpabuf* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %40 = call i64 @wpabuf_len(%struct.wpabuf* %39)
  %41 = load i64, i64* %17, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %17, align 8
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i64, i64* %17, align 8
  %45 = call i32* @os_malloc(i64 %44)
  store i32* %45, i32** %15, align 8
  %46 = load i32*, i32** %15, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  store i32 -1, i32* %7, align 4
  br label %126

49:                                               ; preds = %43
  %50 = load i32*, i32** %15, align 8
  store i32* %50, i32** %14, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %9, align 8
  %53 = load i64, i64* %16, align 8
  %54 = call i32 @os_memcpy(i32* %51, %struct.teap_tlv_crypto_binding* %52, i64 %53)
  %55 = load i64, i64* %16, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 %55
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = bitcast i32* %58 to %struct.teap_tlv_crypto_binding*
  store %struct.teap_tlv_crypto_binding* %59, %struct.teap_tlv_crypto_binding** %18, align 8
  %60 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %18, align 8
  %61 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %64 = call i32 @os_memset(i32 %62, i32 0, i32 %63)
  %65 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %18, align 8
  %66 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %69 = call i32 @os_memset(i32 %67, i32 0, i32 %68)
  %70 = load i32, i32* @EAP_TYPE_TEAP, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %14, align 8
  store i32 %70, i32* %71, align 4
  %73 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %74 = icmp ne %struct.wpabuf* %73, null
  br i1 %74, label %75, label %86

75:                                               ; preds = %49
  %76 = load i32*, i32** %14, align 8
  %77 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %78 = call %struct.teap_tlv_crypto_binding* @wpabuf_head(%struct.wpabuf* %77)
  %79 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %80 = call i64 @wpabuf_len(%struct.wpabuf* %79)
  %81 = call i32 @os_memcpy(i32* %76, %struct.teap_tlv_crypto_binding* %78, i64 %80)
  %82 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %83 = call i64 @wpabuf_len(%struct.wpabuf* %82)
  %84 = load i32*, i32** %14, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 %83
  store i32* %85, i32** %14, align 8
  br label %86

86:                                               ; preds = %75, %49
  %87 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %88 = icmp ne %struct.wpabuf* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load i32*, i32** %14, align 8
  %91 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %92 = call %struct.teap_tlv_crypto_binding* @wpabuf_head(%struct.wpabuf* %91)
  %93 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %94 = call i64 @wpabuf_len(%struct.wpabuf* %93)
  %95 = call i32 @os_memcpy(i32* %90, %struct.teap_tlv_crypto_binding* %92, i64 %94)
  %96 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %97 = call i64 @wpabuf_len(%struct.wpabuf* %96)
  %98 = load i32*, i32** %14, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 %97
  store i32* %99, i32** %14, align 8
  br label %100

100:                                              ; preds = %89, %86
  %101 = load i32*, i32** %14, align 8
  %102 = load i32*, i32** %15, align 8
  %103 = ptrtoint i32* %101 to i64
  %104 = ptrtoint i32* %102 to i64
  %105 = sub i64 %103, %104
  %106 = sdiv exact i64 %105, 4
  store i64 %106, i64* %17, align 8
  %107 = load i32, i32* @MSG_MSGDUMP, align 4
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* @EAP_TEAP_CMK_LEN, align 4
  %110 = call i32 @wpa_hexdump_key(i32 %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32* %108, i32 %109)
  %111 = load i32, i32* @MSG_MSGDUMP, align 4
  %112 = load i32*, i32** %15, align 8
  %113 = load i64, i64* %17, align 8
  %114 = call i32 @wpa_hexdump(i32 %111, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32* %112, i64 %113)
  %115 = load i32, i32* %8, align 4
  %116 = load i32*, i32** %12, align 8
  %117 = load i32, i32* @EAP_TEAP_CMK_LEN, align 4
  %118 = load i32*, i32** %15, align 8
  %119 = load i64, i64* %17, align 8
  %120 = load i32*, i32** %13, align 8
  %121 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %122 = call i32 @eap_teap_tls_mac(i32 %115, i32* %116, i32 %117, i32* %118, i64 %119, i32* %120, i32 %121)
  store i32 %122, i32* %19, align 4
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @os_free(i32* %123)
  %125 = load i32, i32* %19, align 4
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %100, %48
  %127 = load i32, i32* %7, align 4
  ret i32 %127
}

declare dso_local i32 @be_to_host16(i32) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, %struct.teap_tlv_crypto_binding*, i64) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local %struct.teap_tlv_crypto_binding* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @eap_teap_tls_mac(i32, i32*, i32, i32*, i64, i32*, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
