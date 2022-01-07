; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_sign.c__crypto_sign_ed25519_detached.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_sign.c__crypto_sign_ed25519_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_crypto_sign_ed25519_detached(i8* %0, i64* %1, i8* %2, i64 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [64 x i8], align 16
  %15 = alloca [64 x i8], align 16
  %16 = alloca [64 x i8], align 16
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 %5, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = call i32 @_crypto_sign_ed25519_ref10_hinit(i32* %13, i32 %18)
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @crypto_hash_sha512(i8* %20, i8* %21, i32 32)
  %23 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %24 = getelementptr inbounds i8, i8* %23, i64 32
  %25 = call i32 @crypto_hash_sha512_update(i32* %13, i8* %24, i64 32)
  %26 = load i8*, i8** %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @crypto_hash_sha512_update(i32* %13, i8* %26, i64 %27)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %30 = call i32 @crypto_hash_sha512_final(i32* %13, i8* %29)
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 32
  %33 = load i8*, i8** %11, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 32
  %35 = call i32 @memmove(i8* %32, i8* %34, i32 32)
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %37 = call i32 @sc25519_reduce(i8* %36)
  %38 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %39 = call i32 @ge25519_scalarmult_base(i32* %17, i8* %38)
  %40 = load i8*, i8** %7, align 8
  %41 = call i32 @ge25519_p3_tobytes(i8* %40, i32* %17)
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @_crypto_sign_ed25519_ref10_hinit(i32* %13, i32 %42)
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @crypto_hash_sha512_update(i32* %13, i8* %44, i64 64)
  %46 = load i8*, i8** %9, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @crypto_hash_sha512_update(i32* %13, i8* %46, i64 %47)
  %49 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %50 = call i32 @crypto_hash_sha512_final(i32* %13, i8* %49)
  %51 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %52 = call i32 @sc25519_reduce(i8* %51)
  %53 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %54 = call i32 @_crypto_sign_ed25519_clamp(i8* %53)
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 32
  %57 = getelementptr inbounds [64 x i8], [64 x i8]* %16, i64 0, i64 0
  %58 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %59 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %60 = call i32 @sc25519_muladd(i8* %56, i8* %57, i8* %58, i8* %59)
  %61 = getelementptr inbounds [64 x i8], [64 x i8]* %14, i64 0, i64 0
  %62 = call i32 @sodium_memzero(i8* %61, i32 64)
  %63 = getelementptr inbounds [64 x i8], [64 x i8]* %15, i64 0, i64 0
  %64 = call i32 @sodium_memzero(i8* %63, i32 64)
  %65 = load i64*, i64** %8, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %6
  %68 = load i64*, i64** %8, align 8
  store i64 64, i64* %68, align 8
  br label %69

69:                                               ; preds = %67, %6
  ret i32 0
}

declare dso_local i32 @_crypto_sign_ed25519_ref10_hinit(i32*, i32) #1

declare dso_local i32 @crypto_hash_sha512(i8*, i8*, i32) #1

declare dso_local i32 @crypto_hash_sha512_update(i32*, i8*, i64) #1

declare dso_local i32 @crypto_hash_sha512_final(i32*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @sc25519_reduce(i8*) #1

declare dso_local i32 @ge25519_scalarmult_base(i32*, i8*) #1

declare dso_local i32 @ge25519_p3_tobytes(i8*, i32*) #1

declare dso_local i32 @_crypto_sign_ed25519_clamp(i8*) #1

declare dso_local i32 @sc25519_muladd(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
