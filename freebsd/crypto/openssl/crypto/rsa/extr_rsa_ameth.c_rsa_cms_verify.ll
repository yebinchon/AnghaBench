; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_cms_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rsa/extr_rsa_ameth.c_rsa_cms_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@EVP_PKEY_RSA_PSS = common dso_local global i32 0, align 4
@RSA_F_RSA_CMS_VERIFY = common dso_local global i32 0, align 4
@RSA_R_ILLEGAL_OR_UNSUPPORTED_PADDING_MODE = common dso_local global i32 0, align 4
@NID_rsaEncryption = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @rsa_cms_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsa_cms_verify(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32* @CMS_SignerInfo_get0_pkey_ctx(i32* %8)
  store i32* %9, i32** %7, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @CMS_SignerInfo_get0_algs(i32* %10, i32* null, i32* null, i32* null, %struct.TYPE_4__** %6)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @OBJ_obj2nid(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EVP_PKEY_RSA_PSS, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32*, i32** %7, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %22 = call i32 @rsa_pss_to_ctx(i32* null, i32* %20, %struct.TYPE_4__* %21, i32* null)
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %1
  %24 = load i32*, i32** %7, align 8
  %25 = call i64 @pkey_ctx_is_pss(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23
  %28 = load i32, i32* @RSA_F_RSA_CMS_VERIFY, align 4
  %29 = load i32, i32* @RSA_R_ILLEGAL_OR_UNSUPPORTED_PADDING_MODE, align 4
  %30 = call i32 @RSAerr(i32 %28, i32 %29)
  store i32 0, i32* %2, align 4
  br label %47

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @NID_rsaEncryption, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %47

36:                                               ; preds = %31
  %37 = load i32, i32* %4, align 4
  %38 = call i64 @OBJ_find_sigid_algs(i32 %37, i32* null, i32* %5)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @NID_rsaEncryption, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  store i32 1, i32* %2, align 4
  br label %47

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45, %36
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %44, %35, %27, %19
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32* @CMS_SignerInfo_get0_pkey_ctx(i32*) #1

declare dso_local i32 @CMS_SignerInfo_get0_algs(i32*, i32*, i32*, i32*, %struct.TYPE_4__**) #1

declare dso_local i32 @OBJ_obj2nid(i32) #1

declare dso_local i32 @rsa_pss_to_ctx(i32*, i32*, %struct.TYPE_4__*, i32*) #1

declare dso_local i64 @pkey_ctx_is_pss(i32*) #1

declare dso_local i32 @RSAerr(i32, i32) #1

declare dso_local i64 @OBJ_find_sigid_algs(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
