; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_base_active_by_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_base_active_by_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }

@th_base_lock = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i16 0, align 2
@EV_CLOSED = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_base_active_by_fd(%struct.event_base* %0, i32 %1, i16 signext %2) #0 {
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %7 = load %struct.event_base*, %struct.event_base** %4, align 8
  %8 = load i32, i32* @th_base_lock, align 4
  %9 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %7, i32 %8)
  %10 = load %struct.event_base*, %struct.event_base** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i16, i16* %6, align 2
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* @EV_READ, align 2
  %15 = sext i16 %14 to i32
  %16 = load i16, i16* @EV_WRITE, align 2
  %17 = sext i16 %16 to i32
  %18 = or i32 %15, %17
  %19 = load i16, i16* @EV_CLOSED, align 2
  %20 = sext i16 %19 to i32
  %21 = or i32 %18, %20
  %22 = and i32 %13, %21
  %23 = trunc i32 %22 to i16
  %24 = call i32 @evmap_io_active_(%struct.event_base* %10, i32 %11, i16 signext %23)
  %25 = load %struct.event_base*, %struct.event_base** %4, align 8
  %26 = load i32, i32* @th_base_lock, align 4
  %27 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %25, i32 %26)
  ret void
}

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @evmap_io_active_(%struct.event_base*, i32, i16 signext) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
