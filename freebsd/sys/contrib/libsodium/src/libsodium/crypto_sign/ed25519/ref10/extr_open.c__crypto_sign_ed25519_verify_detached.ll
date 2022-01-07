; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_open.c__crypto_sign_ed25519_verify_detached.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_sign/ed25519/ref10/extr_open.c__crypto_sign_ed25519_verify_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_crypto_sign_ed25519_verify_detached(i8* %0, i8* %1, i64 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [64 x i8], align 16
  %14 = alloca [32 x i8], align 16
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i8*, i8** %7, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 32
  %19 = call i64 @sc25519_is_canonical(i8* %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %5
  %22 = load i8*, i8** %7, align 8
  %23 = call i64 @ge25519_has_small_order(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %5
  store i32 -1, i32* %6, align 4
  br label %73

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @ge25519_is_canonical(i8* %27)
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %10, align 8
  %32 = call i64 @ge25519_has_small_order(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26
  store i32 -1, i32* %6, align 4
  br label %73

35:                                               ; preds = %30
  %36 = load i8*, i8** %10, align 8
  %37 = call i64 @ge25519_frombytes_negate_vartime(i32* %15, i8* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %6, align 4
  br label %73

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @_crypto_sign_ed25519_ref10_hinit(i32* %12, i32 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @crypto_hash_sha512_update(i32* %12, i8* %43, i64 32)
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @crypto_hash_sha512_update(i32* %12, i8* %45, i64 32)
  %47 = load i8*, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @crypto_hash_sha512_update(i32* %12, i8* %47, i64 %48)
  %50 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %51 = call i32 @crypto_hash_sha512_final(i32* %12, i8* %50)
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %53 = call i32 @sc25519_reduce(i8* %52)
  %54 = getelementptr inbounds [64 x i8], [64 x i8]* %13, i64 0, i64 0
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 32
  %57 = call i32 @ge25519_double_scalarmult_vartime(i32* %16, i8* %54, i32* %15, i8* %56)
  %58 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %59 = call i32 @ge25519_tobytes(i8* %58, i32* %16)
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %61 = load i8*, i8** %7, align 8
  %62 = call i32 @crypto_verify_32(i8* %60, i8* %61)
  %63 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %64 = load i8*, i8** %7, align 8
  %65 = icmp eq i8* %63, %64
  %66 = zext i1 %65 to i32
  %67 = sub nsw i32 0, %66
  %68 = or i32 %62, %67
  %69 = load i8*, i8** %7, align 8
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %14, i64 0, i64 0
  %71 = call i32 @sodium_memcmp(i8* %69, i8* %70, i32 32)
  %72 = or i32 %68, %71
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %40, %39, %34, %25
  %74 = load i32, i32* %6, align 4
  ret i32 %74
}

declare dso_local i64 @sc25519_is_canonical(i8*) #1

declare dso_local i64 @ge25519_has_small_order(i8*) #1

declare dso_local i64 @ge25519_is_canonical(i8*) #1

declare dso_local i64 @ge25519_frombytes_negate_vartime(i32*, i8*) #1

declare dso_local i32 @_crypto_sign_ed25519_ref10_hinit(i32*, i32) #1

declare dso_local i32 @crypto_hash_sha512_update(i32*, i8*, i64) #1

declare dso_local i32 @crypto_hash_sha512_final(i32*, i8*) #1

declare dso_local i32 @sc25519_reduce(i8*) #1

declare dso_local i32 @ge25519_double_scalarmult_vartime(i32*, i8*, i32*, i8*) #1

declare dso_local i32 @ge25519_tobytes(i8*, i32*) #1

declare dso_local i32 @crypto_verify_32(i8*, i8*) #1

declare dso_local i32 @sodium_memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
