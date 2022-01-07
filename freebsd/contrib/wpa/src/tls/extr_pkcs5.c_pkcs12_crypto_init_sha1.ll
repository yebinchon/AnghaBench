; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_pkcs12_crypto_init_sha1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_pkcs12_crypto_init_sha1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }
%struct.pkcs5_params = type { i64, i32, i32, i32 }

@PKCS5_ALG_SHA1_3DES_CBC = common dso_local global i64 0, align 8
@PKCS12_ID_ENC = common dso_local global i32 0, align 4
@PKCS12_ID_IV = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"PKCS #12: DES key\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"PKCS #12: DES IV\00", align 1
@CRYPTO_CIPHER_ALG_3DES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_cipher* (%struct.pkcs5_params*, i8*)* @pkcs12_crypto_init_sha1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_cipher* @pkcs12_crypto_init_sha1(%struct.pkcs5_params* %0, i8* %1) #0 {
  %3 = alloca %struct.crypto_cipher*, align 8
  %4 = alloca %struct.pkcs5_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [24 x i32], align 16
  %10 = alloca [8 x i32], align 16
  store %struct.pkcs5_params* %0, %struct.pkcs5_params** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %12 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PKCS5_ALG_SHA1_3DES_CBC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %3, align 8
  br label %110

17:                                               ; preds = %2
  %18 = load i8*, i8** %5, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i8*, i8** %5, align 8
  %22 = call i64 @os_strlen(i8* %21)
  br label %24

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %20
  %25 = phi i64 [ %22, %20 ], [ 0, %23 ]
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = add i64 %26, 1
  %28 = mul i64 2, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32* @os_malloc(i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %24
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %3, align 8
  br label %110

34:                                               ; preds = %24
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %55, %37
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* %8, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %43, label %58

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %6, align 4
  %46 = mul i32 2, %45
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = call i32 @WPA_PUT_BE16(i32* %48, i8 signext %53)
  br label %55

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %38

58:                                               ; preds = %38
  %59 = load i64, i64* %8, align 8
  %60 = add i64 %59, 1
  %61 = mul i64 2, %60
  store i64 %61, i64* %8, align 8
  br label %62

62:                                               ; preds = %58, %34
  %63 = load i32*, i32** %7, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %66 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %69 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PKCS12_ID_ENC, align 4
  %72 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %73 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %76 = call i64 @pkcs12_key_gen(i32* %63, i64 %64, i32 %67, i32 %70, i32 %71, i32 %74, i32 96, i32* %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %94, label %78

78:                                               ; preds = %62
  %79 = load i32*, i32** %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %82 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %85 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @PKCS12_ID_IV, align 4
  %88 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %89 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %92 = call i64 @pkcs12_key_gen(i32* %79, i64 %80, i32 %83, i32 %86, i32 %87, i32 %90, i32 32, i32* %91)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %78, %62
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @os_free(i32* %95)
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %3, align 8
  br label %110

97:                                               ; preds = %78
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @os_free(i32* %98)
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %102 = call i32 @wpa_hexdump_key(i32 %100, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %101, i32 96)
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %105 = call i32 @wpa_hexdump_key(i32 %103, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32* %104, i32 32)
  %106 = load i32, i32* @CRYPTO_CIPHER_ALG_3DES, align 4
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %108 = getelementptr inbounds [24 x i32], [24 x i32]* %9, i64 0, i64 0
  %109 = call %struct.crypto_cipher* @crypto_cipher_init(i32 %106, i32* %107, i32* %108, i32 96)
  store %struct.crypto_cipher* %109, %struct.crypto_cipher** %3, align 8
  br label %110

110:                                              ; preds = %97, %94, %33, %16
  %111 = load %struct.crypto_cipher*, %struct.crypto_cipher** %3, align 8
  ret %struct.crypto_cipher* %111
}

declare dso_local i64 @os_strlen(i8*) #1

declare dso_local i32* @os_malloc(i32) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i8 signext) #1

declare dso_local i64 @pkcs12_key_gen(i32*, i64, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local %struct.crypto_cipher* @crypto_cipher_init(i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
