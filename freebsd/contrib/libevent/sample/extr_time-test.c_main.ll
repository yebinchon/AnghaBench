; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_time-test.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_time-test.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.timeval = type { i32 }
%struct.event_base = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@event_is_persistent = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@timeout_cb = common dso_local global i32 0, align 4
@lasttime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event, align 4
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.event_base*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i8**, i8*** %5, align 8
  %14 = getelementptr inbounds i8*, i8** %13, i64 1
  %15 = load i8*, i8** %14, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  store i32 1, i32* @event_is_persistent, align 4
  %19 = load i32, i32* @EV_PERSIST, align 4
  store i32 %19, i32* %9, align 4
  br label %21

20:                                               ; preds = %12, %2
  store i32 0, i32* @event_is_persistent, align 4
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %22, %struct.event_base** %8, align 8
  %23 = load %struct.event_base*, %struct.event_base** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @timeout_cb, align 4
  %26 = bitcast %struct.event* %6 to i8*
  %27 = call i32 @event_assign(%struct.event* %6, %struct.event_base* %23, i32 -1, i32 %24, i32 %25, i8* %26)
  %28 = call i32 @evutil_timerclear(%struct.timeval* %7)
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 2, i32* %29, align 4
  %30 = call i32 @event_add(%struct.event* %6, %struct.timeval* %7)
  %31 = call i32 @evutil_gettimeofday(i32* @lasttime, i32* null)
  %32 = load %struct.event_base*, %struct.event_base** %8, align 8
  %33 = call i32 @event_base_dispatch(%struct.event_base* %32)
  ret i32 0
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local i32 @event_assign(%struct.event*, %struct.event_base*, i32, i32, i32, i8*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_add(%struct.event*, %struct.timeval*) #1

declare dso_local i32 @evutil_gettimeofday(i32*, i32*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
