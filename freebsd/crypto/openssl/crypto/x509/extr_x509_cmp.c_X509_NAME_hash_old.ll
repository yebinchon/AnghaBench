; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_cmp.c_X509_NAME_hash_old.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/x509/extr_x509_cmp.c_X509_NAME_hash_old.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@EVP_MD_CTX_FLAG_NON_FIPS_ALLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @X509_NAME_hash_old(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [16 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = call i32* (...) @EVP_MD_CTX_new()
  store i32* %7, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* %5, align 8
  store i64 %11, i64* %2, align 8
  br label %65

12:                                               ; preds = %1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %14 = call i32 @i2d_X509_NAME(%struct.TYPE_6__* %13, i32* null)
  %15 = load i32*, i32** %4, align 8
  %16 = load i32, i32* @EVP_MD_CTX_FLAG_NON_FIPS_ALLOW, align 4
  %17 = call i32 @EVP_MD_CTX_set_flags(i32* %15, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 (...) @EVP_md5()
  %20 = call i64 @EVP_DigestInit_ex(i32* %18, i32 %19, i32* null)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %12
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @EVP_DigestUpdate(i32* %23, i32 %28, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %22
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %39 = call i64 @EVP_DigestFinal_ex(i32* %37, i8* %38, i32* null)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 0
  %43 = load i8, i8* %42, align 16
  %44 = zext i8 %43 to i64
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i64
  %48 = shl i64 %47, 8
  %49 = or i64 %44, %48
  %50 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 2
  %51 = load i8, i8* %50, align 2
  %52 = zext i8 %51 to i64
  %53 = shl i64 %52, 16
  %54 = or i64 %49, %53
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %6, i64 0, i64 3
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i64
  %58 = shl i64 %57, 24
  %59 = or i64 %54, %58
  %60 = and i64 %59, 4294967295
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %41, %36, %22, %12
  %62 = load i32*, i32** %4, align 8
  %63 = call i32 @EVP_MD_CTX_free(i32* %62)
  %64 = load i64, i64* %5, align 8
  store i64 %64, i64* %2, align 8
  br label %65

65:                                               ; preds = %61, %10
  %66 = load i64, i64* %2, align 8
  ret i64 %66
}

declare dso_local i32* @EVP_MD_CTX_new(...) #1

declare dso_local i32 @i2d_X509_NAME(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_set_flags(i32*, i32) #1

declare dso_local i64 @EVP_DigestInit_ex(i32*, i32, i32*) #1

declare dso_local i32 @EVP_md5(...) #1

declare dso_local i64 @EVP_DigestUpdate(i32*, i32, i32) #1

declare dso_local i64 @EVP_DigestFinal_ex(i32*, i8*, i32*) #1

declare dso_local i32 @EVP_MD_CTX_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
