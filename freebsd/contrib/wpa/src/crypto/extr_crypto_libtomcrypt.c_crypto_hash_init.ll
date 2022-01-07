; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_hash_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CRYPT_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_hash* @crypto_hash_init(i32 %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.crypto_hash*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.crypto_hash*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = call %struct.crypto_hash* @os_zalloc(i32 12)
  store %struct.crypto_hash* %9, %struct.crypto_hash** %8, align 8
  %10 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %11 = icmp eq %struct.crypto_hash* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.crypto_hash* null, %struct.crypto_hash** %4, align 8
  br label %66

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %16 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %60 [
    i32 129, label %18
    i32 128, label %27
    i32 131, label %36
    i32 130, label %48
  ]

18:                                               ; preds = %13
  %19 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %20 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = call i32 @md5_init(i32* %21)
  %23 = load i32, i32* @CRYPT_OK, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %63

26:                                               ; preds = %18
  br label %61

27:                                               ; preds = %13
  %28 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %29 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @sha1_init(i32* %30)
  %32 = load i32, i32* @CRYPT_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %63

35:                                               ; preds = %27
  br label %61

36:                                               ; preds = %13
  %37 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %38 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @find_hash(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @hmac_init(i32* %39, i32 %40, i32* %41, i64 %42)
  %44 = load i32, i32* @CRYPT_OK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %63

47:                                               ; preds = %36
  br label %61

48:                                               ; preds = %13
  %49 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %50 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = call i32 @find_hash(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @hmac_init(i32* %51, i32 %52, i32* %53, i64 %54)
  %56 = load i32, i32* @CRYPT_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %63

59:                                               ; preds = %48
  br label %61

60:                                               ; preds = %13
  br label %63

61:                                               ; preds = %59, %47, %35, %26
  %62 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  store %struct.crypto_hash* %62, %struct.crypto_hash** %4, align 8
  br label %66

63:                                               ; preds = %60, %58, %46, %34, %25
  %64 = load %struct.crypto_hash*, %struct.crypto_hash** %8, align 8
  %65 = call i32 @os_free(%struct.crypto_hash* %64)
  store %struct.crypto_hash* null, %struct.crypto_hash** %4, align 8
  br label %66

66:                                               ; preds = %63, %61, %12
  %67 = load %struct.crypto_hash*, %struct.crypto_hash** %4, align 8
  ret %struct.crypto_hash* %67
}

declare dso_local %struct.crypto_hash* @os_zalloc(i32) #1

declare dso_local i32 @md5_init(i32*) #1

declare dso_local i32 @sha1_init(i32*) #1

declare dso_local i32 @hmac_init(i32*, i32, i32*, i64) #1

declare dso_local i32 @find_hash(i8*) #1

declare dso_local i32 @os_free(%struct.crypto_hash*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
