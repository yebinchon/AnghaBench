; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_dh_cms_decrypt.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/dh/extr_dh_ameth.c_dh_cms_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DH_F_DH_CMS_DECRYPT = common dso_local global i32 0, align 4
@DH_R_PEER_KEY_ERROR = common dso_local global i32 0, align 4
@DH_R_SHARED_INFO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @dh_cms_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dh_cms_decrypt(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = call i32* @CMS_RecipientInfo_get0_pkey_ctx(i32* %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

12:                                               ; preds = %1
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @EVP_PKEY_CTX_get0_peerkey(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %39, label %16

16:                                               ; preds = %12
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @CMS_RecipientInfo_kari_get0_orig_id(i32* %17, i32** %5, i32** %6, i32* null, i32* null, i32* null)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %49

21:                                               ; preds = %16
  %22 = load i32*, i32** %5, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24, %21
  store i32 0, i32* %2, align 4
  br label %49

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @dh_cms_set_peerkey(i32* %29, i32* %30, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load i32, i32* @DH_F_DH_CMS_DECRYPT, align 4
  %36 = load i32, i32* @DH_R_PEER_KEY_ERROR, align 4
  %37 = call i32 @DHerr(i32 %35, i32 %36)
  store i32 0, i32* %2, align 4
  br label %49

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %12
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @dh_cms_set_shared_info(i32* %40, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* @DH_F_DH_CMS_DECRYPT, align 4
  %46 = load i32, i32* @DH_R_SHARED_INFO_ERROR, align 4
  %47 = call i32 @DHerr(i32 %45, i32 %46)
  store i32 0, i32* %2, align 4
  br label %49

48:                                               ; preds = %39
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %44, %34, %27, %20, %11
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32* @CMS_RecipientInfo_get0_pkey_ctx(i32*) #1

declare dso_local i32 @EVP_PKEY_CTX_get0_peerkey(i32*) #1

declare dso_local i32 @CMS_RecipientInfo_kari_get0_orig_id(i32*, i32**, i32**, i32*, i32*, i32*) #1

declare dso_local i32 @dh_cms_set_peerkey(i32*, i32*, i32*) #1

declare dso_local i32 @DHerr(i32, i32) #1

declare dso_local i32 @dh_cms_set_shared_info(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
