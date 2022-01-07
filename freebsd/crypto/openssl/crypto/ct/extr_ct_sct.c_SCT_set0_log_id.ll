; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_sct.c_SCT_set0_log_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/ct/extr_ct_sct.c_SCT_set0_log_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i8*, i64, i32 }

@SCT_VERSION_V1 = common dso_local global i64 0, align 8
@CT_V1_HASHLEN = common dso_local global i64 0, align 8
@CT_F_SCT_SET0_LOG_ID = common dso_local global i32 0, align 4
@CT_R_INVALID_LOG_ID_LENGTH = common dso_local global i32 0, align 4
@SCT_VALIDATION_STATUS_NOT_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SCT_set0_log_id(%struct.TYPE_3__* %0, i8* %1, i64 %2) #0 {
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
  %18 = load i32, i32* @CT_F_SCT_SET0_LOG_ID, align 4
  %19 = load i32, i32* @CT_R_INVALID_LOG_ID_LENGTH, align 4
  %20 = call i32 @CTerr(i32 %18, i32 %19)
  store i32 0, i32* %4, align 4
  br label %35

21:                                               ; preds = %13, %3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @OPENSSL_free(i8* %24)
  %26 = load i8*, i8** %6, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* @SCT_VALIDATION_STATUS_NOT_SET, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %21, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @CTerr(i32, i32) #1

declare dso_local i32 @OPENSSL_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
