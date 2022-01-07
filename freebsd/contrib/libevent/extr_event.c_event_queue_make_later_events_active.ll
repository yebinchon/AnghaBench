; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_queue_make_later_events_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_queue_make_later_events_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i64, i32, i32*, i32 }
%struct.event_callback = type { i32, i64, i64 }

@evcb_active_next = common dso_local global i32 0, align 4
@EVLIST_ACTIVE_LATER = common dso_local global i32 0, align 4
@EVLIST_ACTIVE = common dso_local global i32 0, align 4
@EV_CLOSURE_CB_SELF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_base*)* @event_queue_make_later_events_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_queue_make_later_events_active(%struct.event_base* %0) #0 {
  %2 = alloca %struct.event_base*, align 8
  %3 = alloca %struct.event_callback*, align 8
  store %struct.event_base* %0, %struct.event_base** %2, align 8
  %4 = load %struct.event_base*, %struct.event_base** %2, align 8
  %5 = call i32 @EVENT_BASE_ASSERT_LOCKED(%struct.event_base* %4)
  br label %6

6:                                                ; preds = %11, %1
  %7 = load %struct.event_base*, %struct.event_base** %2, align 8
  %8 = getelementptr inbounds %struct.event_base, %struct.event_base* %7, i32 0, i32 3
  %9 = call %struct.event_callback* @TAILQ_FIRST(i32* %8)
  store %struct.event_callback* %9, %struct.event_callback** %3, align 8
  %10 = icmp ne %struct.event_callback* %9, null
  br i1 %10, label %11, label %56

11:                                               ; preds = %6
  %12 = load %struct.event_base*, %struct.event_base** %2, align 8
  %13 = getelementptr inbounds %struct.event_base, %struct.event_base* %12, i32 0, i32 3
  %14 = load %struct.event_callback*, %struct.event_callback** %3, align 8
  %15 = load i32, i32* @evcb_active_next, align 4
  %16 = call i32 @TAILQ_REMOVE(i32* %13, %struct.event_callback* %14, i32 %15)
  %17 = load %struct.event_callback*, %struct.event_callback** %3, align 8
  %18 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @EVLIST_ACTIVE_LATER, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load i32, i32* @EVLIST_ACTIVE, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.event_callback*, %struct.event_callback** %3, align 8
  %26 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.event_callback*, %struct.event_callback** %3, align 8
  %28 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.event_base*, %struct.event_base** %2, align 8
  %31 = getelementptr inbounds %struct.event_base, %struct.event_base* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ult i64 %29, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @EVUTIL_ASSERT(i32 %34)
  %36 = load %struct.event_base*, %struct.event_base** %2, align 8
  %37 = getelementptr inbounds %struct.event_base, %struct.event_base* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.event_callback*, %struct.event_callback** %3, align 8
  %40 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load %struct.event_callback*, %struct.event_callback** %3, align 8
  %44 = load i32, i32* @evcb_active_next, align 4
  %45 = call i32 @TAILQ_INSERT_TAIL(i32* %42, %struct.event_callback* %43, i32 %44)
  %46 = load %struct.event_callback*, %struct.event_callback** %3, align 8
  %47 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EV_CLOSURE_CB_SELF, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load %struct.event_base*, %struct.event_base** %2, align 8
  %53 = getelementptr inbounds %struct.event_base, %struct.event_base* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %6

56:                                               ; preds = %6
  ret void
}

declare dso_local i32 @EVENT_BASE_ASSERT_LOCKED(%struct.event_base*) #1

declare dso_local %struct.event_callback* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.event_callback*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.event_callback*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
