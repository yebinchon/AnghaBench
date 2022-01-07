; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_kdf.c_DH_KDF_X9_42.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_kdf.c_DH_KDF_X9_42.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DH_KDF_MAX = common dso_local global i64 0, align 8
@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DH_KDF_X9_42(i8* %0, i64 %1, i8* %2, i64 %3, i32* %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  store i8* %0, i8** %10, align 8
  store i64 %1, i64* %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store i32 0, i32* %19, align 4
  store i8* null, i8** %22, align 8
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @DH_KDF_MAX, align 8
  %30 = icmp ugt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %8
  store i32 0, i32* %9, align 4
  br label %143

32:                                               ; preds = %8
  %33 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %33, i32** %18, align 8
  %34 = load i32*, i32** %18, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  br label %143

37:                                               ; preds = %32
  %38 = load i32*, i32** %17, align 8
  %39 = call i64 @EVP_MD_size(i32* %38)
  store i64 %39, i64* %21, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i8*, i8** %15, align 8
  %43 = load i64, i64* %16, align 8
  %44 = call i32 @dh_sharedinfo_encode(i8** %22, i8** %23, i32* %40, i64 %41, i8* %42, i64 %43)
  store i32 %44, i32* %24, align 4
  %45 = load i32, i32* %24, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %137

48:                                               ; preds = %37
  store i32 1, i32* %20, align 4
  br label %49

49:                                               ; preds = %133, %48
  %50 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %51 = zext i32 %50 to i64
  %52 = call i8* @llvm.stacksave()
  store i8* %52, i8** %25, align 8
  %53 = alloca i8, i64 %51, align 16
  store i64 %51, i64* %26, align 8
  %54 = load i32*, i32** %18, align 8
  %55 = load i32*, i32** %17, align 8
  %56 = call i32 @EVP_DigestInit_ex(i32* %54, i32* %55, i32* null)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load i32*, i32** %18, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %13, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @EVP_DigestUpdate(i32* %59, i8* %60, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %58, %49
  store i32 2, i32* %27, align 4
  br label %129

66:                                               ; preds = %58
  %67 = load i32, i32* %20, align 4
  %68 = and i32 %67, 255
  %69 = trunc i32 %68 to i8
  %70 = load i8*, i8** %23, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  store i8 %69, i8* %71, align 1
  %72 = load i32, i32* %20, align 4
  %73 = lshr i32 %72, 8
  %74 = and i32 %73, 255
  %75 = trunc i32 %74 to i8
  %76 = load i8*, i8** %23, align 8
  %77 = getelementptr inbounds i8, i8* %76, i64 2
  store i8 %75, i8* %77, align 1
  %78 = load i32, i32* %20, align 4
  %79 = lshr i32 %78, 16
  %80 = and i32 %79, 255
  %81 = trunc i32 %80 to i8
  %82 = load i8*, i8** %23, align 8
  %83 = getelementptr inbounds i8, i8* %82, i64 1
  store i8 %81, i8* %83, align 1
  %84 = load i32, i32* %20, align 4
  %85 = lshr i32 %84, 24
  %86 = and i32 %85, 255
  %87 = trunc i32 %86 to i8
  %88 = load i8*, i8** %23, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  store i8 %87, i8* %89, align 1
  %90 = load i32*, i32** %18, align 8
  %91 = load i8*, i8** %22, align 8
  %92 = load i32, i32* %24, align 4
  %93 = call i32 @EVP_DigestUpdate(i32* %90, i8* %91, i32 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %66
  store i32 2, i32* %27, align 4
  br label %129

96:                                               ; preds = %66
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* %21, align 8
  %99 = icmp uge i64 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load i32*, i32** %18, align 8
  %102 = load i8*, i8** %10, align 8
  %103 = call i32 @EVP_DigestFinal(i32* %101, i8* %102, i32* null)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  store i32 2, i32* %27, align 4
  br label %129

106:                                              ; preds = %100
  %107 = load i64, i64* %21, align 8
  %108 = load i64, i64* %11, align 8
  %109 = sub i64 %108, %107
  store i64 %109, i64* %11, align 8
  %110 = load i64, i64* %11, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %106
  store i32 3, i32* %27, align 4
  br label %129

113:                                              ; preds = %106
  %114 = load i64, i64* %21, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 %114
  store i8* %116, i8** %10, align 8
  br label %128

117:                                              ; preds = %96
  %118 = load i32*, i32** %18, align 8
  %119 = call i32 @EVP_DigestFinal(i32* %118, i8* %53, i32* null)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %122, label %121

121:                                              ; preds = %117
  store i32 2, i32* %27, align 4
  br label %129

122:                                              ; preds = %117
  %123 = load i8*, i8** %10, align 8
  %124 = load i64, i64* %11, align 8
  %125 = call i32 @memcpy(i8* %123, i8* %53, i64 %124)
  %126 = load i64, i64* %21, align 8
  %127 = call i32 @OPENSSL_cleanse(i8* %53, i64 %126)
  store i32 3, i32* %27, align 4
  br label %129

128:                                              ; preds = %113
  store i32 0, i32* %27, align 4
  br label %129

129:                                              ; preds = %121, %105, %95, %65, %128, %122, %112
  %130 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %27, align 4
  switch i32 %131, label %145 [
    i32 0, label %132
    i32 3, label %136
    i32 2, label %137
  ]

132:                                              ; preds = %129
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %20, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %20, align 4
  br label %49

136:                                              ; preds = %129
  store i32 1, i32* %19, align 4
  br label %137

137:                                              ; preds = %136, %129, %47
  %138 = load i8*, i8** %22, align 8
  %139 = call i32 @OPENSSL_free(i8* %138)
  %140 = load i32*, i32** %18, align 8
  %141 = call i32 @EVP_MD_CTX_free(i32* %140)
  %142 = load i32, i32* %19, align 4
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %137, %36, %31
  %144 = load i32, i32* %9, align 4
  ret i32 %144

145:                                              ; preds = %129
  unreachable
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i64 @EVP_MD_size(i32*) #1

declare dso_local i32 @dh_sharedinfo_encode(i8**, i8**, i32*, i64, i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i32) #1

declare dso_local i32 @EVP_DigestFinal(i32*, i8*, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
