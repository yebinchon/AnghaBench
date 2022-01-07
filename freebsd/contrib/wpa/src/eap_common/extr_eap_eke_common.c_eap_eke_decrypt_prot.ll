; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_decrypt_prot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_decrypt_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_session = type { i64, i64, i32, i32 }

@EAP_EKE_MAX_HASH_LEN = common dso_local global i32 0, align 4
@EAP_EKE_ENCR_AES128_CBC = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@EAP_EKE_PRF_HMAC_SHA1 = common dso_local global i64 0, align 8
@SHA1_MAC_LEN = common dso_local global i64 0, align 8
@EAP_EKE_PRF_HMAC_SHA2_256 = common dso_local global i64 0, align 8
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"EAP-EKE: ICV mismatch in Prot() data\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"EAP-EKE: Not enough room for decrypted Prot() data\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"EAP-EKE: Failed to decrypt Prot() data\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"EAP-EKE: Decrypted Prot() data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_eke_decrypt_prot(%struct.eap_eke_session* %0, i32* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_eke_session*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.eap_eke_session* %0, %struct.eap_eke_session** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %17 = load i32, i32* @EAP_EKE_MAX_HASH_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %14, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %15, align 8
  %21 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %22 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @EAP_EKE_ENCR_AES128_CBC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i64, i64* @AES_BLOCK_SIZE, align 8
  store i64 %27, i64* %12, align 8
  br label %29

28:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %137

29:                                               ; preds = %26
  %30 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %31 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA1, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i64, i64* @SHA1_MAC_LEN, align 8
  store i64 %36, i64* %13, align 8
  br label %47

37:                                               ; preds = %29
  %38 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %39 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA2_256, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @SHA256_MAC_LEN, align 8
  store i64 %44, i64* %13, align 8
  br label %46

45:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %137

46:                                               ; preds = %43
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* %12, align 8
  %50 = mul i64 2, %49
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %50, %51
  %53 = icmp ult i64 %48, %52
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %13, align 8
  %57 = sub i64 %55, %56
  %58 = load i64, i64* %12, align 8
  %59 = urem i64 %57, %58
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %47
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %137

62:                                               ; preds = %54
  %63 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %64 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %67 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i64, i64* %12, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %12, align 8
  %74 = sub i64 %72, %73
  %75 = load i64, i64* %13, align 8
  %76 = sub i64 %74, %75
  %77 = call i64 @eap_eke_mac(i64 %65, i32 %68, i32* %71, i64 %76, i32* %20)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %62
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %137

80:                                               ; preds = %62
  %81 = load i32*, i32** %8, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i64, i64* %13, align 8
  %85 = sub i64 0, %84
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i64, i64* %13, align 8
  %88 = call i64 @os_memcmp_const(i32* %20, i32* %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load i32, i32* @MSG_INFO, align 4
  %92 = call i32 @wpa_printf(i32 %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %137

93:                                               ; preds = %80
  %94 = load i64*, i64** %11, align 8
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64, i64* %12, align 8
  %98 = sub i64 %96, %97
  %99 = load i64, i64* %13, align 8
  %100 = sub i64 %98, %99
  %101 = icmp ult i64 %95, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @MSG_INFO, align 4
  %104 = call i32 @wpa_printf(i32 %103, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %137

105:                                              ; preds = %93
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* %12, align 8
  %108 = sub i64 %106, %107
  %109 = load i64, i64* %13, align 8
  %110 = sub i64 %108, %109
  %111 = load i64*, i64** %11, align 8
  store i64 %110, i64* %111, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32*, i32** %8, align 8
  %114 = load i64, i64* %12, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i64*, i64** %11, align 8
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @os_memcpy(i32* %112, i32* %115, i64 %117)
  %119 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %120 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** %8, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = load i64*, i64** %11, align 8
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @aes_128_cbc_decrypt(i32 %121, i32* %122, i32* %123, i64 %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %105
  %129 = load i32, i32* @MSG_INFO, align 4
  %130 = call i32 @wpa_printf(i32 %129, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %137

131:                                              ; preds = %105
  %132 = load i32, i32* @MSG_DEBUG, align 4
  %133 = load i32*, i32** %10, align 8
  %134 = load i64*, i64** %11, align 8
  %135 = load i64, i64* %134, align 8
  %136 = call i32 @wpa_hexdump_key(i32 %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32* %133, i64 %135)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %16, align 4
  br label %137

137:                                              ; preds = %131, %128, %102, %90, %79, %61, %45, %28
  %138 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @eap_eke_mac(i64, i32, i32*, i64, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i64) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

declare dso_local i64 @aes_128_cbc_decrypt(i32, i32*, i32*, i64) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
