; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_shorthash/siphash24/ref/extr_shorthash_siphash24_ref.c_crypto_shorthash_siphash24.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_shorthash/siphash24/ref/extr_shorthash_siphash24_ref.c_crypto_shorthash_siphash24.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIPROUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_shorthash_siphash24(i8* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 1886610805, i32* %9, align 4
  store i32 1852075885, i32* %10, align 4
  store i32 1852142177, i32* %11, align 4
  store i32 2037671283, i32* %12, align 4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @LOAD64_LE(i8* %19)
  store i32 %20, i32* %14, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 8
  %23 = call i32 @LOAD64_LE(i8* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds i8, i8* %24, i64 %25
  %27 = load i64, i64* %7, align 8
  %28 = urem i64 %27, 4
  %29 = sub i64 0, %28
  %30 = getelementptr inbounds i8, i8* %26, i64 %29
  store i8* %30, i8** %17, align 8
  %31 = load i64, i64* %7, align 8
  %32 = and i64 %31, 7
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %18, align 4
  %34 = load i64, i64* %7, align 8
  %35 = trunc i64 %34 to i32
  %36 = shl i32 %35, 56
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %12, align 4
  %39 = xor i32 %38, %37
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %11, align 4
  %42 = xor i32 %41, %40
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %10, align 4
  %45 = xor i32 %44, %43
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %9, align 4
  %48 = xor i32 %47, %46
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %64, %4
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %17, align 8
  %52 = icmp ne i8* %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %49
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @LOAD64_LE(i8* %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %12, align 4
  %58 = xor i32 %57, %56
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* @SIPROUND, align 4
  %60 = load i32, i32* @SIPROUND, align 4
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* %9, align 4
  %63 = xor i32 %62, %61
  store i32 %63, i32* %9, align 4
  br label %64

64:                                               ; preds = %53
  %65 = load i8*, i8** %6, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 8
  store i8* %66, i8** %6, align 8
  br label %49

67:                                               ; preds = %49
  %68 = load i32, i32* %18, align 4
  switch i32 %68, label %125 [
    i32 7, label %69
    i32 6, label %77
    i32 5, label %85
    i32 4, label %93
    i32 3, label %101
    i32 2, label %109
    i32 1, label %117
    i32 0, label %124
  ]

69:                                               ; preds = %67
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 6
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = shl i32 %73, 48
  %75 = load i32, i32* %13, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %67, %69
  %78 = load i8*, i8** %6, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 5
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 40
  %83 = load i32, i32* %13, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %67, %77
  %86 = load i8*, i8** %6, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 4
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = shl i32 %89, 32
  %91 = load i32, i32* %13, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %13, align 4
  br label %93

93:                                               ; preds = %67, %85
  %94 = load i8*, i8** %6, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 3
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 24
  %99 = load i32, i32* %13, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %13, align 4
  br label %101

101:                                              ; preds = %67, %93
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 2
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = shl i32 %105, 16
  %107 = load i32, i32* %13, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %13, align 4
  br label %109

109:                                              ; preds = %67, %101
  %110 = load i8*, i8** %6, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 1
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = shl i32 %113, 8
  %115 = load i32, i32* %13, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %67, %109
  %118 = load i8*, i8** %6, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 0
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = load i32, i32* %13, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %13, align 4
  br label %125

124:                                              ; preds = %67
  br label %125

125:                                              ; preds = %67, %124, %117
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %12, align 4
  %128 = xor i32 %127, %126
  store i32 %128, i32* %12, align 4
  %129 = load i32, i32* @SIPROUND, align 4
  %130 = load i32, i32* @SIPROUND, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %9, align 4
  %133 = xor i32 %132, %131
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %11, align 4
  %135 = xor i32 %134, 255
  store i32 %135, i32* %11, align 4
  %136 = load i32, i32* @SIPROUND, align 4
  %137 = load i32, i32* @SIPROUND, align 4
  %138 = load i32, i32* @SIPROUND, align 4
  %139 = load i32, i32* @SIPROUND, align 4
  %140 = load i32, i32* %9, align 4
  %141 = load i32, i32* %10, align 4
  %142 = xor i32 %140, %141
  %143 = load i32, i32* %11, align 4
  %144 = xor i32 %142, %143
  %145 = load i32, i32* %12, align 4
  %146 = xor i32 %144, %145
  store i32 %146, i32* %13, align 4
  %147 = load i8*, i8** %5, align 8
  %148 = load i32, i32* %13, align 4
  %149 = call i32 @STORE64_LE(i8* %147, i32 %148)
  ret i32 0
}

declare dso_local i32 @LOAD64_LE(i8*) #1

declare dso_local i32 @STORE64_LE(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
