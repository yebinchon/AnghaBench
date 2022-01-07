; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_kx/extr_crypto_kx.c_crypto_kx_keypair.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_kx/extr_crypto_kx.c_crypto_kx_keypair.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@crypto_kx_PUBLICKEYBYTES = common dso_local global i64 0, align 8
@crypto_kx_SECRETKEYBYTES = common dso_local global i64 0, align 8
@crypto_scalarmult_SCALARBYTES = common dso_local global i64 0, align 8
@crypto_scalarmult_BYTES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_kx_keypair(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* @crypto_kx_PUBLICKEYBYTES, align 8
  %6 = load i64, i64* @crypto_kx_SECRETKEYBYTES, align 8
  %7 = load i64, i64* @crypto_kx_SECRETKEYBYTES, align 8
  %8 = load i64, i64* @crypto_scalarmult_SCALARBYTES, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @COMPILER_ASSERT(i32 %10)
  %12 = load i64, i64* @crypto_kx_PUBLICKEYBYTES, align 8
  %13 = load i64, i64* @crypto_scalarmult_BYTES, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @COMPILER_ASSERT(i32 %15)
  %17 = load i8*, i8** %4, align 8
  %18 = load i64, i64* @crypto_kx_SECRETKEYBYTES, align 8
  %19 = call i32 @randombytes_buf(i8* %17, i64 %18)
  %20 = load i8*, i8** %3, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @crypto_scalarmult_base(i8* %20, i8* %21)
  ret i32 %22
}

declare dso_local i32 @COMPILER_ASSERT(i32) #1

declare dso_local i32 @randombytes_buf(i8*, i64) #1

declare dso_local i32 @crypto_scalarmult_base(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
