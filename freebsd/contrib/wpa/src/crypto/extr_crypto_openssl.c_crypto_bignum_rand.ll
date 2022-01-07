; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_bignum_rand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_bignum_rand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_bignum = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_bignum_rand(%struct.crypto_bignum* %0, %struct.crypto_bignum* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.crypto_bignum*, align 8
  %5 = alloca %struct.crypto_bignum*, align 8
  store %struct.crypto_bignum* %0, %struct.crypto_bignum** %4, align 8
  store %struct.crypto_bignum* %1, %struct.crypto_bignum** %5, align 8
  %6 = call i64 (...) @TEST_FAIL()
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %18

9:                                                ; preds = %2
  %10 = load %struct.crypto_bignum*, %struct.crypto_bignum** %4, align 8
  %11 = bitcast %struct.crypto_bignum* %10 to i32*
  %12 = load %struct.crypto_bignum*, %struct.crypto_bignum** %5, align 8
  %13 = bitcast %struct.crypto_bignum* %12 to i32*
  %14 = call i32 @BN_rand_range(i32* %11, i32* %13)
  %15 = icmp eq i32 %14, 1
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 0, i32 -1
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %9, %8
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local i64 @TEST_FAIL(...) #1

declare dso_local i32 @BN_rand_range(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
