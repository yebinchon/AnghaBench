; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_hkdf.c_HKDF_Expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/kdf/extr_hkdf.c_HKDF_Expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i8*, i64, i8*, i64, i8*, i64)* @HKDF_Expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @HKDF_Expand(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i8, align 1
  store i32* %0, i32** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  store i8* null, i8** %17, align 8
  %27 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %19, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i64 @EVP_MD_size(i32* %31)
  store i64 %32, i64* %22, align 8
  %33 = load i64, i64* %15, align 8
  %34 = load i64, i64* %22, align 8
  %35 = udiv i64 %33, %34
  store i64 %35, i64* %23, align 8
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %22, align 8
  %38 = urem i64 %36, %37
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %7
  %41 = load i64, i64* %23, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %23, align 8
  br label %43

43:                                               ; preds = %40, %7
  %44 = load i64, i64* %23, align 8
  %45 = icmp ugt i64 %44, 255
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i8*, i8** %14, align 8
  %48 = icmp eq i8* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %43
  store i8* null, i8** %8, align 8
  store i32 1, i32* %24, align 4
  br label %137

50:                                               ; preds = %46
  %51 = call i32* (...) @HMAC_CTX_new()
  store i32* %51, i32** %16, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  store i8* null, i8** %8, align 8
  store i32 1, i32* %24, align 4
  br label %137

54:                                               ; preds = %50
  %55 = load i32*, i32** %16, align 8
  %56 = load i8*, i8** %10, align 8
  %57 = load i64, i64* %11, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = call i32 @HMAC_Init_ex(i32* %55, i8* %56, i64 %57, i32* %58, i32* null)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %54
  br label %131

62:                                               ; preds = %54
  store i32 1, i32* %18, align 4
  br label %63

63:                                               ; preds = %126, %62
  %64 = load i32, i32* %18, align 4
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* %23, align 8
  %67 = icmp ule i64 %65, %66
  br i1 %67, label %68, label %129

68:                                               ; preds = %63
  %69 = load i32, i32* %18, align 4
  %70 = trunc i32 %69 to i8
  store i8 %70, i8* %26, align 1
  %71 = load i32, i32* %18, align 4
  %72 = icmp ugt i32 %71, 1
  br i1 %72, label %73, label %86

73:                                               ; preds = %68
  %74 = load i32*, i32** %16, align 8
  %75 = call i32 @HMAC_Init_ex(i32* %74, i8* null, i64 0, i32* null, i32* null)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %73
  br label %131

78:                                               ; preds = %73
  %79 = load i32*, i32** %16, align 8
  %80 = load i64, i64* %22, align 8
  %81 = trunc i64 %80 to i32
  %82 = call i32 @HMAC_Update(i32* %79, i8* %30, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %131

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %68
  %87 = load i32*, i32** %16, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i64, i64* %13, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @HMAC_Update(i32* %87, i8* %88, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %86
  br label %131

94:                                               ; preds = %86
  %95 = load i32*, i32** %16, align 8
  %96 = call i32 @HMAC_Update(i32* %95, i8* %26, i32 1)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  br label %131

99:                                               ; preds = %94
  %100 = load i32*, i32** %16, align 8
  %101 = call i32 @HMAC_Final(i32* %100, i8* %30, i32* null)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  br label %131

104:                                              ; preds = %99
  %105 = load i64, i64* %21, align 8
  %106 = load i64, i64* %22, align 8
  %107 = add i64 %105, %106
  %108 = load i64, i64* %15, align 8
  %109 = icmp ugt i64 %107, %108
  br i1 %109, label %110, label %114

110:                                              ; preds = %104
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %21, align 8
  %113 = sub i64 %111, %112
  br label %116

114:                                              ; preds = %104
  %115 = load i64, i64* %22, align 8
  br label %116

116:                                              ; preds = %114, %110
  %117 = phi i64 [ %113, %110 ], [ %115, %114 ]
  store i64 %117, i64* %25, align 8
  %118 = load i8*, i8** %14, align 8
  %119 = load i64, i64* %21, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i64, i64* %25, align 8
  %122 = call i32 @memcpy(i8* %120, i8* %30, i64 %121)
  %123 = load i64, i64* %25, align 8
  %124 = load i64, i64* %21, align 8
  %125 = add i64 %124, %123
  store i64 %125, i64* %21, align 8
  br label %126

126:                                              ; preds = %116
  %127 = load i32, i32* %18, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %18, align 4
  br label %63

129:                                              ; preds = %63
  %130 = load i8*, i8** %14, align 8
  store i8* %130, i8** %17, align 8
  br label %131

131:                                              ; preds = %129, %103, %98, %93, %84, %77, %61
  %132 = trunc i64 %28 to i32
  %133 = call i32 @OPENSSL_cleanse(i8* %30, i32 %132)
  %134 = load i32*, i32** %16, align 8
  %135 = call i32 @HMAC_CTX_free(i32* %134)
  %136 = load i8*, i8** %17, align 8
  store i8* %136, i8** %8, align 8
  store i32 1, i32* %24, align 4
  br label %137

137:                                              ; preds = %131, %53, %49
  %138 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %138)
  %139 = load i8*, i8** %8, align 8
  ret i8* %139
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @EVP_MD_size(i32*) #2

declare dso_local i32* @HMAC_CTX_new(...) #2

declare dso_local i32 @HMAC_Init_ex(i32*, i8*, i64, i32*, i32*) #2

declare dso_local i32 @HMAC_Update(i32*, i8*, i32) #2

declare dso_local i32 @HMAC_Final(i32*, i8*, i32*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #2

declare dso_local i32 @HMAC_CTX_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
