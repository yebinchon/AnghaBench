; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_ossltest.c_ossltest_aes_128_cbc.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/engines/extr_e_ossltest.c_ossltest_aes_128_cbc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_hidden_aes_128_cbc = common dso_local global i32* null, align 8
@NID_aes_128_cbc = common dso_local global i32 0, align 4
@EVP_CIPH_FLAG_DEFAULT_ASN1 = common dso_local global i32 0, align 4
@EVP_CIPH_CBC_MODE = common dso_local global i32 0, align 4
@ossltest_aes128_init_key = common dso_local global i32 0, align 4
@ossltest_aes128_cbc_cipher = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @ossltest_aes_128_cbc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ossltest_aes_128_cbc() #0 {
  %1 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %37

3:                                                ; preds = %0
  %4 = load i32, i32* @NID_aes_128_cbc, align 4
  %5 = call i32* @EVP_CIPHER_meth_new(i32 %4, i32 16, i32 16)
  store i32* %5, i32** @_hidden_aes_128_cbc, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %34, label %7

7:                                                ; preds = %3
  %8 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %9 = call i32 @EVP_CIPHER_meth_set_iv_length(i32* %8, i32 16)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %7
  %12 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %13 = load i32, i32* @EVP_CIPH_FLAG_DEFAULT_ASN1, align 4
  %14 = load i32, i32* @EVP_CIPH_CBC_MODE, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @EVP_CIPHER_meth_set_flags(i32* %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %11
  %19 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %20 = load i32, i32* @ossltest_aes128_init_key, align 4
  %21 = call i32 @EVP_CIPHER_meth_set_init(i32* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %25 = load i32, i32* @ossltest_aes128_cbc_cipher, align 4
  %26 = call i32 @EVP_CIPHER_meth_set_do_cipher(i32* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %30 = call i32 (...) @EVP_aes_128_cbc()
  %31 = call i32 @EVP_CIPHER_impl_ctx_size(i32 %30)
  %32 = call i32 @EVP_CIPHER_meth_set_impl_ctx_size(i32* %29, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28, %23, %18, %11, %7, %3
  %35 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  %36 = call i32 @EVP_CIPHER_meth_free(i32* %35)
  store i32* null, i32** @_hidden_aes_128_cbc, align 8
  br label %37

37:                                               ; preds = %34, %28, %0
  %38 = load i32*, i32** @_hidden_aes_128_cbc, align 8
  ret i32* %38
}

declare dso_local i32* @EVP_CIPHER_meth_new(i32, i32, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_iv_length(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_flags(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_init(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_do_cipher(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_meth_set_impl_ctx_size(i32*, i32) #1

declare dso_local i32 @EVP_CIPHER_impl_ctx_size(i32) #1

declare dso_local i32 @EVP_aes_128_cbc(...) #1

declare dso_local i32 @EVP_CIPHER_meth_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
