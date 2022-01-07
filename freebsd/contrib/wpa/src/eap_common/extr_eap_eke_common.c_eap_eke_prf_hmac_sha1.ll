; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_prf_hmac_sha1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_eke_common.c_eap_eke_prf_hmac_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA1_MAC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, i32*, i64)* @eap_eke_prf_hmac_sha1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_eke_prf_hmac_sha1(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca [3 x i32*], align 16
  %18 = alloca [3 x i64], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %21 = load i32, i32* @SHA1_MAC_LEN, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %14, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %15, align 8
  store i32 0, i32* %16, align 4
  %25 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 0
  store i32* %24, i32** %25, align 16
  %26 = load i32, i32* @SHA1_MAC_LEN, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  store i64 %27, i64* %28, align 16
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 1
  store i32* %29, i32** %30, align 8
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 1
  store i64 %31, i64* %32, align 8
  %33 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 2
  store i32* %16, i32** %33, align 16
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 2
  store i64 1, i64* %34, align 16
  br label %35

35:                                               ; preds = %81, %6
  %36 = load i64, i64* %13, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %82

38:                                               ; preds = %35
  %39 = load i32, i32* %16, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32*, i32** %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 1
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 1
  %48 = call i32 @hmac_sha1_vector(i32* %44, i64 %45, i32 2, i32** %46, i64* %47, i32* %24)
  store i32 %48, i32* %19, align 4
  br label %55

49:                                               ; preds = %38
  %50 = load i32*, i32** %8, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds [3 x i32*], [3 x i32*]* %17, i64 0, i64 0
  %53 = getelementptr inbounds [3 x i64], [3 x i64]* %18, i64 0, i64 0
  %54 = call i32 @hmac_sha1_vector(i32* %50, i64 %51, i32 3, i32** %52, i64* %53, i32* %24)
  store i32 %54, i32* %19, align 4
  br label %55

55:                                               ; preds = %49, %43
  %56 = load i32, i32* %19, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %83

59:                                               ; preds = %55
  %60 = load i64, i64* %13, align 8
  %61 = load i32, i32* @SHA1_MAC_LEN, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %60, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %59
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* @SHA1_MAC_LEN, align 4
  %67 = sext i32 %66 to i64
  %68 = call i32 @os_memcpy(i32* %65, i32* %24, i64 %67)
  %69 = load i32, i32* @SHA1_MAC_LEN, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32* %72, i32** %12, align 8
  %73 = load i32, i32* @SHA1_MAC_LEN, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %13, align 8
  %76 = sub i64 %75, %74
  store i64 %76, i64* %13, align 8
  br label %81

77:                                               ; preds = %59
  %78 = load i32*, i32** %12, align 8
  %79 = load i64, i64* %13, align 8
  %80 = call i32 @os_memcpy(i32* %78, i32* %24, i64 %79)
  store i64 0, i64* %13, align 8
  br label %81

81:                                               ; preds = %77, %64
  br label %35

82:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  store i32 1, i32* %20, align 4
  br label %83

83:                                               ; preds = %82, %58
  %84 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %84)
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @hmac_sha1_vector(i32*, i64, i32, i32**, i64*, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
