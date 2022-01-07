; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_stream/chacha20/ref/extr_chacha20_ref.c_stream_ref_xor_ic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_stream/chacha20/ref/extr_chacha20_ref.c_stream_ref_xor_ic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chacha_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i32, i8*)* @stream_ref_xor_ic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.chacha_ctx, align 4
  %15 = alloca [8 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %18 = load i64, i64* %10, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %43

21:                                               ; preds = %6
  %22 = load i32, i32* %12, align 4
  %23 = ashr i32 %22, 32
  %24 = call i32 @U32V(i32 %23)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @U32V(i32 %25)
  store i32 %26, i32* %17, align 4
  %27 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %28 = load i32, i32* %17, align 4
  %29 = call i32 @STORE32_LE(i32* %27, i32 %28)
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 4
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @STORE32_LE(i32* %30, i32 %31)
  %33 = load i8*, i8** %13, align 8
  %34 = call i32 @chacha_keysetup(%struct.chacha_ctx* %14, i8* %33)
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %15, i64 0, i64 0
  %37 = call i32 @chacha_ivsetup(%struct.chacha_ctx* %14, i8* %35, i32* %36)
  %38 = load i8*, i8** %9, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i32 @chacha20_encrypt_bytes(%struct.chacha_ctx* %14, i8* %38, i8* %39, i64 %40)
  %42 = call i32 @sodium_memzero(%struct.chacha_ctx* %14, i32 4)
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %21, %20
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local i32 @U32V(i32) #1

declare dso_local i32 @STORE32_LE(i32*, i32) #1

declare dso_local i32 @chacha_keysetup(%struct.chacha_ctx*, i8*) #1

declare dso_local i32 @chacha_ivsetup(%struct.chacha_ctx*, i8*, i32*) #1

declare dso_local i32 @chacha20_encrypt_bytes(%struct.chacha_ctx*, i8*, i8*, i64) #1

declare dso_local i32 @sodium_memzero(%struct.chacha_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
