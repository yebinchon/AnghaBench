; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_kmeth.c_EC_KEY_new_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ec/extr_ec_kmeth.c_EC_KEY_new_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__*, i32, i32, i32*, i32* }
%struct.TYPE_11__ = type { i64 (%struct.TYPE_10__*)* }

@EC_F_EC_KEY_NEW_METHOD = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@ERR_R_ENGINE_LIB = common dso_local global i32 0, align 4
@POINT_CONVERSION_UNCOMPRESSED = common dso_local global i32 0, align 4
@CRYPTO_EX_INDEX_EC_KEY = common dso_local global i32 0, align 4
@ERR_R_INIT_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @EC_KEY_new_method(i32* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = call %struct.TYPE_10__* @OPENSSL_zalloc(i32 40)
  store %struct.TYPE_10__* %5, %struct.TYPE_10__** %4, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %7 = icmp eq %struct.TYPE_10__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @EC_F_EC_KEY_NEW_METHOD, align 4
  %10 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %11 = call i32 @ECerr(i32 %9, i32 %10)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %109

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 8
  %15 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 6
  store i32* %15, i32** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 6
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load i32, i32* @EC_F_EC_KEY_NEW_METHOD, align 4
  %24 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %25 = call i32 @ECerr(i32 %23, i32 %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = call i32 @OPENSSL_free(%struct.TYPE_10__* %26)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %109

28:                                               ; preds = %12
  %29 = call %struct.TYPE_11__* (...) @EC_KEY_get_default_method()
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %31, align 8
  %32 = load i32*, i32** %3, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load i32*, i32** %3, align 8
  %36 = call i32 @ENGINE_init(i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EC_F_EC_KEY_NEW_METHOD, align 4
  %40 = load i32, i32* @ERR_R_ENGINE_LIB, align 4
  %41 = call i32 @ECerr(i32 %39, i32 %40)
  br label %106

42:                                               ; preds = %34
  %43 = load i32*, i32** %3, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 5
  store i32* %43, i32** %45, align 8
  br label %50

46:                                               ; preds = %28
  %47 = call i32* (...) @ENGINE_get_default_EC()
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 5
  store i32* %47, i32** %49, align 8
  br label %50

50:                                               ; preds = %46, %42
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %50
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = call %struct.TYPE_11__* @ENGINE_get_EC(i32* %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %61, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 2
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = icmp eq %struct.TYPE_11__* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load i32, i32* @EC_F_EC_KEY_NEW_METHOD, align 4
  %68 = load i32, i32* @ERR_R_ENGINE_LIB, align 4
  %69 = call i32 @ECerr(i32 %67, i32 %68)
  br label %106

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70, %50
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* @POINT_CONVERSION_UNCOMPRESSED, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @CRYPTO_EX_INDEX_EC_KEY, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 3
  %81 = call i32 @CRYPTO_new_ex_data(i32 %77, %struct.TYPE_10__* %78, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %71
  br label %106

84:                                               ; preds = %71
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %88, align 8
  %90 = icmp ne i64 (%struct.TYPE_10__*)* %89, null
  br i1 %90, label %91, label %104

91:                                               ; preds = %84
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64 (%struct.TYPE_10__*)*, i64 (%struct.TYPE_10__*)** %95, align 8
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %98 = call i64 %96(%struct.TYPE_10__* %97)
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %91
  %101 = load i32, i32* @EC_F_EC_KEY_NEW_METHOD, align 4
  %102 = load i32, i32* @ERR_R_INIT_FAIL, align 4
  %103 = call i32 @ECerr(i32 %101, i32 %102)
  br label %106

104:                                              ; preds = %91, %84
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_10__* %105, %struct.TYPE_10__** %2, align 8
  br label %109

106:                                              ; preds = %100, %83, %66, %38
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %108 = call i32 @EC_KEY_free(%struct.TYPE_10__* %107)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %2, align 8
  br label %109

109:                                              ; preds = %106, %104, %22, %8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  ret %struct.TYPE_10__* %110
}

declare dso_local %struct.TYPE_10__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @ECerr(i32, i32) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_11__* @EC_KEY_get_default_method(...) #1

declare dso_local i32 @ENGINE_init(i32*) #1

declare dso_local i32* @ENGINE_get_default_EC(...) #1

declare dso_local %struct.TYPE_11__* @ENGINE_get_EC(i32*) #1

declare dso_local i32 @CRYPTO_new_ex_data(i32, %struct.TYPE_10__*, i32*) #1

declare dso_local i32 @EC_KEY_free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
