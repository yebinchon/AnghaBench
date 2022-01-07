; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_saos.c_RSA_sign_ASN1_OCTET_STRING.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_saos.c_RSA_sign_ASN1_OCTET_STRING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i32 }

@V_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING_SIZE = common dso_local global i32 0, align 4
@RSA_F_RSA_SIGN_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_sign_ASN1_OCTET_STRING(i32 %0, i8* %1, i32 %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_3__, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 1, i32* %17, align 4
  %20 = load i32, i32* @V_ASN1_OCTET_STRING, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 2
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  store i8* %24, i8** %25, align 8
  %26 = call i32 @i2d_ASN1_OCTET_STRING(%struct.TYPE_3__* %14, i8** null)
  store i32 %26, i32* %15, align 4
  %27 = load i32*, i32** %13, align 8
  %28 = call i32 @RSA_size(i32* %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %15, align 4
  %30 = load i32, i32* %16, align 4
  %31 = load i32, i32* @RSA_PKCS1_PADDING_SIZE, align 4
  %32 = sub nsw i32 %30, %31
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %6
  %35 = load i32, i32* @RSA_F_RSA_SIGN_ASN1_OCTET_STRING, align 4
  %36 = load i32, i32* @RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY, align 4
  %37 = call i32 @RSAerr(i32 %35, i32 %36)
  store i32 0, i32* %7, align 4
  br label %69

38:                                               ; preds = %6
  %39 = load i32, i32* %16, align 4
  %40 = add i32 %39, 1
  %41 = call i8* @OPENSSL_malloc(i32 %40)
  store i8* %41, i8** %19, align 8
  %42 = load i8*, i8** %19, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @RSA_F_RSA_SIGN_ASN1_OCTET_STRING, align 4
  %46 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %47 = call i32 @RSAerr(i32 %45, i32 %46)
  store i32 0, i32* %7, align 4
  br label %69

48:                                               ; preds = %38
  %49 = load i8*, i8** %19, align 8
  store i8* %49, i8** %18, align 8
  %50 = call i32 @i2d_ASN1_OCTET_STRING(%struct.TYPE_3__* %14, i8** %18)
  %51 = load i32, i32* %15, align 4
  %52 = load i8*, i8** %19, align 8
  %53 = load i8*, i8** %11, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %56 = call i32 @RSA_private_encrypt(i32 %51, i8* %52, i8* %53, i32* %54, i32 %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp sle i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  store i32 0, i32* %17, align 4
  br label %63

60:                                               ; preds = %48
  %61 = load i32, i32* %15, align 4
  %62 = load i32*, i32** %12, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %59
  %64 = load i8*, i8** %19, align 8
  %65 = load i32, i32* %16, align 4
  %66 = add i32 %65, 1
  %67 = call i32 @OPENSSL_clear_free(i8* %64, i32 %66)
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %63, %44, %34
  %70 = load i32, i32* %7, align 4
  ret i32 %70
}

declare dso_local i32 @i2d_ASN1_OCTET_STRING(%struct.TYPE_3__*, i8**) #1

declare dso_local i32 @RSA_size(i32*) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @RSA_private_encrypt(i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
