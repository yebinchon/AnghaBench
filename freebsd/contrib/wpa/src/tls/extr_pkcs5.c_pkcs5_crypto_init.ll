; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_pkcs5_crypto_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_pkcs5_crypto_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }
%struct.pkcs5_params = type { i64, i64, i32, i32* }

@MD5_MAC_LEN = common dso_local global i32 0, align 4
@PKCS5_ALG_PBES2 = common dso_local global i64 0, align 8
@PKCS5_ALG_SHA1_3DES_CBC = common dso_local global i64 0, align 8
@PKCS5_ALG_MD5_DES_CBC = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PKCS #5: DES key\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"PKCS #5: DES IV\00", align 1
@CRYPTO_CIPHER_ALG_DES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_cipher* (%struct.pkcs5_params*, i8*)* @pkcs5_crypto_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_cipher* @pkcs5_crypto_init(%struct.pkcs5_params* %0, i8* %1) #0 {
  %3 = alloca %struct.crypto_cipher*, align 8
  %4 = alloca %struct.pkcs5_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [2 x i32*], align 16
  %10 = alloca [2 x i64], align 16
  %11 = alloca i32, align 4
  store %struct.pkcs5_params* %0, %struct.pkcs5_params** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i32, i32* @MD5_MAC_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %7, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %8, align 8
  %16 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %17 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PKCS5_ALG_PBES2, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = call %struct.crypto_cipher* @pkcs5_crypto_init_pbes2(%struct.pkcs5_params* %22, i8* %23)
  store %struct.crypto_cipher* %24, %struct.crypto_cipher** %3, align 8
  store i32 1, i32* %11, align 4
  br label %92

25:                                               ; preds = %2
  %26 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %27 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PKCS5_ALG_SHA1_3DES_CBC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call %struct.crypto_cipher* @pkcs12_crypto_init_sha1(%struct.pkcs5_params* %32, i8* %33)
  store %struct.crypto_cipher* %34, %struct.crypto_cipher** %3, align 8
  store i32 1, i32* %11, align 4
  br label %92

35:                                               ; preds = %25
  %36 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %37 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PKCS5_ALG_MD5_DES_CBC, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %3, align 8
  store i32 1, i32* %11, align 4
  br label %92

42:                                               ; preds = %35
  %43 = load i8*, i8** %5, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  store i32* %44, i32** %45, align 16
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @os_strlen(i8* %46)
  %48 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %47, i64* %48, align 16
  %49 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %50 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 1
  store i32* %51, i32** %52, align 8
  %53 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %54 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 1
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %58 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %59 = call i64 @md5_vector(i32 2, i32** %57, i64* %58, i32* %15)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %42
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %3, align 8
  store i32 1, i32* %11, align 4
  br label %92

62:                                               ; preds = %42
  %63 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  store i32* %15, i32** %63, align 16
  %64 = load i32, i32* @MD5_MAC_LEN, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  store i64 %65, i64* %66, align 16
  store i32 1, i32* %6, align 4
  br label %67

67:                                               ; preds = %80, %62
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %70 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp ult i32 %68, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %67
  %74 = getelementptr inbounds [2 x i32*], [2 x i32*]* %9, i64 0, i64 0
  %75 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %76 = call i64 @md5_vector(i32 1, i32** %74, i64* %75, i32* %15)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %3, align 8
  store i32 1, i32* %11, align 4
  br label %92

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %67

83:                                               ; preds = %67
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = call i32 @wpa_hexdump_key(i32 %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32* %15, i32 8)
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = getelementptr inbounds i32, i32* %15, i64 8
  %88 = call i32 @wpa_hexdump_key(i32 %86, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %87, i32 8)
  %89 = load i32, i32* @CRYPTO_CIPHER_ALG_DES, align 4
  %90 = getelementptr inbounds i32, i32* %15, i64 8
  %91 = call %struct.crypto_cipher* @crypto_cipher_init(i32 %89, i32* %90, i32* %15, i32 8)
  store %struct.crypto_cipher* %91, %struct.crypto_cipher** %3, align 8
  store i32 1, i32* %11, align 4
  br label %92

92:                                               ; preds = %83, %78, %61, %41, %31, %21
  %93 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %93)
  %94 = load %struct.crypto_cipher*, %struct.crypto_cipher** %3, align 8
  ret %struct.crypto_cipher* %94
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.crypto_cipher* @pkcs5_crypto_init_pbes2(%struct.pkcs5_params*, i8*) #2

declare dso_local %struct.crypto_cipher* @pkcs12_crypto_init_sha1(%struct.pkcs5_params*, i8*) #2

declare dso_local i64 @os_strlen(i8*) #2

declare dso_local i64 @md5_vector(i32, i32**, i64*, i32*) #2

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #2

declare dso_local %struct.crypto_cipher* @crypto_cipher_init(i32, i32*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
