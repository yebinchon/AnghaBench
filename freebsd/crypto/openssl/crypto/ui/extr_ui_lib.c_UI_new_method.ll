; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_UI_new_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ui/extr_ui_lib.c_UI_new_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32* }

@UI_F_UI_NEW_METHOD = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CRYPTO_EX_INDEX_UI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @UI_new_method(i32* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.TYPE_6__* @OPENSSL_zalloc(i32 24)
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = icmp eq %struct.TYPE_6__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @UI_F_UI_NEW_METHOD, align 4
  %10 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %11 = call i32 @UIerr(i32 %9, i32 %10)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %51

12:                                               ; preds = %1
  %13 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 2
  store i32* %13, i32** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %12
  %21 = load i32, i32* @UI_F_UI_NEW_METHOD, align 4
  %22 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %23 = call i32 @UIerr(i32 %21, i32 %22)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = call i32 @OPENSSL_free(%struct.TYPE_6__* %24)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %51

26:                                               ; preds = %12
  %27 = load i32*, i32** %3, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = call i32* (...) @UI_get_default_method()
  store i32* %30, i32** %3, align 8
  br label %31

31:                                               ; preds = %29, %26
  %32 = load i32*, i32** %3, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32* (...) @UI_null()
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32*, i32** %3, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load i32, i32* @CRYPTO_EX_INDEX_UI, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @CRYPTO_new_ex_data(i32 %40, %struct.TYPE_6__* %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = call i32 @OPENSSL_free(%struct.TYPE_6__* %47)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %2, align 8
  br label %51

49:                                               ; preds = %36
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %2, align 8
  br label %51

51:                                               ; preds = %49, %46, %20, %8
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  ret %struct.TYPE_6__* %52
}

declare dso_local %struct.TYPE_6__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @UIerr(i32, i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_6__*) #1

declare dso_local i32* @UI_get_default_method(...) #1

declare dso_local i32* @UI_null(...) #1

declare dso_local i32 @CRYPTO_new_ex_data(i32, %struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
