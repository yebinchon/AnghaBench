; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_findfp.c___sfp.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_findfp.c___sfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glue = type { i32, %struct.TYPE_9__*, %struct.glue* }
%struct.TYPE_9__ = type { i32, i32, i64, i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.TYPE_6__, i64, i64, i32* }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_7__ = type { i64, i32* }
%struct.TYPE_6__ = type { i64, i32* }

@__sdidinit = common dso_local global i32 0, align 4
@__sglue = common dso_local global %struct.glue zeroinitializer, align 8
@NDYNAMIC = common dso_local global i32 0, align 4
@lastglue = common dso_local global %struct.glue* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @__sfp() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.glue*, align 8
  %5 = load i32, i32* @__sdidinit, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @__sinit()
  br label %9

9:                                                ; preds = %7, %0
  %10 = call i32 (...) @STDIO_THREAD_LOCK()
  store %struct.glue* @__sglue, %struct.glue** %4, align 8
  br label %11

11:                                               ; preds = %36, %9
  %12 = load %struct.glue*, %struct.glue** %4, align 8
  %13 = icmp ne %struct.glue* %12, null
  br i1 %13, label %14, label %40

14:                                               ; preds = %11
  %15 = load %struct.glue*, %struct.glue** %4, align 8
  %16 = getelementptr inbounds %struct.glue, %struct.glue* %15, i32 0, i32 1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  store %struct.TYPE_9__* %17, %struct.TYPE_9__** %2, align 8
  %18 = load %struct.glue*, %struct.glue** %4, align 8
  %19 = getelementptr inbounds %struct.glue, %struct.glue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %32, %14
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, -1
  store i32 %23, i32* %3, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %21
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %57

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 1
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %2, align 8
  br label %21

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.glue*, %struct.glue** %4, align 8
  %38 = getelementptr inbounds %struct.glue, %struct.glue* %37, i32 0, i32 2
  %39 = load %struct.glue*, %struct.glue** %38, align 8
  store %struct.glue* %39, %struct.glue** %4, align 8
  br label %11

40:                                               ; preds = %11
  %41 = call i32 (...) @STDIO_THREAD_UNLOCK()
  %42 = load i32, i32* @NDYNAMIC, align 4
  %43 = call %struct.glue* @moreglue(i32 %42)
  store %struct.glue* %43, %struct.glue** %4, align 8
  %44 = icmp eq %struct.glue* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %1, align 8
  br label %97

46:                                               ; preds = %40
  %47 = call i32 (...) @STDIO_THREAD_LOCK()
  %48 = load %struct.glue*, %struct.glue** @lastglue, align 8
  %49 = getelementptr inbounds %struct.glue, %struct.glue* %48, i32 0, i32 2
  %50 = load %struct.glue*, %struct.glue** %49, align 8
  %51 = load %struct.glue*, %struct.glue** %4, align 8
  %52 = call i32 @SET_GLUE_PTR(%struct.glue* %50, %struct.glue* %51)
  %53 = load %struct.glue*, %struct.glue** %4, align 8
  store %struct.glue* %53, %struct.glue** @lastglue, align 8
  %54 = load %struct.glue*, %struct.glue** %4, align 8
  %55 = getelementptr inbounds %struct.glue, %struct.glue* %54, i32 0, i32 1
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %55, align 8
  store %struct.TYPE_9__* %56, %struct.TYPE_9__** %2, align 8
  br label %57

57:                                               ; preds = %46, %30
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  store i32 1, i32* %59, align 8
  %60 = call i32 (...) @STDIO_THREAD_UNLOCK()
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 11
  store i32* null, i32** %62, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 10
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 9
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32* null, i32** %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 7
  store i64 0, i64* %74, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 -1, i32* %76, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 6
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  store i64 0, i64* %90, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 3
  %93 = call i32 @memset(i32* %92, i32 0, i32 4)
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  store i64 0, i64* %95, align 8
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  store %struct.TYPE_9__* %96, %struct.TYPE_9__** %1, align 8
  br label %97

97:                                               ; preds = %57, %45
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  ret %struct.TYPE_9__* %98
}

declare dso_local i32 @__sinit(...) #1

declare dso_local i32 @STDIO_THREAD_LOCK(...) #1

declare dso_local i32 @STDIO_THREAD_UNLOCK(...) #1

declare dso_local %struct.glue* @moreglue(i32) #1

declare dso_local i32 @SET_GLUE_PTR(%struct.glue*, %struct.glue*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
