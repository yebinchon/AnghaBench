; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_provider_register.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_helper_provider_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_7__**, %struct.TYPE_9__*, %struct.TYPE_9__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_meta_lock = common dso_local global i32 0, align 4
@dtrace_meta_pid = common dso_local global i32* null, align 8
@dtrace_deferred_pid = common dso_local global %struct.TYPE_9__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_9__*, i32*)* @dtrace_helper_provider_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_helper_provider_register(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = call i32 @MUTEX_NOT_HELD(i32* @dtrace_lock)
  %9 = call i32 @ASSERT(i32 %8)
  %10 = call i32 @mutex_enter(i32* @dtrace_meta_lock)
  %11 = call i32 @mutex_enter(i32* @dtrace_lock)
  %12 = call i32 (...) @dtrace_attached()
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32*, i32** @dtrace_meta_pid, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %54

17:                                               ; preds = %14, %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 4
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp eq %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %52

22:                                               ; preds = %17
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 3
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = icmp eq %struct.TYPE_9__* %25, null
  br i1 %26, label %27, label %52

27:                                               ; preds = %22
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dtrace_deferred_pid, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = icmp ne %struct.TYPE_9__* %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dtrace_deferred_pid, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 4
  store %struct.TYPE_9__* %39, %struct.TYPE_9__** %41, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %43, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dtrace_deferred_pid, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dtrace_deferred_pid, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  store %struct.TYPE_9__* %47, %struct.TYPE_9__** %49, align 8
  br label %50

50:                                               ; preds = %46, %31
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** @dtrace_deferred_pid, align 8
  br label %52

52:                                               ; preds = %50, %27, %22, %17
  %53 = call i32 @mutex_exit(i32* @dtrace_lock)
  br label %90

54:                                               ; preds = %14
  %55 = load i32*, i32** %6, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = call i32 @mutex_exit(i32* @dtrace_lock)
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dtrace_helper_provide(i32* %59, i32 %62)
  br label %89

64:                                               ; preds = %54
  %65 = call i32 @mutex_exit(i32* @dtrace_lock)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %85, %64
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %88

72:                                               ; preds = %66
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %75, i64 %77
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @dtrace_helper_provide(i32* %80, i32 %83)
  br label %85

85:                                               ; preds = %72
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  br label %66

88:                                               ; preds = %66
  br label %89

89:                                               ; preds = %88, %57
  br label %90

90:                                               ; preds = %89, %52
  %91 = call i32 @mutex_exit(i32* @dtrace_meta_lock)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_NOT_HELD(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dtrace_attached(...) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @dtrace_helper_provide(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
