; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_stream/chacha20/ref/extr_chacha20_ref.c_stream_ietf_ref_xor_ic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_stream/chacha20/ref/extr_chacha20_ref.c_stream_ietf_ref_xor_ic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chacha_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i8*, i32, i8*)* @stream_ietf_ref_xor_ic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stream_ietf_ref_xor_ic(i8* %0, i8* %1, i64 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.chacha_ctx, align 4
  %15 = alloca [4 x i32], align 16
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %16 = load i64, i64* %10, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %33

19:                                               ; preds = %6
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %21 = load i32, i32* %12, align 4
  %22 = call i32 @STORE32_LE(i32* %20, i32 %21)
  %23 = load i8*, i8** %13, align 8
  %24 = call i32 @chacha_keysetup(%struct.chacha_ctx* %14, i8* %23)
  %25 = load i8*, i8** %11, align 8
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %27 = call i32 @chacha_ietf_ivsetup(%struct.chacha_ctx* %14, i8* %25, i32* %26)
  %28 = load i8*, i8** %9, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @chacha20_encrypt_bytes(%struct.chacha_ctx* %14, i8* %28, i8* %29, i64 %30)
  %32 = call i32 @sodium_memzero(%struct.chacha_ctx* %14, i32 4)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %19, %18
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @STORE32_LE(i32*, i32) #1

declare dso_local i32 @chacha_keysetup(%struct.chacha_ctx*, i8*) #1

declare dso_local i32 @chacha_ietf_ivsetup(%struct.chacha_ctx*, i8*, i32*) #1

declare dso_local i32 @chacha20_encrypt_bytes(%struct.chacha_ctx*, i8*, i8*, i64) #1

declare dso_local i32 @sodium_memzero(%struct.chacha_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
