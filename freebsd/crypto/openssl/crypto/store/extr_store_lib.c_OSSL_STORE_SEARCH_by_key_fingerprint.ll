; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_SEARCH_by_key_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_SEARCH_by_key_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i32*, i32 }

@OSSL_STORE_F_OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1
@OSSL_STORE_R_FINGERPRINT_SIZE_DOES_NOT_MATCH_DIGEST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c" size is \00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c", fingerprint size is \00", align 1
@OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @OSSL_STORE_SEARCH_by_key_fingerprint(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca [20 x i8], align 16
  %10 = alloca [20 x i8], align 16
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = call %struct.TYPE_4__* @OPENSSL_zalloc(i32 32)
  store %struct.TYPE_4__* %11, %struct.TYPE_4__** %8, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT, align 4
  %16 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %17 = call i32 @OSSL_STOREerr(i32 %15, i32 %16)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  br label %56

18:                                               ; preds = %3
  %19 = load i32*, i32** %5, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %42

21:                                               ; preds = %18
  %22 = load i64, i64* %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = call i64 @EVP_MD_size(i32* %23)
  %25 = icmp ne i64 %22, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %28 = load i32*, i32** %5, align 8
  %29 = call i64 @EVP_MD_size(i32* %28)
  %30 = call i32 @BIO_snprintf(i8* %27, i32 20, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @BIO_snprintf(i8* %31, i32 20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  %34 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT, align 4
  %35 = load i32, i32* @OSSL_STORE_R_FINGERPRINT_SIZE_DOES_NOT_MATCH_DIGEST, align 4
  %36 = call i32 @OSSL_STOREerr(i32 %34, i32 %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @EVP_MD_name(i32* %37)
  %39 = getelementptr inbounds [20 x i8], [20 x i8]* %9, i64 0, i64 0
  %40 = getelementptr inbounds [20 x i8], [20 x i8]* %10, i64 0, i64 0
  %41 = call i32 @ERR_add_error_data(i32 5, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %26, %21, %18
  %43 = load i32, i32* @OSSL_STORE_SEARCH_BY_KEY_FINGERPRINT, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  store %struct.TYPE_4__* %55, %struct.TYPE_4__** %4, align 8
  br label %56

56:                                               ; preds = %42, %14
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  ret %struct.TYPE_4__* %57
}

declare dso_local %struct.TYPE_4__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

declare dso_local i64 @EVP_MD_size(i32*) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @ERR_add_error_data(i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @EVP_MD_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
