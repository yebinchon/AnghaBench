; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-kdf.c_hmac_sha512_kdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-kdf.c_hmac_sha512_kdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA512_MAC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hmac_sha512_kdf(i32* %0, i64 %1, i8* %2, i32* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca [4 x i8*], align 16
  %20 = alloca [4 x i64], align 16
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  %24 = load i32, i32* @SHA512_MAC_LEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  store i32 1, i32* %18, align 4
  %28 = bitcast i32* %27 to i8*
  %29 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 0
  store i8* %28, i8** %29, align 16
  %30 = load i32, i32* @SHA512_MAC_LEN, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  store i64 %31, i64* %32, align 16
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %7
  %36 = load i8*, i8** %11, align 8
  %37 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 1
  store i8* %36, i8** %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @os_strlen(i8* %38)
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 1
  store i64 %41, i64* %42, align 8
  br label %46

43:                                               ; preds = %7
  %44 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0), i8** %44, align 8
  %45 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 1
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %35
  %47 = load i32*, i32** %12, align 8
  %48 = bitcast i32* %47 to i8*
  %49 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 2
  store i8* %48, i8** %49, align 16
  %50 = load i64, i64* %13, align 8
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 2
  store i64 %50, i64* %51, align 16
  %52 = bitcast i32* %18 to i8*
  %53 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 3
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 3
  store i64 1, i64* %54, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 1
  %58 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 1
  %59 = call i64 @hmac_sha512_vector(i32* %55, i64 %56, i32 3, i8** %57, i64* %58, i32* %27)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %46
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %115

62:                                               ; preds = %46
  store i64 0, i64* %21, align 8
  br label %63

63:                                               ; preds = %111, %62
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %21, align 8
  %66 = sub i64 %64, %65
  store i64 %66, i64* %22, align 8
  %67 = load i64, i64* %22, align 8
  %68 = load i32, i32* @SHA512_MAC_LEN, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ugt i64 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @SHA512_MAC_LEN, align 4
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %22, align 8
  br label %74

74:                                               ; preds = %71, %63
  %75 = load i32*, i32** %14, align 8
  %76 = load i64, i64* %21, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i64, i64* %22, align 8
  %79 = call i32 @os_memcpy(i32* %77, i32* %27, i64 %78)
  %80 = load i64, i64* %22, align 8
  %81 = load i64, i64* %21, align 8
  %82 = add i64 %81, %80
  store i64 %82, i64* %21, align 8
  %83 = load i64, i64* %21, align 8
  %84 = load i64, i64* %15, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %112

87:                                               ; preds = %74
  %88 = load i32, i32* %18, align 4
  %89 = icmp eq i32 %88, 255
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i32*, i32** %14, align 8
  %92 = load i64, i64* %15, align 8
  %93 = call i32 @os_memset(i32* %91, i32 0, i64 %92)
  %94 = load i32, i32* @SHA512_MAC_LEN, align 4
  %95 = call i32 @forced_memzero(i32* %27, i32 %94)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %115

96:                                               ; preds = %87
  %97 = load i32, i32* %18, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %18, align 4
  %99 = load i32*, i32** %9, align 8
  %100 = load i64, i64* %10, align 8
  %101 = getelementptr inbounds [4 x i8*], [4 x i8*]* %19, i64 0, i64 0
  %102 = getelementptr inbounds [4 x i64], [4 x i64]* %20, i64 0, i64 0
  %103 = call i64 @hmac_sha512_vector(i32* %99, i64 %100, i32 4, i8** %101, i64* %102, i32* %27)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load i32*, i32** %14, align 8
  %107 = load i64, i64* %15, align 8
  %108 = call i32 @os_memset(i32* %106, i32 0, i64 %107)
  %109 = load i32, i32* @SHA512_MAC_LEN, align 4
  %110 = call i32 @forced_memzero(i32* %27, i32 %109)
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %115

111:                                              ; preds = %96
  br label %63

112:                                              ; preds = %86
  %113 = load i32, i32* @SHA512_MAC_LEN, align 4
  %114 = call i32 @forced_memzero(i32* %27, i32 %113)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %23, align 4
  br label %115

115:                                              ; preds = %112, %105, %90, %61
  %116 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %116)
  %117 = load i32, i32* %8, align 4
  ret i32 %117
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @os_strlen(i8*) #2

declare dso_local i64 @hmac_sha512_vector(i32*, i64, i32, i8**, i64*, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

declare dso_local i32 @os_memset(i32*, i32, i64) #2

declare dso_local i32 @forced_memzero(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
