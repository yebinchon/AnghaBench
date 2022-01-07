; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_state_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_state_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@dtrace_lock = common dso_local global i32 0, align 4
@DTRACE_ACTIVITY_ACTIVE = common dso_local global i64 0, align 8
@DTRACE_ACTIVITY_DRAINING = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DTRACE_ACTIVITY_COOLDOWN = common dso_local global i64 0, align 8
@curcpu = common dso_local global i32 0, align 4
@dtrace_probeid_end = common dso_local global i32 0, align 4
@DTRACE_ACTIVITY_STOPPED = common dso_local global i64 0, align 8
@DTRACE_CRV_KERNEL = common dso_local global i32 0, align 4
@dtrace_closef = common dso_local global i32* null, align 8
@dtrace_getf = common dso_local global i64 0, align 8
@dtrace_getf_barrier = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*)* @dtrace_state_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_state_stop(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = call i32 @MUTEX_HELD(i32* @dtrace_lock)
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DTRACE_ACTIVITY_ACTIVE, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DTRACE_ACTIVITY_DRAINING, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %14, %2
  %23 = load i64, i64* @DTRACE_ACTIVITY_DRAINING, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  %26 = call i32 (...) @dtrace_sync()
  %27 = load i64, i64* @DTRACE_ACTIVITY_COOLDOWN, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = call i32 (...) @dtrace_sync()
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DTRACE_ACTIVITY_COOLDOWN, align 8
  %35 = icmp eq i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = call i32 (...) @dtrace_interrupt_disable()
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @curcpu, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @dtrace_probeid_end, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = ptrtoint %struct.TYPE_9__* %44 to i64
  %46 = trunc i64 %45 to i32
  %47 = call i32 @dtrace_probe(i32 %43, i32 %46, i32 0, i32 0, i32 0, i32 0)
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @dtrace_interrupt_enable(i32 %48)
  %50 = load i64, i64* @DTRACE_ACTIVITY_STOPPED, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = call i32 (...) @dtrace_sync()
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %22, %20
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @dtrace_sync(...) #1

declare dso_local i32 @dtrace_interrupt_disable(...) #1

declare dso_local i32 @dtrace_probe(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dtrace_interrupt_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
