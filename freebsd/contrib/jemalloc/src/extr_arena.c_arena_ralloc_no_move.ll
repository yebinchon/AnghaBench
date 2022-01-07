; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_ralloc_no_move.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_ralloc_no_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@LARGE_MAXCLASS = common dso_local global i64 0, align 8
@SMALL_MAXCLASS = common dso_local global i64 0, align 8
@bin_infos = common dso_local global %struct.TYPE_2__* null, align 8
@LARGE_MINCLASS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arena_ralloc_no_move(i32* %0, i8* %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i64, i64* %12, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %12, align 8
  %22 = add i64 %20, %21
  %23 = load i64, i64* @LARGE_MAXCLASS, align 8
  %24 = icmp ule i64 %22, %23
  br label %25

25:                                               ; preds = %19, %6
  %26 = phi i1 [ true, %6 ], [ %24, %19 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @LARGE_MAXCLASS, align 8
  %31 = icmp ugt i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 1, i32* %7, align 4
  br label %109

36:                                               ; preds = %25
  %37 = load i32*, i32** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32* @iealloc(i32* %37, i8* %38)
  store i32* %39, i32** %14, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i64 @sz_s2u(i64 %40)
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %42, %43
  %45 = call i64 @sz_s2u(i64 %44)
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load i64, i64* @SMALL_MAXCLASS, align 8
  %48 = icmp ule i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %36
  %50 = load i64, i64* %15, align 8
  %51 = load i64, i64* @SMALL_MAXCLASS, align 8
  %52 = icmp ule i64 %50, %51
  br label %53

53:                                               ; preds = %49, %36
  %54 = phi i1 [ false, %36 ], [ %52, %49 ]
  %55 = zext i1 %54 to i32
  %56 = call i64 @likely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %92

58:                                               ; preds = %53
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @bin_infos, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @sz_size2index(i64 %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load i64, i64* %16, align 8
  %70 = load i64, i64* @SMALL_MAXCLASS, align 8
  %71 = icmp ugt i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %58
  %73 = load i64, i64* %16, align 8
  %74 = call i64 @sz_size2index(i64 %73)
  %75 = load i64, i64* %10, align 8
  %76 = call i64 @sz_size2index(i64 %75)
  %77 = icmp ne i64 %74, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72, %58
  %79 = load i64, i64* %11, align 8
  %80 = load i64, i64* %10, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* %16, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82, %78
  store i32 1, i32* %7, align 4
  br label %109

87:                                               ; preds = %82, %72
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = call i32 @extent_arena_get(i32* %89)
  %91 = call i32 @arena_decay_tick(i32* %88, i32 %90)
  store i32 0, i32* %7, align 4
  br label %109

92:                                               ; preds = %53
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* @LARGE_MINCLASS, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %92
  %97 = load i64, i64* %16, align 8
  %98 = load i64, i64* @LARGE_MINCLASS, align 8
  %99 = icmp uge i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %96
  %101 = load i32*, i32** %8, align 8
  %102 = load i32*, i32** %14, align 8
  %103 = load i64, i64* %15, align 8
  %104 = load i64, i64* %16, align 8
  %105 = load i32, i32* %13, align 4
  %106 = call i32 @large_ralloc_no_move(i32* %101, i32* %102, i64 %103, i64 %104, i32 %105)
  store i32 %106, i32* %7, align 4
  br label %109

107:                                              ; preds = %96, %92
  br label %108

108:                                              ; preds = %107
  store i32 1, i32* %7, align 4
  br label %109

109:                                              ; preds = %108, %100, %87, %86, %35
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @iealloc(i32*, i8*) #1

declare dso_local i64 @sz_s2u(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @sz_size2index(i64) #1

declare dso_local i32 @arena_decay_tick(i32*, i32) #1

declare dso_local i32 @extent_arena_get(i32*) #1

declare dso_local i32 @large_ralloc_no_move(i32*, i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
