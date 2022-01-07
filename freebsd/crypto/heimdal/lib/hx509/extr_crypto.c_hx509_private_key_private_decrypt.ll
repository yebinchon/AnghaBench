; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_private_key_private_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_hx509_private_key_private_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i64, i32* }

@HX509_PRIVATE_KEY_MISSING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Private RSA key missing\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@RSA_PKCS1_PADDING = common dso_local global i32 0, align 4
@HX509_CRYPTO_RSA_PRIVATE_DECRYPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to decrypt using private key: %d\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"internal rsa decryption failure: ret > tosize\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hx509_private_key_private_decrypt(i32 %0, %struct.TYPE_10__* %1, i32* %2, %struct.TYPE_9__* %3, %struct.TYPE_10__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_10__* %4, %struct.TYPE_10__** %11, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HX509_PRIVATE_KEY_MISSING, align 4
  %25 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %23, i32 0, i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @HX509_PRIVATE_KEY_MISSING, align 4
  store i32 %26, i32* %6, align 4
  br label %90

27:                                               ; preds = %5
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @RSA_size(i32* %31)
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32* @malloc(i64 %37)
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %27
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %46, i32 0, i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %6, align 4
  br label %90

50:                                               ; preds = %27
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @RSA_PKCS1_PADDING, align 4
  %65 = call i32 @RSA_private_decrypt(i64 %53, i32* %56, i32* %59, i32* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %50
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = call i32 @der_free_octet_string(%struct.TYPE_10__* %69)
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @HX509_CRYPTO_RSA_PRIVATE_DECRYPT, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %71, i32 0, i32 %72, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @HX509_CRYPTO_RSA_PRIVATE_DECRYPT, align 4
  store i32 %75, i32* %6, align 4
  br label %90

76:                                               ; preds = %50
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = icmp ult i64 %79, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %76
  %84 = call i32 @_hx509_abort(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %76
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %85, %68, %45, %22
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, ...) #1

declare dso_local i64 @RSA_size(i32*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @RSA_private_decrypt(i64, i32*, i32*, i32*, i32) #1

declare dso_local i32 @der_free_octet_string(%struct.TYPE_10__*) #1

declare dso_local i32 @_hx509_abort(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
