; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bio_lib.c_BIO_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/bio/extr_bio_lib.c_BIO_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_11__*)* }

@BIO_F_BIO_NEW = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@CRYPTO_EX_INDEX_BIO = common dso_local global i32 0, align 4
@ERR_R_INIT_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @BIO_new(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %5 = call %struct.TYPE_11__* @OPENSSL_zalloc(i32 40)
  store %struct.TYPE_11__* %5, %struct.TYPE_11__** %4, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %7 = icmp eq %struct.TYPE_11__* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @BIO_F_BIO_NEW, align 4
  %10 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %11 = call i32 @BIOerr(i32 %9, i32 %10)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %82

12:                                               ; preds = %1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  store %struct.TYPE_10__* %13, %struct.TYPE_10__** %15, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* @CRYPTO_EX_INDEX_BIO, align 4
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 4
  %24 = call i32 @CRYPTO_new_ex_data(i32 %20, %struct.TYPE_11__* %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %12
  br label %79

27:                                               ; preds = %12
  %28 = call i32* (...) @CRYPTO_THREAD_lock_new()
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %27
  %36 = load i32, i32* @BIO_F_BIO_NEW, align 4
  %37 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %38 = call i32 @BIOerr(i32 %36, i32 %37)
  %39 = load i32, i32* @CRYPTO_EX_INDEX_BIO, align 4
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 4
  %43 = call i32 @CRYPTO_free_ex_data(i32 %39, %struct.TYPE_11__* %40, i32* %42)
  br label %79

44:                                               ; preds = %27
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %46, align 8
  %48 = icmp ne i32 (%struct.TYPE_11__*)* %47, null
  br i1 %48, label %49, label %69

49:                                               ; preds = %44
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = call i32 %52(%struct.TYPE_11__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* @BIO_F_BIO_NEW, align 4
  %58 = load i32, i32* @ERR_R_INIT_FAIL, align 4
  %59 = call i32 @BIOerr(i32 %57, i32 %58)
  %60 = load i32, i32* @CRYPTO_EX_INDEX_BIO, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 4
  %64 = call i32 @CRYPTO_free_ex_data(i32 %60, %struct.TYPE_11__* %61, i32* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @CRYPTO_THREAD_lock_free(i32* %67)
  br label %79

69:                                               ; preds = %49, %44
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %71, align 8
  %73 = icmp eq i32 (%struct.TYPE_11__*)* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  br label %77

77:                                               ; preds = %74, %69
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %78, %struct.TYPE_11__** %2, align 8
  br label %82

79:                                               ; preds = %56, %35, %26
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %81 = call i32 @OPENSSL_free(%struct.TYPE_11__* %80)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %2, align 8
  br label %82

82:                                               ; preds = %79, %77, %8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  ret %struct.TYPE_11__* %83
}

declare dso_local %struct.TYPE_11__* @OPENSSL_zalloc(i32) #1

declare dso_local i32 @BIOerr(i32, i32) #1

declare dso_local i32 @CRYPTO_new_ex_data(i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32* @CRYPTO_THREAD_lock_new(...) #1

declare dso_local i32 @CRYPTO_free_ex_data(i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @CRYPTO_THREAD_lock_free(i32*) #1

declare dso_local i32 @OPENSSL_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
