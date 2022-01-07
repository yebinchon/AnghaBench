; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_cust.c_custom_ext_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_extensions_cust.c_custom_ext_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__* }

@ENDPOINT_BOTH = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @custom_ext_find(%struct.TYPE_5__* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %11, align 8
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %52, %4
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* @ENDPOINT_BOTH, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @ENDPOINT_BOTH, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37, %31, %27
  %44 = load i64*, i64** %9, align 8
  %45 = icmp ne i64* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i64, i64* %10, align 8
  %48 = load i64*, i64** %9, align 8
  store i64 %47, i64* %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %50, %struct.TYPE_6__** %5, align 8
  br label %58

51:                                               ; preds = %37, %21
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %10, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %10, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 1
  store %struct.TYPE_6__* %56, %struct.TYPE_6__** %11, align 8
  br label %15

57:                                               ; preds = %15
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %58

58:                                               ; preds = %57, %49
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
