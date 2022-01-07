; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_oaep.c_PKCS1_MGF1.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_oaep.c_PKCS1_MGF1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PKCS1_MGF1(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [4 x i8], align 1
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  store i64 0, i64* %12, align 8
  %19 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %19, i32** %14, align 8
  %20 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %15, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %16, align 8
  store i32 -1, i32* %18, align 4
  %24 = load i32*, i32** %14, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %5
  br label %116

27:                                               ; preds = %5
  %28 = load i32*, i32** %10, align 8
  %29 = call i32 @EVP_MD_size(i32* %28)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %116

33:                                               ; preds = %27
  store i64 0, i64* %11, align 8
  br label %34

34:                                               ; preds = %112, %33
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %38, label %115

38:                                               ; preds = %34
  %39 = load i64, i64* %11, align 8
  %40 = ashr i64 %39, 24
  %41 = and i64 %40, 255
  %42 = trunc i64 %41 to i8
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  store i8 %42, i8* %43, align 1
  %44 = load i64, i64* %11, align 8
  %45 = ashr i64 %44, 16
  %46 = and i64 %45, 255
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 1
  store i8 %47, i8* %48, align 1
  %49 = load i64, i64* %11, align 8
  %50 = ashr i64 %49, 8
  %51 = trunc i64 %50 to i8
  %52 = zext i8 %51 to i32
  %53 = and i32 %52, 255
  %54 = trunc i32 %53 to i8
  %55 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 2
  store i8 %54, i8* %55, align 1
  %56 = load i64, i64* %11, align 8
  %57 = and i64 %56, 255
  %58 = trunc i64 %57 to i8
  %59 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 3
  store i8 %58, i8* %59, align 1
  %60 = load i32*, i32** %14, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = call i32 @EVP_DigestInit_ex(i32* %60, i32* %61, i32* null)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %38
  %65 = load i32*, i32** %14, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = trunc i64 %67 to i32
  %69 = call i32 @EVP_DigestUpdate(i32* %65, i8* %66, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %64
  %72 = load i32*, i32** %14, align 8
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i64 0, i64 0
  %74 = call i32 @EVP_DigestUpdate(i32* %72, i8* %73, i32 4)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %71, %64, %38
  br label %116

77:                                               ; preds = %71
  %78 = load i64, i64* %12, align 8
  %79 = load i32, i32* %17, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load i64, i64* %7, align 8
  %83 = icmp sle i64 %81, %82
  br i1 %83, label %84, label %97

84:                                               ; preds = %77
  %85 = load i32*, i32** %14, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %12, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = call i32 @EVP_DigestFinal_ex(i32* %85, i8* %88, i32* null)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %84
  br label %116

92:                                               ; preds = %84
  %93 = load i32, i32* %17, align 4
  %94 = sext i32 %93 to i64
  %95 = load i64, i64* %12, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %12, align 8
  br label %111

97:                                               ; preds = %77
  %98 = load i32*, i32** %14, align 8
  %99 = call i32 @EVP_DigestFinal_ex(i32* %98, i8* %23, i32* null)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  br label %116

102:                                              ; preds = %97
  %103 = load i8*, i8** %6, align 8
  %104 = load i64, i64* %12, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i64, i64* %7, align 8
  %107 = load i64, i64* %12, align 8
  %108 = sub nsw i64 %106, %107
  %109 = call i32 @memcpy(i8* %105, i8* %23, i64 %108)
  %110 = load i64, i64* %7, align 8
  store i64 %110, i64* %12, align 8
  br label %111

111:                                              ; preds = %102, %92
  br label %112

112:                                              ; preds = %111
  %113 = load i64, i64* %11, align 8
  %114 = add nsw i64 %113, 1
  store i64 %114, i64* %11, align 8
  br label %34

115:                                              ; preds = %34
  store i32 0, i32* %18, align 4
  br label %116

116:                                              ; preds = %115, %101, %91, %76, %32, %26
  %117 = trunc i64 %21 to i32
  %118 = call i32 @OPENSSL_cleanse(i8* %23, i32 %117)
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @EVP_MD_CTX_free(i32* %119)
  %121 = load i32, i32* %18, align 4
  %122 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %122)
  ret i32 %121
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
