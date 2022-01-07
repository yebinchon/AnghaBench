; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_rand_drbg_enable_locking.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_rand_drbg_enable_locking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@DRBG_UNINITIALISED = common dso_local global i64 0, align 8
@RAND_F_RAND_DRBG_ENABLE_LOCKING = common dso_local global i32 0, align 4
@RAND_R_DRBG_ALREADY_INITIALIZED = common dso_local global i32 0, align 4
@RAND_R_PARENT_LOCKING_NOT_ENABLED = common dso_local global i32 0, align 4
@RAND_R_FAILED_TO_CREATE_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rand_drbg_enable_locking(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DRBG_UNINITIALISED, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* @RAND_F_RAND_DRBG_ENABLE_LOCKING, align 4
  %11 = load i32, i32* @RAND_R_DRBG_ALREADY_INITIALIZED, align 4
  %12 = call i32 @RANDerr(i32 %10, i32 %11)
  store i32 0, i32* %2, align 4
  br label %48

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %13
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = icmp ne %struct.TYPE_4__* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = load i32, i32* @RAND_F_RAND_DRBG_ENABLE_LOCKING, align 4
  %32 = load i32, i32* @RAND_R_PARENT_LOCKING_NOT_ENABLED, align 4
  %33 = call i32 @RANDerr(i32 %31, i32 %32)
  store i32 0, i32* %2, align 4
  br label %48

34:                                               ; preds = %23, %18
  %35 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %34
  %43 = load i32, i32* @RAND_F_RAND_DRBG_ENABLE_LOCKING, align 4
  %44 = load i32, i32* @RAND_R_FAILED_TO_CREATE_LOCK, align 4
  %45 = call i32 @RANDerr(i32 %43, i32 %44)
  store i32 0, i32* %2, align 4
  br label %48

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %13
  store i32 1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %42, %30, %9
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
