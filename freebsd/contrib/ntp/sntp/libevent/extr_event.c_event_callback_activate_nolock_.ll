; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_callback_activate_nolock_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_callback_activate_nolock_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event_callback = type { i32 }

@EVLIST_FINALIZING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_callback_activate_nolock_(%struct.event_base* %0, %struct.event_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.event_callback*, align 8
  %6 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store %struct.event_callback* %1, %struct.event_callback** %5, align 8
  store i32 1, i32* %6, align 4
  %7 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %8 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EVLIST_FINALIZING, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %16 = getelementptr inbounds %struct.event_callback, %struct.event_callback* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 129
  switch i32 %18, label %19 [
    i32 128, label %21
    i32 129, label %25
    i32 0, label %26
  ]

19:                                               ; preds = %14
  %20 = call i32 @EVUTIL_ASSERT(i32 0)
  br label %21

21:                                               ; preds = %14, %19
  %22 = load %struct.event_base*, %struct.event_base** %4, align 8
  %23 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %24 = call i32 @event_queue_remove_active_later(%struct.event_base* %22, %struct.event_callback* %23)
  store i32 0, i32* %6, align 4
  br label %27

25:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %39

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %21
  %28 = load %struct.event_base*, %struct.event_base** %4, align 8
  %29 = load %struct.event_callback*, %struct.event_callback** %5, align 8
  %30 = call i32 @event_queue_insert_active(%struct.event_base* %28, %struct.event_callback* %29)
  %31 = load %struct.event_base*, %struct.event_base** %4, align 8
  %32 = call i64 @EVBASE_NEED_NOTIFY(%struct.event_base* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.event_base*, %struct.event_base** %4, align 8
  %36 = call i32 @evthread_notify_base(%struct.event_base* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %25, %13
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @event_queue_remove_active_later(%struct.event_base*, %struct.event_callback*) #1

declare dso_local i32 @event_queue_insert_active(%struct.event_base*, %struct.event_callback*) #1

declare dso_local i64 @EVBASE_NEED_NOTIFY(%struct.event_base*) #1

declare dso_local i32 @evthread_notify_base(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
