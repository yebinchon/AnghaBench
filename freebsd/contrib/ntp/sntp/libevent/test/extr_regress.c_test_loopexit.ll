; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_test_loopexit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_test_loopexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.event = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"Loop exit: \00", align 1
@timeout_cb = common dso_local global i32 0, align 4
@global_base = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_loopexit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_loopexit() #0 {
  %1 = alloca %struct.timeval, align 4
  %2 = alloca %struct.timeval, align 4
  %3 = alloca %struct.timeval, align 4
  %4 = alloca %struct.event, align 4
  %5 = call i32 @setup_test(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %6 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  store i32 86400, i32* %7, align 4
  %8 = load i32, i32* @timeout_cb, align 4
  %9 = call i32 @evtimer_set(%struct.event* %4, i32 %8, i32* null)
  %10 = call i32 @evtimer_add(%struct.event* %4, %struct.timeval* %1)
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 0
  store i32 300000, i32* %11, align 4
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %1, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = call i32 @event_loopexit(%struct.timeval* %1)
  %14 = call i32 @evutil_gettimeofday(%struct.timeval* %2, i32* null)
  %15 = call i32 (...) @event_dispatch()
  %16 = call i32 @evutil_gettimeofday(%struct.timeval* %3, i32* null)
  %17 = call i32 @evtimer_del(%struct.event* %4)
  %18 = load i32, i32* @global_base, align 4
  %19 = call i32 @event_base_got_exit(i32 %18)
  %20 = call i32 @tt_assert(i32 %19)
  %21 = load i32, i32* @global_base, align 4
  %22 = call i32 @event_base_got_break(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @tt_assert(i32 %25)
  %27 = call i32 @test_timeval_diff_eq(%struct.timeval* %2, %struct.timeval* %3, i32 300)
  store i32 1, i32* @test_ok, align 4
  br label %28

28:                                               ; preds = %0
  %29 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local i32 @setup_test(i8*) #1

declare dso_local i32 @evtimer_set(%struct.event*, i32, i32*) #1

declare dso_local i32 @evtimer_add(%struct.event*, %struct.timeval*) #1

declare dso_local i32 @event_loopexit(%struct.timeval*) #1

declare dso_local i32 @evutil_gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @evtimer_del(%struct.event*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @event_base_got_exit(i32) #1

declare dso_local i32 @event_base_got_break(i32) #1

declare dso_local i32 @test_timeval_diff_eq(%struct.timeval*, %struct.timeval*, i32) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
