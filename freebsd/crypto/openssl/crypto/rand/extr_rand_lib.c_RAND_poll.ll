; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_rand_lib.c_RAND_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_rand_lib.c_RAND_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 (i32, i32, double)* }

@RAND_DRBG_STRENGTH = common dso_local global i32 0, align 4
@RAND_POOL_MAX_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RAND_poll() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32*, align 8
  store i32 0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  %6 = call %struct.TYPE_4__* (...) @RAND_get_rand_method()
  store %struct.TYPE_4__* %6, %struct.TYPE_4__** %4, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %8 = call %struct.TYPE_4__* (...) @RAND_OpenSSL()
  %9 = icmp eq %struct.TYPE_4__* %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %0
  %11 = call i32* (...) @RAND_DRBG_get0_master()
  store i32* %11, i32** %5, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %63

15:                                               ; preds = %10
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @rand_drbg_lock(i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @rand_drbg_restart(i32* %18, i32* null, i32 0, i32 0)
  store i32 %19, i32* %2, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @rand_drbg_unlock(i32* %20)
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  br label %63

23:                                               ; preds = %0
  %24 = load i32, i32* @RAND_DRBG_STRENGTH, align 4
  %25 = load i32, i32* @RAND_DRBG_STRENGTH, align 4
  %26 = add nsw i32 %25, 7
  %27 = sdiv i32 %26, 8
  %28 = load i32, i32* @RAND_POOL_MAX_LENGTH, align 4
  %29 = call i32* @rand_pool_new(i32 %24, i32 1, i32 %27, i32 %28)
  store i32* %29, i32** %3, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %63

33:                                               ; preds = %23
  %34 = load i32*, i32** %3, align 8
  %35 = call i64 @rand_pool_acquire_entropy(i32* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %59

38:                                               ; preds = %33
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64 (i32, i32, double)*, i64 (i32, i32, double)** %40, align 8
  %42 = icmp eq i64 (i32, i32, double)* %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %38
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64 (i32, i32, double)*, i64 (i32, i32, double)** %45, align 8
  %47 = load i32*, i32** %3, align 8
  %48 = call i32 @rand_pool_buffer(i32* %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @rand_pool_length(i32* %49)
  %51 = load i32*, i32** %3, align 8
  %52 = call double @rand_pool_entropy(i32* %51)
  %53 = fdiv double %52, 8.000000e+00
  %54 = call i64 %46(i32 %48, i32 %50, double %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43, %38
  br label %59

57:                                               ; preds = %43
  store i32 1, i32* %2, align 4
  br label %58

58:                                               ; preds = %57
  br label %59

59:                                               ; preds = %58, %56, %37
  %60 = load i32*, i32** %3, align 8
  %61 = call i32 @rand_pool_free(i32* %60)
  %62 = load i32, i32* %2, align 4
  store i32 %62, i32* %1, align 4
  br label %63

63:                                               ; preds = %59, %32, %15, %14
  %64 = load i32, i32* %1, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_4__* @RAND_get_rand_method(...) #1

declare dso_local %struct.TYPE_4__* @RAND_OpenSSL(...) #1

declare dso_local i32* @RAND_DRBG_get0_master(...) #1

declare dso_local i32 @rand_drbg_lock(i32*) #1

declare dso_local i32 @rand_drbg_restart(i32*, i32*, i32, i32) #1

declare dso_local i32 @rand_drbg_unlock(i32*) #1

declare dso_local i32* @rand_pool_new(i32, i32, i32, i32) #1

declare dso_local i64 @rand_pool_acquire_entropy(i32*) #1

declare dso_local i32 @rand_pool_buffer(i32*) #1

declare dso_local i32 @rand_pool_length(i32*) #1

declare dso_local double @rand_pool_entropy(i32*) #1

declare dso_local i32 @rand_pool_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
