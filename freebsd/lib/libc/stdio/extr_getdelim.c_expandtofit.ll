; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_getdelim.c_expandtofit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_getdelim.c_expandtofit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSIZE_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i64, i64*)* @expandtofit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expandtofit(i8** noalias %0, i64 %1, i64* noalias %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @SSIZE_MAX, align 8
  %12 = add i64 %11, 1
  %13 = icmp ugt i64 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @EOVERFLOW, align 4
  store i32 %15, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load i64, i64* %6, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = load i64, i64* %18, align 8
  %20 = icmp ugt i64 %17, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @SSIZE_MAX, align 8
  %24 = add i64 %23, 1
  %25 = icmp eq i64 %22, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* @SSIZE_MAX, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %9, align 8
  br label %32

29:                                               ; preds = %21
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @p2roundup(i64 %30)
  store i64 %31, i64* %9, align 8
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i8* @realloc(i8* %34, i64 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  store i32 -1, i32* %4, align 4
  br label %46

40:                                               ; preds = %32
  %41 = load i64, i64* %9, align 8
  %42 = load i64*, i64** %7, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = load i8**, i8*** %5, align 8
  store i8* %43, i8** %44, align 8
  br label %45

45:                                               ; preds = %40, %16
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %39, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @p2roundup(i64) #1

declare dso_local i8* @realloc(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
