; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_sign.c_RSA_sign.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_sign.c_RSA_sign.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { {}* }

@NID_md5_sha1 = common dso_local global i32 0, align 4
@SSL_SIG_LENGTH = common dso_local global i32 0, align 4
@RSA_F_RSA_SIGN = common dso_local global i32 0, align 4
@RSA_R_INVALID_MESSAGE_LENGTH = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING_SIZE = common dso_local global i32 0, align 4
@RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY = common dso_local global i32 0, align 4
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RSA_sign(i32 %0, i8* %1, i32 %2, i8* %3, i32* %4, %struct.TYPE_8__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %8, align 4
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %13, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (i32, i8*, i32, i8*, i32*, %struct.TYPE_8__*)**
  %24 = load i32 (i32, i8*, i32, i8*, i32*, %struct.TYPE_8__*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.TYPE_8__*)** %23, align 8
  %25 = icmp ne i32 (i32, i8*, i32, i8*, i32*, %struct.TYPE_8__*)* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %6
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = bitcast {}** %30 to i32 (i32, i8*, i32, i8*, i32*, %struct.TYPE_8__*)**
  %32 = load i32 (i32, i8*, i32, i8*, i32*, %struct.TYPE_8__*)*, i32 (i32, i8*, i32, i8*, i32*, %struct.TYPE_8__*)** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i8*, i8** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i8*, i8** %11, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %39 = call i32 %32(i32 %33, i8* %34, i32 %35, i8* %36, i32* %37, %struct.TYPE_8__* %38)
  store i32 %39, i32* %7, align 4
  br label %94

40:                                               ; preds = %6
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @NID_md5_sha1, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %40
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @SSL_SIG_LENGTH, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @RSA_F_RSA_SIGN, align 4
  %50 = load i32, i32* @RSA_R_INVALID_MESSAGE_LENGTH, align 4
  %51 = call i32 @RSAerr(i32 %49, i32 %50)
  store i32 0, i32* %7, align 4
  br label %94

52:                                               ; preds = %44
  %53 = load i32, i32* @SSL_SIG_LENGTH, align 4
  store i32 %53, i32* %15, align 4
  %54 = load i8*, i8** %9, align 8
  store i8* %54, i8** %18, align 8
  br label %64

55:                                               ; preds = %40
  %56 = load i32, i32* %8, align 4
  %57 = load i8*, i8** %9, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @encode_pkcs1(i8** %17, i32* %15, i32 %56, i8* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %55
  br label %88

62:                                               ; preds = %55
  %63 = load i8*, i8** %17, align 8
  store i8* %63, i8** %18, align 8
  br label %64

64:                                               ; preds = %62, %52
  %65 = load i32, i32* %15, align 4
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %67 = call i32 @RSA_size(%struct.TYPE_8__* %66)
  %68 = load i32, i32* @RSA_PKCS1_PADDING_SIZE, align 4
  %69 = sub nsw i32 %67, %68
  %70 = icmp sgt i32 %65, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @RSA_F_RSA_SIGN, align 4
  %73 = load i32, i32* @RSA_R_DIGEST_TOO_BIG_FOR_RSA_KEY, align 4
  %74 = call i32 @RSAerr(i32 %72, i32 %73)
  br label %88

75:                                               ; preds = %64
  %76 = load i32, i32* %15, align 4
  %77 = load i8*, i8** %18, align 8
  %78 = load i8*, i8** %11, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %80 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %81 = call i32 @RSA_private_encrypt(i32 %76, i8* %77, i8* %78, %struct.TYPE_8__* %79, i32 %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %88

85:                                               ; preds = %75
  %86 = load i32, i32* %14, align 4
  %87 = load i32*, i32** %12, align 8
  store i32 %86, i32* %87, align 4
  store i32 1, i32* %16, align 4
  br label %88

88:                                               ; preds = %85, %84, %71, %61
  %89 = load i8*, i8** %17, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = call i32 @OPENSSL_clear_free(i8* %89, i64 %91)
  %93 = load i32, i32* %16, align 4
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %88, %48, %26
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i32 @encode_pkcs1(i8**, i32*, i32, i8*, i32) #1

declare dso_local i32 @RSA_size(%struct.TYPE_8__*) #1

declare dso_local i32 @RSA_private_encrypt(i32, i8*, i8*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @OPENSSL_clear_free(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
