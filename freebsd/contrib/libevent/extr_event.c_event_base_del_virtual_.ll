; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_base_del_virtual_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_base_del_virtual_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i64 }

@th_base_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_base_del_virtual_(%struct.event_base* %0) #0 {
  %2 = alloca %struct.event_base*, align 8
  store %struct.event_base* %0, %struct.event_base** %2, align 8
  %3 = load %struct.event_base*, %struct.event_base** %2, align 8
  %4 = load i32, i32* @th_base_lock, align 4
  %5 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %3, i32 %4)
  %6 = load %struct.event_base*, %struct.event_base** %2, align 8
  %7 = getelementptr inbounds %struct.event_base, %struct.event_base* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @EVUTIL_ASSERT(i32 %10)
  %12 = load %struct.event_base*, %struct.event_base** %2, align 8
  %13 = getelementptr inbounds %struct.event_base, %struct.event_base* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, -1
  store i64 %15, i64* %13, align 8
  %16 = load %struct.event_base*, %struct.event_base** %2, align 8
  %17 = getelementptr inbounds %struct.event_base, %struct.event_base* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.event_base*, %struct.event_base** %2, align 8
  %22 = call i64 @EVBASE_NEED_NOTIFY(%struct.event_base* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load %struct.event_base*, %struct.event_base** %2, align 8
  %26 = call i32 @evthread_notify_base(%struct.event_base* %25)
  br label %27

27:                                               ; preds = %24, %20, %1
  %28 = load %struct.event_base*, %struct.event_base** %2, align 8
  %29 = load i32, i32* @th_base_lock, align 4
  %30 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %28, i32 %29)
  ret void
}

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i64 @EVBASE_NEED_NOTIFY(%struct.event_base*) #1

declare dso_local i32 @evthread_notify_base(%struct.event_base*) #1

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
