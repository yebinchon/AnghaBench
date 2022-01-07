; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_enabling_reap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_enabling_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32*, i32* }
%struct.TYPE_9__ = type { i32 }

@cpu_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_nprobes = common dso_local global i32 0, align 4
@dtrace_probes = common dso_local global %struct.TYPE_10__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dtrace_enabling_reap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_enabling_reap() #0 {
  %1 = alloca %struct.TYPE_9__*, align 8
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = call i32 @mutex_enter(i32* @cpu_lock)
  %10 = call i32 @mutex_enter(i32* @dtrace_lock)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %84, %0
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @dtrace_nprobes, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %87

15:                                               ; preds = %11
  %16 = load %struct.TYPE_10__**, %struct.TYPE_10__*** @dtrace_probes, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %16, i64 %18
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  store %struct.TYPE_10__* %20, %struct.TYPE_10__** %2, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  br label %84

23:                                               ; preds = %15
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = icmp eq %struct.TYPE_11__* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %84

29:                                               ; preds = %23
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %1, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %4, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %84

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %71, %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %3, align 8
  %43 = icmp ne %struct.TYPE_11__* %42, null
  br i1 %43, label %44, label %83

44:                                               ; preds = %39
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %6, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %7, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %8, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %83

59:                                               ; preds = %44
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @dtrace_buffer_consumed(i32* %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %59
  br label %83

65:                                               ; preds = %59
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @dtrace_buffer_consumed(i32* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %65
  br label %83

71:                                               ; preds = %65
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = call i32 @dtrace_ecb_disable(%struct.TYPE_11__* %72)
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %75, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %78 = icmp ne %struct.TYPE_11__* %76, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @ASSERT(i32 %79)
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %82 = call i32 @dtrace_ecb_destroy(%struct.TYPE_11__* %81)
  br label %39

83:                                               ; preds = %70, %64, %58, %39
  br label %84

84:                                               ; preds = %83, %37, %28, %22
  %85 = load i32, i32* %5, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %5, align 4
  br label %11

87:                                               ; preds = %11
  %88 = call i32 @mutex_exit(i32* @dtrace_lock)
  %89 = call i32 @mutex_exit(i32* @cpu_lock)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dtrace_buffer_consumed(i32*, i32) #1

declare dso_local i32 @dtrace_ecb_disable(%struct.TYPE_11__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_ecb_destroy(%struct.TYPE_11__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
