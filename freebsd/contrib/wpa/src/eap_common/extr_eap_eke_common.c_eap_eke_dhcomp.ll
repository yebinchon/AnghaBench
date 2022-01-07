; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_dhcomp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_dhcomp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_eke_session = type { i64, i32 }

@EAP_EKE_MAX_DH_LEN = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i32 0, align 4
@EAP_EKE_ENCR_AES128_CBC = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EAP-EKE: IV for Encr(key, y)\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"EAP-EKE: DHComponent = Encr(key, y)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_eke_dhcomp(%struct.eap_eke_session* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_eke_session*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.eap_eke_session* %0, %struct.eap_eke_session** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load i32, i32* @EAP_EKE_MAX_DH_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  %22 = load %struct.eap_eke_session*, %struct.eap_eke_session** %6, align 8
  %23 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @eap_eke_dh_len(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %69

29:                                               ; preds = %4
  %30 = load %struct.eap_eke_session*, %struct.eap_eke_session** %6, align 8
  %31 = getelementptr inbounds %struct.eap_eke_session, %struct.eap_eke_session* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EAP_EKE_ENCR_AES128_CBC, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %69

36:                                               ; preds = %29
  %37 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %38 = call i64 @random_get_bytes(i32* %21, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %69

41:                                               ; preds = %36
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %44 = call i32 @wpa_hexdump(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %21, i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @os_memcpy(i32* %18, i32* %45, i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i64 @aes_128_cbc_encrypt(i32* %48, i32* %21, i32* %18, i32 %49)
  %51 = icmp slt i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %69

53:                                               ; preds = %41
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %56 = call i32 @os_memcpy(i32* %54, i32* %21, i32 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @os_memcpy(i32* %60, i32* %18, i32 %61)
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %65, %66
  %68 = call i32 @wpa_hexdump(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %64, i32 %67)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %69

69:                                               ; preds = %53, %52, %40, %35, %28
  %70 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @eap_eke_dh_len(i32) #2

declare dso_local i64 @random_get_bytes(i32*, i32) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i64 @aes_128_cbc_encrypt(i32*, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
