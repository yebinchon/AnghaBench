; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_module_loaded.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_module_loaded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_7__, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i32 (i32, %struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32 }

@dtrace_provider_lock = common dso_local global i32 0, align 4
@dtrace_provider = common dso_local global %struct.TYPE_9__* null, align 8
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_retained = common dso_local global i32* null, align 8
@dtrace_taskq = common dso_local global i32 0, align 4
@dtrace_enabling_matchall = common dso_local global i64 0, align 8
@TQ_SLEEP = common dso_local global i32 0, align 4
@mod_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @dtrace_module_loaded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_module_loaded(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %4 = call i32 @mutex_enter(i32* @dtrace_provider_lock)
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dtrace_provider, align 8
  store %struct.TYPE_9__* %5, %struct.TYPE_9__** %3, align 8
  br label %6

6:                                                ; preds = %19, %1
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = icmp ne %struct.TYPE_9__* %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32 (i32, %struct.TYPE_8__*)*, i32 (i32, %struct.TYPE_8__*)** %12, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = call i32 %13(i32 %16, %struct.TYPE_8__* %17)
  br label %19

19:                                               ; preds = %9
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %21, align 8
  store %struct.TYPE_9__* %22, %struct.TYPE_9__** %3, align 8
  br label %6

23:                                               ; preds = %6
  %24 = call i32 @mutex_exit(i32* @dtrace_provider_lock)
  %25 = call i32 @mutex_enter(i32* @dtrace_lock)
  %26 = load i32*, i32** @dtrace_retained, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 @mutex_exit(i32* @dtrace_lock)
  br label %38

30:                                               ; preds = %23
  %31 = load i32, i32* @dtrace_taskq, align 4
  %32 = load i64, i64* @dtrace_enabling_matchall, align 8
  %33 = inttoptr i64 %32 to i32*
  %34 = load i32, i32* @TQ_SLEEP, align 4
  %35 = call i32 @taskq_dispatch(i32 %31, i32* %33, i32* null, i32 %34)
  %36 = call i32 @mutex_exit(i32* @dtrace_lock)
  %37 = call i32 @delay(i32 1)
  br label %38

38:                                               ; preds = %30, %28
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @taskq_dispatch(i32, i32*, i32*, i32) #1

declare dso_local i32 @delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
