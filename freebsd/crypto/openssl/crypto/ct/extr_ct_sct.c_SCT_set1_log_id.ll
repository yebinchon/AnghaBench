; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_sct.c_SCT_set1_log_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_sct.c_SCT_set1_log_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32*, i32 }

@SCT_VERSION_V1 = common dso_local global i64 0, align 8
@CT_V1_HASHLEN = common dso_local global i64 0, align 8
@CT_F_SCT_SET1_LOG_ID = common dso_local global i32 0, align 4
@CT_R_INVALID_LOG_ID_LENGTH = common dso_local global i32 0, align 4
@SCT_VALIDATION_STATUS_NOT_SET = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SCT_set1_log_id(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SCT_VERSION_V1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @CT_V1_HASHLEN, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  %18 = load i32, i32* @CT_F_SCT_SET1_LOG_ID, align 4
  %19 = load i32, i32* @CT_R_INVALID_LOG_ID_LENGTH, align 4
  %20 = call i32 @CTerr(i32 %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %57

21:                                               ; preds = %13, %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @OPENSSL_free(i32* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  %30 = load i32, i32* @SCT_VALIDATION_STATUS_NOT_SET, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %56

35:                                               ; preds = %21
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32* @OPENSSL_memdup(i8* %39, i64 %40)
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load i32, i32* @CT_F_SCT_SET1_LOG_ID, align 4
  %50 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %51 = call i32 @CTerr(i32 %49, i32 %50)
  store i32 0, i32* %4, align 4
  br label %57

52:                                               ; preds = %38
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %35, %21
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %48, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @CTerr(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32* @OPENSSL_memdup(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
