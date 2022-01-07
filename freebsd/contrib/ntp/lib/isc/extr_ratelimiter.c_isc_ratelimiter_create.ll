; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_ratelimiter.c_isc_ratelimiter_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_ratelimiter.c_isc_ratelimiter_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32* }

@ISC_R_NOMEMORY = common dso_local global i64 0, align 8
@isc_ratelimiter_idle = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@isc_timertype_inactive = common dso_local global i32 0, align 4
@ratelimiter_tick = common dso_local global i32 0, align 4
@ISC_RATELIMITEREVENT_SHUTDOWN = common dso_local global i32 0, align 4
@ratelimiter_shutdowncomplete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_ratelimiter_create(i32* %0, i32* %1, i32* %2, %struct.TYPE_8__** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_8__** %3, %struct.TYPE_8__*** %9, align 8
  %12 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %13 = icmp ne %struct.TYPE_8__** %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = icmp eq %struct.TYPE_8__* %16, null
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i1 [ false, %4 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @INSIST(i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_8__* @isc_mem_get(i32* %22, i32 56)
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %11, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %25 = icmp eq %struct.TYPE_8__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i64, i64* @ISC_R_NOMEMORY, align 8
  store i64 %27, i64* %5, align 8
  br label %97

28:                                               ; preds = %18
  %29 = load i32*, i32** %6, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 9
  store i32* %29, i32** %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 1, i32* %33, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 5
  store i32* %34, i32** %36, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 8
  %39 = call i32 @isc_interval_set(i32* %38, i32 0, i32 0)
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load i32, i32* @isc_ratelimiter_idle, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @ISC_LIST_INIT(i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  %53 = call i64 @isc_mutex_init(i32* %52)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @ISC_R_SUCCESS, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %28
  br label %92

58:                                               ; preds = %28
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @isc_timertype_inactive, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @ratelimiter_tick, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 4
  %68 = call i64 @isc_timer_create(i32* %59, i32 %60, i32* null, i32* null, i32* %63, i32 %64, %struct.TYPE_8__* %65, i32** %67)
  store i64 %68, i64* %10, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load i64, i64* @ISC_R_SUCCESS, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %58
  br label %88

73:                                               ; preds = %58
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 8
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 3
  %80 = load i32, i32* @ISC_RATELIMITEREVENT_SHUTDOWN, align 4
  %81 = load i32, i32* @ratelimiter_shutdowncomplete, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %84 = call i32 @ISC_EVENT_INIT(i32* %79, i32 4, i32 0, i32* null, i32 %80, i32 %81, %struct.TYPE_8__* %82, %struct.TYPE_8__* %83, i32* null, i32* null)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %86 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  store %struct.TYPE_8__* %85, %struct.TYPE_8__** %86, align 8
  %87 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %87, i64* %5, align 8
  br label %97

88:                                               ; preds = %72
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 2
  %91 = call i32 @DESTROYLOCK(i32* %90)
  br label %92

92:                                               ; preds = %88, %57
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %95 = call i32 @isc_mem_put(i32* %93, %struct.TYPE_8__* %94, i32 56)
  %96 = load i64, i64* %10, align 8
  store i64 %96, i64* %5, align 8
  br label %97

97:                                               ; preds = %92, %73, %26
  %98 = load i64, i64* %5, align 8
  ret i64 %98
}

declare dso_local i32 @INSIST(i32) #1

declare dso_local %struct.TYPE_8__* @isc_mem_get(i32*, i32) #1

declare dso_local i32 @isc_interval_set(i32*, i32, i32) #1

declare dso_local i32 @ISC_LIST_INIT(i32) #1

declare dso_local i64 @isc_mutex_init(i32*) #1

declare dso_local i64 @isc_timer_create(i32*, i32, i32*, i32*, i32*, i32, %struct.TYPE_8__*, i32**) #1

declare dso_local i32 @ISC_EVENT_INIT(i32*, i32, i32, i32*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_8__*, i32*, i32*) #1

declare dso_local i32 @DESTROYLOCK(i32*) #1

declare dso_local i32 @isc_mem_put(i32*, %struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
