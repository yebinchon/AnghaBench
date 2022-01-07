; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_CRYPTO_mem_debug_push.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_CRYPTO_mem_debug_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i8*, i32, %struct.TYPE_4__*, i32 }

@CRYPTO_MEM_CHECK_DISABLE = common dso_local global i32 0, align 4
@memdbg_init = common dso_local global i32 0, align 4
@do_memdbg_init = common dso_local global i32 0, align 4
@appinfokey = common dso_local global i32 0, align 4
@CRYPTO_MEM_CHECK_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_mem_debug_push(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = call i64 (...) @mem_check_on()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %53

12:                                               ; preds = %3
  %13 = load i32, i32* @CRYPTO_MEM_CHECK_DISABLE, align 4
  %14 = call i32 @CRYPTO_mem_ctrl(i32 %13)
  %15 = load i32, i32* @do_memdbg_init, align 4
  %16 = call i32 @RUN_ONCE(i32* @memdbg_init, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = call %struct.TYPE_4__* @OPENSSL_malloc(i32 48)
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %7, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %12
  br label %50

22:                                               ; preds = %18
  %23 = call i32 (...) @CRYPTO_THREAD_get_current_id()
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 5
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %38, align 8
  %39 = call i64 @CRYPTO_THREAD_get_local(i32* @appinfokey)
  %40 = inttoptr i64 %39 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %8, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = call i32 @CRYPTO_THREAD_set_local(i32* @appinfokey, %struct.TYPE_4__* %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %22
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %48, align 8
  br label %49

49:                                               ; preds = %45, %22
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %49, %21
  %51 = load i32, i32* @CRYPTO_MEM_CHECK_ENABLE, align 4
  %52 = call i32 @CRYPTO_mem_ctrl(i32 %51)
  br label %53

53:                                               ; preds = %50, %3
  %54 = load i32, i32* %9, align 4
  ret i32 %54
}

declare dso_local i64 @mem_check_on(...) #1

declare dso_local i32 @CRYPTO_mem_ctrl(i32) #1

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local %struct.TYPE_4__* @OPENSSL_malloc(i32) #1

declare dso_local i32 @CRYPTO_THREAD_get_current_id(...) #1

declare dso_local i64 @CRYPTO_THREAD_get_local(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_set_local(i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
