; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_ralloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_ralloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LARGE_MAXCLASS = common dso_local global i64 0, align 8
@SMALL_MAXCLASS = common dso_local global i64 0, align 8
@LARGE_MINCLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @arena_ralloc(i32* %0, i32* %1, i8* %2, i64 %3, i64 %4, i64 %5, i32 %6, i32* %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8* %2, i8** %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %21 = load i64, i64* %14, align 8
  %22 = call i64 @sz_s2u(i64 %21)
  store i64 %22, i64* %18, align 8
  %23 = load i64, i64* %18, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %8
  %26 = load i64, i64* %14, align 8
  %27 = load i64, i64* @LARGE_MAXCLASS, align 8
  %28 = icmp ugt i64 %26, %27
  br label %29

29:                                               ; preds = %25, %8
  %30 = phi i1 [ true, %8 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i8* null, i8** %9, align 8
  br label %103

35:                                               ; preds = %29
  %36 = load i64, i64* %18, align 8
  %37 = load i64, i64* @SMALL_MAXCLASS, align 8
  %38 = icmp ule i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %35
  %43 = load i32*, i32** %10, align 8
  %44 = load i8*, i8** %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %18, align 8
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @arena_ralloc_no_move(i32* %43, i8* %44, i64 %45, i64 %46, i32 0, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %42
  %51 = load i8*, i8** %12, align 8
  store i8* %51, i8** %9, align 8
  br label %103

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %35
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @LARGE_MINCLASS, align 8
  %56 = icmp uge i64 %54, %55
  br i1 %56, label %57, label %72

57:                                               ; preds = %53
  %58 = load i64, i64* %18, align 8
  %59 = load i64, i64* @LARGE_MINCLASS, align 8
  %60 = icmp uge i64 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load i32*, i32** %10, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i32 @iealloc(i32* %64, i8* %65)
  %67 = load i64, i64* %18, align 8
  %68 = load i64, i64* %15, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32*, i32** %17, align 8
  %71 = call i8* @large_ralloc(i32* %62, i32* %63, i32 %66, i64 %67, i64 %68, i32 %69, i32* %70)
  store i8* %71, i8** %9, align 8
  br label %103

72:                                               ; preds = %57, %53
  %73 = load i32*, i32** %10, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = load i64, i64* %18, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i32, i32* %16, align 4
  %78 = load i32*, i32** %17, align 8
  %79 = call i8* @arena_ralloc_move_helper(i32* %73, i32* %74, i64 %75, i64 %76, i32 %77, i32* %78)
  store i8* %79, i8** %19, align 8
  %80 = load i8*, i8** %19, align 8
  %81 = icmp eq i8* %80, null
  br i1 %81, label %82, label %83

82:                                               ; preds = %72
  store i8* null, i8** %9, align 8
  br label %103

83:                                               ; preds = %72
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %13, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i64, i64* %18, align 8
  br label %91

89:                                               ; preds = %83
  %90 = load i64, i64* %13, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i64 [ %88, %87 ], [ %90, %89 ]
  store i64 %92, i64* %20, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = load i8*, i8** %12, align 8
  %95 = load i64, i64* %20, align 8
  %96 = call i32 @memcpy(i8* %93, i8* %94, i64 %95)
  %97 = load i32*, i32** %10, align 8
  %98 = load i8*, i8** %12, align 8
  %99 = load i64, i64* %13, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = call i32 @isdalloct(i32* %97, i8* %98, i64 %99, i32* %100, i32* null, i32 1)
  %102 = load i8*, i8** %19, align 8
  store i8* %102, i8** %9, align 8
  br label %103

103:                                              ; preds = %91, %82, %61, %50, %34
  %104 = load i8*, i8** %9, align 8
  ret i8* %104
}

declare dso_local i64 @sz_s2u(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @arena_ralloc_no_move(i32*, i8*, i64, i64, i32, i32) #1

declare dso_local i8* @large_ralloc(i32*, i32*, i32, i64, i64, i32, i32*) #1

declare dso_local i32 @iealloc(i32*, i8*) #1

declare dso_local i8* @arena_ralloc_move_helper(i32*, i32*, i64, i64, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @isdalloct(i32*, i8*, i64, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
