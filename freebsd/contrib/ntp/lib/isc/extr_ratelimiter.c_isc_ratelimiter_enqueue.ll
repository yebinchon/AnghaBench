; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_ratelimiter.c_isc_ratelimiter_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_ratelimiter.c_isc_ratelimiter_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }

@ISC_R_SUCCESS = common dso_local global i64 0, align 8
@isc_ratelimiter_ratelimited = common dso_local global i64 0, align 8
@isc_ratelimiter_stalled = common dso_local global i64 0, align 8
@ev_link = common dso_local global i32 0, align 4
@isc_ratelimiter_idle = common dso_local global i64 0, align 8
@isc_timertype_ticker = common dso_local global i32 0, align 4
@ISC_FALSE = common dso_local global i32 0, align 4
@isc_ratelimiter_shuttingdown = common dso_local global i64 0, align 8
@ISC_R_SHUTTINGDOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @isc_ratelimiter_enqueue(%struct.TYPE_7__* %0, i32* %1, %struct.TYPE_8__** %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_8__**, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %6, align 8
  %10 = load i64, i64* @ISC_R_SUCCESS, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %12 = icmp ne %struct.TYPE_8__** %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = icmp ne %struct.TYPE_8__* %15, null
  br label %17

17:                                               ; preds = %13, %3
  %18 = phi i1 [ false, %3 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @REQUIRE(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = icmp ne i32* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @REQUIRE(i32 %23)
  %25 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %8, align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = call i32 @REQUIRE(i32 %31)
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = call i32 @LOCK(i32* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @isc_ratelimiter_ratelimited, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %17
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @isc_ratelimiter_stalled, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %60

47:                                               ; preds = %41, %17
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  store %struct.TYPE_8__* %49, %struct.TYPE_8__** %9, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %57 = load i32, i32* @ev_link, align 4
  %58 = call i32 @ISC_LIST_APPEND(i32 %55, %struct.TYPE_8__* %56, i32 %57)
  %59 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %59, align 8
  br label %96

60:                                               ; preds = %41
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @isc_ratelimiter_idle, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %86

66:                                               ; preds = %60
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @isc_timertype_ticker, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 2
  %73 = load i32, i32* @ISC_FALSE, align 4
  %74 = call i64 @isc_timer_reset(i32 %69, i32 %70, i32* null, i32* %72, i32 %73)
  store i64 %74, i64* %7, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* @ISC_R_SUCCESS, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = load i32*, i32** %5, align 8
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store i32* %79, i32** %81, align 8
  %82 = load i64, i64* @isc_ratelimiter_ratelimited, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %78, %66
  br label %95

86:                                               ; preds = %60
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @isc_ratelimiter_shuttingdown, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @INSIST(i32 %92)
  %94 = load i64, i64* @ISC_R_SHUTTINGDOWN, align 8
  store i64 %94, i64* %7, align 8
  br label %95

95:                                               ; preds = %86, %85
  br label %96

96:                                               ; preds = %95, %47
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  %99 = call i32 @UNLOCK(i32* %98)
  %100 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = icmp ne %struct.TYPE_8__* %101, null
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* @ISC_R_SUCCESS, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %103
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %6, align 8
  %110 = call i32 @isc_task_send(i32* %108, %struct.TYPE_8__** %109)
  br label %111

111:                                              ; preds = %107, %103, %96
  %112 = load i64, i64* %7, align 8
  ret i64 %112
}

declare dso_local i32 @REQUIRE(i32) #1

declare dso_local i32 @LOCK(i32*) #1

declare dso_local i32 @ISC_LIST_APPEND(i32, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @isc_timer_reset(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @INSIST(i32) #1

declare dso_local i32 @UNLOCK(i32*) #1

declare dso_local i32 @isc_task_send(i32*, %struct.TYPE_8__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
