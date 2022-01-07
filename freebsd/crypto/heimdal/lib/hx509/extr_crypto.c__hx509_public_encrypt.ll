; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_public_encrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c__hx509_public_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_12__ = type { i8*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@HX509_CRYPTO_RSA_PUBLIC_ENCRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"RSA public encrypt failed with %d\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"internal rsa decryption failure: ret > tosize\00", align 1
@ASN1_OID_ID_PKCS1_RSAENCRYPTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_hx509_public_encrypt(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_14__* %2, i32* %3, %struct.TYPE_12__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %11, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  store i8* null, i8** %20, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 1
  store i32 0, i32* %22, align 8
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %12, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %18, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %33, 8
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %17, align 8
  %36 = load i64, i64* %17, align 8
  %37 = call i32* @d2i_RSAPublicKey(i32* null, i8** %18, i64 %36)
  store i32* %37, i32** %16, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %5
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %41, i32 0, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %6, align 4
  br label %108

45:                                               ; preds = %5
  %46 = load i32*, i32** %16, align 8
  %47 = call i32 @RSA_size(i32* %46)
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %14, align 4
  %49 = call i8* @malloc(i32 %48)
  store i8* %49, i8** %13, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @RSA_free(i32* %53)
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %55, i32 0, i32 %56, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ENOMEM, align 4
  store i32 %58, i32* %6, align 4
  br label %108

59:                                               ; preds = %45
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i32*, i32** %16, align 8
  %68 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %69 = call i32 @RSA_public_encrypt(i32 %62, i8* %65, i8* %66, i32* %67, i32 %68)
  store i32 %69, i32* %15, align 4
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @RSA_free(i32* %70)
  %72 = load i32, i32* %15, align 4
  %73 = icmp sle i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %59
  %75 = load i8*, i8** %13, align 8
  %76 = call i32 @free(i8* %75)
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @HX509_CRYPTO_RSA_PUBLIC_ENCRYPT, align 4
  %79 = load i32, i32* %15, align 4
  %80 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %77, i32 0, i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @HX509_CRYPTO_RSA_PUBLIC_ENCRYPT, align 4
  store i32 %81, i32* %6, align 4
  br label %108

82:                                               ; preds = %59
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %14, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = call i32 @_hx509_abort(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %82
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  %92 = load i8*, i8** %13, align 8
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 0
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @ASN1_OID_ID_PKCS1_RSAENCRYPTION, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = call i32 @der_copy_oid(i32 %95, i32* %96)
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %88
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %102 = call i32 @der_free_octet_string(%struct.TYPE_12__* %101)
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %103, i32 0, i32 %104, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @ENOMEM, align 4
  store i32 %106, i32* %6, align 4
  br label %108

107:                                              ; preds = %88
  store i32 0, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %100, %74, %52, %40
  %109 = load i32, i32* %6, align 4
  ret i32 %109
}

declare dso_local i32* @d2i_RSAPublicKey(i32*, i8**, i64) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, ...) #1

declare dso_local i32 @RSA_size(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @RSA_free(i32*) #1

declare dso_local i32 @RSA_public_encrypt(i32, i8*, i8*, i32*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @_hx509_abort(i8*) #1

declare dso_local i32 @der_copy_oid(i32, i32*) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
