; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_write_crypto_binding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_teap.c_eap_teap_write_crypto_binding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_teap_data = type { i32, i32, i32, i32 }
%struct.teap_tlv_crypto_binding = type { i32, i32, i32, i32, i32, i32, i8*, i8* }

@TEAP_TLV_MANDATORY = common dso_local global i32 0, align 4
@TEAP_TLV_CRYPTO_BINDING = common dso_local global i32 0, align 4
@EAP_TEAP_VERSION = common dso_local global i32 0, align 4
@TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC = common dso_local global i32 0, align 4
@TEAP_CRYPTO_BINDING_MSK_CMAC = common dso_local global i32 0, align 4
@TEAP_CRYPTO_BINDING_SUBTYPE_RESPONSE = common dso_local global i32 0, align 4
@EAP_TEAP_COMPOUND_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [87 x i8] c"EAP-TEAP: Reply Crypto-Binding TLV: Version %u Received Version %u Flags %u SubType %u\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"EAP-TEAP: Nonce\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"EAP-TEAP: EMSK Compound MAC\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"EAP-TEAP: MSK Compound MAC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_teap_data*, %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding*, i32*, i32*)* @eap_teap_write_crypto_binding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_teap_write_crypto_binding(%struct.eap_teap_data* %0, %struct.teap_tlv_crypto_binding* %1, %struct.teap_tlv_crypto_binding* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_teap_data*, align 8
  %8 = alloca %struct.teap_tlv_crypto_binding*, align 8
  %9 = alloca %struct.teap_tlv_crypto_binding*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.eap_teap_data* %0, %struct.eap_teap_data** %7, align 8
  store %struct.teap_tlv_crypto_binding* %1, %struct.teap_tlv_crypto_binding** %8, align 8
  store %struct.teap_tlv_crypto_binding* %2, %struct.teap_tlv_crypto_binding** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* @TEAP_TLV_MANDATORY, align 4
  %15 = load i32, i32* @TEAP_TLV_CRYPTO_BINDING, align 4
  %16 = or i32 %14, %15
  %17 = call i8* @host_to_be16(i32 %16)
  %18 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %19 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = call i8* @host_to_be16(i32 36)
  %21 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %22 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @EAP_TEAP_VERSION, align 4
  %24 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %25 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 4
  %26 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %27 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %30 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i32, i32* @TEAP_CRYPTO_BINDING_EMSK_AND_MSK_CMAC, align 4
  br label %37

35:                                               ; preds = %5
  %36 = load i32, i32* @TEAP_CRYPTO_BINDING_MSK_CMAC, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* @TEAP_CRYPTO_BINDING_SUBTYPE_RESPONSE, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %13, align 4
  %41 = shl i32 %40, 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %45 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %47 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %9, align 8
  %50 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @os_memcpy(i32 %48, i32 %51, i32 4)
  %53 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %54 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @inc_byte_array(i32 %55, i32 4)
  %57 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %58 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %61 = call i32 @os_memset(i32 %59, i32 0, i32 %60)
  %62 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %63 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @EAP_TEAP_COMPOUND_MAC_LEN, align 4
  %66 = call i32 @os_memset(i32 %64, i32 0, i32 %65)
  %67 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %68 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %71 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %72 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %75 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %10, align 8
  %78 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %79 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @eap_teap_compound_mac(i32 %69, %struct.teap_tlv_crypto_binding* %70, i32 %73, i32 %76, i32* %77, i32 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %131

84:                                               ; preds = %37
  %85 = load i32*, i32** %11, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %105

87:                                               ; preds = %84
  %88 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %89 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %92 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %93 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.eap_teap_data*, %struct.eap_teap_data** %7, align 8
  %96 = getelementptr inbounds %struct.eap_teap_data, %struct.eap_teap_data* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32*, i32** %11, align 8
  %99 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %100 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @eap_teap_compound_mac(i32 %90, %struct.teap_tlv_crypto_binding* %91, i32 %94, i32 %97, i32* %98, i32 %101)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %87
  store i32 -1, i32* %6, align 4
  br label %131

105:                                              ; preds = %87, %84
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %108 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %111 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @wpa_printf(i32 %106, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %112, i32 %113, i32 %114)
  %116 = load i32, i32* @MSG_MSGDUMP, align 4
  %117 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %118 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @wpa_hexdump(i32 %116, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 4)
  %121 = load i32, i32* @MSG_MSGDUMP, align 4
  %122 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %123 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @wpa_hexdump(i32 %121, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 4)
  %126 = load i32, i32* @MSG_MSGDUMP, align 4
  %127 = load %struct.teap_tlv_crypto_binding*, %struct.teap_tlv_crypto_binding** %8, align 8
  %128 = getelementptr inbounds %struct.teap_tlv_crypto_binding, %struct.teap_tlv_crypto_binding* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @wpa_hexdump(i32 %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %129, i32 4)
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %105, %104, %83
  %132 = load i32, i32* %6, align 4
  ret i32 %132
}

declare dso_local i8* @host_to_be16(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i32) #1

declare dso_local i32 @inc_byte_array(i32, i32) #1

declare dso_local i32 @os_memset(i32, i32, i32) #1

declare dso_local i64 @eap_teap_compound_mac(i32, %struct.teap_tlv_crypto_binding*, i32, i32, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
