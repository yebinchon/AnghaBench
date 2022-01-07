; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_bench.c_run_once.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_bench.c_run_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@run_once.ts = internal global %struct.timeval zeroinitializer, align 4
@run_once.te = internal global %struct.timeval zeroinitializer, align 4
@pipes = common dso_local global i32* null, align 8
@num_pipes = common dso_local global i64 0, align 8
@events = common dso_local global i32* null, align 8
@EV_READ = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@read_cb = common dso_local global i32 0, align 4
@EVLOOP_ONCE = common dso_local global i32 0, align 4
@EVLOOP_NONBLOCK = common dso_local global i32 0, align 4
@fired = common dso_local global i32 0, align 4
@num_active = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"e\00", align 1
@count = common dso_local global i32 0, align 4
@num_writes = common dso_local global i32 0, align 4
@writes = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Xcount: %d, Rcount: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.timeval* ()* @run_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.timeval* @run_once() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = load i32*, i32** @pipes, align 8
  store i32* %5, i32** %1, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %39, %0
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @num_pipes, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %44

10:                                               ; preds = %6
  %11 = load i32*, i32** @events, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = call i64 @event_initialized(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32*, i32** @events, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = call i32 @event_del(i32* %19)
  br label %21

21:                                               ; preds = %16, %10
  %22 = load i32*, i32** @events, align 8
  %23 = load i64, i64* %3, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32*, i32** %1, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @EV_READ, align 4
  %29 = load i32, i32* @EV_PERSIST, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @read_cb, align 4
  %32 = load i64, i64* %3, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @event_set(i32* %24, i32 %27, i32 %30, i32 %31, i8* %33)
  %35 = load i32*, i32** @events, align 8
  %36 = load i64, i64* %3, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = call i32 @event_add(i32* %37, i32* null)
  br label %39

39:                                               ; preds = %21
  %40 = load i64, i64* %3, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %3, align 8
  %42 = load i32*, i32** %1, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %1, align 8
  br label %6

44:                                               ; preds = %6
  %45 = load i32, i32* @EVLOOP_ONCE, align 4
  %46 = load i32, i32* @EVLOOP_NONBLOCK, align 4
  %47 = or i32 %45, %46
  %48 = call i32 @event_loop(i32 %47)
  store i32 0, i32* @fired, align 4
  %49 = load i64, i64* @num_pipes, align 8
  %50 = load i64, i64* @num_active, align 8
  %51 = sdiv i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = mul nsw i32 %53, 2
  store i32 %54, i32* %2, align 4
  store i64 0, i64* %3, align 8
  br label %55

55:                                               ; preds = %69, %44
  %56 = load i64, i64* %3, align 8
  %57 = load i64, i64* @num_active, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load i32*, i32** @pipes, align 8
  %61 = load i64, i64* %3, align 8
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = mul nsw i64 %61, %63
  %65 = add nsw i64 %64, 1
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @send(i32 %67, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1, i32 0)
  br label %69

69:                                               ; preds = %59
  %70 = load i64, i64* %3, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %3, align 8
  %72 = load i32, i32* @fired, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* @fired, align 4
  br label %55

74:                                               ; preds = %55
  store i32 0, i32* @count, align 4
  %75 = load i32, i32* @num_writes, align 4
  store i32 %75, i32* @writes, align 4
  store i32 0, i32* %4, align 4
  %76 = call i32 @evutil_gettimeofday(%struct.timeval* @run_once.ts, i32* null)
  br label %77

77:                                               ; preds = %84, %74
  %78 = load i32, i32* @EVLOOP_ONCE, align 4
  %79 = load i32, i32* @EVLOOP_NONBLOCK, align 4
  %80 = or i32 %78, %79
  %81 = call i32 @event_loop(i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @count, align 4
  %86 = load i32, i32* @fired, align 4
  %87 = icmp ne i32 %85, %86
  br i1 %87, label %77, label %88

88:                                               ; preds = %84
  %89 = call i32 @evutil_gettimeofday(%struct.timeval* @run_once.te, i32* null)
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @count, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %88
  %94 = load i32, i32* @stderr, align 4
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @count, align 4
  %97 = call i32 @fprintf(i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %93, %88
  %99 = call i32 @evutil_timersub(%struct.timeval* @run_once.te, %struct.timeval* @run_once.ts, %struct.timeval* @run_once.te)
  ret %struct.timeval* @run_once.te
}

declare dso_local i64 @event_initialized(i32*) #1

declare dso_local i32 @event_del(i32*) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @event_add(i32*, i32*) #1

declare dso_local i32 @event_loop(i32) #1

declare dso_local i32 @send(i32, i8*, i32, i32) #1

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @evutil_timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
