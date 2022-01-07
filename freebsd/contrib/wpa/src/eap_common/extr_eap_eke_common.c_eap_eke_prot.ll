; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_prot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_session = type { i64, i64, i32, i32 }

@EAP_EKE_ENCR_AES128_CBC = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@EAP_EKE_PRF_HMAC_SHA1 = common dso_local global i64 0, align 8
@SHA1_MAC_LEN = common dso_local global i64 0, align 8
@EAP_EKE_PRF_HMAC_SHA2_256 = common dso_local global i64 0, align 8
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"EAP-EKE: Not enough room for Prot() data\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"EAP-EKE: IV for Prot()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_eke_prot(%struct.eap_eke_session* %0, i32* %1, i64 %2, i32* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_eke_session*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.eap_eke_session* %0, %struct.eap_eke_session** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64* %4, i64** %11, align 8
  %18 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %19 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @EAP_EKE_ENCR_AES128_CBC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %5
  %24 = load i64, i64* @AES_BLOCK_SIZE, align 8
  store i64 %24, i64* %12, align 8
  br label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %141

26:                                               ; preds = %23
  %27 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %28 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA1, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @SHA1_MAC_LEN, align 8
  store i64 %33, i64* %13, align 8
  br label %44

34:                                               ; preds = %26
  %35 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %36 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @EAP_EKE_PRF_HMAC_SHA2_256, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @SHA256_MAC_LEN, align 8
  store i64 %41, i64* %13, align 8
  br label %43

42:                                               ; preds = %34
  store i32 -1, i32* %6, align 4
  br label %141

43:                                               ; preds = %40
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %12, align 8
  %47 = urem i64 %45, %46
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %14, align 8
  %53 = sub i64 %51, %52
  store i64 %53, i64* %14, align 8
  br label %54

54:                                               ; preds = %50, %44
  %55 = load i64*, i64** %11, align 8
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %57, %58
  %60 = load i64, i64* %14, align 8
  %61 = add i64 %59, %60
  %62 = load i64, i64* %13, align 8
  %63 = add i64 %61, %62
  %64 = icmp ult i64 %56, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load i32, i32* @MSG_INFO, align 4
  %67 = call i32 @wpa_printf(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %141

68:                                               ; preds = %54
  %69 = load i32*, i32** %10, align 8
  store i32* %69, i32** %15, align 8
  %70 = load i32*, i32** %15, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i64 @random_get_bytes(i32* %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 -1, i32* %6, align 4
  br label %141

75:                                               ; preds = %68
  %76 = load i32*, i32** %15, align 8
  store i32* %76, i32** %16, align 8
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load i32*, i32** %16, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i32 @wpa_hexdump(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %78, i64 %79)
  %81 = load i64, i64* %12, align 8
  %82 = load i32*, i32** %15, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 %81
  store i32* %83, i32** %15, align 8
  %84 = load i32*, i32** %15, align 8
  store i32* %84, i32** %17, align 8
  %85 = load i32*, i32** %15, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = load i64, i64* %9, align 8
  %88 = call i32 @os_memcpy(i32* %85, i32* %86, i64 %87)
  %89 = load i64, i64* %9, align 8
  %90 = load i32*, i32** %15, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %89
  store i32* %91, i32** %15, align 8
  %92 = load i64, i64* %14, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %75
  %95 = load i32*, i32** %15, align 8
  %96 = load i64, i64* %14, align 8
  %97 = call i64 @random_get_bytes(i32* %95, i64 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  store i32 -1, i32* %6, align 4
  br label %141

100:                                              ; preds = %94
  %101 = load i64, i64* %14, align 8
  %102 = load i32*, i32** %15, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 %101
  store i32* %103, i32** %15, align 8
  br label %104

104:                                              ; preds = %100, %75
  %105 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %106 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = load i32*, i32** %17, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i64, i64* %14, align 8
  %112 = add i64 %110, %111
  %113 = call i64 @aes_128_cbc_encrypt(i32 %107, i32* %108, i32* %109, i64 %112)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %129, label %115

115:                                              ; preds = %104
  %116 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %117 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.eap_eke_session*, %struct.eap_eke_session** %7, align 8
  %120 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32*, i32** %17, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %14, align 8
  %125 = add i64 %123, %124
  %126 = load i32*, i32** %15, align 8
  %127 = call i64 @eap_eke_mac(i64 %118, i32 %121, i32* %122, i64 %125, i32* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %115, %104
  store i32 -1, i32* %6, align 4
  br label %141

130:                                              ; preds = %115
  %131 = load i64, i64* %13, align 8
  %132 = load i32*, i32** %15, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 %131
  store i32* %133, i32** %15, align 8
  %134 = load i32*, i32** %15, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = ptrtoint i32* %134 to i64
  %137 = ptrtoint i32* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sdiv exact i64 %138, 4
  %140 = load i64*, i64** %11, align 8
  store i64 %139, i64* %140, align 8
  store i32 0, i32* %6, align 4
  br label %141

141:                                              ; preds = %130, %129, %99, %74, %65, %42, %25
  %142 = load i32, i32* %6, align 4
  ret i32 %142
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @random_get_bytes(i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i64 @aes_128_cbc_encrypt(i32, i32*, i32*, i64) #1

declare dso_local i64 @eap_eke_mac(i64, i32, i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
