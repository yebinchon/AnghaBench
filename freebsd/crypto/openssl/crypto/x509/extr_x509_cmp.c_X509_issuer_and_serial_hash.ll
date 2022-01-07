; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_cmp.c_X509_issuer_and_serial_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_cmp.c_X509_issuer_and_serial_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @X509_issuer_and_serial_hash(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [16 x i8], align 16
  %6 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i64 0, i64* %3, align 8
  %7 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %7, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %74

11:                                               ; preds = %1
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @X509_NAME_oneline(i32 %15, i32* null, i32 0)
  store i8* %16, i8** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 (...) @EVP_md5()
  %19 = call i32 @EVP_DigestInit_ex(i32* %17, i32 %18, i32* null)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %74

22:                                               ; preds = %11
  %23 = load i32*, i32** %4, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i64 @strlen(i8* %25)
  %27 = call i32 @EVP_DigestUpdate(i32* %23, i8* %24, i64 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %74

30:                                               ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = call i32 @OPENSSL_free(i8* %31)
  %33 = load i32*, i32** %4, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @EVP_DigestUpdate(i32* %33, i8* %39, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %30
  br label %74

48:                                               ; preds = %30
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %51 = call i32 @EVP_DigestFinal_ex(i32* %49, i8* %50, i32* null)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %74

54:                                               ; preds = %48
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0
  %56 = load i8, i8* %55, align 16
  %57 = zext i8 %56 to i64
  %58 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i64
  %61 = shl i64 %60, 8
  %62 = or i64 %57, %61
  %63 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 2
  %64 = load i8, i8* %63, align 2
  %65 = zext i8 %64 to i64
  %66 = shl i64 %65, 16
  %67 = or i64 %62, %66
  %68 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 3
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i64
  %71 = shl i64 %70, 24
  %72 = or i64 %67, %71
  %73 = and i64 %72, 4294967295
  store i64 %73, i64* %3, align 8
  br label %74

74:                                               ; preds = %54, %53, %47, %29, %21, %10
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @EVP_MD_CTX_free(i32* %75)
  %77 = load i64, i64* %3, align 8
  ret i64 %77
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i8* @X509_NAME_oneline(i32, i32*, i32) #1

declare dso_local i32 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i32 @EVP_DigestUpdate(i32*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

declare dso_local i32 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
