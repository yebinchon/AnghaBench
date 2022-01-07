; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-changelist.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-changelist.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.event_base = type { i32 }
%struct.timeval = type { i32, i32 }
%struct.cpu_usage_timer = type { i32 }

@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@timeout_cb = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EV_PERSIST = common dso_local global i32 0, align 4
@write_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"usec used=%d, usec passed=%d, cpu usage=%.2f%%\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event*, align 8
  %7 = alloca %struct.event*, align 8
  %8 = alloca %struct.event_base*, align 8
  %9 = alloca [2 x i32], align 4
  %10 = alloca %struct.timeval, align 4
  %11 = alloca %struct.cpu_usage_timer, align 4
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* @AF_UNIX, align 4
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %18 = call i32 @evutil_socketpair(i32 %15, i32 %16, i32 0, i32* %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %66

21:                                               ; preds = %2
  %22 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %22, %struct.event_base** %8, align 8
  %23 = icmp ne %struct.event_base* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %66

25:                                               ; preds = %21
  %26 = load %struct.event_base*, %struct.event_base** %8, align 8
  %27 = load i32, i32* @timeout_cb, align 4
  %28 = call %struct.event* @evtimer_new(%struct.event_base* %26, i32 %27, %struct.event** %7)
  store %struct.event* %28, %struct.event** %7, align 8
  %29 = load %struct.event_base*, %struct.event_base** %8, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @EV_WRITE, align 4
  %33 = load i32, i32* @EV_PERSIST, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @write_cb, align 4
  %36 = call %struct.event* @event_new(%struct.event_base* %29, i32 %31, i32 %34, i32 %35, %struct.event** %6)
  store %struct.event* %36, %struct.event** %6, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i32 1, i32* %37, align 4
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i32 500000, i32* %38, align 4
  %39 = load %struct.event*, %struct.event** %7, align 8
  %40 = call i32 @evtimer_add(%struct.event* %39, %struct.timeval* %10)
  %41 = load %struct.event*, %struct.event** %6, align 8
  %42 = call i32 @event_add(%struct.event* %41, i32* null)
  %43 = call i32 @start_cpu_usage_timer(%struct.cpu_usage_timer* %11)
  %44 = load %struct.event_base*, %struct.event_base** %8, align 8
  %45 = call i32 @event_base_dispatch(%struct.event_base* %44)
  %46 = load %struct.event*, %struct.event** %6, align 8
  %47 = call i32 @event_free(%struct.event* %46)
  %48 = load %struct.event*, %struct.event** %7, align 8
  %49 = call i32 @event_free(%struct.event* %48)
  %50 = load %struct.event_base*, %struct.event_base** %8, align 8
  %51 = call i32 @event_base_free(%struct.event_base* %50)
  %52 = call i32 @get_cpu_usage(%struct.cpu_usage_timer* %11, double* %13, double* %14, double* %12)
  %53 = load double, double* %14, align 8
  %54 = fmul double %53, 1.000000e+06
  %55 = fptosi double %54 to i32
  %56 = load double, double* %13, align 8
  %57 = fmul double %56, 1.000000e+06
  %58 = fptosi double %57 to i32
  %59 = load double, double* %12, align 8
  %60 = fmul double %59, 1.000000e+02
  %61 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, double %60)
  %62 = load double, double* %12, align 8
  %63 = fcmp ogt double %62, 5.000000e+01
  br i1 %63, label %64, label %65

64:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %66

65:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %24, %20
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @evutil_socketpair(i32, i32, i32, i32*) #1

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local %struct.event* @evtimer_new(%struct.event_base*, i32, %struct.event**) #1

declare dso_local %struct.event* @event_new(%struct.event_base*, i32, i32, i32, %struct.event**) #1

declare dso_local i32 @evtimer_add(%struct.event*, %struct.timeval*) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

declare dso_local i32 @start_cpu_usage_timer(%struct.cpu_usage_timer*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

declare dso_local i32 @event_free(%struct.event*) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @get_cpu_usage(%struct.cpu_usage_timer*, double*, double*, double*) #1

declare dso_local i32 @printf(i8*, i32, i32, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
