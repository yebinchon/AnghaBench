; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_eapol_key_mic.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_wpa_common.c_wpa_eapol_key_mic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA512_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"WPA: KCK not set - cannot calculate MIC\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"WPA: EAPOL-Key MIC using HMAC-MD5\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"WPA: EAPOL-Key MIC using HMAC-SHA1\00", align 1
@MD5_MAC_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"WPA: EAPOL-Key MIC algorithm not known (AKM-defined - akmp=0x%x)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"WPA: EAPOL-Key MIC algorithm not known (ver=%d)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpa_eapol_key_mic(i32* %0, i64 %1, i32 %2, i32 %3, i32* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %19 = load i32, i32* @SHA512_MAC_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %16, align 8
  %22 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %17, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %7
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %64

28:                                               ; preds = %7
  %29 = load i32, i32* %12, align 4
  switch i32 %29, label %59 [
    i32 137, label %30
    i32 136, label %39
    i32 138, label %53
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32*, i32** %9, align 8
  %34 = load i64, i64* %10, align 8
  %35 = load i32*, i32** %13, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i32*, i32** %15, align 8
  %38 = call i32 @hmac_md5(i32* %33, i64 %34, i32* %35, i64 %36, i32* %37)
  store i32 %38, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %64

39:                                               ; preds = %28
  %40 = load i32, i32* @MSG_DEBUG, align 4
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i32*, i32** %13, align 8
  %45 = load i64, i64* %14, align 8
  %46 = call i32 @hmac_sha1(i32* %42, i64 %43, i32* %44, i64 %45, i32* %22)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %64

49:                                               ; preds = %39
  %50 = load i32*, i32** %15, align 8
  %51 = load i32, i32* @MD5_MAC_LEN, align 4
  %52 = call i32 @os_memcpy(i32* %50, i32* %22, i32 %51)
  br label %63

53:                                               ; preds = %28
  %54 = load i32, i32* %11, align 4
  switch i32 %54, label %55 [
  ]

55:                                               ; preds = %53
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %64

59:                                               ; preds = %28
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %64

63:                                               ; preds = %49
  store i32 0, i32* %8, align 4
  store i32 1, i32* %18, align 4
  br label %64

64:                                               ; preds = %63, %59, %55, %48, %30, %25
  %65 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @hmac_md5(i32*, i64, i32*, i64, i32*) #2

declare dso_local i32 @hmac_sha1(i32*, i64, i32*, i64, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
