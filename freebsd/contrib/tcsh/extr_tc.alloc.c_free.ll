; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.alloc.c_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.alloc.c_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.overhead = type { i64 }

@dont_free = common dso_local global i64 0, align 8
@memtop = common dso_local global i64 0, align 8
@membot = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"free(%p) called before any allocations.\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"free(%p) above top of memory.\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"free(%p) below bottom of memory.\00", align 1
@MAGIC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"free(%p) bad block.\00", align 1
@NBUCKETS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"free(%p) bad block index.\00", align 1
@nextf = common dso_local global %union.overhead** null, align 8
@nmalloc = common dso_local global i32* null, align 8
@RMAGIC = common dso_local global i64 0, align 8
@RSLOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.overhead*, align 8
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @dont_free, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %7, %1
  br label %84

11:                                               ; preds = %7
  %12 = load i64, i64* @memtop, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, i64* @membot, align 8
  %16 = icmp ne i64 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ true, %11 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @CGETS(i32 19, i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @CHECK(i32 %20, i32 %21, i32* %22)
  %24 = load i32*, i32** %2, align 8
  %25 = load i64, i64* @memtop, align 8
  %26 = inttoptr i64 %25 to i32*
  %27 = icmp ugt i32* %24, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @CGETS(i32 19, i32 3, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %2, align 8
  %31 = call i32 @CHECK(i32 %28, i32 %29, i32* %30)
  %32 = load i32*, i32** %2, align 8
  %33 = load i64, i64* @membot, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = icmp ult i32* %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @CGETS(i32 19, i32 4, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @CHECK(i32 %36, i32 %37, i32* %38)
  %40 = load i32*, i32** %2, align 8
  %41 = ptrtoint i32* %40 to i64
  %42 = call i64 @MEMALIGN(i32 8)
  %43 = sub nsw i64 %41, %42
  %44 = inttoptr i64 %43 to %union.overhead*
  store %union.overhead* %44, %union.overhead** %4, align 8
  %45 = load %union.overhead*, %union.overhead** %4, align 8
  %46 = bitcast %union.overhead* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MAGIC, align 8
  %49 = icmp ne i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @CGETS(i32 19, i32 5, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32*, i32** %2, align 8
  %53 = call i32 @CHECK(i32 %50, i32 %51, i32* %52)
  %54 = load %union.overhead*, %union.overhead** %4, align 8
  %55 = bitcast %union.overhead* %54 to i32*
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NBUCKETS, align 4
  %58 = icmp sge i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i32 @CGETS(i32 19, i32 7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %61 = load i32*, i32** %2, align 8
  %62 = call i32 @CHECK(i32 %59, i32 %60, i32* %61)
  %63 = load %union.overhead*, %union.overhead** %4, align 8
  %64 = bitcast %union.overhead* %63 to i32*
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %3, align 4
  %66 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %union.overhead*, %union.overhead** %66, i64 %68
  %70 = load %union.overhead*, %union.overhead** %69, align 8
  %71 = load %union.overhead*, %union.overhead** %4, align 8
  %72 = bitcast %union.overhead* %71 to %union.overhead**
  store %union.overhead* %70, %union.overhead** %72, align 8
  %73 = load %union.overhead*, %union.overhead** %4, align 8
  %74 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %union.overhead*, %union.overhead** %74, i64 %76
  store %union.overhead* %73, %union.overhead** %77, align 8
  %78 = load i32*, i32** @nmalloc, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %18, %10
  ret void
}

declare dso_local i32 @CHECK(i32, i32, i32*) #1

declare dso_local i32 @CGETS(i32, i32, i8*) #1

declare dso_local i64 @MEMALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
