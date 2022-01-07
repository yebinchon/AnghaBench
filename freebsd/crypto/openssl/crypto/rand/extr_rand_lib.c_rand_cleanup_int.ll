; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_rand_lib.c_rand_cleanup_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_rand_lib.c_rand_cleanup_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (...)* }

@default_RAND_meth = common dso_local global %struct.TYPE_3__* null, align 8
@rand_inited = common dso_local global i64 0, align 8
@rand_engine_lock = common dso_local global i32* null, align 8
@rand_meth_lock = common dso_local global i32* null, align 8
@rand_nonce_lock = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rand_cleanup_int() #0 {
  %1 = alloca %struct.TYPE_3__*, align 8
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @default_RAND_meth, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %1, align 8
  %3 = load i64, i64* @rand_inited, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %0
  br label %28

6:                                                ; preds = %0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %6
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (...)*, i32 (...)** %11, align 8
  %13 = icmp ne i32 (...)* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %1, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (...)*, i32 (...)** %16, align 8
  %18 = call i32 (...) %17()
  br label %19

19:                                               ; preds = %14, %9, %6
  %20 = call i32 @RAND_set_rand_method(i32* null)
  %21 = call i32 (...) @rand_pool_cleanup()
  %22 = load i32*, i32** @rand_engine_lock, align 8
  %23 = call i32 @CRYPTO_THREAD_lock_free(i32* %22)
  store i32* null, i32** @rand_engine_lock, align 8
  %24 = load i32*, i32** @rand_meth_lock, align 8
  %25 = call i32 @CRYPTO_THREAD_lock_free(i32* %24)
  store i32* null, i32** @rand_meth_lock, align 8
  %26 = load i32*, i32** @rand_nonce_lock, align 8
  %27 = call i32 @CRYPTO_THREAD_lock_free(i32* %26)
  store i32* null, i32** @rand_nonce_lock, align 8
  store i64 0, i64* @rand_inited, align 8
  br label %28

28:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @RAND_set_rand_method(i32*) #1

declare dso_local i32 @rand_pool_cleanup(...) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
