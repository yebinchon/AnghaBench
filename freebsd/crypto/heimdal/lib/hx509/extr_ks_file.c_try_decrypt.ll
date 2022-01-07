; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_file.c_try_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_ks_file.c_try_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hx509_collector = type { i32 }
%struct.TYPE_3__ = type { i8*, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@HX509_CRYPTO_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to do string2key for private key\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Out of memory to decrypt for private key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.hx509_collector*, i32*, i32*, i8*, i8*, i64, i8*, i64)* @try_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_decrypt(i32 %0, %struct.hx509_collector* %1, i32* %2, i32* %3, i8* %4, i8* %5, i64 %6, i8* %7, i64 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.hx509_collector*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_3__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  store i32 %0, i32* %11, align 4
  store %struct.hx509_collector* %1, %struct.hx509_collector** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i8* %4, i8** %15, align 8
  store i8* %5, i8** %16, align 8
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = call i64 @EVP_CIPHER_key_length(i32* %25)
  store i64 %26, i64* %21, align 8
  %27 = load i64, i64* %21, align 8
  %28 = call i8* @malloc(i64 %27)
  store i8* %28, i8** %22, align 8
  %29 = load i8*, i8** %22, align 8
  %30 = icmp eq i8* %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %9
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @hx509_clear_error_string(i32 %32)
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %10, align 4
  br label %106

35:                                               ; preds = %9
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 (...) @EVP_md5()
  %38 = load i8*, i8** %15, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load i64, i64* %17, align 8
  %41 = load i8*, i8** %22, align 8
  %42 = call i32 @EVP_BytesToKey(i32* %36, i32 %37, i8* %38, i8* %39, i64 %40, i32 1, i8* %41, i32* null)
  store i32 %42, i32* %23, align 4
  %43 = load i32, i32* %23, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @HX509_CRYPTO_INTERNAL_ERROR, align 4
  %48 = call i32 @hx509_set_error_string(i32 %46, i32 0, i32 %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @HX509_CRYPTO_INTERNAL_ERROR, align 4
  store i32 %49, i32* %10, align 4
  br label %106

50:                                               ; preds = %35
  %51 = load i64, i64* %19, align 8
  %52 = call i8* @malloc(i64 %51)
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = call i32 @hx509_set_error_string(i32 %58, i32 0, i32 %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %23, align 4
  br label %96

62:                                               ; preds = %50
  %63 = load i64, i64* %19, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i64 %63, i64* %64, align 8
  %65 = call i32* (...) @EVP_CIPHER_CTX_new()
  store i32* %65, i32** %24, align 8
  %66 = load i32*, i32** %24, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @hx509_set_error_string(i32 %69, i32 0, i32 %70, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32, i32* @ENOMEM, align 4
  store i32 %72, i32* %23, align 4
  br label %96

73:                                               ; preds = %62
  %74 = load i32*, i32** %24, align 8
  %75 = load i32*, i32** %14, align 8
  %76 = load i8*, i8** %22, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = call i32 @EVP_CipherInit_ex(i32* %74, i32* %75, i32* null, i8* %76, i8* %77, i32 0)
  %79 = load i32*, i32** %24, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = load i8*, i8** %18, align 8
  %83 = load i64, i64* %19, align 8
  %84 = call i32 @EVP_Cipher(i32* %79, i8* %81, i8* %82, i64 %83)
  %85 = load i32*, i32** %24, align 8
  %86 = call i32 @EVP_CIPHER_CTX_free(i32* %85)
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.hx509_collector*, %struct.hx509_collector** %12, align 8
  %89 = load i32*, i32** %13, align 8
  %90 = call i32 @_hx509_collector_private_key_add(i32 %87, %struct.hx509_collector* %88, i32* %89, i32* null, %struct.TYPE_3__* %20, i32* null)
  store i32 %90, i32* %23, align 4
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @memset(i8* %92, i32 0, i64 %94)
  br label %96

96:                                               ; preds = %73, %68, %57
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @free(i8* %98)
  %100 = load i8*, i8** %22, align 8
  %101 = load i64, i64* %21, align 8
  %102 = call i32 @memset(i8* %100, i32 0, i64 %101)
  %103 = load i8*, i8** %22, align 8
  %104 = call i32 @free(i8* %103)
  %105 = load i32, i32* %23, align 4
  store i32 %105, i32* %10, align 4
  br label %106

106:                                              ; preds = %96, %45, %31
  %107 = load i32, i32* %10, align 4
  ret i32 %107
}

declare dso_local i64 @EVP_CIPHER_key_length(i32*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @hx509_clear_error_string(i32) #1

declare dso_local i32 @EVP_BytesToKey(i32*, i32, i8*, i8*, i64, i32, i8*, i32*) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*) #1

declare dso_local i32* @EVP_CIPHER_CTX_new(...) #1

declare dso_local i32 @EVP_CipherInit_ex(i32*, i32*, i32*, i8*, i8*, i32) #1

declare dso_local i32 @EVP_Cipher(i32*, i8*, i8*, i64) #1

declare dso_local i32 @EVP_CIPHER_CTX_free(i32*) #1

declare dso_local i32 @_hx509_collector_private_key_add(i32, %struct.hx509_collector*, i32*, i32*, %struct.TYPE_3__*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
