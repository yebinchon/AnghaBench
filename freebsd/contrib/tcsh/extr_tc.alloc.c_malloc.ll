; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.alloc.c_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.alloc.c_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.overhead = type { i8* }

@RSLOP = common dso_local global i64 0, align 8
@nextf = common dso_local global %union.overhead** null, align 8
@child = common dso_local global i32 0, align 4
@MAGIC = common dso_local global i32 0, align 4
@nmalloc = common dso_local global i32* null, align 8
@RMAGIC = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @malloc(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %union.overhead*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %7 = call i64 @MEMALIGN(i32 8)
  %8 = load i64, i64* %3, align 8
  %9 = add i64 %7, %8
  %10 = load i64, i64* @RSLOP, align 8
  %11 = add i64 %9, %10
  %12 = trunc i64 %11 to i32
  %13 = call i64 @MEMALIGN(i32 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = sub i64 %14, 1
  %16 = lshr i64 %15, 2
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  br label %18

18:                                               ; preds = %22, %1
  %19 = load i32, i32* %6, align 4
  %20 = lshr i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  br label %18

25:                                               ; preds = %18
  %26 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %union.overhead*, %union.overhead** %26, i64 %28
  %30 = load %union.overhead*, %union.overhead** %29, align 8
  %31 = icmp eq %union.overhead* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @morecore(i32 %33)
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %union.overhead*, %union.overhead** %36, i64 %38
  %40 = load %union.overhead*, %union.overhead** %39, align 8
  store %union.overhead* %40, %union.overhead** %4, align 8
  %41 = icmp eq %union.overhead* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load i32, i32* @child, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* @child, align 4
  %45 = call i32 (...) @out_of_memory()
  store i32 0, i32* %2, align 4
  br label %75

46:                                               ; preds = %35
  %47 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %union.overhead*, %union.overhead** %47, i64 %49
  %51 = load %union.overhead*, %union.overhead** %50, align 8
  %52 = bitcast %union.overhead* %51 to %union.overhead**
  %53 = load %union.overhead*, %union.overhead** %52, align 8
  %54 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %union.overhead*, %union.overhead** %54, i64 %56
  store %union.overhead* %53, %union.overhead** %57, align 8
  %58 = load i32, i32* @MAGIC, align 4
  %59 = load %union.overhead*, %union.overhead** %4, align 8
  %60 = bitcast %union.overhead* %59 to i32*
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %union.overhead*, %union.overhead** %4, align 8
  %63 = bitcast %union.overhead* %62 to i32*
  store i32 %61, i32* %63, align 8
  %64 = load i32*, i32** @nmalloc, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %union.overhead*, %union.overhead** %4, align 8
  %71 = ptrtoint %union.overhead* %70 to i64
  %72 = call i64 @MEMALIGN(i32 8)
  %73 = add i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %2, align 4
  br label %75

75:                                               ; preds = %46, %42
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @MEMALIGN(i32) #1

declare dso_local i32 @morecore(i32) #1

declare dso_local i32 @out_of_memory(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
