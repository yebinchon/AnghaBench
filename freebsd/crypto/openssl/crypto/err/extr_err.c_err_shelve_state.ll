; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/err/extr_err.c_err_shelve_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/err/extr_err.c_err_shelve_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OPENSSL_INIT_BASE_ONLY = common dso_local global i32 0, align 4
@err_init = common dso_local global i32 0, align 4
@err_do_init = common dso_local global i32 0, align 4
@err_thread_local = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @err_shelve_state(i8** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8**, align 8
  %4 = alloca i32, align 4
  store i8** %0, i8*** %3, align 8
  %5 = call i32 (...) @get_last_sys_error()
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* @OPENSSL_INIT_BASE_ONLY, align 4
  %7 = call i32 @OPENSSL_init_crypto(i32 %6, i32* null)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %24

10:                                               ; preds = %1
  %11 = load i32, i32* @err_do_init, align 4
  %12 = call i32 @RUN_ONCE(i32* @err_init, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %24

15:                                               ; preds = %10
  %16 = call i8* @CRYPTO_THREAD_get_local(i32* @err_thread_local)
  %17 = load i8**, i8*** %3, align 8
  store i8* %16, i8** %17, align 8
  %18 = call i32 @CRYPTO_THREAD_set_local(i32* @err_thread_local, i32* inttoptr (i64 -1 to i32*))
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @set_sys_error(i32 %22)
  store i32 1, i32* %2, align 4
  br label %24

24:                                               ; preds = %21, %20, %14, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @get_last_sys_error(...) #1

declare dso_local i32 @OPENSSL_init_crypto(i32, i32*) #1

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i8* @CRYPTO_THREAD_get_local(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_set_local(i32*, i32*) #1

declare dso_local i32 @set_sys_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
