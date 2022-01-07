; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_auth/hmacsha256/extr_auth_hmacsha256.c_crypto_auth_hmacsha256_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libsodium/src/libsodium/crypto_auth/hmacsha256/extr_auth_hmacsha256.c_crypto_auth_hmacsha256_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_auth_hmacsha256_init(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca [32 x i8], align 16
  %9 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ugt i64 %10, 64
  br i1 %11, label %12, label %27

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = call i32 @crypto_hash_sha256_init(i32* %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @crypto_hash_sha256_update(i32* %17, i8* %18, i32 %20)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %25 = call i32 @crypto_hash_sha256_final(i32* %23, i8* %24)
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  store i8* %26, i8** %5, align 8
  store i64 32, i64* %6, align 8
  br label %27

27:                                               ; preds = %12, %3
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = call i32 @crypto_hash_sha256_init(i32* %29)
  %31 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %32 = call i32 @memset(i8* %31, i32 54, i32 64)
  store i64 0, i64* %9, align 8
  br label %33

33:                                               ; preds = %49, %27
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load i8*, i8** %5, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = load i64, i64* %9, align 8
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = xor i32 %46, %42
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %44, align 1
  br label %49

49:                                               ; preds = %37
  %50 = load i64, i64* %9, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %9, align 8
  br label %33

52:                                               ; preds = %33
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %56 = call i32 @crypto_hash_sha256_update(i32* %54, i8* %55, i32 64)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i32 @crypto_hash_sha256_init(i32* %58)
  %60 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %61 = call i32 @memset(i8* %60, i32 92, i32 64)
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %78, %52
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 %72
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = xor i32 %75, %71
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %73, align 1
  br label %78

78:                                               ; preds = %66
  %79 = load i64, i64* %9, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %9, align 8
  br label %62

81:                                               ; preds = %62
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %85 = call i32 @crypto_hash_sha256_update(i32* %83, i8* %84, i32 64)
  %86 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %87 = call i32 @sodium_memzero(i8* %86, i32 64)
  %88 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %89 = call i32 @sodium_memzero(i8* %88, i32 32)
  ret i32 0
}

declare dso_local i32 @crypto_hash_sha256_init(i32*) #1

declare dso_local i32 @crypto_hash_sha256_update(i32*, i8*, i32) #1

declare dso_local i32 @crypto_hash_sha256_final(i32*, i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @sodium_memzero(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
