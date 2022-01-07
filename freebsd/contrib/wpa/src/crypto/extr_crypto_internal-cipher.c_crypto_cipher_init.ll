; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_internal-cipher.c_crypto_cipher_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/crypto/extr_crypto_internal-cipher.c_crypto_cipher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32*, i32* }
%struct.TYPE_6__ = type { i64, i32 }

@AES_BLOCK_SIZE = common dso_local global i32 0, align 4

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
  %11 = call %struct.crypto_cipher* @os_zalloc(i32 72)
  store %struct.crypto_cipher* %11, %struct.crypto_cipher** %10, align 8
  %12 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %13 = icmp eq %struct.crypto_cipher* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %141

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %18 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %136 [
    i32 128, label %20
    i32 130, label %41
    i32 131, label %90
    i32 129, label %110
  ]

20:                                               ; preds = %15
  %21 = load i64, i64* %9, align 8
  %22 = icmp ugt i64 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %25 = call i32 @os_free(%struct.crypto_cipher* %24)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %141

26:                                               ; preds = %20
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %29 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i64 %27, i64* %31, align 8
  %32 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %33 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @os_memcpy(i32 %36, i32* %37, i32 %39)
  br label %139

41:                                               ; preds = %15
  %42 = load i32*, i32** %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32* @aes_encrypt_init(i32* %42, i64 %43)
  %45 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %46 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  store i32* %44, i32** %48, align 8
  %49 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %50 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %41
  %56 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %57 = call i32 @os_free(%struct.crypto_cipher* %56)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %141

58:                                               ; preds = %41
  %59 = load i32*, i32** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32* @aes_decrypt_init(i32* %59, i64 %60)
  %62 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %63 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  store i32* %61, i32** %65, align 8
  %66 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %67 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %58
  %73 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %74 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @aes_encrypt_deinit(i32* %77)
  %79 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %80 = call i32 @os_free(%struct.crypto_cipher* %79)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %141

81:                                               ; preds = %58
  %82 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %83 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* @AES_BLOCK_SIZE, align 4
  %89 = call i32 @os_memcpy(i32 %86, i32* %87, i32 %88)
  br label %139

90:                                               ; preds = %15
  %91 = load i64, i64* %9, align 8
  %92 = icmp ne i64 %91, 24
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %95 = call i32 @os_free(%struct.crypto_cipher* %94)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %141

96:                                               ; preds = %90
  %97 = load i32*, i32** %8, align 8
  %98 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %99 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = call i32 @des3_key_setup(i32* %97, i32* %101)
  %103 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %104 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %7, align 8
  %109 = call i32 @os_memcpy(i32 %107, i32* %108, i32 8)
  br label %139

110:                                              ; preds = %15
  %111 = load i64, i64* %9, align 8
  %112 = icmp ne i64 %111, 8
  br i1 %112, label %113, label %116

113:                                              ; preds = %110
  %114 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %115 = call i32 @os_free(%struct.crypto_cipher* %114)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %141

116:                                              ; preds = %110
  %117 = load i32*, i32** %8, align 8
  %118 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %119 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %124 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @des_key_setup(i32* %117, i32 %122, i32 %127)
  %129 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %130 = getelementptr inbounds %struct.crypto_cipher, %struct.crypto_cipher* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32*, i32** %7, align 8
  %135 = call i32 @os_memcpy(i32 %133, i32* %134, i32 8)
  br label %139

136:                                              ; preds = %15
  %137 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  %138 = call i32 @os_free(%struct.crypto_cipher* %137)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %5, align 8
  br label %141

139:                                              ; preds = %116, %96, %81, %26
  %140 = load %struct.crypto_cipher*, %struct.crypto_cipher** %10, align 8
  store %struct.crypto_cipher* %140, %struct.crypto_cipher** %5, align 8
  br label %141

141:                                              ; preds = %139, %136, %113, %93, %72, %55, %23, %14
  %142 = load %struct.crypto_cipher*, %struct.crypto_cipher** %5, align 8
  ret %struct.crypto_cipher* %142
}

declare dso_local %struct.crypto_cipher* @os_zalloc(i32) #1

declare dso_local i32 @os_free(%struct.crypto_cipher*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32* @aes_encrypt_init(i32*, i64) #1

declare dso_local i32* @aes_decrypt_init(i32*, i64) #1

declare dso_local i32 @aes_encrypt_deinit(i32*) #1

declare dso_local i32 @des3_key_setup(i32*, i32*) #1

declare dso_local i32 @des_key_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
