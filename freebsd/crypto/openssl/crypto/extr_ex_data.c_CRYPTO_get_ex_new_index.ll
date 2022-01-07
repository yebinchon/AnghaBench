; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_ex_data.c_CRYPTO_get_ex_new_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/extr_ex_data.c_CRYPTO_get_ex_new_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32*, i32*, i32*, i8* }
%struct.TYPE_6__ = type { i32* }

@CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ex_data_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CRYPTO_get_ex_new_index(i32 %0, i64 %1, i8* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 -1, i32* %14, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.TYPE_6__* @get_and_lock(i32 %17)
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %16, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %98

22:                                               ; preds = %6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %22
  %28 = call i32* (...) @sk_EX_CALLBACK_new_null()
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %27
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @sk_EX_CALLBACK_push(i32* %38, i32* null)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %35, %27
  %42 = load i32, i32* @CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX, align 4
  %43 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %44 = call i32 @CRYPTOerr(i32 %42, i32 %43)
  br label %94

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %22
  %47 = call i64 @OPENSSL_malloc(i32 40)
  %48 = inttoptr i64 %47 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %48, %struct.TYPE_7__** %15, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %50 = icmp eq %struct.TYPE_7__* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX, align 4
  %53 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %54 = call i32 @CRYPTOerr(i32 %52, i32 %53)
  br label %94

55:                                               ; preds = %46
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 3
  store i32* %62, i32** %64, align 8
  %65 = load i32*, i32** %12, align 8
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  store i32* %65, i32** %67, align 8
  %68 = load i32*, i32** %13, align 8
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 1
  store i32* %68, i32** %70, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @sk_EX_CALLBACK_push(i32* %73, i32* null)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %55
  %77 = load i32, i32* @CRYPTO_F_CRYPTO_GET_EX_NEW_INDEX, align 4
  %78 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %79 = call i32 @CRYPTOerr(i32 %77, i32 %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %81 = call i32 @OPENSSL_free(%struct.TYPE_7__* %80)
  br label %94

82:                                               ; preds = %55
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @sk_EX_CALLBACK_num(i32* %85)
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %93 = call i32 @sk_EX_CALLBACK_set(i32* %90, i32 %91, %struct.TYPE_7__* %92)
  br label %94

94:                                               ; preds = %82, %76, %51, %41
  %95 = load i32, i32* @ex_data_lock, align 4
  %96 = call i32 @CRYPTO_THREAD_unlock(i32 %95)
  %97 = load i32, i32* %14, align 4
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %94, %21
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local %struct.TYPE_6__* @get_and_lock(i32) #1

declare dso_local i32* @sk_EX_CALLBACK_new_null(...) #1

declare dso_local i32 @sk_EX_CALLBACK_push(i32*, i32*) #1

declare dso_local i32 @CRYPTOerr(i32, i32) #1

declare dso_local i64 @OPENSSL_malloc(i32) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_7__*) #1

declare dso_local i32 @sk_EX_CALLBACK_num(i32*) #1

declare dso_local i32 @sk_EX_CALLBACK_set(i32*, i32, %struct.TYPE_7__*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
