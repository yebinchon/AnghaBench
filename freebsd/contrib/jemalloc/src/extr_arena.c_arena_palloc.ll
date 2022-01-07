; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_palloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_palloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMALL_MAXCLASS = common dso_local global i64 0, align 8
@PAGE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@CACHELINE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arena_palloc(i32* %0, i32* %1, i64 %2, i64 %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @SMALL_MAXCLASS, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %6
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @PAGE, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @PAGE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @PAGE_MASK, align 8
  %28 = and i64 %26, %27
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25, %17
  %31 = load i32*, i32** %7, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @sz_size2index(i64 %34)
  %36 = load i32, i32* %11, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = call i8* @arena_malloc(i32* %31, i32* %32, i64 %33, i32 %35, i32 %36, i32* %37, i32 1)
  store i8* %38, i8** %13, align 8
  br label %60

39:                                               ; preds = %25, %21, %6
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @CACHELINE, align 8
  %42 = icmp ule i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i64 @likely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %39
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i8* @large_malloc(i32* %47, i32* %48, i64 %49, i32 %50)
  store i8* %51, i8** %13, align 8
  br label %59

52:                                               ; preds = %39
  %53 = load i32*, i32** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i32, i32* %11, align 4
  %58 = call i8* @large_palloc(i32* %53, i32* %54, i64 %55, i64 %56, i32 %57)
  store i8* %58, i8** %13, align 8
  br label %59

59:                                               ; preds = %52, %46
  br label %60

60:                                               ; preds = %59, %30
  %61 = load i8*, i8** %13, align 8
  ret i8* %61
}

declare dso_local i8* @arena_malloc(i32*, i32*, i64, i32, i32, i32*, i32) #1

declare dso_local i32 @sz_size2index(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @large_malloc(i32*, i32*, i64, i32) #1

declare dso_local i8* @large_palloc(i32*, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
