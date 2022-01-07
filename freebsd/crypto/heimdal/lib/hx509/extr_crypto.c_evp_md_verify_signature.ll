; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_evp_md_verify_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_evp_md_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature_alg = type { i32, i32 (...)* }
%struct.TYPE_4__ = type { i64, i32 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@HX509_CRYPTO_SIG_INVALID_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SHA256 sigature have wrong length\00", align 1
@HX509_CRYPTO_BAD_SIGNATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Bad %s sigature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.signature_alg*, i32*, i32*, %struct.TYPE_4__*, %struct.TYPE_4__*)* @evp_md_verify_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evp_md_verify_signature(i32 %0, %struct.signature_alg* %1, i32* %2, i32* %3, %struct.TYPE_4__* %4, %struct.TYPE_4__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.signature_alg*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store %struct.signature_alg* %1, %struct.signature_alg** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %13, align 8
  %19 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load %struct.signature_alg*, %struct.signature_alg** %9, align 8
  %24 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %23, i32 0, i32 1
  %25 = load i32 (...)*, i32 (...)** %24, align 8
  %26 = call i32 (...) %25()
  %27 = call i64 @EVP_MD_size(i32 %26)
  store i64 %27, i64* %17, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %17, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %6
  %34 = load i64, i64* %17, align 8
  %35 = icmp ugt i64 %34, %20
  br i1 %35, label %36, label %41

36:                                               ; preds = %33, %6
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @HX509_CRYPTO_SIG_INVALID_FORMAT, align 4
  %39 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %37, i32 0, i32 %38, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @HX509_CRYPTO_SIG_INVALID_FORMAT, align 4
  store i32 %40, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %76

41:                                               ; preds = %33
  %42 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %42, i32** %16, align 8
  %43 = load i32*, i32** %16, align 8
  %44 = load %struct.signature_alg*, %struct.signature_alg** %9, align 8
  %45 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %44, i32 0, i32 1
  %46 = load i32 (...)*, i32 (...)** %45, align 8
  %47 = call i32 (...) %46()
  %48 = call i32 @EVP_DigestInit_ex(i32* %43, i32 %47, i32* null)
  %49 = load i32*, i32** %16, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @EVP_DigestUpdate(i32* %49, i32 %52, i64 %55)
  %57 = load i32*, i32** %16, align 8
  %58 = call i32 @EVP_DigestFinal_ex(i32* %57, i8* %22, i32* null)
  %59 = load i32*, i32** %16, align 8
  %60 = call i32 @EVP_MD_CTX_destroy(i32* %59)
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %17, align 8
  %65 = call i64 @ct_memcmp(i8* %22, i32 %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %41
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @HX509_CRYPTO_BAD_SIGNATURE, align 4
  %70 = load %struct.signature_alg*, %struct.signature_alg** %9, align 8
  %71 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i32, i32, i32, i8*, ...) @hx509_set_error_string(i32 %68, i32 0, i32 %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @HX509_CRYPTO_BAD_SIGNATURE, align 4
  store i32 %74, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %76

75:                                               ; preds = %41
  store i32 0, i32* %7, align 4
  store i32 1, i32* %18, align 4
  br label %76

76:                                               ; preds = %75, %67, %36
  %77 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @EVP_MD_size(i32) #2

declare dso_local i32 @hx509_set_error_string(i32, i32, i32, i8*, ...) #2

declare dso_local i32* @EVP_MD_CTX_create(...) #2

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #2

declare dso_local i32 @EVP_DigestUpdate(i32*, i32, i64) #2

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #2

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #2

declare dso_local i64 @ct_memcmp(i8*, i32, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
