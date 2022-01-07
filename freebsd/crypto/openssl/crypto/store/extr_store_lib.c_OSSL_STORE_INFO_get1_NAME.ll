; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_INFO_get1_NAME.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/store/extr_store_lib.c_OSSL_STORE_INFO_get1_NAME.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@OSSL_STORE_INFO_NAME = common dso_local global i64 0, align 8
@OSSL_STORE_F_OSSL_STORE_INFO_GET1_NAME = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@OSSL_STORE_R_NOT_A_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @OSSL_STORE_INFO_get1_NAME(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i8*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @OSSL_STORE_INFO_NAME, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i8* @OPENSSL_strdup(i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %10
  %20 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_INFO_GET1_NAME, align 4
  %21 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %22 = call i32 @OSSL_STOREerr(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %10
  %24 = load i8*, i8** %4, align 8
  store i8* %24, i8** %2, align 8
  br label %29

25:                                               ; preds = %1
  %26 = load i32, i32* @OSSL_STORE_F_OSSL_STORE_INFO_GET1_NAME, align 4
  %27 = load i32, i32* @OSSL_STORE_R_NOT_A_NAME, align 4
  %28 = call i32 @OSSL_STOREerr(i32 %26, i32 %27)
  store i8* null, i8** %2, align 8
  br label %29

29:                                               ; preds = %25, %23
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i8* @OPENSSL_strdup(i32) #1

declare dso_local i32 @OSSL_STOREerr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
