; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_OPENSSL_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_init.c_OPENSSL_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__*, i32 (...)* }
%struct.TYPE_6__ = type { i32, i32 }

@base_inited = common dso_local global i64 0, align 8
@stopped = common dso_local global i32 0, align 4
@stop_handlers = common dso_local global %struct.TYPE_5__* null, align 8
@init_lock = common dso_local global i32* null, align 8
@zlib_inited = common dso_local global i64 0, align 8
@async_inited = common dso_local global i64 0, align 8
@load_crypto_strings_inited = common dso_local global i64 0, align 8
@destructor_key = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OPENSSL_cleanup() #0 {
  %1 = alloca %struct.TYPE_5__*, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  %4 = load i64, i64* @base_inited, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %60

7:                                                ; preds = %0
  %8 = load i32, i32* @stopped, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  br label %60

11:                                               ; preds = %7
  store i32 1, i32* @stopped, align 4
  %12 = call i32 @ossl_init_get_thread_local(i32 0)
  %13 = call i32 @ossl_init_thread_stop(i32 %12)
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @stop_handlers, align 8
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %1, align 8
  br label %15

15:                                               ; preds = %18, %11
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %17 = icmp ne %struct.TYPE_5__* %16, null
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load i32 (...)*, i32 (...)** %20, align 8
  %22 = call i32 (...) %21()
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %2, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %1, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = call i32 @OPENSSL_free(%struct.TYPE_5__* %27)
  br label %15

29:                                               ; preds = %15
  store %struct.TYPE_5__* null, %struct.TYPE_5__** @stop_handlers, align 8
  %30 = load i32*, i32** @init_lock, align 8
  %31 = call i32 @CRYPTO_THREAD_lock_free(i32* %30)
  store i32* null, i32** @init_lock, align 8
  %32 = load i64, i64* @zlib_inited, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = call i32 (...) @comp_zlib_cleanup_int()
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i64, i64* @async_inited, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 (...) @async_deinit()
  br label %41

41:                                               ; preds = %39, %36
  %42 = load i64, i64* @load_crypto_strings_inited, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (...) @err_free_strings_int()
  br label %46

46:                                               ; preds = %44, %41
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @destructor_key, i32 0, i32 1), align 4
  store i32 %47, i32* %3, align 4
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @destructor_key, i32 0, i32 0), align 4
  %48 = call i32 @CRYPTO_THREAD_cleanup_local(i32* %3)
  %49 = call i32 (...) @rand_cleanup_int()
  %50 = call i32 (...) @rand_drbg_cleanup_int()
  %51 = call i32 (...) @conf_modules_free_int()
  %52 = call i32 (...) @engine_cleanup_int()
  %53 = call i32 (...) @ossl_store_cleanup_int()
  %54 = call i32 (...) @crypto_cleanup_all_ex_data_int()
  %55 = call i32 (...) @bio_cleanup()
  %56 = call i32 (...) @evp_cleanup_int()
  %57 = call i32 (...) @obj_cleanup_int()
  %58 = call i32 (...) @err_cleanup()
  %59 = call i32 (...) @CRYPTO_secure_malloc_done()
  store i64 0, i64* @base_inited, align 8
  br label %60

60:                                               ; preds = %46, %10, %6
  ret void
}

declare dso_local i32 @ossl_init_thread_stop(i32) #1

declare dso_local i32 @ossl_init_get_thread_local(i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_5__*) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32*) #1

declare dso_local i32 @comp_zlib_cleanup_int(...) #1

declare dso_local i32 @async_deinit(...) #1

declare dso_local i32 @err_free_strings_int(...) #1

declare dso_local i32 @CRYPTO_THREAD_cleanup_local(i32*) #1

declare dso_local i32 @rand_cleanup_int(...) #1

declare dso_local i32 @rand_drbg_cleanup_int(...) #1

declare dso_local i32 @conf_modules_free_int(...) #1

declare dso_local i32 @engine_cleanup_int(...) #1

declare dso_local i32 @ossl_store_cleanup_int(...) #1

declare dso_local i32 @crypto_cleanup_all_ex_data_int(...) #1

declare dso_local i32 @bio_cleanup(...) #1

declare dso_local i32 @evp_cleanup_int(...) #1

declare dso_local i32 @obj_cleanup_int(...) #1

declare dso_local i32 @err_cleanup(...) #1

declare dso_local i32 @CRYPTO_secure_malloc_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
