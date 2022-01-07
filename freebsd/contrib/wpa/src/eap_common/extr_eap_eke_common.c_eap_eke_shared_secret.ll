; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_shared_secret.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_shared_secret.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_session = type { i64, i64, i32*, i32, i32 }
%struct.dh_group = type { i64, i32, i32* }

@EAP_EKE_MAX_HASH_LEN = common dso_local global i32 0, align 4
@EAP_EKE_MAX_DH_LEN = common dso_local global i32 0, align 4
@EAP_EKE_ENCR_AES128_CBC = common dso_local global i64 0, align 8
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"EAP-EKE: Failed to decrypt DHComponent\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"EAP-EKE: Decrypted peer DH pubkey\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"EAP-EKE: SharedSecret\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_eke_shared_secret(%struct.eap_eke_session* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_eke_session*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.dh_group*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.eap_eke_session* %0, %struct.eap_eke_session** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @EAP_EKE_MAX_HASH_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @EAP_EKE_MAX_DH_LEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i32, i32* @EAP_EKE_MAX_DH_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %13, align 8
  %28 = load %struct.eap_eke_session*, %struct.eap_eke_session** %6, align 8
  %29 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.dh_group* @eap_eke_dh_group(i32 %30)
  store %struct.dh_group* %31, %struct.dh_group** %15, align 8
  %32 = load %struct.eap_eke_session*, %struct.eap_eke_session** %6, align 8
  %33 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EAP_EKE_ENCR_AES128_CBC, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %39 = icmp ne %struct.dh_group* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37, %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %136

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %47 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @os_memcpy(i32* %24, i32* %45, i64 %48)
  %50 = load i32*, i32** %7, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %53 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @aes_128_cbc_decrypt(i32* %50, i32* %51, i32* %24, i64 %54)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %41
  %58 = load i32, i32* @MSG_INFO, align 4
  %59 = call i32 @wpa_printf(i32 %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %136

60:                                               ; preds = %41
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %63 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @wpa_hexdump_key(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32* %24, i64 %64)
  %66 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %67 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %14, align 8
  %69 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %70 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %74 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %77 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %81 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %84 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @crypto_dh_derive_secret(i32 %72, i32 %75, i64 %78, i32* null, i32 0, i32* %79, i64 %82, i32* %24, i64 %85, i32* %27, i64* %14)
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %60
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %136

89:                                               ; preds = %60
  %90 = load i64, i64* %14, align 8
  %91 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %92 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ult i64 %90, %93
  br i1 %94, label %95, label %107

95:                                               ; preds = %89
  %96 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %97 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %14, align 8
  %100 = sub i64 %98, %99
  store i64 %100, i64* %17, align 8
  %101 = load i64, i64* %17, align 8
  %102 = getelementptr inbounds i32, i32* %27, i64 %101
  %103 = load i64, i64* %14, align 8
  %104 = call i32 @os_memmove(i32* %102, i32* %27, i64 %103)
  %105 = load i64, i64* %17, align 8
  %106 = call i32 @os_memset(i32* %27, i32 0, i64 %105)
  br label %107

107:                                              ; preds = %95, %89
  %108 = load %struct.eap_eke_session*, %struct.eap_eke_session** %6, align 8
  %109 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @os_memset(i32* %21, i32 0, i64 %110)
  %112 = load %struct.eap_eke_session*, %struct.eap_eke_session** %6, align 8
  %113 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.eap_eke_session*, %struct.eap_eke_session** %6, align 8
  %116 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.dh_group*, %struct.dh_group** %15, align 8
  %119 = getelementptr inbounds %struct.dh_group, %struct.dh_group* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.eap_eke_session*, %struct.eap_eke_session** %6, align 8
  %122 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = call i64 @eap_eke_prf(i32 %114, i32* %21, i64 %117, i32* %27, i64 %120, i32* null, i32 0, i32* %123)
  %125 = icmp slt i64 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %107
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %136

127:                                              ; preds = %107
  %128 = load i32, i32* @MSG_DEBUG, align 4
  %129 = load %struct.eap_eke_session*, %struct.eap_eke_session** %6, align 8
  %130 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.eap_eke_session*, %struct.eap_eke_session** %6, align 8
  %133 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = call i32 @wpa_hexdump_key(i32 %128, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32* %131, i64 %134)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %136

136:                                              ; preds = %127, %126, %88, %57, %40
  %137 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.dh_group* @eap_eke_dh_group(i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

declare dso_local i64 @aes_128_cbc_decrypt(i32*, i32*, i32*, i64) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i64) #2

declare dso_local i64 @crypto_dh_derive_secret(i32, i32, i64, i32*, i32, i32*, i64, i32*, i64, i32*, i64*) #2

declare dso_local i32 @os_memmove(i32*, i32*, i64) #2

declare dso_local i32 @os_memset(i32*, i32, i64) #2

declare dso_local i64 @eap_eke_prf(i32, i32*, i64, i32*, i64, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
