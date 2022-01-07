; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_sanitizeVarArray.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_sanitizeVarArray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clog_ind = common dso_local global i64 0, align 8
@ZSTD_fast = common dso_local global i64 0, align 8
@slog_ind = common dso_local global i64 0, align 8
@ZSTD_dfast = common dso_local global i64 0, align 8
@tlen_ind = common dso_local global i64 0, align 8
@ZSTD_btopt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64*, i64)* @sanitizeVarArray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sanitizeVarArray(i64* %0, i64 %1, i64* %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %9, align 8
  br label %11

11:                                               ; preds = %74, %4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %77

15:                                               ; preds = %11
  %16 = load i64*, i64** %7, align 8
  %17 = load i64, i64* %9, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @clog_ind, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* @ZSTD_fast, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %73, label %26

26:                                               ; preds = %22, %15
  %27 = load i64*, i64** %7, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @slog_ind, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @ZSTD_fast, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %73, label %37

37:                                               ; preds = %33, %26
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %9, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @slog_ind, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @ZSTD_dfast, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %73, label %48

48:                                               ; preds = %44, %37
  %49 = load i64*, i64** %7, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @tlen_ind, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %48
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @ZSTD_btopt, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @ZSTD_fast, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %73, label %63

63:                                               ; preds = %59, %55, %48
  %64 = load i64*, i64** %7, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i64*, i64** %5, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds i64, i64* %68, i64 %69
  store i64 %67, i64* %70, align 8
  %71 = load i64, i64* %10, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %63, %59, %44, %33, %22
  br label %74

74:                                               ; preds = %73
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  br label %11

77:                                               ; preds = %11
  %78 = load i64, i64* %10, align 8
  ret i64 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
