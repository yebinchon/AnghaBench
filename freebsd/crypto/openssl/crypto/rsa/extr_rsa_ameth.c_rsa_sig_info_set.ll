; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_sig_info_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_sig_info_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EVP_PKEY_RSA_PSS = common dso_local global i64 0, align 8
@NID_sha256 = common dso_local global i32 0, align 4
@NID_sha384 = common dso_local global i32 0, align 4
@NID_sha512 = common dso_local global i32 0, align 4
@X509_SIG_INFO_TLS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_4__*, i32*)* @rsa_sig_info_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_sig_info_set(i32* %0, %struct.TYPE_4__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @OBJ_obj2nid(i32 %17)
  %19 = load i64, i64* @EVP_PKEY_RSA_PSS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

22:                                               ; preds = %3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %24 = call i32* @rsa_pss_decode(%struct.TYPE_4__* %23)
  store i32* %24, i32** %14, align 8
  %25 = load i32*, i32** %14, align 8
  %26 = call i32 @rsa_pss_get_param(i32* %25, i32** %13, i32** %12, i32* %10)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %22
  br label %65

29:                                               ; preds = %22
  %30 = load i32*, i32** %13, align 8
  %31 = call i32 @EVP_MD_type(i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @NID_sha256, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @NID_sha384, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @NID_sha512, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %39, %35, %29
  %44 = load i32, i32* %9, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @EVP_MD_type(i32* %45)
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i32, i32* %10, align 4
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @EVP_MD_size(i32* %50)
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i64, i64* @X509_SIG_INFO_TLS, align 8
  store i64 %54, i64* %11, align 8
  br label %56

55:                                               ; preds = %48, %43, %39
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %55, %53
  %57 = load i32*, i32** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i64, i64* @EVP_PKEY_RSA_PSS, align 8
  %60 = load i32*, i32** %13, align 8
  %61 = call i32 @EVP_MD_size(i32* %60)
  %62 = mul nsw i32 %61, 4
  %63 = load i64, i64* %11, align 8
  %64 = call i32 @X509_SIG_INFO_set(i32* %57, i32 %58, i64 %59, i32 %62, i64 %63)
  store i32 1, i32* %8, align 4
  br label %65

65:                                               ; preds = %56, %28
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @RSA_PSS_PARAMS_free(i32* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %65, %21
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @OBJ_obj2nid(i32) #1

declare dso_local i32* @rsa_pss_decode(%struct.TYPE_4__*) #1

declare dso_local i32 @rsa_pss_get_param(i32*, i32**, i32**, i32*) #1

declare dso_local i32 @EVP_MD_type(i32*) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @X509_SIG_INFO_set(i32*, i32, i64, i32, i64) #1

declare dso_local i32 @RSA_PSS_PARAMS_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
