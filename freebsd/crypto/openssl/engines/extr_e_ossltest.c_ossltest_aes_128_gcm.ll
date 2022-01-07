; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_ossltest.c_ossltest_aes_128_gcm.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_ossltest.c_ossltest_aes_128_gcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_hidden_aes_128_gcm = common dso_local global i32* null, align 8
@NID_aes_128_gcm = common dso_local global i32 0, align 4
@AES_GCM_FLAGS = common dso_local global i32 0, align 4
@ossltest_aes128_gcm_init_key = common dso_local global i32 0, align 4
@ossltest_aes128_gcm_cipher = common dso_local global i32 0, align 4
@ossltest_aes128_gcm_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @ossltest_aes_128_gcm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ossltest_aes_128_gcm() #0 {
  %1 = load i32*, i32** @_hidden_aes_128_gcm, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %40

3:                                                ; preds = %0
  %4 = load i32, i32* @NID_aes_128_gcm, align 4
  %5 = call i32* @EVP_CIPHER_meth_new(i32 %4, i32 1, i32 16)
  store i32* %5, i32** @_hidden_aes_128_gcm, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %37, label %7

7:                                                ; preds = %3
  %8 = load i32*, i32** @_hidden_aes_128_gcm, align 8
  %9 = call i32 @EVP_CIPHER_meth_set_iv_length(i32* %8, i32 12)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %7
  %12 = load i32*, i32** @_hidden_aes_128_gcm, align 8
  %13 = load i32, i32* @AES_GCM_FLAGS, align 4
  %14 = call i32 @EVP_CIPHER_meth_set_flags(i32* %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load i32*, i32** @_hidden_aes_128_gcm, align 8
  %18 = load i32, i32* @ossltest_aes128_gcm_init_key, align 4
  %19 = call i32 @EVP_CIPHER_meth_set_init(i32* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load i32*, i32** @_hidden_aes_128_gcm, align 8
  %23 = load i32, i32* @ossltest_aes128_gcm_cipher, align 4
  %24 = call i32 @EVP_CIPHER_meth_set_do_cipher(i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i32*, i32** @_hidden_aes_128_gcm, align 8
  %28 = load i32, i32* @ossltest_aes128_gcm_ctrl, align 4
  %29 = call i32 @EVP_CIPHER_meth_set_ctrl(i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32*, i32** @_hidden_aes_128_gcm, align 8
  %33 = call i32 (...) @EVP_aes_128_gcm()
  %34 = call i32 @EVP_CIPHER_impl_ctx_size(i32 %33)
  %35 = call i32 @EVP_CIPHER_meth_set_impl_ctx_size(i32* %32, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %31, %26, %21, %16, %11, %7, %3
  %38 = load i32*, i32** @_hidden_aes_128_gcm, align 8
  %39 = call i32 @EVP_CIPHER_meth_free(i32* %38)
  store i32* null, i32** @_hidden_aes_128_gcm, align 8
  br label %40

40:                                               ; preds = %37, %31, %0
  %41 = load i32*, i32** @_hidden_aes_128_gcm, align 8
  ret i32* %41
}

declare dso_local i32* @EVP_CIPHER_meth_new(i32, i32, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_iv_length(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_flags(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_init(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_do_cipher(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_ctrl(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_impl_ctx_size(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_impl_ctx_size(i32) #1

declare dso_local i32 @EVP_aes_128_gcm(...) #1

declare dso_local i32 @EVP_CIPHER_meth_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
