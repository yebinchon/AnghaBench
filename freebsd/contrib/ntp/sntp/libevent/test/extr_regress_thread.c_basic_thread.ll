; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_thread.c_basic_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_thread.c_basic_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cond_wait = type { i32, i32 }
%struct.event_base = type { i32 }
%struct.event = type { i32 }
%struct.timeval = type { i32, i64 }

@wake_all_timeout = common dso_local global i32 0, align 4
@NUM_ITERATIONS = common dso_local global i32 0, align 4
@count_lock = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@NUM_THREADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @basic_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @basic_thread(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cond_wait, align 4
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca %struct.event, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timeval, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.event_base*
  store %struct.event_base* %10, %struct.event_base** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %4, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @EVTHREAD_ALLOC_LOCK(i32 %12, i32 0)
  %14 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %4, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @EVTHREAD_ALLOC_COND(i32 %15)
  %17 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @assert(i32 %18)
  %20 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.event_base*, %struct.event_base** %5, align 8
  %24 = load i32, i32* @wake_all_timeout, align 4
  %25 = call i32 @evtimer_assign(%struct.event* %6, %struct.event_base* %23, i32 %24, %struct.cond_wait* %4)
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %58, %1
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @NUM_ITERATIONS, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %26
  %31 = call i32 @evutil_timerclear(%struct.timeval* %8)
  %32 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 3000, i32* %33, align 8
  %34 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @EVLOCK_LOCK(i32 %35, i32 0)
  %37 = call i64 @evtimer_add(%struct.event* %6, %struct.timeval* %8)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %4, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @EVTHREAD_COND_WAIT(i32 %42, i32 %44)
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @EVLOCK_UNLOCK(i32 %50, i32 0)
  %52 = load i32, i32* @count_lock, align 4
  %53 = call i32 @EVLOCK_LOCK(i32 %52, i32 0)
  %54 = load i32, i32* @count, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @count, align 4
  %56 = load i32, i32* @count_lock, align 4
  %57 = call i32 @EVLOCK_UNLOCK(i32 %56, i32 0)
  br label %58

58:                                               ; preds = %30
  %59 = load i32, i32* %7, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %7, align 4
  br label %26

61:                                               ; preds = %26
  %62 = load i32, i32* @count_lock, align 4
  %63 = call i32 @EVLOCK_LOCK(i32 %62, i32 0)
  %64 = load i32, i32* @count, align 4
  %65 = load i32, i32* @NUM_THREADS, align 4
  %66 = load i32, i32* @NUM_ITERATIONS, align 4
  %67 = mul nsw i32 %65, %66
  %68 = icmp sge i32 %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.event_base*, %struct.event_base** %5, align 8
  %71 = call i32 @event_base_loopexit(%struct.event_base* %70, i32* null)
  br label %72

72:                                               ; preds = %69, %61
  %73 = load i32, i32* @count_lock, align 4
  %74 = call i32 @EVLOCK_UNLOCK(i32 %73, i32 0)
  %75 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %4, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @EVTHREAD_FREE_LOCK(i32 %76, i32 0)
  %78 = getelementptr inbounds %struct.cond_wait, %struct.cond_wait* %4, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @EVTHREAD_FREE_COND(i32 %79)
  %81 = call i32 (...) @THREAD_RETURN()
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @EVTHREAD_ALLOC_LOCK(i32, i32) #1

declare dso_local i32 @EVTHREAD_ALLOC_COND(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @evtimer_assign(%struct.event*, %struct.event_base*, i32, %struct.cond_wait*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @EVLOCK_LOCK(i32, i32) #1

declare dso_local i64 @evtimer_add(%struct.event*, %struct.timeval*) #1

declare dso_local i64 @EVTHREAD_COND_WAIT(i32, i32) #1

declare dso_local i32 @EVLOCK_UNLOCK(i32, i32) #1

declare dso_local i32 @event_base_loopexit(%struct.event_base*, i32*) #1

declare dso_local i32 @EVTHREAD_FREE_LOCK(i32, i32) #1

declare dso_local i32 @EVTHREAD_FREE_COND(i32) #1

declare dso_local i32 @THREAD_RETURN(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
