; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_obsolete.c_crypto_sign_edwards25519sha512batch_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_obsolete.c_crypto_sign_edwards25519sha512batch_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_sign_edwards25519sha512batch_MESSAGEBYTES_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_sign_edwards25519sha512batch_open(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca [64 x i8], align 16
  %13 = alloca [32 x i8], align 16
  %14 = alloca [32 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %22 = load i64*, i64** %8, align 8
  store i64 0, i64* %22, align 8
  %23 = load i64, i64* %10, align 8
  %24 = icmp ult i64 %23, 64
  br i1 %24, label %30, label %25

25:                                               ; preds = %5
  %26 = load i64, i64* %10, align 8
  %27 = sub i64 %26, 64
  %28 = load i64, i64* @crypto_sign_edwards25519sha512batch_MESSAGEBYTES_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %5
  store i32 -1, i32* %6, align 4
  br label %100

31:                                               ; preds = %25
  %32 = load i64, i64* %10, align 8
  %33 = sub i64 %32, 64
  store i64 %33, i64* %15, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds i8, i8* %34, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = and i32 %39, 224
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i32 -1, i32* %6, align 4
  br label %100

43:                                               ; preds = %31
  %44 = load i8*, i8** %11, align 8
  %45 = call i64 @ge25519_has_small_order(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %43
  %48 = load i8*, i8** %11, align 8
  %49 = call i64 @ge25519_frombytes_negate_vartime(i32* %19, i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %47
  %52 = load i8*, i8** %9, align 8
  %53 = call i64 @ge25519_has_small_order(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %51
  %56 = load i8*, i8** %9, align 8
  %57 = call i64 @ge25519_frombytes_negate_vartime(i32* %20, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %51, %47, %43
  store i32 -1, i32* %6, align 4
  br label %100

60:                                               ; preds = %55
  %61 = call i32 @ge25519_p3_to_cached(i32* %16, i32* %19)
  %62 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %63 = load i8*, i8** %9, align 8
  %64 = load i64, i64* %15, align 8
  %65 = add i64 %64, 32
  %66 = call i32 @crypto_hash_sha512(i8* %62, i8* %63, i64 %65)
  %67 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %68 = call i32 @sc25519_reduce(i8* %67)
  %69 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %70 = call i32 @ge25519_scalarmult(i32* %21, i8* %69, i32* %20)
  %71 = call i32 @ge25519_add(i32* %17, i32* %21, i32* %16)
  %72 = call i32 @ge25519_p1p1_to_p2(i32* %18, i32* %17)
  %73 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %74 = call i32 @ge25519_tobytes(i8* %73, i32* %18)
  %75 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 31
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = xor i32 %77, 128
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %75, align 1
  %80 = load i8*, i8** %9, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 32
  %82 = load i64, i64* %15, align 8
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  %84 = call i32 @ge25519_scalarmult_base(i32* %20, i8* %83)
  %85 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %86 = call i32 @ge25519_p3_tobytes(i8* %85, i32* %20)
  %87 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %89 = call i64 @crypto_verify_32(i8* %87, i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %60
  store i32 -1, i32* %6, align 4
  br label %100

92:                                               ; preds = %60
  %93 = load i64, i64* %15, align 8
  %94 = load i64*, i64** %8, align 8
  store i64 %93, i64* %94, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 32
  %98 = load i64, i64* %15, align 8
  %99 = call i32 @memmove(i8* %95, i8* %97, i64 %98)
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %92, %91, %59, %42, %30
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @ge25519_has_small_order(i8*) #1

declare dso_local i64 @ge25519_frombytes_negate_vartime(i32*, i8*) #1

declare dso_local i32 @ge25519_p3_to_cached(i32*, i32*) #1

declare dso_local i32 @crypto_hash_sha512(i8*, i8*, i64) #1

declare dso_local i32 @sc25519_reduce(i8*) #1

declare dso_local i32 @ge25519_scalarmult(i32*, i8*, i32*) #1

declare dso_local i32 @ge25519_add(i32*, i32*, i32*) #1

declare dso_local i32 @ge25519_p1p1_to_p2(i32*, i32*) #1

declare dso_local i32 @ge25519_tobytes(i8*, i32*) #1

declare dso_local i32 @ge25519_scalarmult_base(i32*, i8*) #1

declare dso_local i32 @ge25519_p3_tobytes(i8*, i32*) #1

declare dso_local i64 @crypto_verify_32(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
