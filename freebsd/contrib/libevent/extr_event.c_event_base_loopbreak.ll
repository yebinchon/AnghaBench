; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_base_loopbreak.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_base_loopbreak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }

@th_base_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_base_loopbreak(%struct.event_base* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.event_base*, %struct.event_base** %3, align 8
  %6 = icmp eq %struct.event_base* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %26

8:                                                ; preds = %1
  %9 = load %struct.event_base*, %struct.event_base** %3, align 8
  %10 = load i32, i32* @th_base_lock, align 4
  %11 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %9, i32 %10)
  %12 = load %struct.event_base*, %struct.event_base** %3, align 8
  %13 = getelementptr inbounds %struct.event_base, %struct.event_base* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.event_base*, %struct.event_base** %3, align 8
  %15 = call i64 @EVBASE_NEED_NOTIFY(%struct.event_base* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load %struct.event_base*, %struct.event_base** %3, align 8
  %19 = call i32 @evthread_notify_base(%struct.event_base* %18)
  store i32 %19, i32* %4, align 4
  br label %21

20:                                               ; preds = %8
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %20, %17
  %22 = load %struct.event_base*, %struct.event_base** %3, align 8
  %23 = load i32, i32* @th_base_lock, align 4
  %24 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %21, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i64 @EVBASE_NEED_NOTIFY(%struct.event_base*) #1

declare dso_local i32 @evthread_notify_base(%struct.event_base*) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
