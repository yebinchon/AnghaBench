; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_x25519_scalar_mult.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_curve25519.c_x25519_scalar_mult.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*)* @x25519_scalar_mult to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25519_scalar_mult(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [32 x i32], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %15, align 4
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @memcpy(i32* %18, i32* %19, i32 32)
  %21 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %22 = load i32, i32* %21, align 16
  %23 = and i32 %22, 248
  store i32 %23, i32* %21, align 16
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 31
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 127
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 31
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, 64
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @fe51_frombytes(i32 %30, i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @fe51_1(i32 %33)
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @fe51_0(i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @fe51_copy(i32 %37, i32 %38)
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @fe51_1(i32 %40)
  store i32 254, i32* %16, align 4
  br label %42

42:                                               ; preds = %134, %3
  %43 = load i32, i32* %16, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %137

45:                                               ; preds = %42
  %46 = load i32, i32* %16, align 4
  %47 = sdiv i32 %46, 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %16, align 4
  %52 = and i32 %51, 7
  %53 = ashr i32 %50, %52
  %54 = and i32 1, %53
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %15, align 4
  %57 = xor i32 %56, %55
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @fe51_cswap(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %15, align 4
  %65 = call i32 @fe51_cswap(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* %17, align 4
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = call i32 @fe51_sub(i32 %67, i32 %68, i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @fe51_sub(i32 %71, i32 %72, i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @fe51_add(i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @fe51_add(i32 %79, i32 %80, i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @fe51_mul(i32 %83, i32 %84, i32 %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @fe51_mul(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @fe51_sq(i32 %91, i32 %92)
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @fe51_sq(i32 %94, i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @fe51_add(i32 %97, i32 %98, i32 %99)
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @fe51_sub(i32 %101, i32 %102, i32 %103)
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %12, align 4
  %108 = call i32 @fe51_mul(i32 %105, i32 %106, i32 %107)
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @fe51_sub(i32 %109, i32 %110, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @fe51_sq(i32 %113, i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %13, align 4
  %118 = call i32 @fe51_mul121666(i32 %116, i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @fe51_sq(i32 %119, i32 %120)
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @fe51_add(i32 %122, i32 %123, i32 %124)
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @fe51_mul(i32 %126, i32 %127, i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %12, align 4
  %133 = call i32 @fe51_mul(i32 %130, i32 %131, i32 %132)
  br label %134

134:                                              ; preds = %45
  %135 = load i32, i32* %16, align 4
  %136 = add nsw i32 %135, -1
  store i32 %136, i32* %16, align 4
  br label %42

137:                                              ; preds = %42
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = call i32 @fe51_invert(i32 %138, i32 %139)
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @fe51_mul(i32 %141, i32 %142, i32 %143)
  %145 = load i32*, i32** %4, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @fe51_tobytes(i32* %145, i32 %146)
  %148 = getelementptr inbounds [32 x i32], [32 x i32]* %14, i64 0, i64 0
  %149 = call i32 @OPENSSL_cleanse(i32* %148, i32 128)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fe51_frombytes(i32, i32*) #1

declare dso_local i32 @fe51_1(i32) #1

declare dso_local i32 @fe51_0(i32) #1

declare dso_local i32 @fe51_copy(i32, i32) #1

declare dso_local i32 @fe51_cswap(i32, i32, i32) #1

declare dso_local i32 @fe51_sub(i32, i32, i32) #1

declare dso_local i32 @fe51_add(i32, i32, i32) #1

declare dso_local i32 @fe51_mul(i32, i32, i32) #1

declare dso_local i32 @fe51_sq(i32, i32) #1

declare dso_local i32 @fe51_mul121666(i32, i32) #1

declare dso_local i32 @fe51_invert(i32, i32) #1

declare dso_local i32 @fe51_tobytes(i32*, i32) #1

declare dso_local i32 @OPENSSL_cleanse(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
