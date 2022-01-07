; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cts128.c_CRYPTO_cts128_decrypt_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/modes/extr_cts128.c_CRYPTO_cts128_decrypt_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i64, [24 x i8] }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @CRYPTO_cts128_decrypt_block(i8* %0, i8* %1, i64 %2, i8* %3, i8* %4, i32 (i8*, i8*, i8*)* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32 (i8*, i8*, i8*)*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %union.anon, align 8
  %17 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 (i8*, i8*, i8*)* %5, i32 (i8*, i8*, i8*)** %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ule i64 %18, 16
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %135

21:                                               ; preds = %6
  %22 = load i64, i64* %10, align 8
  %23 = urem i64 %22, 16
  store i64 %23, i64* %14, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i64 16, i64* %14, align 8
  br label %26

26:                                               ; preds = %25, %21
  %27 = load i64, i64* %14, align 8
  %28 = add i64 16, %27
  %29 = load i64, i64* %10, align 8
  %30 = sub i64 %29, %28
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %26
  %34 = load i8*, i8** %8, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %12, align 8
  %39 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %40 = call i32 @CRYPTO_cbc128_decrypt(i8* %34, i8* %35, i64 %36, i8* %37, i8* %38, i32 (i8*, i8*, i8*)* %39)
  %41 = load i64, i64* %10, align 8
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 %41
  store i8* %43, i8** %8, align 8
  %44 = load i64, i64* %10, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  store i8* %46, i8** %9, align 8
  br label %47

47:                                               ; preds = %33, %26
  %48 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = bitcast %union.anon* %16 to [32 x i8]*
  %51 = getelementptr inbounds [32 x i8], [32 x i8]* %50, i64 0, i64 0
  %52 = getelementptr inbounds i8, i8* %51, i64 16
  %53 = load i8*, i8** %11, align 8
  %54 = call i32 %48(i8* %49, i8* %52, i8* %53)
  %55 = bitcast %union.anon* %16 to [32 x i8]*
  %56 = getelementptr inbounds [32 x i8], [32 x i8]* %55, i64 0, i64 0
  %57 = bitcast %union.anon* %16 to [32 x i8]*
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %57, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 16
  %60 = call i32 @memcpy(i8* %56, i8* %59, i64 16)
  %61 = bitcast %union.anon* %16 to [32 x i8]*
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %61, i64 0, i64 0
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 16
  %65 = load i64, i64* %14, align 8
  %66 = call i32 @memcpy(i8* %62, i8* %64, i64 %65)
  %67 = load i32 (i8*, i8*, i8*)*, i32 (i8*, i8*, i8*)** %13, align 8
  %68 = bitcast %union.anon* %16 to [32 x i8]*
  %69 = getelementptr inbounds [32 x i8], [32 x i8]* %68, i64 0, i64 0
  %70 = bitcast %union.anon* %16 to [32 x i8]*
  %71 = getelementptr inbounds [32 x i8], [32 x i8]* %70, i64 0, i64 0
  %72 = load i8*, i8** %11, align 8
  %73 = call i32 %67(i8* %69, i8* %71, i8* %72)
  store i64 0, i64* %15, align 8
  br label %74

74:                                               ; preds = %101, %47
  %75 = load i64, i64* %15, align 8
  %76 = icmp ult i64 %75, 16
  br i1 %76, label %77, label %104

77:                                               ; preds = %74
  %78 = load i8*, i8** %8, align 8
  %79 = load i64, i64* %15, align 8
  %80 = getelementptr inbounds i8, i8* %78, i64 %79
  %81 = load i8, i8* %80, align 1
  store i8 %81, i8* %17, align 1
  %82 = bitcast %union.anon* %16 to [32 x i8]*
  %83 = load i64, i64* %15, align 8
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %82, i64 0, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8*, i8** %12, align 8
  %88 = load i64, i64* %15, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = xor i32 %86, %91
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %9, align 8
  %95 = load i64, i64* %15, align 8
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8 %93, i8* %96, align 1
  %97 = load i8, i8* %17, align 1
  %98 = load i8*, i8** %12, align 8
  %99 = load i64, i64* %15, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8 %97, i8* %100, align 1
  br label %101

101:                                              ; preds = %77
  %102 = load i64, i64* %15, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %15, align 8
  br label %74

104:                                              ; preds = %74
  %105 = load i64, i64* %14, align 8
  %106 = add i64 %105, 16
  store i64 %106, i64* %14, align 8
  br label %107

107:                                              ; preds = %127, %104
  %108 = load i64, i64* %15, align 8
  %109 = load i64, i64* %14, align 8
  %110 = icmp ult i64 %108, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %107
  %112 = bitcast %union.anon* %16 to [32 x i8]*
  %113 = load i64, i64* %15, align 8
  %114 = getelementptr inbounds [32 x i8], [32 x i8]* %112, i64 0, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = load i8*, i8** %8, align 8
  %118 = load i64, i64* %15, align 8
  %119 = getelementptr inbounds i8, i8* %117, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = zext i8 %120 to i32
  %122 = xor i32 %116, %121
  %123 = trunc i32 %122 to i8
  %124 = load i8*, i8** %9, align 8
  %125 = load i64, i64* %15, align 8
  %126 = getelementptr inbounds i8, i8* %124, i64 %125
  store i8 %123, i8* %126, align 1
  br label %127

127:                                              ; preds = %111
  %128 = load i64, i64* %15, align 8
  %129 = add i64 %128, 1
  store i64 %129, i64* %15, align 8
  br label %107

130:                                              ; preds = %107
  %131 = load i64, i64* %10, align 8
  %132 = add i64 16, %131
  %133 = load i64, i64* %14, align 8
  %134 = add i64 %132, %133
  store i64 %134, i64* %7, align 8
  br label %135

135:                                              ; preds = %130, %20
  %136 = load i64, i64* %7, align 8
  ret i64 %136
}

declare dso_local i32 @CRYPTO_cbc128_decrypt(i8*, i8*, i64, i8*, i8*, i32 (i8*, i8*, i8*)*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
