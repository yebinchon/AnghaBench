; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha256-tlsprf.c_tls_prf_sha256.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha256-tlsprf.c_tls_prf_sha256.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_prf_sha256(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca [3 x i8*], align 16
  %22 = alloca [3 x i64], align 16
  %23 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %24 = load i32, i32* @SHA256_MAC_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %17, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %18, align 8
  %28 = load i32, i32* @SHA256_MAC_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %19, align 8
  %31 = getelementptr inbounds [3 x i8*], [3 x i8*]* %21, i64 0, i64 0
  store i8* %27, i8** %31, align 16
  %32 = load i32, i32* @SHA256_MAC_LEN, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 0
  store i64 %33, i64* %34, align 16
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds [3 x i8*], [3 x i8*]* %21, i64 0, i64 1
  store i8* %35, i8** %36, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = call i64 @os_strlen(i8* %37)
  %39 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 1
  store i64 %38, i64* %39, align 8
  %40 = load i8*, i8** %12, align 8
  %41 = getelementptr inbounds [3 x i8*], [3 x i8*]* %21, i64 0, i64 2
  store i8* %40, i8** %41, align 16
  %42 = load i64, i64* %13, align 8
  %43 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 2
  store i64 %42, i64* %43, align 16
  %44 = load i8*, i8** %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds [3 x i8*], [3 x i8*]* %21, i64 0, i64 1
  %47 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 1
  %48 = call i64 @hmac_sha256_vector(i8* %44, i64 %45, i32 2, i8** %46, i64* %47, i8* %27)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %91

51:                                               ; preds = %7
  store i64 0, i64* %20, align 8
  br label %52

52:                                               ; preds = %81, %51
  %53 = load i64, i64* %20, align 8
  %54 = load i64, i64* %15, align 8
  %55 = icmp ult i64 %53, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr inbounds [3 x i8*], [3 x i8*]* %21, i64 0, i64 0
  %60 = getelementptr inbounds [3 x i64], [3 x i64]* %22, i64 0, i64 0
  %61 = call i64 @hmac_sha256_vector(i8* %57, i64 %58, i32 3, i8** %59, i64* %60, i8* %30)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %56
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i32, i32* @SHA256_MAC_LEN, align 4
  %67 = call i64 @hmac_sha256(i8* %64, i64 %65, i8* %27, i32 %66, i8* %27)
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %56
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %91

70:                                               ; preds = %63
  %71 = load i64, i64* %15, align 8
  %72 = load i64, i64* %20, align 8
  %73 = sub i64 %71, %72
  store i64 %73, i64* %16, align 8
  %74 = load i64, i64* %16, align 8
  %75 = load i32, i32* @SHA256_MAC_LEN, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ugt i64 %74, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* @SHA256_MAC_LEN, align 4
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %16, align 8
  br label %81

81:                                               ; preds = %78, %70
  %82 = load i8*, i8** %14, align 8
  %83 = load i64, i64* %20, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i64, i64* %16, align 8
  %86 = call i32 @os_memcpy(i8* %84, i8* %30, i64 %85)
  %87 = load i64, i64* %16, align 8
  %88 = load i64, i64* %20, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %20, align 8
  br label %52

90:                                               ; preds = %52
  store i32 0, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %91

91:                                               ; preds = %90, %69, %50
  %92 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %92)
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i64 @hmac_sha256_vector(i8*, i64, i32, i8**, i64*, i8*) #2

declare dso_local i64 @hmac_sha256(i8*, i64, i8*, i32, i8*) #2

declare dso_local i32 @os_memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
