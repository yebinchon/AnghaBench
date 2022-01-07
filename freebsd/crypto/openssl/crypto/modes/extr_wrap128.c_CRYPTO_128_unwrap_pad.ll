; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_wrap128.c_CRYPTO_128_unwrap_pad.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_wrap128.c_CRYPTO_128_unwrap_pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPTO_128_unwrap_pad.zeros = internal global [8 x i8] zeroinitializer, align 1
@CRYPTO128_WRAP_MAX = common dso_local global i64 0, align 8
@default_aiv = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_128_unwrap_pad(i8* %0, i8* %1, i8* %2, i8* %3, i64 %4, i32 (i8*, i8*, i8*)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32 (i8*, i8*, i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca [8 x i8], align 1
  %19 = alloca i64, align 8
  %20 = alloca [16 x i8], align 16
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 (i8*, i8*, i8*)* %5, i32 (i8*, i8*, i8*)** %13, align 8
  %21 = load i64, i64* %12, align 8
  %22 = udiv i64 %21, 8
  %23 = sub i64 %22, 1
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %12, align 8
  %25 = and i64 %24, 7
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %6
  %28 = load i64, i64* %12, align 8
  %29 = icmp ult i64 %28, 16
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @CRYPTO128_WRAP_MAX, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %27, %6
  store i64 0, i64* %7, align 8
  br label %142

35:                                               ; preds = %30
  %36 = load i64, i64* %12, align 8
  %37 = icmp eq i64 %36, 16
  br i1 %37, label %38, label %54

38:                                               ; preds = %35
  %39 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %40 = load i8*, i8** %11, align 8
  %41 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 %39(i8* %40, i8* %41, i8* %42)
  %44 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %46 = call i32 @memcpy(i8* %44, i8* %45, i32 8)
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %49 = getelementptr inbounds i8, i8* %48, i64 8
  %50 = call i32 @memcpy(i8* %47, i8* %49, i32 8)
  store i64 8, i64* %15, align 8
  %51 = getelementptr inbounds [16 x i8], [16 x i8]* %20, i64 0, i64 0
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @OPENSSL_cleanse(i8* %51, i64 %52)
  br label %72

54:                                               ; preds = %35
  %55 = load i64, i64* %12, align 8
  %56 = sub i64 %55, 8
  store i64 %56, i64* %15, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %63 = call i64 @crypto_128_unwrap_raw(i8* %57, i8* %58, i8* %59, i8* %60, i64 %61, i32 (i8*, i8*, i8*)* %62)
  store i64 %63, i64* %19, align 8
  %64 = load i64, i64* %15, align 8
  %65 = load i64, i64* %19, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %54
  %68 = load i8*, i8** %10, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @OPENSSL_cleanse(i8* %68, i64 %69)
  store i64 0, i64* %7, align 8
  br label %142

71:                                               ; preds = %54
  br label %72

72:                                               ; preds = %71, %38
  %73 = load i8*, i8** %9, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  %77 = load i8*, i8** @default_aiv, align 8
  %78 = call i64 @CRYPTO_memcmp(i8* %76, i8* %77, i64 4)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75, %72
  %81 = load i8*, i8** %9, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 0
  %85 = load i8*, i8** %9, align 8
  %86 = call i64 @CRYPTO_memcmp(i8* %84, i8* %85, i64 4)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83, %75
  %89 = load i8*, i8** %10, align 8
  %90 = load i64, i64* %12, align 8
  %91 = call i32 @OPENSSL_cleanse(i8* %89, i64 %90)
  store i64 0, i64* %7, align 8
  br label %142

92:                                               ; preds = %83, %80
  %93 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 4
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = shl i32 %95, 24
  %97 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 5
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = shl i32 %99, 16
  %101 = or i32 %96, %100
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 6
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl i32 %104, 8
  %106 = or i32 %101, %105
  %107 = getelementptr inbounds [8 x i8], [8 x i8]* %18, i64 0, i64 7
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = or i32 %106, %109
  %111 = zext i32 %110 to i64
  store i64 %111, i64* %17, align 8
  %112 = load i64, i64* %14, align 8
  %113 = sub i64 %112, 1
  %114 = mul i64 8, %113
  %115 = load i64, i64* %17, align 8
  %116 = icmp uge i64 %114, %115
  br i1 %116, label %122, label %117

117:                                              ; preds = %92
  %118 = load i64, i64* %17, align 8
  %119 = load i64, i64* %14, align 8
  %120 = mul i64 8, %119
  %121 = icmp ugt i64 %118, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %117, %92
  %123 = load i8*, i8** %10, align 8
  %124 = load i64, i64* %12, align 8
  %125 = call i32 @OPENSSL_cleanse(i8* %123, i64 %124)
  store i64 0, i64* %7, align 8
  br label %142

126:                                              ; preds = %117
  %127 = load i64, i64* %15, align 8
  %128 = load i64, i64* %17, align 8
  %129 = sub i64 %127, %128
  store i64 %129, i64* %16, align 8
  %130 = load i8*, i8** %10, align 8
  %131 = load i64, i64* %17, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i64, i64* %16, align 8
  %134 = call i64 @CRYPTO_memcmp(i8* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @CRYPTO_128_unwrap_pad.zeros, i64 0, i64 0), i64 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %126
  %137 = load i8*, i8** %10, align 8
  %138 = load i64, i64* %12, align 8
  %139 = call i32 @OPENSSL_cleanse(i8* %137, i64 %138)
  store i64 0, i64* %7, align 8
  br label %142

140:                                              ; preds = %126
  %141 = load i64, i64* %17, align 8
  store i64 %141, i64* %7, align 8
  br label %142

142:                                              ; preds = %140, %136, %122, %88, %67, %34
  %143 = load i64, i64* %7, align 8
  ret i64 %143
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i64) #1

declare dso_local i64 @crypto_128_unwrap_raw(i8*, i8*, i8*, i8*, i64, i32 (i8*, i8*, i8*)*) #1

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
