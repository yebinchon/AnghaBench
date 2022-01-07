; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_saos.c_RSA_verify_ASN1_OCTET_STRING.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_saos.c_RSA_verify_ASN1_OCTET_STRING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@RSA_F_RSA_VERIFY_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@RSA_R_WRONG_SIGNATURE_LENGTH = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@RSA_R_BAD_SIGNATURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_verify_ASN1_OCTET_STRING(i32 %0, i8* %1, i32 %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_4__*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %15, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %18, align 8
  %19 = load i32, i32* %12, align 4
  %20 = load i32*, i32** %13, align 8
  %21 = call i64 @RSA_size(i32* %20)
  %22 = trunc i64 %21 to i32
  %23 = icmp ne i32 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %6
  %25 = load i32, i32* @RSA_F_RSA_VERIFY_ASN1_OCTET_STRING, align 4
  %26 = load i32, i32* @RSA_R_WRONG_SIGNATURE_LENGTH, align 4
  %27 = call i32 @RSAerr(i32 %25, i32 %26)
  store i32 0, i32* %7, align 4
  br label %83

28:                                               ; preds = %6
  %29 = load i32, i32* %12, align 4
  %30 = call i8* @OPENSSL_malloc(i32 %29)
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @RSA_F_RSA_VERIFY_ASN1_OCTET_STRING, align 4
  %35 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %36 = call i32 @RSAerr(i32 %34, i32 %35)
  br label %76

37:                                               ; preds = %28
  %38 = load i32, i32* %12, align 4
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i32*, i32** %13, align 8
  %42 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %43 = call i32 @RSA_public_decrypt(i32 %38, i8* %39, i8* %40, i32* %41, i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp sle i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %76

47:                                               ; preds = %37
  %48 = load i8*, i8** %16, align 8
  store i8* %48, i8** %17, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sext i32 %49 to i64
  %51 = call %struct.TYPE_4__* @d2i_ASN1_OCTET_STRING(i32* null, i8** %17, i64 %50)
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %18, align 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %53 = icmp eq %struct.TYPE_4__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %76

55:                                               ; preds = %47
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %55
  %63 = load i8*, i8** %9, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i64 @memcmp(i8* %63, i32 %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %62, %55
  %71 = load i32, i32* @RSA_F_RSA_VERIFY_ASN1_OCTET_STRING, align 4
  %72 = load i32, i32* @RSA_R_BAD_SIGNATURE, align 4
  %73 = call i32 @RSAerr(i32 %71, i32 %72)
  br label %75

74:                                               ; preds = %62
  store i32 1, i32* %15, align 4
  br label %75

75:                                               ; preds = %74, %70
  br label %76

76:                                               ; preds = %75, %54, %46, %33
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %78 = call i32 @ASN1_OCTET_STRING_free(%struct.TYPE_4__* %77)
  %79 = load i8*, i8** %16, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @OPENSSL_clear_free(i8* %79, i32 %80)
  %82 = load i32, i32* %15, align 4
  store i32 %82, i32* %7, align 4
  br label %83

83:                                               ; preds = %76, %24
  %84 = load i32, i32* %7, align 4
  ret i32 %84
}

declare dso_local i64 @RSA_size(i32*) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i8* @OPENSSL_malloc(i32) #1

declare dso_local i32 @RSA_public_decrypt(i32, i8*, i8*, i32*, i32) #1

declare dso_local %struct.TYPE_4__* @d2i_ASN1_OCTET_STRING(i32*, i8**, i64) #1

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @ASN1_OCTET_STRING_free(%struct.TYPE_4__*) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
