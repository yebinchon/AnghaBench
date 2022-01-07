; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_tlv_add_cryptobinding.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_peap.c_eap_tlv_add_cryptobinding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_peap_data = type { i32, i32, i32*, i32 }
%struct.wpabuf = type { i32 }

@EAP_TYPE_PEAP = common dso_local global i32 0, align 4
@EAP_TLV_CRYPTO_BINDING_TLV = common dso_local global i32 0, align 4
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EAP-PEAP: Compound_MAC CMK\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"EAP-PEAP: Compound_MAC data 1\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"EAP-PEAP: Compound_MAC data 2\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"EAP-PEAP: Compound_MAC\00", align 1
@SHA1_MAC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_peap_data*, %struct.wpabuf*)* @eap_tlv_add_cryptobinding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_tlv_add_cryptobinding(%struct.eap_sm* %0, %struct.eap_peap_data* %1, %struct.wpabuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_peap_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i32*], align 16
  %11 = alloca [2 x i64], align 16
  %12 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_peap_data* %1, %struct.eap_peap_data** %6, align 8
  store %struct.wpabuf* %2, %struct.wpabuf** %7, align 8
  %13 = load i32, i32* @EAP_TYPE_PEAP, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %15 = call i32* @wpabuf_put(%struct.wpabuf* %14, i32 0)
  %16 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  store i32* %15, i32** %16, align 16
  %17 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  store i64 60, i64* %17, align 16
  %18 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  store i32* %9, i32** %18, align 8
  %19 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  store i64 1, i64* %19, align 8
  %20 = load i32, i32* @EAP_TLV_CRYPTO_BINDING_TLV, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @wpabuf_put_be16(%struct.wpabuf* %21, i32 %22)
  %24 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %25 = call i32 @wpabuf_put_be16(%struct.wpabuf* %24, i32 56)
  %26 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %27 = call i32 @wpabuf_put_u8(%struct.wpabuf* %26, i32 0)
  %28 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %29 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %30 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @wpabuf_put_u8(%struct.wpabuf* %28, i32 %31)
  %33 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %34 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %35 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @wpabuf_put_u8(%struct.wpabuf* %33, i32 %36)
  %38 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %39 = call i32 @wpabuf_put_u8(%struct.wpabuf* %38, i32 1)
  %40 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %41 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %42 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @wpabuf_put_data(%struct.wpabuf* %40, i32 %43, i32 32)
  %45 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %46 = call i32* @wpabuf_put(%struct.wpabuf* %45, i32 20)
  store i32* %46, i32** %8, align 8
  %47 = load i32, i32* @MSG_MSGDUMP, align 4
  %48 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %49 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @wpa_hexdump(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* %50, i64 20)
  %52 = load i32, i32* @MSG_MSGDUMP, align 4
  %53 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %54 = load i32*, i32** %53, align 16
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %56 = load i64, i64* %55, align 16
  %57 = call i32 @wpa_hexdump(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %54, i64 %56)
  %58 = load i32, i32* @MSG_MSGDUMP, align 4
  %59 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @wpa_hexdump(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32* %60, i64 %62)
  %64 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %65 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds [2 x i32*], [2 x i32*]* %10, i64 0, i64 0
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 0, i64 0
  %69 = load i32*, i32** %8, align 8
  %70 = call i64 @hmac_sha1_vector(i32* %66, i32 20, i32 2, i32** %67, i64* %68, i32* %69)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %80

73:                                               ; preds = %3
  %74 = load i32, i32* @MSG_MSGDUMP, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i64, i64* @SHA1_MAC_LEN, align 8
  %77 = call i32 @wpa_hexdump(i32 %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %75, i64 %76)
  %78 = load %struct.eap_peap_data*, %struct.eap_peap_data** %6, align 8
  %79 = getelementptr inbounds %struct.eap_peap_data, %struct.eap_peap_data* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %73, %72
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32* @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_be16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_u8(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_data(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @hmac_sha1_vector(i32*, i32, i32, i32**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
