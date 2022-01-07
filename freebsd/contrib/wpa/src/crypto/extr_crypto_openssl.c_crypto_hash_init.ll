; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_hash_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_openssl.c_crypto_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_hash* @crypto_hash_init(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.crypto_hash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.crypto_hash*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %15 [
    i32 130, label %11
    i32 129, label %13
  ]

11:                                               ; preds = %3
  %12 = call i32* (...) @EVP_md5()
  store i32* %12, i32** %9, align 8
  br label %16

13:                                               ; preds = %3
  %14 = call i32* (...) @EVP_sha1()
  store i32* %14, i32** %9, align 8
  br label %16

15:                                               ; preds = %3
  store %struct.crypto_hash* null, %struct.crypto_hash** %4, align 8
  br label %50

16:                                               ; preds = %13, %11
  %17 = call %struct.crypto_hash* @os_zalloc(i32 4)
  store %struct.crypto_hash* %17, %struct.crypto_hash** %8, align 8
  %18 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %19 = icmp eq %struct.crypto_hash* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store %struct.crypto_hash* null, %struct.crypto_hash** %4, align 8
  br label %50

21:                                               ; preds = %16
  %22 = call i32 (...) @HMAC_CTX_new()
  %23 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %24 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %26 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %31 = call i32 @os_free(%struct.crypto_hash* %30)
  store %struct.crypto_hash* null, %struct.crypto_hash** %4, align 8
  br label %50

32:                                               ; preds = %21
  %33 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %34 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @HMAC_Init_ex(i32 %35, i32* %36, i64 %37, i32* %38, i32* null)
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %43 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @HMAC_CTX_free(i32 %44)
  %46 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %47 = call i32 @bin_clear_free(%struct.crypto_hash* %46, i32 4)
  store %struct.crypto_hash* null, %struct.crypto_hash** %4, align 8
  br label %50

48:                                               ; preds = %32
  %49 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  store %struct.crypto_hash* %49, %struct.crypto_hash** %4, align 8
  br label %50

50:                                               ; preds = %48, %41, %29, %20, %15
  %51 = load %struct.crypto_hash*, %struct.crypto_hash** %4, align 8
  ret %struct.crypto_hash* %51
}

declare dso_local i32* @EVP_md5(...) #1

declare dso_local i32* @EVP_sha1(...) #1

declare dso_local %struct.crypto_hash* @os_zalloc(i32) #1

declare dso_local i32 @HMAC_CTX_new(...) #1

declare dso_local i32 @os_free(%struct.crypto_hash*) #1

declare dso_local i32 @HMAC_Init_ex(i32, i32*, i64, i32*, i32*) #1

declare dso_local i32 @HMAC_CTX_free(i32) #1

declare dso_local i32 @bin_clear_free(%struct.crypto_hash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
