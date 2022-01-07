; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_rand_drbg_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/rand/extr_drbg_lib.c_rand_drbg_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i64, i32, i32, i8*, i8*, i32, i32, %struct.TYPE_11__*, i32 }

@RAND_F_RAND_DRBG_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@rand_drbg_get_entropy = common dso_local global i8* null, align 8
@rand_drbg_cleanup_entropy = common dso_local global i8* null, align 8
@rand_drbg_get_nonce = common dso_local global i32 0, align 4
@rand_drbg_cleanup_nonce = common dso_local global i32 0, align 4
@master_reseed_interval = common dso_local global i32 0, align 4
@master_reseed_time_interval = common dso_local global i32 0, align 4
@slave_reseed_interval = common dso_local global i32 0, align 4
@slave_reseed_time_interval = common dso_local global i32 0, align 4
@RAND_R_PARENT_STRENGTH_TOO_WEAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_11__* (i32, i32, i32, %struct.TYPE_11__*)* @rand_drbg_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_11__* @rand_drbg_new(i32 %0, i32 %1, i32 %2, %struct.TYPE_11__* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = call %struct.TYPE_11__* @OPENSSL_secure_zalloc(i32 64)
  br label %17

15:                                               ; preds = %4
  %16 = call %struct.TYPE_11__* @OPENSSL_zalloc(i32 64)
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi %struct.TYPE_11__* [ %14, %13 ], [ %16, %15 ]
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %10, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %20 = icmp eq %struct.TYPE_11__* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load i32, i32* @RAND_F_RAND_DRBG_NEW, align 4
  %23 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %24 = call i32 @RANDerr(i32 %22, i32 %23)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %111

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %30 = call i64 @CRYPTO_secure_allocated(%struct.TYPE_11__* %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i1 [ false, %25 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = call i32 (...) @openssl_get_fork_id()
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 8
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %42, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = icmp eq %struct.TYPE_11__* %43, null
  br i1 %44, label %45, label %64

45:                                               ; preds = %32
  %46 = load i8*, i8** @rand_drbg_get_entropy, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 5
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @rand_drbg_cleanup_entropy, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @rand_drbg_get_nonce, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 7
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @rand_drbg_cleanup_nonce, align 4
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @master_reseed_interval, align 4
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @master_reseed_time_interval, align 4
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %77

64:                                               ; preds = %32
  %65 = load i8*, i8** @rand_drbg_get_entropy, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 5
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** @rand_drbg_cleanup_entropy, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @slave_reseed_interval, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @slave_reseed_time_interval, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %64, %45
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @RAND_DRBG_set(%struct.TYPE_11__* %78, i32 %79, i32 %80)
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %108

84:                                               ; preds = %77
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %86 = icmp ne %struct.TYPE_11__* %85, null
  br i1 %86, label %87, label %106

87:                                               ; preds = %84
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %89 = call i32 @rand_drbg_lock(%struct.TYPE_11__* %88)
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %92, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %99 = call i32 @rand_drbg_unlock(%struct.TYPE_11__* %98)
  %100 = load i32, i32* @RAND_F_RAND_DRBG_NEW, align 4
  %101 = load i32, i32* @RAND_R_PARENT_STRENGTH_TOO_WEAK, align 4
  %102 = call i32 @RANDerr(i32 %100, i32 %101)
  br label %108

103:                                              ; preds = %87
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %105 = call i32 @rand_drbg_unlock(%struct.TYPE_11__* %104)
  br label %106

106:                                              ; preds = %103, %84
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %107, %struct.TYPE_11__** %5, align 8
  br label %111

108:                                              ; preds = %97, %83
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %110 = call i32 @RAND_DRBG_free(%struct.TYPE_11__* %109)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %5, align 8
  br label %111

111:                                              ; preds = %108, %106, %21
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  ret %struct.TYPE_11__* %112
}

declare dso_local %struct.TYPE_11__* @OPENSSL_secure_zalloc(i32) #1

declare dso_local %struct.TYPE_11__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @RANDerr(i32, i32) #1

declare dso_local i64 @CRYPTO_secure_allocated(%struct.TYPE_11__*) #1

declare dso_local i32 @openssl_get_fork_id(...) #1

declare dso_local i64 @RAND_DRBG_set(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @rand_drbg_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @rand_drbg_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @RAND_DRBG_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
