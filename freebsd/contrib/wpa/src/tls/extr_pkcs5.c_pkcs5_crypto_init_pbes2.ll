; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_pkcs5_crypto_init_pbes2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_pkcs5.c_pkcs5_crypto_init_pbes2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_cipher = type { i32 }
%struct.pkcs5_params = type { i64, i32, i32, i32, i32, i32 }

@PBES2_ENC_ALG_DES_EDE3_CBC = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"PKCS #5: PBES2 password for PBKDF2\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"PKCS #5: PBES2 salt for PBKDF2\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"PKCS #5: PBES2 PBKDF2 iterations: %u\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"PKCS #5: DES EDE3 key\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"PKCS #5: DES IV\00", align 1
@CRYPTO_CIPHER_ALG_3DES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.crypto_cipher* (%struct.pkcs5_params*, i8*)* @pkcs5_crypto_init_pbes2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.crypto_cipher* @pkcs5_crypto_init_pbes2(%struct.pkcs5_params* %0, i8* %1) #0 {
  %3 = alloca %struct.crypto_cipher*, align 8
  %4 = alloca %struct.pkcs5_params*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [24 x i32], align 16
  store %struct.pkcs5_params* %0, %struct.pkcs5_params** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %8 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PBES2_ENC_ALG_DES_EDE3_CBC, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %14 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 8
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %2
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %3, align 8
  br label %69

18:                                               ; preds = %12
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @os_strlen(i8* %21)
  %23 = call i32 @wpa_hexdump_ascii_key(i32 %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %20, i32 %22)
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %26 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %29 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @wpa_hexdump(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %34 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %39 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %42 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %45 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  %48 = call i64 @pbkdf2_sha1(i8* %37, i32 %40, i32 %43, i32 %46, i32* %47, i32 96)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %18
  store %struct.crypto_cipher* null, %struct.crypto_cipher** %3, align 8
  br label %69

51:                                               ; preds = %18
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  %54 = call i32 @wpa_hexdump_key(i32 %52, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32* %53, i32 96)
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %57 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %60 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @wpa_hexdump(i32 %55, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %61)
  %63 = load i32, i32* @CRYPTO_CIPHER_ALG_3DES, align 4
  %64 = load %struct.pkcs5_params*, %struct.pkcs5_params** %4, align 8
  %65 = getelementptr inbounds %struct.pkcs5_params, %struct.pkcs5_params* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds [24 x i32], [24 x i32]* %6, i64 0, i64 0
  %68 = call %struct.crypto_cipher* @crypto_cipher_init(i32 %63, i32 %66, i32* %67, i32 96)
  store %struct.crypto_cipher* %68, %struct.crypto_cipher** %3, align 8
  br label %69

69:                                               ; preds = %51, %50, %17
  %70 = load %struct.crypto_cipher*, %struct.crypto_cipher** %3, align 8
  ret %struct.crypto_cipher* %70
}

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i8*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32) #1

declare dso_local i64 @pbkdf2_sha1(i8*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32*, i32) #1

declare dso_local %struct.crypto_cipher* @crypto_cipher_init(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
