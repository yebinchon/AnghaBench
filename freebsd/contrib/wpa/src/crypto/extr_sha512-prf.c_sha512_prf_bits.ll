; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-prf.c_sha512_prf_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_sha512-prf.c_sha512_prf_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SHA512_MAC_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sha512_prf_bits(i32* %0, i64 %1, i8* %2, i32* %3, i64 %4, i32* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca [4 x i32*], align 16
  %22 = alloca [4 x i64], align 16
  %23 = alloca [2 x i32], align 4
  %24 = alloca [2 x i32], align 4
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i64 %6, i64* %15, align 8
  store i64 1, i64* %16, align 8
  %28 = load i32, i32* @SHA512_MAC_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %19, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %20, align 8
  %32 = load i64, i64* %15, align 8
  %33 = add i64 %32, 7
  %34 = udiv i64 %33, 8
  store i64 %34, i64* %25, align 8
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %36 = getelementptr inbounds [4 x i32*], [4 x i32*]* %21, i64 0, i64 0
  store i32* %35, i32** %36, align 16
  %37 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 0, i64 0
  store i64 2, i64* %37, align 16
  %38 = load i8*, i8** %11, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = getelementptr inbounds [4 x i32*], [4 x i32*]* %21, i64 0, i64 1
  store i32* %39, i32** %40, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = call i64 @os_strlen(i8* %41)
  %43 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 0, i64 1
  store i64 %42, i64* %43, align 8
  %44 = load i32*, i32** %12, align 8
  %45 = getelementptr inbounds [4 x i32*], [4 x i32*]* %21, i64 0, i64 2
  store i32* %44, i32** %45, align 16
  %46 = load i64, i64* %13, align 8
  %47 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 0, i64 2
  store i64 %46, i64* %47, align 16
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %49 = getelementptr inbounds [4 x i32*], [4 x i32*]* %21, i64 0, i64 3
  store i32* %48, i32** %49, align 8
  %50 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 0, i64 3
  store i64 8, i64* %50, align 8
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %24, i64 0, i64 0
  %52 = load i64, i64* %15, align 8
  %53 = call i32 @WPA_PUT_LE16(i32* %51, i64 %52)
  store i64 0, i64* %17, align 8
  br label %54

54:                                               ; preds = %102, %7
  %55 = load i64, i64* %17, align 8
  %56 = load i64, i64* %25, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %105

58:                                               ; preds = %54
  %59 = load i64, i64* %25, align 8
  %60 = load i64, i64* %17, align 8
  %61 = sub i64 %59, %60
  store i64 %61, i64* %18, align 8
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %63 = load i64, i64* %16, align 8
  %64 = call i32 @WPA_PUT_LE16(i32* %62, i64 %63)
  %65 = load i64, i64* %18, align 8
  %66 = load i32, i32* @SHA512_MAC_LEN, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp uge i64 %65, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %58
  %70 = load i32*, i32** %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds [4 x i32*], [4 x i32*]* %21, i64 0, i64 0
  %73 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 0, i64 0
  %74 = load i32*, i32** %14, align 8
  %75 = load i64, i64* %17, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  %77 = call i64 @hmac_sha512_vector(i32* %70, i64 %71, i32 4, i32** %72, i64* %73, i32* %76)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %126

80:                                               ; preds = %69
  %81 = load i32, i32* @SHA512_MAC_LEN, align 4
  %82 = sext i32 %81 to i64
  %83 = load i64, i64* %17, align 8
  %84 = add i64 %83, %82
  store i64 %84, i64* %17, align 8
  br label %102

85:                                               ; preds = %58
  %86 = load i32*, i32** %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds [4 x i32*], [4 x i32*]* %21, i64 0, i64 0
  %89 = getelementptr inbounds [4 x i64], [4 x i64]* %22, i64 0, i64 0
  %90 = call i64 @hmac_sha512_vector(i32* %86, i64 %87, i32 4, i32** %88, i64* %89, i32* %31)
  %91 = icmp slt i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  store i32 -1, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %126

93:                                               ; preds = %85
  %94 = load i32*, i32** %14, align 8
  %95 = load i64, i64* %17, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = load i64, i64* %18, align 8
  %98 = call i32 @os_memcpy(i32* %96, i32* %31, i64 %97)
  %99 = load i64, i64* %18, align 8
  %100 = load i64, i64* %17, align 8
  %101 = add i64 %100, %99
  store i64 %101, i64* %17, align 8
  br label %105

102:                                              ; preds = %80
  %103 = load i64, i64* %16, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %16, align 8
  br label %54

105:                                              ; preds = %93, %54
  %106 = load i64, i64* %15, align 8
  %107 = urem i64 %106, 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %105
  %110 = load i64, i64* %15, align 8
  %111 = urem i64 %110, 8
  %112 = sub i64 8, %111
  %113 = trunc i64 %112 to i32
  %114 = shl i32 255, %113
  store i32 %114, i32* %27, align 4
  %115 = load i32, i32* %27, align 4
  %116 = load i32*, i32** %14, align 8
  %117 = load i64, i64* %17, align 8
  %118 = sub i64 %117, 1
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, %115
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %109, %105
  %123 = mul nuw i64 4, %29
  %124 = trunc i64 %123 to i32
  %125 = call i32 @forced_memzero(i32* %31, i32 %124)
  store i32 0, i32* %8, align 4
  store i32 1, i32* %26, align 4
  br label %126

126:                                              ; preds = %122, %92, %79
  %127 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %127)
  %128 = load i32, i32* %8, align 4
  ret i32 %128
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i32 @WPA_PUT_LE16(i32*, i64) #2

declare dso_local i64 @hmac_sha512_vector(i32*, i64, i32, i32**, i64*, i32*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

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
