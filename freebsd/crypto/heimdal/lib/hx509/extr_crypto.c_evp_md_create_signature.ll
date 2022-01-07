; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_evp_md_create_signature.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/hx509/extr_crypto.c_evp_md_create_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.signature_alg = type { i32 (...)*, i32 }
%struct.TYPE_5__ = type { i64, i32* }

@.str = private unnamed_addr constant [3 x i8] c"\05\00\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.signature_alg*, i32, i32*, %struct.TYPE_5__*, i32*, %struct.TYPE_5__*)* @evp_md_create_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evp_md_create_signature(i32 %0, %struct.signature_alg* %1, i32 %2, i32* %3, %struct.TYPE_5__* %4, i32* %5, %struct.TYPE_5__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.signature_alg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.signature_alg* %1, %struct.signature_alg** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.TYPE_5__* %6, %struct.TYPE_5__** %15, align 8
  %19 = load %struct.signature_alg*, %struct.signature_alg** %10, align 8
  %20 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %19, i32 0, i32 0
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = call i32 (...) %21()
  %23 = call i64 @EVP_MD_size(i32 %22)
  store i64 %23, i64* %16, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %25 = call i32 @memset(%struct.TYPE_5__* %24, i32 0, i32 16)
  %26 = load i32*, i32** %14, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %7
  %29 = load i32*, i32** %14, align 8
  %30 = load %struct.signature_alg*, %struct.signature_alg** %10, align 8
  %31 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @set_digest_alg(i32* %29, i32 %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %18, align 4
  store i32 %37, i32* %8, align 4
  br label %78

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %7
  %40 = load i64, i64* %16, align 8
  %41 = call i32* @malloc(i64 %40)
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load i32, i32* @ENOMEM, align 4
  store i32 %51, i32* %8, align 4
  br label %78

52:                                               ; preds = %39
  %53 = load i64, i64* %16, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = call i32* (...) @EVP_MD_CTX_create()
  store i32* %56, i32** %17, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = load %struct.signature_alg*, %struct.signature_alg** %10, align 8
  %59 = getelementptr inbounds %struct.signature_alg, %struct.signature_alg* %58, i32 0, i32 0
  %60 = load i32 (...)*, i32 (...)** %59, align 8
  %61 = call i32 (...) %60()
  %62 = call i32 @EVP_DigestInit_ex(i32* %57, i32 %61, i32* null)
  %63 = load i32*, i32** %17, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @EVP_DigestUpdate(i32* %63, i32* %66, i64 %69)
  %71 = load i32*, i32** %17, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @EVP_DigestFinal_ex(i32* %71, i32* %74, i32* null)
  %76 = load i32*, i32** %17, align 8
  %77 = call i32 @EVP_MD_CTX_destroy(i32* %76)
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %52, %48, %36
  %79 = load i32, i32* %8, align 4
  ret i32 %79
}

declare dso_local i64 @EVP_MD_size(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @set_digest_alg(i32*, i32, i8*, i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32* @EVP_MD_CTX_create(...) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i32*, i64) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i32*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
