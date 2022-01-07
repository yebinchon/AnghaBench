; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_add_mac.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_sim_common.c_eap_sim_add_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@EAP_SIM_MAC_LEN = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-SIM: Add MAC - msg\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"EAP-SIM: Add MAC - extra data\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"EAP-SIM: Add MAC - K_aut\00", align 1
@EAP_SIM_K_AUT_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"EAP-SIM: Add MAC: MAC\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @eap_sim_add_mac(i32* %0, i32* %1, i64 %2, i32* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca [2 x i32*], align 16
  %16 = alloca [2 x i64], align 16
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %17 = load i32, i32* @SHA1_MAC_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %13, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %14, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 0
  store i32* %21, i32** %22, align 16
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  store i64 %23, i64* %24, align 16
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 1
  store i32* %25, i32** %26, align 8
  %27 = load i64, i64* %12, align 8
  %28 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 1
  store i64 %27, i64* %28, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i64, i64* @EAP_SIM_MAC_LEN, align 8
  %31 = call i32 @os_memset(i32* %29, i32 0, i64 %30)
  %32 = load i32, i32* @MSG_MSGDUMP, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @wpa_hexdump(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32* %33, i64 %34)
  %36 = load i32, i32* @MSG_MSGDUMP, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @wpa_hexdump(i32 %36, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32* %37, i64 %38)
  %40 = load i32, i32* @MSG_MSGDUMP, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @EAP_SIM_K_AUT_LEN, align 4
  %43 = call i32 @wpa_hexdump_key(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %41, i32 %42)
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* @EAP_SIM_K_AUT_LEN, align 4
  %46 = getelementptr inbounds [2 x i32*], [2 x i32*]* %15, i64 0, i64 0
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  %48 = call i32 @hmac_sha1_vector(i32* %44, i32 %45, i32 2, i32** %46, i64* %47, i8* %20)
  %49 = load i32*, i32** %10, align 8
  %50 = load i64, i64* @EAP_SIM_MAC_LEN, align 8
  %51 = call i32 @os_memcpy(i32* %49, i8* %20, i64 %50)
  %52 = load i32, i32* @MSG_MSGDUMP, align 4
  %53 = load i32*, i32** %10, align 8
  %54 = load i64, i64* @EAP_SIM_MAC_LEN, align 8
  %55 = call i32 @wpa_hexdump(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %53, i64 %54)
  %56 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %56)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_memset(i32*, i32, i64) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local i32 @hmac_sha1_vector(i32*, i32, i32, i32**, i64*, i8*) #2

declare dso_local i32 @os_memcpy(i32*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
