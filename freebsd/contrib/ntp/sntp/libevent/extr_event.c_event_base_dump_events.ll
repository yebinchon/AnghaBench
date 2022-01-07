; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_base_dump_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_base_dump_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }

@th_base_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Inserted events:\0A\00", align 1
@dump_inserted_event_fn = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Active events:\0A\00", align 1
@dump_active_event_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_base_dump_events(%struct.event_base* %0, i32* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca i32*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.event_base*, %struct.event_base** %3, align 8
  %6 = load i32, i32* @th_base_lock, align 4
  %7 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %5, i32 %6)
  %8 = load i32*, i32** %4, align 8
  %9 = call i32 @fprintf(i32* %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.event_base*, %struct.event_base** %3, align 8
  %11 = load i32, i32* @dump_inserted_event_fn, align 4
  %12 = load i32*, i32** %4, align 8
  %13 = call i32 @event_base_foreach_event_nolock_(%struct.event_base* %10, i32 %11, i32* %12)
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @fprintf(i32* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.event_base*, %struct.event_base** %3, align 8
  %17 = load i32, i32* @dump_active_event_fn, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @event_base_foreach_event_nolock_(%struct.event_base* %16, i32 %17, i32* %18)
  %20 = load %struct.event_base*, %struct.event_base** %3, align 8
  %21 = load i32, i32* @th_base_lock, align 4
  %22 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %20, i32 %21)
  ret void
}

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i32 @event_base_foreach_event_nolock_(%struct.event_base*, i32, i32*) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
