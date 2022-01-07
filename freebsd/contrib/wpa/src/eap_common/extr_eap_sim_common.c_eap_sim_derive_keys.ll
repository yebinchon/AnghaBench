; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_derive_keys.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_derive_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EAP_SIM_K_ENCR_LEN = common dso_local global i32 0, align 4
@EAP_SIM_K_AUT_LEN = common dso_local global i32 0, align 4
@EAP_SIM_KEYING_DATA_LEN = common dso_local global i32 0, align 4
@EAP_EMSK_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"EAP-SIM: Failed to derive keys\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"EAP-SIM: K_encr\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"EAP-SIM: K_aut\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"EAP-SIM: keying material (MSK)\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"EAP-SIM: EMSK\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eap_sim_derive_keys(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* @EAP_SIM_K_ENCR_LEN, align 4
  %17 = load i32, i32* @EAP_SIM_K_AUT_LEN, align 4
  %18 = add nsw i32 %16, %17
  %19 = load i32, i32* @EAP_SIM_KEYING_DATA_LEN, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* @EAP_EMSK_LEN, align 4
  %22 = add nsw i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %12, align 8
  %25 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %13, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = mul nuw i64 4, %23
  %28 = trunc i64 %27 to i32
  %29 = call i64 @eap_sim_prf(i32* %26, i32* %25, i32 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %5
  %32 = load i32, i32* @MSG_ERROR, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %82

34:                                               ; preds = %5
  store i32* %25, i32** %14, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = load i32, i32* @EAP_SIM_K_ENCR_LEN, align 4
  %38 = call i32 @os_memcpy(i32* %35, i32* %36, i32 %37)
  %39 = load i32, i32* @EAP_SIM_K_ENCR_LEN, align 4
  %40 = load i32*, i32** %14, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %9, align 8
  %44 = load i32*, i32** %14, align 8
  %45 = load i32, i32* @EAP_SIM_K_AUT_LEN, align 4
  %46 = call i32 @os_memcpy(i32* %43, i32* %44, i32 %45)
  %47 = load i32, i32* @EAP_SIM_K_AUT_LEN, align 4
  %48 = load i32*, i32** %14, align 8
  %49 = sext i32 %47 to i64
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32* %50, i32** %14, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = load i32, i32* @EAP_SIM_KEYING_DATA_LEN, align 4
  %54 = call i32 @os_memcpy(i32* %51, i32* %52, i32 %53)
  %55 = load i32, i32* @EAP_SIM_KEYING_DATA_LEN, align 4
  %56 = load i32*, i32** %14, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32* %58, i32** %14, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32*, i32** %14, align 8
  %61 = load i32, i32* @EAP_EMSK_LEN, align 4
  %62 = call i32 @os_memcpy(i32* %59, i32* %60, i32 %61)
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i32, i32* @EAP_SIM_K_ENCR_LEN, align 4
  %66 = call i32 @wpa_hexdump_key(i32 %63, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %64, i32 %65)
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* @EAP_SIM_K_AUT_LEN, align 4
  %70 = call i32 @wpa_hexdump_key(i32 %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %68, i32 %69)
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* @EAP_SIM_KEYING_DATA_LEN, align 4
  %74 = call i32 @wpa_hexdump_key(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32* %72, i32 %73)
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = load i32, i32* @EAP_EMSK_LEN, align 4
  %78 = call i32 @wpa_hexdump_key(i32 %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %76, i32 %77)
  %79 = mul nuw i64 4, %23
  %80 = trunc i64 %79 to i32
  %81 = call i32 @os_memset(i32* %25, i32 0, i32 %80)
  store i32 0, i32* %6, align 4
  store i32 1, i32* %15, align 4
  br label %82

82:                                               ; preds = %34, %31
  %83 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %83)
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @eap_sim_prf(i32*, i32*, i32) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @os_memset(i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
