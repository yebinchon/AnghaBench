; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_test_simpletimeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_test_simpletimeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }
%struct.event = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Simple timeout: \00", align 1
@tcalled = common dso_local global i32 0, align 4
@timeout_cb = common dso_local global i32 0, align 4
@tset = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_simpletimeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_simpletimeout() #0 {
  %1 = alloca %struct.timeval, align 8
  %2 = alloca %struct.event, align 4
  %3 = call i32 @setup_test(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %4 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  store i32 200000, i32* %4, align 8
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = call i32 @evutil_timerclear(i32* @tcalled)
  %7 = load i32, i32* @timeout_cb, align 4
  %8 = call i32 @evtimer_set(%struct.event* %2, i32 %7, i32* null)
  %9 = call i32 @evtimer_add(%struct.event* %2, %struct.timeval* %1)
  %10 = call i32 @evutil_gettimeofday(i32* @tset, i32* null)
  %11 = call i32 (...) @event_dispatch()
  %12 = call i32 @test_timeval_diff_eq(i32* @tset, i32* @tcalled, i32 200)
  store i32 1, i32* @test_ok, align 4
  br label %13

13:                                               ; preds = %0
  %14 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local i32 @setup_test(i8*) #1

declare dso_local i32 @evutil_timerclear(i32*) #1

declare dso_local i32 @evtimer_set(%struct.event*, i32, i32*) #1

declare dso_local i32 @evtimer_add(%struct.event*, %struct.timeval*) #1

declare dso_local i32 @evutil_gettimeofday(i32*, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @test_timeval_diff_eq(i32*, i32*, i32) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
