; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_pwd_common.c_eap_pwd_kdf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_common/extr_eap_pwd_common.c_eap_pwd_kdf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_hash = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@CRYPTO_HASH_ALG_HMAC_SHA256 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, i32*, i64, i32*, i64)* @eap_pwd_kdf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_pwd_kdf(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.crypto_hash*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %25 = load i32, i32* @SHA256_MAC_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %15, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %16, align 8
  store i64 0, i64* %21, align 8
  %29 = load i64, i64* %13, align 8
  %30 = add i64 %29, 7
  %31 = udiv i64 %30, 8
  store i64 %31, i64* %20, align 8
  store i32 0, i32* %18, align 4
  %32 = load i64, i64* %13, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @htons(i32 %33)
  store i32 %34, i32* %19, align 4
  br label %35

35:                                               ; preds = %94, %6
  %36 = load i64, i64* %21, align 8
  %37 = load i64, i64* %20, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %98

39:                                               ; preds = %35
  %40 = load i32, i32* %18, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = call i32 @htons(i32 %42)
  store i32 %43, i32* %17, align 4
  %44 = load i32, i32* @CRYPTO_HASH_ALG_HMAC_SHA256, align 4
  %45 = load i32*, i32** %8, align 8
  %46 = load i64, i64* %9, align 8
  %47 = call %struct.crypto_hash* @crypto_hash_init(i32 %44, i32* %45, i64 %46)
  store %struct.crypto_hash* %47, %struct.crypto_hash** %14, align 8
  %48 = load %struct.crypto_hash*, %struct.crypto_hash** %14, align 8
  %49 = icmp eq %struct.crypto_hash* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %117

51:                                               ; preds = %39
  %52 = load i32, i32* %18, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load %struct.crypto_hash*, %struct.crypto_hash** %14, align 8
  %56 = load i32, i32* @SHA256_MAC_LEN, align 4
  %57 = call i32 @crypto_hash_update(%struct.crypto_hash* %55, i32* %28, i32 %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.crypto_hash*, %struct.crypto_hash** %14, align 8
  %60 = call i32 @crypto_hash_update(%struct.crypto_hash* %59, i32* %17, i32 4)
  %61 = load %struct.crypto_hash*, %struct.crypto_hash** %14, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %11, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @crypto_hash_update(%struct.crypto_hash* %61, i32* %62, i32 %64)
  %66 = load %struct.crypto_hash*, %struct.crypto_hash** %14, align 8
  %67 = call i32 @crypto_hash_update(%struct.crypto_hash* %66, i32* %19, i32 4)
  %68 = load i32, i32* @SHA256_MAC_LEN, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %22, align 8
  %70 = load %struct.crypto_hash*, %struct.crypto_hash** %14, align 8
  %71 = call i64 @crypto_hash_finish(%struct.crypto_hash* %70, i32* %28, i64* %22)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %58
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %117

74:                                               ; preds = %58
  %75 = load i64, i64* %21, align 8
  %76 = load i64, i64* %22, align 8
  %77 = add i64 %75, %76
  %78 = load i64, i64* %20, align 8
  %79 = icmp ugt i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i32*, i32** %12, align 8
  %82 = load i64, i64* %21, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i64, i64* %20, align 8
  %85 = load i64, i64* %21, align 8
  %86 = sub i64 %84, %85
  %87 = call i32 @os_memcpy(i32* %83, i32* %28, i64 %86)
  br label %94

88:                                               ; preds = %74
  %89 = load i32*, i32** %12, align 8
  %90 = load i64, i64* %21, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i64, i64* %22, align 8
  %93 = call i32 @os_memcpy(i32* %91, i32* %28, i64 %92)
  br label %94

94:                                               ; preds = %88, %80
  %95 = load i64, i64* %22, align 8
  %96 = load i64, i64* %21, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %21, align 8
  br label %35

98:                                               ; preds = %35
  %99 = load i64, i64* %13, align 8
  %100 = urem i64 %99, 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %116

102:                                              ; preds = %98
  store i32 255, i32* %24, align 4
  %103 = load i64, i64* %13, align 8
  %104 = urem i64 %103, 8
  %105 = sub i64 8, %104
  %106 = load i32, i32* %24, align 4
  %107 = trunc i64 %105 to i32
  %108 = shl i32 %106, %107
  store i32 %108, i32* %24, align 4
  %109 = load i32, i32* %24, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = load i64, i64* %20, align 8
  %112 = sub i64 %111, 1
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, %109
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %102, %98
  store i32 0, i32* %7, align 4
  store i32 1, i32* %23, align 4
  br label %117

117:                                              ; preds = %116, %73, %50
  %118 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %118)
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @htons(i32) #2

declare dso_local %struct.crypto_hash* @crypto_hash_init(i32, i32*, i64) #2

declare dso_local i32 @crypto_hash_update(%struct.crypto_hash*, i32*, i32) #2

declare dso_local i64 @crypto_hash_finish(%struct.crypto_hash*, i32*, i64*) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
