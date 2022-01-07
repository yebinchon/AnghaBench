; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_get0_public.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_RAND_DRBG_get0_public.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rand_drbg_init = common dso_local global i32 0, align 4
@do_rand_drbg_init = common dso_local global i32 0, align 4
@public_drbg = common dso_local global i32 0, align 4
@OPENSSL_INIT_THREAD_RAND = common dso_local global i32 0, align 4
@master_drbg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @RAND_DRBG_get0_public() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @do_rand_drbg_init, align 4
  %4 = call i32 @RUN_ONCE(i32* @rand_drbg_init, i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %23

7:                                                ; preds = %0
  %8 = call i32* @CRYPTO_THREAD_get_local(i32* @public_drbg)
  store i32* %8, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %21

11:                                               ; preds = %7
  %12 = load i32, i32* @OPENSSL_INIT_THREAD_RAND, align 4
  %13 = call i32 @ossl_init_thread_start(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  store i32* null, i32** %1, align 8
  br label %23

16:                                               ; preds = %11
  %17 = load i32, i32* @master_drbg, align 4
  %18 = call i32* @drbg_setup(i32 %17)
  store i32* %18, i32** %2, align 8
  %19 = load i32*, i32** %2, align 8
  %20 = call i32 @CRYPTO_THREAD_set_local(i32* @public_drbg, i32* %19)
  br label %21

21:                                               ; preds = %16, %7
  %22 = load i32*, i32** %2, align 8
  store i32* %22, i32** %1, align 8
  br label %23

23:                                               ; preds = %21, %15, %6
  %24 = load i32*, i32** %1, align 8
  ret i32* %24
}

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32* @CRYPTO_THREAD_get_local(i32*) #1

declare dso_local i32 @ossl_init_thread_start(i32) #1

declare dso_local i32* @drbg_setup(i32) #1

declare dso_local i32 @CRYPTO_THREAD_set_local(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
