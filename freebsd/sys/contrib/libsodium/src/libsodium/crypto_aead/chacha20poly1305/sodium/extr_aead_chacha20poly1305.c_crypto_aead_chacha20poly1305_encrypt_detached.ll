; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/extr_aead_chacha20poly1305.c_crypto_aead_chacha20poly1305_encrypt_detached.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_aead/chacha20poly1305/sodium/extr_aead_chacha20poly1305.c_crypto_aead_chacha20poly1305_encrypt_detached.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_aead_chacha20poly1305_ABYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_aead_chacha20poly1305_encrypt_detached(i8* %0, i8* %1, i64* %2, i8* %3, i64 %4, i8* %5, i64 %6, i8* %7, i8* %8, i8* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8, align 1
  %22 = alloca [64 x i8], align 16
  %23 = alloca [8 x i8], align 1
  store i8* %0, i8** %11, align 8
  store i8* %1, i8** %12, align 8
  store i64* %2, i64** %13, align 8
  store i8* %3, i8** %14, align 8
  store i64 %4, i64* %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i8* %9, i8** %20, align 8
  %24 = load i8*, i8** %18, align 8
  %25 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %26 = load i8*, i8** %19, align 8
  %27 = load i8*, i8** %20, align 8
  %28 = call i32 @crypto_stream_chacha20(i8* %25, i32 64, i8* %26, i8* %27)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %30 = call i32 @crypto_onetimeauth_poly1305_init(i8* %21, i8* %29)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %22, i64 0, i64 0
  %32 = call i32 @sodium_memzero(i8* %31, i32 64)
  %33 = load i8*, i8** %16, align 8
  %34 = load i64, i64* %17, align 8
  %35 = trunc i64 %34 to i32
  %36 = call i32 @crypto_onetimeauth_poly1305_update(i8* %21, i8* %33, i32 %35)
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %38 = load i64, i64* %17, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @STORE64_LE(i8* %37, i32 %39)
  %41 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %42 = call i32 @crypto_onetimeauth_poly1305_update(i8* %21, i8* %41, i32 8)
  %43 = load i8*, i8** %11, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = load i64, i64* %15, align 8
  %46 = load i8*, i8** %19, align 8
  %47 = load i8*, i8** %20, align 8
  %48 = call i32 @crypto_stream_chacha20_xor_ic(i8* %43, i8* %44, i64 %45, i8* %46, i32 1, i8* %47)
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %15, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @crypto_onetimeauth_poly1305_update(i8* %21, i8* %49, i32 %51)
  %53 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %54 = load i64, i64* %15, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @STORE64_LE(i8* %53, i32 %55)
  %57 = getelementptr inbounds [8 x i8], [8 x i8]* %23, i64 0, i64 0
  %58 = call i32 @crypto_onetimeauth_poly1305_update(i8* %21, i8* %57, i32 8)
  %59 = load i8*, i8** %12, align 8
  %60 = call i32 @crypto_onetimeauth_poly1305_final(i8* %21, i8* %59)
  %61 = call i32 @sodium_memzero(i8* %21, i32 1)
  %62 = load i64*, i64** %13, align 8
  %63 = icmp ne i64* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %10
  %65 = load i64, i64* @crypto_aead_chacha20poly1305_ABYTES, align 8
  %66 = load i64*, i64** %13, align 8
  store i64 %65, i64* %66, align 8
  br label %67

67:                                               ; preds = %64, %10
  ret i32 0
}

declare dso_local i32 @crypto_stream_chacha20(i8*, i32, i8*, i8*) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_init(i8*, i8*) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_update(i8*, i8*, i32) #1

declare dso_local i32 @STORE64_LE(i8*, i32) #1

declare dso_local i32 @crypto_stream_chacha20_xor_ic(i8*, i8*, i64, i8*, i32, i8*) #1

declare dso_local i32 @crypto_onetimeauth_poly1305_final(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
