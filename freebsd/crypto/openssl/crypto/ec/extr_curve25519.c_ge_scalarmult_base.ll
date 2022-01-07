; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_ge_scalarmult_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_ge_scalarmult_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @ge_scalarmult_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ge_scalarmult_base(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [64 x i8], align 16
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %41, %2
  %12 = load i32, i32* %10, align 4
  %13 = icmp slt i32 %12, 32
  br i1 %13, label %14, label %44

14:                                               ; preds = %11
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 0
  %21 = and i32 %20, 15
  %22 = trunc i32 %21 to i8
  %23 = load i32, i32* %10, align 4
  %24 = mul nsw i32 2, %23
  %25 = add nsw i32 %24, 0
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %26
  store i8 %22, i8* %27, align 1
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 4
  %34 = and i32 %33, 15
  %35 = trunc i32 %34 to i8
  %36 = load i32, i32* %10, align 4
  %37 = mul nsw i32 2, %36
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %39
  store i8 %35, i8* %40, align 1
  br label %41

41:                                               ; preds = %14
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  br label %11

44:                                               ; preds = %11
  store i8 0, i8* %6, align 1
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %79, %44
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 63
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load i8, i8* %6, align 1
  %50 = sext i8 %49 to i32
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = add nsw i32 %55, %50
  %57 = trunc i32 %56 to i8
  store i8 %57, i8* %53, align 1
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = add nsw i32 %62, 8
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %6, align 1
  %65 = load i8, i8* %6, align 1
  %66 = sext i8 %65 to i32
  %67 = ashr i32 %66, 4
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %6, align 1
  %69 = load i8, i8* %6, align 1
  %70 = sext i8 %69 to i32
  %71 = shl i32 %70, 4
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = sub nsw i32 %76, %71
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %74, align 1
  br label %79

79:                                               ; preds = %48
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %45

82:                                               ; preds = %45
  %83 = load i8, i8* %6, align 1
  %84 = sext i8 %83 to i32
  %85 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 63
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = add nsw i32 %87, %84
  %89 = trunc i32 %88 to i8
  store i8 %89, i8* %85, align 1
  %90 = load i32*, i32** %3, align 8
  %91 = call i32 @ge_p3_0(i32* %90)
  store i32 1, i32* %10, align 4
  br label %92

92:                                               ; preds = %107, %82
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 64
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = sdiv i32 %96, 2
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = call i32 @table_select(i32* %9, i32 %97, i8 signext %101)
  %103 = load i32*, i32** %3, align 8
  %104 = call i32 @ge_madd(i32* %7, i32* %103, i32* %9)
  %105 = load i32*, i32** %3, align 8
  %106 = call i32 @ge_p1p1_to_p3(i32* %105, i32* %7)
  br label %107

107:                                              ; preds = %95
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 2
  store i32 %109, i32* %10, align 4
  br label %92

110:                                              ; preds = %92
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @ge_p3_dbl(i32* %7, i32* %111)
  %113 = call i32 @ge_p1p1_to_p2(i32* %8, i32* %7)
  %114 = call i32 @ge_p2_dbl(i32* %7, i32* %8)
  %115 = call i32 @ge_p1p1_to_p2(i32* %8, i32* %7)
  %116 = call i32 @ge_p2_dbl(i32* %7, i32* %8)
  %117 = call i32 @ge_p1p1_to_p2(i32* %8, i32* %7)
  %118 = call i32 @ge_p2_dbl(i32* %7, i32* %8)
  %119 = load i32*, i32** %3, align 8
  %120 = call i32 @ge_p1p1_to_p3(i32* %119, i32* %7)
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %136, %110
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 64
  br i1 %123, label %124, label %139

124:                                              ; preds = %121
  %125 = load i32, i32* %10, align 4
  %126 = sdiv i32 %125, 2
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 %128
  %130 = load i8, i8* %129, align 1
  %131 = call i32 @table_select(i32* %9, i32 %126, i8 signext %130)
  %132 = load i32*, i32** %3, align 8
  %133 = call i32 @ge_madd(i32* %7, i32* %132, i32* %9)
  %134 = load i32*, i32** %3, align 8
  %135 = call i32 @ge_p1p1_to_p3(i32* %134, i32* %7)
  br label %136

136:                                              ; preds = %124
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 2
  store i32 %138, i32* %10, align 4
  br label %121

139:                                              ; preds = %121
  %140 = getelementptr inbounds [64 x i8], [64 x i8]* %5, i64 0, i64 0
  %141 = call i32 @OPENSSL_cleanse(i8* %140, i32 64)
  ret void
}

declare dso_local i32 @ge_p3_0(i32*) #1

declare dso_local i32 @table_select(i32*, i32, i8 signext) #1

declare dso_local i32 @ge_madd(i32*, i32*, i32*) #1

declare dso_local i32 @ge_p1p1_to_p3(i32*, i32*) #1

declare dso_local i32 @ge_p3_dbl(i32*, i32*) #1

declare dso_local i32 @ge_p1p1_to_p2(i32*, i32*) #1

declare dso_local i32 @ge_p2_dbl(i32*, i32*) #1

declare dso_local i32 @OPENSSL_cleanse(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
