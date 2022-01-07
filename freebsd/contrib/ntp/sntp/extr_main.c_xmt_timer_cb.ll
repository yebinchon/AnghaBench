; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_xmt_timer_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/extr_main.c_xmt_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.timeval = type { i64, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@EV_TIMEOUT = common dso_local global i16 0, align 2
@xmt_q = common dso_local global %struct.TYPE_10__* null, align 8
@shutting_down = common dso_local global i64 0, align 8
@base = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"xmt_timer_cb: at .%6.6u -> %s\0A\00", align 1
@ev_xmt_timer = common dso_local global i32 0, align 4
@gap = common dso_local global %struct.timeval zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"xmt_timer_cb: at .%6.6u gap %6.6u\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"xmt_timer_cb: at .%6.6u next %ld seconds\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmt_timer_cb(i8* %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @UNUSED_ARG(i8* %10)
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @UNUSED_ARG(i8* %12)
  %14 = load i16, i16* @EV_TIMEOUT, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* %5, align 2
  %17 = sext i16 %16 to i32
  %18 = icmp eq i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @DEBUG_INSIST(i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xmt_q, align 8
  %22 = icmp eq %struct.TYPE_10__* null, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i64, i64* @shutting_down, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %3
  br label %96

27:                                               ; preds = %23
  %28 = load i32, i32* @base, align 4
  %29 = call i32 @gettimeofday_cached(i32 %28, %struct.timeval* %7)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xmt_q, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sle i64 %32, %34
  br i1 %35, label %36, label %60

36:                                               ; preds = %27
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xmt_q, align 8
  %39 = load i32, i32* @link, align 4
  %40 = call i32 @UNLINK_HEAD_SLIST(%struct.TYPE_9__* %37, %struct.TYPE_10__* %38, i32 %39)
  %41 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = call i32 @stoa(i32* %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @TRACE(i32 2, i8* %50)
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %53 = call i32 @xmt(%struct.TYPE_9__* %52)
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %55 = call i32 @free(%struct.TYPE_9__* %54)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xmt_q, align 8
  %57 = icmp eq %struct.TYPE_10__* null, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %36
  br label %96

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59, %27
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xmt_q, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %63, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load i32, i32* @ev_xmt_timer, align 4
  %69 = call i32 @event_add(i32 %68, %struct.timeval* @gap)
  %70 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  %73 = load i64, i64* getelementptr inbounds (%struct.timeval, %struct.timeval* @gap, i32 0, i32 1), align 8
  %74 = trunc i64 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @TRACE(i32 2, i8* %76)
  br label %96

78:                                               ; preds = %60
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** @xmt_q, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %81, %83
  %85 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  %86 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load i32, i32* @ev_xmt_timer, align 4
  %88 = call i32 @event_add(i32 %87, %struct.timeval* %8)
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i8*
  %95 = call i32 @TRACE(i32 2, i8* %94)
  br label %96

96:                                               ; preds = %26, %58, %78, %67
  ret void
}

declare dso_local i32 @UNUSED_ARG(i8*) #1

declare dso_local i32 @DEBUG_INSIST(i32) #1

declare dso_local i32 @gettimeofday_cached(i32, %struct.timeval*) #1

declare dso_local i32 @UNLINK_HEAD_SLIST(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @TRACE(i32, i8*) #1

declare dso_local i32 @stoa(i32*) #1

declare dso_local i32 @xmt(%struct.TYPE_9__*) #1

declare dso_local i32 @free(%struct.TYPE_9__*) #1

declare dso_local i32 @event_add(i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
