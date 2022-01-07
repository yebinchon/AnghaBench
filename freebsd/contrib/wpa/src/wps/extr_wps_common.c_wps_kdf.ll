; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_kdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_common.c_wps_kdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA256_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_kdf(i32* %0, i32* %1, i64 %2, i8* %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca [4 x i32], align 16
  %14 = alloca [4 x i32], align 16
  %15 = alloca [4 x i32*], align 16
  %16 = alloca [4 x i64], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  %23 = load i32, i32* @SHA256_MAC_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %19, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %20, align 8
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %28 = load i64, i64* %12, align 8
  %29 = mul i64 %28, 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @WPA_PUT_BE32(i32* %27, i32 %30)
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %33 = getelementptr inbounds [4 x i32*], [4 x i32*]* %15, i64 0, i64 0
  store i32* %32, i32** %33, align 16
  %34 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  store i64 16, i64* %34, align 16
  %35 = load i32*, i32** %8, align 8
  %36 = getelementptr inbounds [4 x i32*], [4 x i32*]* %15, i64 0, i64 1
  store i32* %35, i32** %36, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 1
  store i64 %37, i64* %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = bitcast i8* %39 to i32*
  %41 = getelementptr inbounds [4 x i32*], [4 x i32*]* %15, i64 0, i64 2
  store i32* %40, i32** %41, align 16
  %42 = load i8*, i8** %10, align 8
  %43 = call i64 @os_strlen(i8* %42)
  %44 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 2
  store i64 %43, i64* %44, align 16
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %14, i64 0, i64 0
  %46 = getelementptr inbounds [4 x i32*], [4 x i32*]* %15, i64 0, i64 3
  store i32* %45, i32** %46, align 8
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 3
  store i64 16, i64* %47, align 8
  %48 = load i64, i64* %12, align 8
  %49 = load i32, i32* @SHA256_MAC_LEN, align 4
  %50 = sext i32 %49 to i64
  %51 = add i64 %48, %50
  %52 = sub i64 %51, 1
  %53 = load i32, i32* @SHA256_MAC_LEN, align 4
  %54 = sext i32 %53 to i64
  %55 = udiv i64 %52, %54
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %18, align 4
  %57 = load i32*, i32** %11, align 8
  store i32* %57, i32** %21, align 8
  %58 = load i64, i64* %12, align 8
  store i64 %58, i64* %22, align 8
  store i32 1, i32* %17, align 4
  br label %59

59:                                               ; preds = %93, %6
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %96

63:                                               ; preds = %59
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %65 = load i32, i32* %17, align 4
  %66 = call i32 @WPA_PUT_BE32(i32* %64, i32 %65)
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* @SHA256_MAC_LEN, align 4
  %69 = getelementptr inbounds [4 x i32*], [4 x i32*]* %15, i64 0, i64 0
  %70 = getelementptr inbounds [4 x i64], [4 x i64]* %16, i64 0, i64 0
  %71 = call i32 @hmac_sha256_vector(i32* %67, i32 %68, i32 4, i32** %69, i64* %70, i32* %26)
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %63
  %76 = load i32*, i32** %21, align 8
  %77 = load i32, i32* @SHA256_MAC_LEN, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 @os_memcpy(i32* %76, i32* %26, i64 %78)
  %80 = load i32, i32* @SHA256_MAC_LEN, align 4
  %81 = load i32*, i32** %21, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %21, align 8
  %84 = load i32, i32* @SHA256_MAC_LEN, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %22, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %22, align 8
  br label %92

88:                                               ; preds = %63
  %89 = load i32*, i32** %21, align 8
  %90 = load i64, i64* %22, align 8
  %91 = call i32 @os_memcpy(i32* %89, i32* %26, i64 %90)
  br label %92

92:                                               ; preds = %88, %75
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %17, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  br label %59

96:                                               ; preds = %59
  %97 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %97)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @WPA_PUT_BE32(i32*, i32) #2

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i32 @hmac_sha256_vector(i32*, i32, i32, i32**, i64*, i32*) #2

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
