; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_pop_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_mem_dbg.c_pop_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_4__* }

@memdbg_init = common dso_local global i32 0, align 4
@do_memdbg_init = common dso_local global i32 0, align 4
@appinfokey = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pop_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pop_info() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  %4 = load i32, i32* @do_memdbg_init, align 4
  %5 = call i32 @RUN_ONCE(i32* @memdbg_init, i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %49

8:                                                ; preds = %0
  %9 = call i64 @CRYPTO_THREAD_get_local(i32* @appinfokey)
  %10 = inttoptr i64 %9 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %10, %struct.TYPE_4__** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %48

13:                                               ; preds = %8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = icmp ne %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = call i32 @CRYPTO_THREAD_set_local(i32* @appinfokey, %struct.TYPE_4__* %24)
  br label %28

26:                                               ; preds = %13
  %27 = call i32 @CRYPTO_THREAD_set_local(i32* @appinfokey, %struct.TYPE_4__* null)
  br label %28

28:                                               ; preds = %26, %19
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, -1
  store i64 %32, i64* %30, align 8
  %33 = icmp sle i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = call i32 @OPENSSL_free(%struct.TYPE_4__* %45)
  br label %47

47:                                               ; preds = %44, %28
  store i32 1, i32* %1, align 4
  br label %49

48:                                               ; preds = %8
  store i32 0, i32* %1, align 4
  br label %49

49:                                               ; preds = %48, %47, %7
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i64 @CRYPTO_THREAD_get_local(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_set_local(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
