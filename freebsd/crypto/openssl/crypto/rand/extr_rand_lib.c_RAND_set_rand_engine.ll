; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_rand_lib.c_RAND_set_rand_engine.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_rand_lib.c_RAND_set_rand_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rand_init = common dso_local global i32 0, align 4
@do_rand_init = common dso_local global i32 0, align 4
@rand_engine_lock = common dso_local global i32 0, align 4
@funct_ref = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_set_rand_engine(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* null, i32** %4, align 8
  %5 = load i32, i32* @do_rand_init, align 4
  %6 = call i32 @RUN_ONCE(i32* @rand_init, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load i32*, i32** %3, align 8
  %14 = call i32 @ENGINE_init(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %34

17:                                               ; preds = %12
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @ENGINE_get_RAND(i32* %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %3, align 8
  %24 = call i32 @ENGINE_finish(i32* %23)
  store i32 0, i32* %2, align 4
  br label %34

25:                                               ; preds = %17
  br label %26

26:                                               ; preds = %25, %9
  %27 = load i32, i32* @rand_engine_lock, align 4
  %28 = call i32 @CRYPTO_THREAD_write_lock(i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @RAND_set_rand_method(i32* %29)
  %31 = load i32*, i32** %3, align 8
  store i32* %31, i32** @funct_ref, align 8
  %32 = load i32, i32* @rand_engine_lock, align 4
  %33 = call i32 @CRYPTO_THREAD_unlock(i32 %32)
  store i32 1, i32* %2, align 4
  br label %34

34:                                               ; preds = %26, %22, %16, %8
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @ENGINE_init(i32*) #1

declare dso_local i32* @ENGINE_get_RAND(i32*) #1

declare dso_local i32 @ENGINE_finish(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @RAND_set_rand_method(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
