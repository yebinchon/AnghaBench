; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_test_signal_while_processing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress.c_test_signal_while_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event = type { i32 }
%struct.timeval = type { i32, i32 }

@.str = private unnamed_addr constant [51 x i8] c"Receiving a signal while processing other signal: \00", align 1
@called = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@signal_cb_swp = common dso_local global i32 0, align 4
@timeout_cb_swp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_signal_while_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_signal_while_processing() #0 {
  %1 = alloca %struct.event_base*, align 8
  %2 = alloca %struct.event, align 4
  %3 = alloca %struct.event, align 4
  %4 = alloca %struct.timeval, align 4
  %5 = call %struct.event_base* (...) @event_init()
  store %struct.event_base* %5, %struct.event_base** %1, align 8
  %6 = bitcast %struct.timeval* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 8, i1 false)
  %7 = call i32 @setup_test(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* @called, align 4
  store i32 1, i32* @test_ok, align 4
  %8 = load i32, i32* @SIGUSR1, align 4
  %9 = load i32, i32* @signal_cb_swp, align 4
  %10 = call i32 @signal_set(%struct.event* %2, i32 %8, i32 %9, i32* null)
  %11 = call i32 @signal_add(%struct.event* %2, i32* null)
  %12 = load i32, i32* @timeout_cb_swp, align 4
  %13 = call i32 @evtimer_set(%struct.event* %3, i32 %12, %struct.event* %3)
  %14 = call i32 @evtimer_add(%struct.event* %3, %struct.timeval* %4)
  %15 = call i32 (...) @event_dispatch()
  %16 = load %struct.event_base*, %struct.event_base** %1, align 8
  %17 = call i32 @event_base_free(%struct.event_base* %16)
  %18 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local %struct.event_base* @event_init(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @setup_test(i8*) #1

declare dso_local i32 @signal_set(%struct.event*, i32, i32, i32*) #1

declare dso_local i32 @signal_add(%struct.event*, i32*) #1

declare dso_local i32 @evtimer_set(%struct.event*, i32, %struct.event*) #1

declare dso_local i32 @evtimer_add(%struct.event*, %struct.timeval*) #1

declare dso_local i32 @event_dispatch(...) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
