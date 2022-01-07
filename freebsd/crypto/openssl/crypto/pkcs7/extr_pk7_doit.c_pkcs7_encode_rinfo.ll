; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_doit.c_pkcs7_encode_rinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/pkcs7/extr_pk7_doit.c_pkcs7_encode_rinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@EVP_PKEY_OP_ENCRYPT = common dso_local global i32 0, align 4
@EVP_PKEY_CTRL_PKCS7_ENCRYPT = common dso_local global i32 0, align 4
@PKCS7_F_PKCS7_ENCODE_RINFO = common dso_local global i32 0, align 4
@PKCS7_R_CTRL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i8*, i32)* @pkcs7_encode_rinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs7_encode_rinfo(%struct.TYPE_4__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store i32* null, i32** %9, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32* @X509_get0_pubkey(i32 %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load i32*, i32** %9, align 8
  %22 = call i32* @EVP_PKEY_CTX_new(i32* %21, i32* null)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %79

26:                                               ; preds = %20
  %27 = load i32*, i32** %8, align 8
  %28 = call i64 @EVP_PKEY_encrypt_init(i32* %27)
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %73

31:                                               ; preds = %26
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @EVP_PKEY_OP_ENCRYPT, align 4
  %34 = load i32, i32* @EVP_PKEY_CTRL_PKCS7_ENCRYPT, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = call i64 @EVP_PKEY_CTX_ctrl(i32* %32, i32 -1, i32 %33, i32 %34, i32 0, %struct.TYPE_4__* %35)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @PKCS7_F_PKCS7_ENCODE_RINFO, align 4
  %40 = load i32, i32* @PKCS7_R_CTRL_ERROR, align 4
  %41 = call i32 @PKCS7err(i32 %39, i32 %40)
  br label %73

42:                                               ; preds = %31
  %43 = load i32*, i32** %8, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @EVP_PKEY_encrypt(i32* %43, i8* null, i64* %12, i8* %44, i32 %45)
  %47 = icmp sle i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %73

49:                                               ; preds = %42
  %50 = load i64, i64* %12, align 8
  %51 = call i8* @OPENSSL_malloc(i64 %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @PKCS7_F_PKCS7_ENCODE_RINFO, align 4
  %56 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %57 = call i32 @PKCS7err(i32 %55, i32 %56)
  br label %73

58:                                               ; preds = %49
  %59 = load i32*, i32** %8, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @EVP_PKEY_encrypt(i32* %59, i8* %60, i64* %12, i8* %61, i32 %62)
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %73

66:                                               ; preds = %58
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i8*, i8** %10, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 @ASN1_STRING_set0(i32 %69, i8* %70, i64 %71)
  store i8* null, i8** %10, align 8
  store i32 1, i32* %11, align 4
  br label %73

73:                                               ; preds = %66, %65, %54, %48, %38, %30
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @EVP_PKEY_CTX_free(i32* %74)
  %76 = load i8*, i8** %10, align 8
  %77 = call i32 @OPENSSL_free(i8* %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %25, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32* @X509_get0_pubkey(i32) #1

declare dso_local i32* @EVP_PKEY_CTX_new(i32*, i32*) #1

declare dso_local i64 @EVP_PKEY_encrypt_init(i32*) #1

declare dso_local i64 @EVP_PKEY_CTX_ctrl(i32*, i32, i32, i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @PKCS7err(i32, i32) #1

declare dso_local i64 @EVP_PKEY_encrypt(i32*, i8*, i64*, i8*, i32) #1

declare dso_local i8* @OPENSSL_malloc(i64) #1

declare dso_local i32 @ASN1_STRING_set0(i32, i8*, i64) #1

declare dso_local i32 @EVP_PKEY_CTX_free(i32*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
