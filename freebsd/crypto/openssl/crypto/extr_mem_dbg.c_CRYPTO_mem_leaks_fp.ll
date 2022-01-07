; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_CRYPTO_mem_leaks_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_CRYPTO_mem_leaks_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CRYPTO_MEM_CHECK_DISABLE = common dso_local global i32 0, align 4
@CRYPTO_MEM_CHECK_ENABLE = common dso_local global i32 0, align 4
@BIO_NOCLOSE = common dso_local global i32 0, align 4
@print_bio = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_mem_leaks_fp(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32, i32* @CRYPTO_MEM_CHECK_DISABLE, align 4
  %7 = call i32 @CRYPTO_mem_ctrl(i32 %6)
  %8 = call i32 (...) @BIO_s_file()
  %9 = call i32* @BIO_new(i32 %8)
  store i32* %9, i32** %4, align 8
  %10 = load i32, i32* @CRYPTO_MEM_CHECK_ENABLE, align 4
  %11 = call i32 @CRYPTO_mem_ctrl(i32 %10)
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

15:                                               ; preds = %1
  %16 = load i32*, i32** %4, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @BIO_NOCLOSE, align 4
  %19 = call i32 @BIO_set_fp(i32* %16, i32* %17, i32 %18)
  %20 = load i32, i32* @print_bio, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @CRYPTO_mem_leaks_cb(i32 %20, i32* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @BIO_free(i32* %23)
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %15, %14
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @CRYPTO_mem_ctrl(i32) #1

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_file(...) #1

declare dso_local i32 @BIO_set_fp(i32*, i32*, i32) #1

declare dso_local i32 @CRYPTO_mem_leaks_cb(i32, i32*) #1

declare dso_local i32 @BIO_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
