; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_hist.c_HIST_countFast_wksp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_hist.c_HIST_countFast_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GENERIC = common dso_local global i32 0, align 4
@HIST_WKSP_SIZE = common dso_local global i64 0, align 8
@workSpace_tooSmall = common dso_local global i32 0, align 4
@trustInput = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HIST_countFast_wksp(i32* %0, i32* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %14 = load i64, i64* %11, align 8
  %15 = icmp ult i64 %14, 1500
  br i1 %15, label %16, label %22

16:                                               ; preds = %6
  %17 = load i32*, i32** %8, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @HIST_count_simple(i32* %17, i32* %18, i8* %19, i64 %20)
  store i64 %21, i64* %7, align 8
  br label %46

22:                                               ; preds = %6
  %23 = load i8*, i8** %12, align 8
  %24 = ptrtoint i8* %23 to i64
  %25 = and i64 %24, 3
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @GENERIC, align 4
  %29 = call i64 @ERROR(i32 %28)
  store i64 %29, i64* %7, align 8
  br label %46

30:                                               ; preds = %22
  %31 = load i64, i64* %13, align 8
  %32 = load i64, i64* @HIST_WKSP_SIZE, align 8
  %33 = icmp ult i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @workSpace_tooSmall, align 4
  %36 = call i64 @ERROR(i32 %35)
  store i64 %36, i64* %7, align 8
  br label %46

37:                                               ; preds = %30
  %38 = load i32*, i32** %8, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i32, i32* @trustInput, align 4
  %43 = load i8*, i8** %12, align 8
  %44 = bitcast i8* %43 to i32*
  %45 = call i64 @HIST_count_parallel_wksp(i32* %38, i32* %39, i8* %40, i64 %41, i32 %42, i32* %44)
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %37, %34, %27, %16
  %47 = load i64, i64* %7, align 8
  ret i64 %47
}

declare dso_local i64 @HIST_count_simple(i32*, i32*, i8*, i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @HIST_count_parallel_wksp(i32*, i32*, i8*, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
