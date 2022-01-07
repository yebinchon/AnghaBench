; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_pkey.c_ENGINE_load_private_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/engine/extr_eng_pkey.c_ENGINE_load_private_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, {}* }

@ENGINE_F_ENGINE_LOAD_PRIVATE_KEY = common dso_local global i32 0, align 4
@ERR_R_PASSED_NULL_PARAMETER = common dso_local global i32 0, align 4
@global_engine_lock = common dso_local global i32 0, align 4
@ENGINE_R_NOT_INITIALISED = common dso_local global i32 0, align 4
@ENGINE_R_NO_LOAD_FUNCTION = common dso_local global i32 0, align 4
@ENGINE_R_FAILED_LOADING_PRIVATE_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @ENGINE_load_private_key(%struct.TYPE_4__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = icmp eq %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = load i32, i32* @ENGINE_F_ENGINE_LOAD_PRIVATE_KEY, align 4
  %15 = load i32, i32* @ERR_R_PASSED_NULL_PARAMETER, align 4
  %16 = call i32 @ENGINEerr(i32 %14, i32 %15)
  store i32* null, i32** %5, align 8
  br label %60

17:                                               ; preds = %4
  %18 = load i32, i32* @global_engine_lock, align 4
  %19 = call i32 @CRYPTO_THREAD_write_lock(i32 %18)
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @global_engine_lock, align 4
  %26 = call i32 @CRYPTO_THREAD_unlock(i32 %25)
  %27 = load i32, i32* @ENGINE_F_ENGINE_LOAD_PRIVATE_KEY, align 4
  %28 = load i32, i32* @ENGINE_R_NOT_INITIALISED, align 4
  %29 = call i32 @ENGINEerr(i32 %27, i32 %28)
  store i32* null, i32** %5, align 8
  br label %60

30:                                               ; preds = %17
  %31 = load i32, i32* @global_engine_lock, align 4
  %32 = call i32 @CRYPTO_THREAD_unlock(i32 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = bitcast {}** %34 to i32* (%struct.TYPE_4__*, i8*, i32*, i8*)**
  %36 = load i32* (%struct.TYPE_4__*, i8*, i32*, i8*)*, i32* (%struct.TYPE_4__*, i8*, i32*, i8*)** %35, align 8
  %37 = icmp ne i32* (%struct.TYPE_4__*, i8*, i32*, i8*)* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* @ENGINE_F_ENGINE_LOAD_PRIVATE_KEY, align 4
  %40 = load i32, i32* @ENGINE_R_NO_LOAD_FUNCTION, align 4
  %41 = call i32 @ENGINEerr(i32 %39, i32 %40)
  store i32* null, i32** %5, align 8
  br label %60

42:                                               ; preds = %30
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = bitcast {}** %44 to i32* (%struct.TYPE_4__*, i8*, i32*, i8*)**
  %46 = load i32* (%struct.TYPE_4__*, i8*, i32*, i8*)*, i32* (%struct.TYPE_4__*, i8*, i32*, i8*)** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call i32* %46(%struct.TYPE_4__* %47, i8* %48, i32* %49, i8* %50)
  store i32* %51, i32** %10, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @ENGINE_F_ENGINE_LOAD_PRIVATE_KEY, align 4
  %56 = load i32, i32* @ENGINE_R_FAILED_LOADING_PRIVATE_KEY, align 4
  %57 = call i32 @ENGINEerr(i32 %55, i32 %56)
  store i32* null, i32** %5, align 8
  br label %60

58:                                               ; preds = %42
  %59 = load i32*, i32** %10, align 8
  store i32* %59, i32** %5, align 8
  br label %60

60:                                               ; preds = %58, %54, %38, %24, %13
  %61 = load i32*, i32** %5, align 8
  ret i32* %61
}

declare dso_local i32 @ENGINEerr(i32, i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
