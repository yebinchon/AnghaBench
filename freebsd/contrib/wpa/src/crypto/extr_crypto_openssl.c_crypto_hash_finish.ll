; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_hash_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_hash_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_finish(%struct.crypto_hash* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_hash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.crypto_hash* %0, %struct.crypto_hash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %11 = icmp eq %struct.crypto_hash* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %52

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i64*, i64** %7, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16, %13
  %20 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %21 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @HMAC_CTX_free(i32 %22)
  %24 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %25 = call i32 @bin_clear_free(%struct.crypto_hash* %24, i32 4)
  store i32 0, i32* %4, align 4
  br label %52

26:                                               ; preds = %16
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %31 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @HMAC_Final(i32 %32, i32* %33, i32* %8)
  store i32 %34, i32* %9, align 4
  %35 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %36 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @HMAC_CTX_free(i32 %37)
  %39 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %40 = call i32 @bin_clear_free(%struct.crypto_hash* %39, i32 4)
  %41 = call i64 (...) @TEST_FAIL()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %52

44:                                               ; preds = %26
  %45 = load i32, i32* %9, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %8, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64*, i64** %7, align 8
  store i64 %49, i64* %50, align 8
  store i32 0, i32* %4, align 4
  br label %52

51:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %47, %43, %19, %12
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @HMAC_CTX_free(i32) #1

declare dso_local i32 @bin_clear_free(%struct.crypto_hash*, i32) #1

declare dso_local i32 @HMAC_Final(i32, i32*, i32*) #1

declare dso_local i64 @TEST_FAIL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
