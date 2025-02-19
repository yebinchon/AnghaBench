; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_nettle.c_crypto_cipher_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_nettle.c_crypto_cipher_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_cipher_encrypt(%struct.crypto_cipher* %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.crypto_cipher*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.crypto_cipher* %0, %struct.crypto_cipher** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %11 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %21 [
    i32 128, label %13
  ]

13:                                               ; preds = %4
  %14 = load %struct.crypto_cipher*, %struct.crypto_cipher** %6, align 8
  %15 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %9, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = call i32 @nettle_arcfour_crypt(i32* %16, i64 %17, i32* %18, i32* %19)
  br label %22

21:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %23

22:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @nettle_arcfour_crypt(i32*, i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
