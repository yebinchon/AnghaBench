; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_ratelimiter.c_ratelimiter_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_ratelimiter.c_ratelimiter_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i64 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32 }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@ev_link = common dso_local global i32 0, align 4
@isc_timertype_inactive = common dso_local global i32 0, align 4
@ISC_FALSE = common dso_local global i32 0, align 4
@isc_ratelimiter_idle = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_9__*)* @ratelimiter_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ratelimiter_tick(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %10 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %6, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @UNUSED(i32* %15)
  %17 = call i32 @isc_event_free(%struct.TYPE_9__** %4)
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %70, %2
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %75

24:                                               ; preds = %21
  %25 = load i64, i64* %8, align 8
  %26 = add nsw i64 %25, -1
  store i64 %26, i64* %8, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = call i32 @LOCK(i32* %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_9__* @ISC_LIST_HEAD(i32 %32)
  store %struct.TYPE_9__* %33, %struct.TYPE_9__** %7, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %35 = icmp ne %struct.TYPE_9__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %24
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %41 = load i32, i32* @ev_link, align 4
  %42 = call i32 @ISC_LIST_UNLINK(i32 %39, %struct.TYPE_9__* %40, i32 %41)
  br label %58

43:                                               ; preds = %24
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @isc_timertype_inactive, align 4
  %48 = load i32, i32* @ISC_FALSE, align 4
  %49 = call i64 @isc_timer_reset(i32 %46, i32 %47, i32* null, i32* null, i32 %48)
  store i64 %49, i64* %5, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* @ISC_R_SUCCESS, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @RUNTIME_CHECK(i32 %53)
  %55 = load i32, i32* @isc_ratelimiter_idle, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  store i64 0, i64* %8, align 8
  br label %58

58:                                               ; preds = %43, %36
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = call i32 @UNLOCK(i32* %60)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = icmp ne %struct.TYPE_9__* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %9, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @isc_task_send(i32* %68, %struct.TYPE_9__** %7)
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %72 = icmp eq %struct.TYPE_9__* %71, null
  %73 = zext i1 %72 to i32
  %74 = call i32 @INSIST(i32 %73)
  br label %21

75:                                               ; preds = %21
  ret void
}

declare dso_local i32 @UNUSED(i32*) #1

declare dso_local i32 @isc_event_free(%struct.TYPE_9__**) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local %struct.TYPE_9__* @ISC_LIST_HEAD(i32) #1

declare dso_local i32 @ISC_LIST_UNLINK(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @isc_timer_reset(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @RUNTIME_CHECK(i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @isc_task_send(i32*, %struct.TYPE_9__**) #1

declare dso_local i32 @INSIST(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
