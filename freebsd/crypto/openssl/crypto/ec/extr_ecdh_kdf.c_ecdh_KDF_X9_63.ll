; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdh_kdf.c_ecdh_KDF_X9_63.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ecdh_kdf.c_ecdh_KDF_X9_63.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ECDH_KDF_MAX = common dso_local global i64 0, align 8
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecdh_KDF_X9_63(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca [4 x i8], align 1
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i32 0, i32* %17, align 4
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* @ECDH_KDF_MAX, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %7
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @ECDH_KDF_MAX, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @ECDH_KDF_MAX, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31, %27, %7
  store i32 0, i32* %8, align 4
  br label %138

36:                                               ; preds = %31
  %37 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %37, i32** %16, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  br label %138

41:                                               ; preds = %36
  %42 = load i32*, i32** %15, align 8
  %43 = call i64 @EVP_MD_size(i32* %42)
  store i64 %43, i64* %19, align 8
  store i32 1, i32* %18, align 4
  br label %44

44:                                               ; preds = %130, %41
  %45 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %46 = zext i32 %45 to i64
  %47 = call i8* @llvm.stacksave()
  store i8* %47, i8** %21, align 8
  %48 = alloca i8, i64 %46, align 16
  store i64 %46, i64* %22, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @EVP_DigestInit_ex(i32* %49, i32* %50, i32* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  store i32 5, i32* %23, align 4
  br label %126

54:                                               ; preds = %44
  %55 = load i32, i32* %18, align 4
  %56 = and i32 %55, 255
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 3
  store i8 %57, i8* %58, align 1
  %59 = load i32, i32* %18, align 4
  %60 = lshr i32 %59, 8
  %61 = and i32 %60, 255
  %62 = trunc i32 %61 to i8
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 2
  store i8 %62, i8* %63, align 1
  %64 = load i32, i32* %18, align 4
  %65 = lshr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = trunc i32 %66 to i8
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 1
  store i8 %67, i8* %68, align 1
  %69 = load i32, i32* %18, align 4
  %70 = lshr i32 %69, 24
  %71 = and i32 %70, 255
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  store i8 %72, i8* %73, align 1
  %74 = load i32*, i32** %16, align 8
  %75 = load i8*, i8** %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @EVP_DigestUpdate(i32* %74, i8* %75, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %54
  store i32 5, i32* %23, align 4
  br label %126

80:                                               ; preds = %54
  %81 = load i32*, i32** %16, align 8
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %20, i64 0, i64 0
  %83 = call i32 @EVP_DigestUpdate(i32* %81, i8* %82, i64 4)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 5, i32* %23, align 4
  br label %126

86:                                               ; preds = %80
  %87 = load i32*, i32** %16, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @EVP_DigestUpdate(i32* %87, i8* %88, i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  store i32 5, i32* %23, align 4
  br label %126

93:                                               ; preds = %86
  %94 = load i64, i64* %10, align 8
  %95 = load i64, i64* %19, align 8
  %96 = icmp uge i64 %94, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %93
  %98 = load i32*, i32** %16, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 @EVP_DigestFinal(i32* %98, i8* %99, i32* null)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  store i32 5, i32* %23, align 4
  br label %126

103:                                              ; preds = %97
  %104 = load i64, i64* %19, align 8
  %105 = load i64, i64* %10, align 8
  %106 = sub i64 %105, %104
  store i64 %106, i64* %10, align 8
  %107 = load i64, i64* %10, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %103
  store i32 2, i32* %23, align 4
  br label %126

110:                                              ; preds = %103
  %111 = load i64, i64* %19, align 8
  %112 = load i8*, i8** %9, align 8
  %113 = getelementptr inbounds i8, i8* %112, i64 %111
  store i8* %113, i8** %9, align 8
  br label %125

114:                                              ; preds = %93
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @EVP_DigestFinal(i32* %115, i8* %48, i32* null)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %114
  store i32 5, i32* %23, align 4
  br label %126

119:                                              ; preds = %114
  %120 = load i8*, i8** %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @memcpy(i8* %120, i8* %48, i64 %121)
  %123 = load i64, i64* %19, align 8
  %124 = call i32 @OPENSSL_cleanse(i8* %48, i64 %123)
  store i32 2, i32* %23, align 4
  br label %126

125:                                              ; preds = %110
  store i32 0, i32* %23, align 4
  br label %126

126:                                              ; preds = %118, %102, %92, %85, %79, %53, %125, %119, %109
  %127 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %23, align 4
  switch i32 %128, label %140 [
    i32 0, label %129
    i32 2, label %133
    i32 5, label %134
  ]

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %18, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %18, align 4
  br label %44

133:                                              ; preds = %126
  store i32 1, i32* %17, align 4
  br label %134

134:                                              ; preds = %133, %126
  %135 = load i32*, i32** %16, align 8
  %136 = call i32 @EVP_MD_CTX_free(i32* %135)
  %137 = load i32, i32* %17, align 4
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %134, %40, %35
  %139 = load i32, i32* %8, align 4
  ret i32 %139

140:                                              ; preds = %126
  unreachable
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i64 @EVP_MD_size(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i32 @EVP_DigestFinal(i32*, i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
