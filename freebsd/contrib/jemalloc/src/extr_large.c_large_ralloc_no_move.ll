; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_large.c_large_ralloc_no_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_large.c_large_ralloc_no_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LARGE_MAXCLASS = common dso_local global i64 0, align 8
@LARGE_MINCLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @large_ralloc_no_move(i32* %0, i32* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = call i64 @extent_usize_get(i32* %13)
  store i64 %14, i64* %12, align 8
  %15 = load i64, i64* %9, align 8
  %16 = icmp ugt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %5
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* @LARGE_MAXCLASS, align 8
  %20 = icmp ule i64 %18, %19
  br label %21

21:                                               ; preds = %17, %5
  %22 = phi i1 [ false, %5 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* @LARGE_MINCLASS, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i64, i64* %10, align 8
  %30 = load i64, i64* @LARGE_MINCLASS, align 8
  %31 = icmp uge i64 %29, %30
  br label %32

32:                                               ; preds = %28, %21
  %33 = phi i1 [ false, %21 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %12, align 8
  %38 = icmp ugt i64 %36, %37
  br i1 %38, label %39, label %72

39:                                               ; preds = %32
  %40 = load i32*, i32** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i64 @large_ralloc_no_move_expand(i32* %40, i32* %41, i64 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load i32*, i32** %7, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @extent_arena_get(i32* %48)
  %50 = call i32 @arena_decay_tick(i32* %47, i32 %49)
  store i32 0, i32* %6, align 4
  br label %102

51:                                               ; preds = %39
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %12, align 8
  %58 = icmp ugt i64 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32*, i32** %7, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @large_ralloc_no_move_expand(i32* %60, i32* %61, i64 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %59
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @extent_arena_get(i32* %68)
  %70 = call i32 @arena_decay_tick(i32* %67, i32 %69)
  store i32 0, i32* %6, align 4
  br label %102

71:                                               ; preds = %59, %55, %51
  br label %72

72:                                               ; preds = %71, %32
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %9, align 8
  %75 = icmp uge i64 %73, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %72
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %10, align 8
  %79 = icmp ule i64 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %76
  %81 = load i32*, i32** %7, align 8
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @extent_arena_get(i32* %82)
  %84 = call i32 @arena_decay_tick(i32* %81, i32 %83)
  store i32 0, i32* %6, align 4
  br label %102

85:                                               ; preds = %76, %72
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* %10, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %85
  %90 = load i32*, i32** %7, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @large_ralloc_no_move_shrink(i32* %90, i32* %91, i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %89
  %96 = load i32*, i32** %7, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @extent_arena_get(i32* %97)
  %99 = call i32 @arena_decay_tick(i32* %96, i32 %98)
  store i32 0, i32* %6, align 4
  br label %102

100:                                              ; preds = %89
  br label %101

101:                                              ; preds = %100, %85
  store i32 1, i32* %6, align 4
  br label %102

102:                                              ; preds = %101, %95, %80, %66, %46
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i64 @extent_usize_get(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @large_ralloc_no_move_expand(i32*, i32*, i64, i32) #1

declare dso_local i32 @arena_decay_tick(i32*, i32) #1

declare dso_local i32 @extent_arena_get(i32*) #1

declare dso_local i32 @large_ralloc_no_move_shrink(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
