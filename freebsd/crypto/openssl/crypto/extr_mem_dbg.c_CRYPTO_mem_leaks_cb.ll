; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_CRYPTO_mem_leaks_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_CRYPTO_mem_leaks_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i64, i8*)*, i64, i64, i8* }

@memdbg_init = common dso_local global i32 0, align 4
@do_memdbg_init = common dso_local global i32 0, align 4
@CRYPTO_MEM_CHECK_DISABLE = common dso_local global i32 0, align 4
@mh = common dso_local global i32* null, align 8
@print_leak = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%ld bytes leaked in %d chunks\0A\00", align 1
@memdbg_lock = common dso_local global i32* null, align 8
@mh_mode = common dso_local global i32 0, align 4
@CRYPTO_MEM_CHECK_OFF = common dso_local global i32 0, align 4
@appinfokey = common dso_local global i32 0, align 4
@long_memdbg_lock = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_mem_leaks_cb(i32 (i8*, i64, i8*)* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 (i8*, i64, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  store i32 (i8*, i64, i8*)* %0, i32 (i8*, i64, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = call i32 (...) @OPENSSL_cleanup()
  %10 = load i32, i32* @do_memdbg_init, align 4
  %11 = call i32 @RUN_ONCE(i32* @memdbg_init, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %69

14:                                               ; preds = %2
  %15 = load i32, i32* @CRYPTO_MEM_CHECK_DISABLE, align 4
  %16 = call i32 @CRYPTO_mem_ctrl(i32 %15)
  %17 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i32 (i8*, i64, i8*)* %17, i32 (i8*, i64, i8*)** %18, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 3
  store i8* %19, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  store i64 0, i64* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32*, i32** @mh, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %14
  %26 = load i32*, i32** @mh, align 8
  %27 = load i32, i32* @print_leak, align 4
  %28 = call i32 @lh_MEM_doall_MEM_LEAK(i32* %26, i32 %27, %struct.TYPE_3__* %6)
  br label %29

29:                                               ; preds = %25, %14
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @BIO_snprintf(i8* %34, i32 256, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %38)
  %40 = load i32 (i8*, i64, i8*)*, i32 (i8*, i64, i8*)** %4, align 8
  %41 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %43 = call i64 @strlen(i8* %42)
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 %40(i8* %41, i64 %43, i8* %44)
  br label %56

46:                                               ; preds = %29
  %47 = load i32*, i32** @memdbg_lock, align 8
  %48 = call i32 @CRYPTO_THREAD_write_lock(i32* %47)
  %49 = load i32, i32* @mh_mode, align 4
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @CRYPTO_MEM_CHECK_OFF, align 4
  store i32 %50, i32* @mh_mode, align 4
  %51 = load i32*, i32** @mh, align 8
  %52 = call i32 @lh_MEM_free(i32* %51)
  store i32* null, i32** @mh, align 8
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* @mh_mode, align 4
  %54 = load i32*, i32** @memdbg_lock, align 8
  %55 = call i32 @CRYPTO_THREAD_unlock(i32* %54)
  br label %56

56:                                               ; preds = %46, %33
  %57 = load i32, i32* @CRYPTO_MEM_CHECK_OFF, align 4
  %58 = call i32 @CRYPTO_mem_ctrl(i32 %57)
  %59 = call i32 @CRYPTO_THREAD_cleanup_local(i32* @appinfokey)
  %60 = load i32*, i32** @memdbg_lock, align 8
  %61 = call i32 @CRYPTO_THREAD_lock_free(i32* %60)
  %62 = load i32*, i32** @long_memdbg_lock, align 8
  %63 = call i32 @CRYPTO_THREAD_lock_free(i32* %62)
  store i32* null, i32** @memdbg_lock, align 8
  store i32* null, i32** @long_memdbg_lock, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %56, %13
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @OPENSSL_cleanup(...) #1

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @CRYPTO_mem_ctrl(i32) #1

declare dso_local i32 @lh_MEM_doall_MEM_LEAK(i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @BIO_snprintf(i8*, i32, i8*, i64, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32*) #1

declare dso_local i32 @lh_MEM_free(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_cleanup_local(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
