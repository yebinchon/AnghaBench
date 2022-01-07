; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_from_uniform.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_core/ed25519/ref10/extr_ed25519_ref10.c_ge25519_from_uniform.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@curve25519_A = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ge25519_from_uniform(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @memcpy(i8* %21, i8* %22, i32 32)
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 31
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, 128
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %15, align 1
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 31
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, 127
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %31, align 1
  %36 = load i32*, i32** %7, align 8
  %37 = load i8*, i8** %3, align 8
  %38 = call i32 @fe25519_frombytes(i32* %36, i8* %37)
  %39 = load i32*, i32** %7, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @fe25519_sq2(i32* %39, i32* %40)
  %42 = load i32*, i32** %7, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load i32*, i32** %7, align 8
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 @fe25519_invert(i32* %46, i32* %47)
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** @curve25519_A, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 @fe25519_mul(i32* %49, i32* %50, i32* %51)
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @fe25519_neg(i32* %53, i32* %54)
  %56 = load i32*, i32** %9, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32 @fe25519_sq(i32* %56, i32* %57)
  %59 = load i32*, i32** %10, align 8
  %60 = load i32*, i32** %8, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @fe25519_mul(i32* %59, i32* %60, i32* %61)
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @fe25519_add(i32* %63, i32* %64, i32* %65)
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** @curve25519_A, align 8
  %70 = call i32 @fe25519_mul(i32* %67, i32* %68, i32* %69)
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @fe25519_add(i32* %71, i32* %72, i32* %73)
  %75 = load i32*, i32** %5, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @chi25519(i32* %75, i32* %76)
  %78 = load i8*, i8** %3, align 8
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @fe25519_tobytes(i8* %78, i32* %79)
  %81 = load i8*, i8** %3, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = and i32 %84, 1
  store i32 %85, i32* %14, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @fe25519_neg(i32* %86, i32* %87)
  %89 = load i32*, i32** %8, align 8
  %90 = load i32*, i32** %6, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @fe25519_cmov(i32* %89, i32* %90, i32 %91)
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @fe25519_0(i32* %93)
  %95 = load i32*, i32** %9, align 8
  %96 = load i32*, i32** @curve25519_A, align 8
  %97 = load i32, i32* %14, align 4
  %98 = call i32 @fe25519_cmov(i32* %95, i32* %96, i32 %97)
  %99 = load i32*, i32** %8, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = call i32 @fe25519_sub(i32* %99, i32* %100, i32* %101)
  %103 = load i32*, i32** %16, align 8
  %104 = call i32 @fe25519_1(i32* %103)
  %105 = load i32*, i32** %17, align 8
  %106 = load i32*, i32** %8, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @fe25519_add(i32* %105, i32* %106, i32* %107)
  %109 = load i32*, i32** %19, align 8
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = call i32 @fe25519_sub(i32* %109, i32* %110, i32* %111)
  %113 = load i32*, i32** %18, align 8
  %114 = load i32*, i32** %17, align 8
  %115 = call i32 @fe25519_invert(i32* %113, i32* %114)
  %116 = load i32*, i32** %20, align 8
  %117 = load i32*, i32** %19, align 8
  %118 = load i32*, i32** %18, align 8
  %119 = call i32 @fe25519_mul(i32* %116, i32* %117, i32* %118)
  %120 = load i8*, i8** %3, align 8
  %121 = load i32*, i32** %20, align 8
  %122 = call i32 @fe25519_tobytes(i8* %120, i32* %121)
  %123 = load i8, i8* %15, align 1
  %124 = zext i8 %123 to i32
  %125 = load i8*, i8** %3, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 31
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = or i32 %128, %124
  %130 = trunc i32 %129 to i8
  store i8 %130, i8* %126, align 1
  %131 = load i8*, i8** %3, align 8
  %132 = call i64 @ge25519_frombytes(i32* %11, i8* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %2
  %135 = call i32 (...) @abort() #3
  unreachable

136:                                              ; preds = %2
  %137 = call i32 @ge25519_p3_dbl(i32* %12, i32* %11)
  %138 = call i32 @ge25519_p1p1_to_p2(i32* %13, i32* %12)
  %139 = call i32 @ge25519_p2_dbl(i32* %12, i32* %13)
  %140 = call i32 @ge25519_p1p1_to_p2(i32* %13, i32* %12)
  %141 = call i32 @ge25519_p2_dbl(i32* %12, i32* %13)
  %142 = call i32 @ge25519_p1p1_to_p3(i32* %11, i32* %12)
  %143 = load i8*, i8** %3, align 8
  %144 = call i32 @ge25519_p3_tobytes(i8* %143, i32* %11)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @fe25519_frombytes(i32*, i8*) #1

declare dso_local i32 @fe25519_sq2(i32*, i32*) #1

declare dso_local i32 @fe25519_invert(i32*, i32*) #1

declare dso_local i32 @fe25519_mul(i32*, i32*, i32*) #1

declare dso_local i32 @fe25519_neg(i32*, i32*) #1

declare dso_local i32 @fe25519_sq(i32*, i32*) #1

declare dso_local i32 @fe25519_add(i32*, i32*, i32*) #1

declare dso_local i32 @chi25519(i32*, i32*) #1

declare dso_local i32 @fe25519_tobytes(i8*, i32*) #1

declare dso_local i32 @fe25519_cmov(i32*, i32*, i32) #1

declare dso_local i32 @fe25519_0(i32*) #1

declare dso_local i32 @fe25519_sub(i32*, i32*, i32*) #1

declare dso_local i32 @fe25519_1(i32*) #1

declare dso_local i64 @ge25519_frombytes(i32*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

declare dso_local i32 @ge25519_p3_dbl(i32*, i32*) #1

declare dso_local i32 @ge25519_p1p1_to_p2(i32*, i32*) #1

declare dso_local i32 @ge25519_p2_dbl(i32*, i32*) #1

declare dso_local i32 @ge25519_p1p1_to_p3(i32*, i32*) #1

declare dso_local i32 @ge25519_p3_tobytes(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
