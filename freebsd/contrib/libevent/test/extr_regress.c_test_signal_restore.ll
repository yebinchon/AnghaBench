; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_test_signal_restore.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_test_signal_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }
%struct.event_base = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@signal_cb_sa = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@signal_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_signal_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_signal_restore() #0 {
  %1 = alloca %struct.event, align 4
  %2 = alloca %struct.event_base*, align 8
  %3 = call %struct.event_base* (...) @event_init()
  store %struct.event_base* %3, %struct.event_base** %2, align 8
  store i32 0, i32* @test_ok, align 4
  %4 = load i32, i32* @SIGUSR1, align 4
  %5 = load i32, i32* @signal_cb_sa, align 4
  %6 = call i64 @signal(i32 %4, i32 %5)
  %7 = load i64, i64* @SIG_ERR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %22

10:                                               ; preds = %0
  %11 = load i32, i32* @SIGUSR1, align 4
  %12 = load i32, i32* @signal_cb, align 4
  %13 = call i32 @evsignal_set(%struct.event* %1, i32 %11, i32 %12, %struct.event* %1)
  %14 = call i32 @evsignal_add(%struct.event* %1, i32* null)
  %15 = call i32 @evsignal_del(%struct.event* %1)
  %16 = load i32, i32* @SIGUSR1, align 4
  %17 = call i32 @raise(i32 %16)
  %18 = load i32, i32* @test_ok, align 4
  %19 = icmp ne i32 %18, 2
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  store i32 0, i32* @test_ok, align 4
  br label %21

21:                                               ; preds = %20, %10
  br label %22

22:                                               ; preds = %21, %9
  %23 = load %struct.event_base*, %struct.event_base** %2, align 8
  %24 = call i32 @event_base_free(%struct.event_base* %23)
  %25 = call i32 (...) @cleanup_test()
  ret void
}

declare dso_local %struct.event_base* @event_init(...) #1

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @evsignal_set(%struct.event*, i32, i32, %struct.event*) #1

declare dso_local i32 @evsignal_add(%struct.event*, i32*) #1

declare dso_local i32 @evsignal_del(%struct.event*) #1

declare dso_local i32 @raise(i32) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @cleanup_test(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
