; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ge25519.c_crypto_sign_ed25519_ref_double_scalarmult_vartime.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_ge25519.c_crypto_sign_ed25519_ref_double_scalarmult_vartime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ge25519_double_scalarmult_vartime(i64* %0, i64* %1, i32* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [16 x i64], align 16
  %13 = alloca [127 x i8], align 16
  %14 = alloca i32, align 4
  store i64* %0, i64** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 0
  %16 = call i32 @setneutral(i64* %15)
  %17 = load i64*, i64** %7, align 8
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 1
  store i64 %18, i64* %19, align 8
  %20 = load i64*, i64** %7, align 8
  %21 = bitcast i64* %20 to i32*
  %22 = call i32 @dbl_p1p1(i32* %11, i32* %21)
  %23 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 2
  %24 = call i32 @p1p1_to_p3(i64* %23, i32* %11)
  %25 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 1
  %26 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 2
  %27 = call i32 @add_p1p1(i32* %11, i64* %25, i64* %26)
  %28 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 3
  %29 = call i32 @p1p1_to_p3(i64* %28, i32* %11)
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 4
  store i64 %31, i64* %32, align 16
  %33 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 1
  %34 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 4
  %35 = call i32 @add_p1p1(i32* %11, i64* %33, i64* %34)
  %36 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 5
  %37 = call i32 @p1p1_to_p3(i64* %36, i32* %11)
  %38 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 2
  %39 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 4
  %40 = call i32 @add_p1p1(i32* %11, i64* %38, i64* %39)
  %41 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 6
  %42 = call i32 @p1p1_to_p3(i64* %41, i32* %11)
  %43 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 3
  %44 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 4
  %45 = call i32 @add_p1p1(i32* %11, i64* %43, i64* %44)
  %46 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 7
  %47 = call i32 @p1p1_to_p3(i64* %46, i32* %11)
  %48 = load i64*, i64** %9, align 8
  %49 = bitcast i64* %48 to i32*
  %50 = call i32 @dbl_p1p1(i32* %11, i32* %49)
  %51 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 8
  %52 = call i32 @p1p1_to_p3(i64* %51, i32* %11)
  %53 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 1
  %54 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 8
  %55 = call i32 @add_p1p1(i32* %11, i64* %53, i64* %54)
  %56 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 9
  %57 = call i32 @p1p1_to_p3(i64* %56, i32* %11)
  %58 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 5
  %59 = bitcast i64* %58 to i32*
  %60 = call i32 @dbl_p1p1(i32* %11, i32* %59)
  %61 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 10
  %62 = call i32 @p1p1_to_p3(i64* %61, i32* %11)
  %63 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 3
  %64 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 8
  %65 = call i32 @add_p1p1(i32* %11, i64* %63, i64* %64)
  %66 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 11
  %67 = call i32 @p1p1_to_p3(i64* %66, i32* %11)
  %68 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 4
  %69 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 8
  %70 = call i32 @add_p1p1(i32* %11, i64* %68, i64* %69)
  %71 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 12
  %72 = call i32 @p1p1_to_p3(i64* %71, i32* %11)
  %73 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 1
  %74 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 12
  %75 = call i32 @add_p1p1(i32* %11, i64* %73, i64* %74)
  %76 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 13
  %77 = call i32 @p1p1_to_p3(i64* %76, i32* %11)
  %78 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 2
  %79 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 12
  %80 = call i32 @add_p1p1(i32* %11, i64* %78, i64* %79)
  %81 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 14
  %82 = call i32 @p1p1_to_p3(i64* %81, i32* %11)
  %83 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 3
  %84 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 12
  %85 = call i32 @add_p1p1(i32* %11, i64* %83, i64* %84)
  %86 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 15
  %87 = call i32 @p1p1_to_p3(i64* %86, i32* %11)
  %88 = getelementptr inbounds [127 x i8], [127 x i8]* %13, i64 0, i64 0
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = call i32 @sc25519_2interleave2(i8* %88, i32* %89, i32* %90)
  %92 = getelementptr inbounds [127 x i8], [127 x i8]* %13, i64 0, i64 126
  %93 = load i8, i8* %92, align 2
  %94 = zext i8 %93 to i64
  %95 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %6, align 8
  store i64 %96, i64* %97, align 8
  store i32 125, i32* %14, align 4
  br label %98

98:                                               ; preds = %139, %5
  %99 = load i32, i32* %14, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %142

101:                                              ; preds = %98
  %102 = load i64*, i64** %6, align 8
  %103 = bitcast i64* %102 to i32*
  %104 = call i32 @dbl_p1p1(i32* %11, i32* %103)
  %105 = load i64*, i64** %6, align 8
  %106 = bitcast i64* %105 to i32*
  %107 = call i32 @p1p1_to_p2(i32* %106, i32* %11)
  %108 = load i64*, i64** %6, align 8
  %109 = bitcast i64* %108 to i32*
  %110 = call i32 @dbl_p1p1(i32* %11, i32* %109)
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [127 x i8], [127 x i8]* %13, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %128

117:                                              ; preds = %101
  %118 = load i64*, i64** %6, align 8
  %119 = call i32 @p1p1_to_p3(i64* %118, i32* %11)
  %120 = load i64*, i64** %6, align 8
  %121 = load i32, i32* %14, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [127 x i8], [127 x i8]* %13, i64 0, i64 %122
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i64
  %126 = getelementptr inbounds [16 x i64], [16 x i64]* %12, i64 0, i64 %125
  %127 = call i32 @add_p1p1(i32* %11, i64* %120, i64* %126)
  br label %128

128:                                              ; preds = %117, %101
  %129 = load i32, i32* %14, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %128
  %132 = load i64*, i64** %6, align 8
  %133 = bitcast i64* %132 to i32*
  %134 = call i32 @p1p1_to_p2(i32* %133, i32* %11)
  br label %138

135:                                              ; preds = %128
  %136 = load i64*, i64** %6, align 8
  %137 = call i32 @p1p1_to_p3(i64* %136, i32* %11)
  br label %138

138:                                              ; preds = %135, %131
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %14, align 4
  br label %98

142:                                              ; preds = %98
  ret void
}

declare dso_local i32 @setneutral(i64*) #1

declare dso_local i32 @dbl_p1p1(i32*, i32*) #1

declare dso_local i32 @p1p1_to_p3(i64*, i32*) #1

declare dso_local i32 @add_p1p1(i32*, i64*, i64*) #1

declare dso_local i32 @sc25519_2interleave2(i8*, i32*, i32*) #1

declare dso_local i32 @p1p1_to_p2(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
