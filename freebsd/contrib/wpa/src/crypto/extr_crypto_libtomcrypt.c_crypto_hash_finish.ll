; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_hash_finish.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_libtomcrypt.c_crypto_hash_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@CRYPT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @crypto_hash_finish(%struct.crypto_hash* %0, i32* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.crypto_hash*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.crypto_hash* %0, %struct.crypto_hash** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %11 = icmp eq %struct.crypto_hash* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 -2, i32* %4, align 4
  br label %114

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %13
  %17 = load i64*, i64** %7, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %13
  %20 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %21 = call i32 @os_free(%struct.crypto_hash* %20)
  store i32 0, i32* %4, align 4
  br label %114

22:                                               ; preds = %16
  %23 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %24 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %29 = call i32 @os_free(%struct.crypto_hash* %28)
  store i32 -2, i32* %4, align 4
  br label %114

30:                                               ; preds = %22
  %31 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %32 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %105 [
    i32 129, label %34
    i32 128, label %53
    i32 130, label %72
    i32 131, label %81
  ]

34:                                               ; preds = %30
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %36, 16
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i64*, i64** %7, align 8
  store i64 16, i64* %39, align 8
  %40 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %41 = call i32 @os_free(%struct.crypto_hash* %40)
  store i32 -1, i32* %4, align 4
  br label %114

42:                                               ; preds = %34
  %43 = load i64*, i64** %7, align 8
  store i64 16, i64* %43, align 8
  %44 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %45 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @md5_done(i32* %46, i32* %47)
  %49 = load i32, i32* @CRYPT_OK, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 -2, i32* %8, align 4
  br label %52

52:                                               ; preds = %51, %42
  br label %106

53:                                               ; preds = %30
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %55, 20
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i64*, i64** %7, align 8
  store i64 20, i64* %58, align 8
  %59 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %60 = call i32 @os_free(%struct.crypto_hash* %59)
  store i32 -1, i32* %4, align 4
  br label %114

61:                                               ; preds = %53
  %62 = load i64*, i64** %7, align 8
  store i64 20, i64* %62, align 8
  %63 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %64 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @sha1_done(i32* %65, i32* %66)
  %68 = load i32, i32* @CRYPT_OK, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 -2, i32* %8, align 4
  br label %71

71:                                               ; preds = %70, %61
  br label %106

72:                                               ; preds = %30
  %73 = load i64*, i64** %7, align 8
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %74, 20
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i64*, i64** %7, align 8
  store i64 20, i64* %77, align 8
  %78 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %79 = call i32 @os_free(%struct.crypto_hash* %78)
  store i32 -1, i32* %4, align 4
  br label %114

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %30, %80
  %82 = load i64*, i64** %7, align 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ult i64 %83, 16
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i64*, i64** %7, align 8
  store i64 16, i64* %86, align 8
  %87 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %88 = call i32 @os_free(%struct.crypto_hash* %87)
  store i32 -1, i32* %4, align 4
  br label %114

89:                                               ; preds = %81
  %90 = load i64*, i64** %7, align 8
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %9, align 8
  %92 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %93 = getelementptr inbounds %struct.crypto_hash, %struct.crypto_hash* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @hmac_done(i32* %94, i32* %95, i64* %9)
  %97 = load i32, i32* @CRYPT_OK, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %89
  %100 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %101 = call i32 @os_free(%struct.crypto_hash* %100)
  store i32 -1, i32* %4, align 4
  br label %114

102:                                              ; preds = %89
  %103 = load i64, i64* %9, align 8
  %104 = load i64*, i64** %7, align 8
  store i64 %103, i64* %104, align 8
  br label %106

105:                                              ; preds = %30
  store i32 -2, i32* %8, align 4
  br label %106

106:                                              ; preds = %105, %102, %71, %52
  %107 = load %struct.crypto_hash*, %struct.crypto_hash** %5, align 8
  %108 = call i32 @os_free(%struct.crypto_hash* %107)
  %109 = call i64 (...) @TEST_FAIL()
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  store i32 -1, i32* %4, align 4
  br label %114

112:                                              ; preds = %106
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %111, %99, %85, %76, %57, %38, %27, %19, %12
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @os_free(%struct.crypto_hash*) #1

declare dso_local i32 @md5_done(i32*, i32*) #1

declare dso_local i32 @sha1_done(i32*, i32*) #1

declare dso_local i32 @hmac_done(i32*, i32*, i64*) #1

declare dso_local i64 @TEST_FAIL(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
