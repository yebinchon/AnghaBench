; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_register.c_ossl_store_register_loader_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_register.c_ossl_store_register_loader_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32*, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [4 x i8] c"+-.\00", align 1
@OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT = common dso_local global i32 0, align 4
@OSSL_STORE_R_INVALID_SCHEME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"scheme=\00", align 1
@OSSL_STORE_R_LOADER_INCOMPLETE = common dso_local global i32 0, align 4
@registry_init = common dso_local global i32 0, align 4
@do_registry_init = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@registry_lock = common dso_local global i32 0, align 4
@loader_register = common dso_local global i32* null, align 8
@store_loader_hash = common dso_local global i32 0, align 4
@store_loader_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ossl_store_register_loader_int(%struct.TYPE_4__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = load i8, i8* %9, align 1
  %11 = call i64 @ossl_isalpha(i8 signext %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %38, %13
  %15 = load i8*, i8** %4, align 8
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %14
  %20 = load i8*, i8** %4, align 8
  %21 = load i8, i8* %20, align 1
  %22 = call i64 @ossl_isalpha(i8 signext %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @ossl_isdigit(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i8, i8* %30, align 1
  %32 = call i32* @strchr(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 signext %31)
  %33 = icmp ne i32* %32, null
  br label %34

34:                                               ; preds = %29, %24, %19
  %35 = phi i1 [ true, %24 ], [ true, %19 ], [ %33, %29 ]
  br label %36

36:                                               ; preds = %34, %14
  %37 = phi i1 [ false, %14 ], [ %35, %34 ]
  br i1 %37, label %38, label %41

38:                                               ; preds = %36
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  br label %14

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i8*, i8** %4, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT, align 4
  %49 = load i32, i32* @OSSL_STORE_R_INVALID_SCHEME, align 4
  %50 = call i32 @OSSL_STOREerr(i32 %48, i32 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @ERR_add_error_data(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  store i32 0, i32* %2, align 4
  br label %118

55:                                               ; preds = %42
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %80, label %60

60:                                               ; preds = %55
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %80, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %80, label %70

70:                                               ; preds = %65
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %70
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %75, %70, %65, %60, %55
  %81 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT, align 4
  %82 = load i32, i32* @OSSL_STORE_R_LOADER_INCOMPLETE, align 4
  %83 = call i32 @OSSL_STOREerr(i32 %81, i32 %82)
  store i32 0, i32* %2, align 4
  br label %118

84:                                               ; preds = %75
  %85 = load i32, i32* @do_registry_init, align 4
  %86 = call i32 @RUN_ONCE(i32* @registry_init, i32 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_REGISTER_LOADER_INT, align 4
  %90 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %91 = call i32 @OSSL_STOREerr(i32 %89, i32 %90)
  store i32 0, i32* %2, align 4
  br label %118

92:                                               ; preds = %84
  %93 = load i32, i32* @registry_lock, align 4
  %94 = call i32 @CRYPTO_THREAD_write_lock(i32 %93)
  %95 = load i32*, i32** @loader_register, align 8
  %96 = icmp eq i32* %95, null
  br i1 %96, label %97, label %101

97:                                               ; preds = %92
  %98 = load i32, i32* @store_loader_hash, align 4
  %99 = load i32, i32* @store_loader_cmp, align 4
  %100 = call i32* @lh_OSSL_STORE_LOADER_new(i32 %98, i32 %99)
  store i32* %100, i32** @loader_register, align 8
  br label %101

101:                                              ; preds = %97, %92
  %102 = load i32*, i32** @loader_register, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %114

104:                                              ; preds = %101
  %105 = load i32*, i32** @loader_register, align 8
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %107 = call i32* @lh_OSSL_STORE_LOADER_insert(i32* %105, %struct.TYPE_4__* %106)
  %108 = icmp ne i32* %107, null
  br i1 %108, label %113, label %109

109:                                              ; preds = %104
  %110 = load i32*, i32** @loader_register, align 8
  %111 = call i64 @lh_OSSL_STORE_LOADER_error(i32* %110)
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %109, %104
  store i32 1, i32* %5, align 4
  br label %114

114:                                              ; preds = %113, %109, %101
  %115 = load i32, i32* @registry_lock, align 4
  %116 = call i32 @CRYPTO_THREAD_unlock(i32 %115)
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %118

118:                                              ; preds = %114, %88, %80, %47
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i64 @ossl_isalpha(i8 signext) #1

declare dso_local i64 @ossl_isdigit(i8 signext) #1

declare dso_local i32* @strchr(i8*, i8 signext) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

declare dso_local i32 @ERR_add_error_data(i32, i8*, i8*) #1

declare dso_local i32 @RUN_ONCE(i32*, i32) #1

declare dso_local i32 @CRYPTO_THREAD_write_lock(i32) #1

declare dso_local i32* @lh_OSSL_STORE_LOADER_new(i32, i32) #1

declare dso_local i32* @lh_OSSL_STORE_LOADER_insert(i32*, %struct.TYPE_4__*) #1

declare dso_local i64 @lh_OSSL_STORE_LOADER_error(i32*) #1

declare dso_local i32 @CRYPTO_THREAD_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
