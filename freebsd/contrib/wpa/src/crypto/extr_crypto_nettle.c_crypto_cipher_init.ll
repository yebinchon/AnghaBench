; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_nettle.c_crypto_cipher_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_nettle.c_crypto_cipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_cipher* @crypto_cipher_init(i32 %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.crypto_cipher*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.crypto_cipher*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = call %struct.crypto_cipher* @os_zalloc(i32 8)
  store %struct.crypto_cipher* %11, %struct.crypto_cipher** %10, align 8
  %12 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %13 = icmp ne %struct.crypto_cipher* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %32

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %18 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %27 [
    i32 128, label %20
  ]

20:                                               ; preds = %15
  %21 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %22 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %9, align 8
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @nettle_arcfour_set_key(i32* %23, i64 %24, i32* %25)
  br label %30

27:                                               ; preds = %15
  %28 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %29 = call i32 @os_free(%struct.crypto_cipher* %28)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %32

30:                                               ; preds = %20
  %31 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  store %struct.crypto_cipher* %31, %struct.crypto_cipher** %5, align 8
  br label %32

32:                                               ; preds = %30, %27, %14
  %33 = load %struct.crypto_cipher*, %struct.crypto_cipher** %5, align 8
  ret %struct.crypto_cipher* %33
}

declare dso_local %struct.crypto_cipher* @os_zalloc(i32) #1

declare dso_local i32 @nettle_arcfour_set_key(i32*, i64, i32*) #1

declare dso_local i32 @os_free(%struct.crypto_cipher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
