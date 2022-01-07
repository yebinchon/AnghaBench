; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_active.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32, i32, i16, i32, i32* }

@EVLIST_ACTIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_active(%struct.event* %0, i32 %1, i16 signext %2) #0 {
  %4 = alloca %struct.event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  store %struct.event* %0, %struct.event** %4, align 8
  store i32 %1, i32* %5, align 4
  store i16 %2, i16* %6, align 2
  %7 = load %struct.event*, %struct.event** %4, align 8
  %8 = getelementptr inbounds %struct.event, %struct.event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @EVLIST_ACTIVE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.event*, %struct.event** %4, align 8
  %16 = getelementptr inbounds %struct.event, %struct.event* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.event*, %struct.event** %4, align 8
  %22 = getelementptr inbounds %struct.event, %struct.event* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load i16, i16* %6, align 2
  %24 = load %struct.event*, %struct.event** %4, align 8
  %25 = getelementptr inbounds %struct.event, %struct.event* %24, i32 0, i32 2
  store i16 %23, i16* %25, align 8
  %26 = load %struct.event*, %struct.event** %4, align 8
  %27 = getelementptr inbounds %struct.event, %struct.event* %26, i32 0, i32 4
  store i32* null, i32** %27, align 8
  %28 = load %struct.event*, %struct.event** %4, align 8
  %29 = getelementptr inbounds %struct.event, %struct.event* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.event*, %struct.event** %4, align 8
  %32 = load i32, i32* @EVLIST_ACTIVE, align 4
  %33 = call i32 @event_queue_insert(i32 %30, %struct.event* %31, i32 %32)
  br label %34

34:                                               ; preds = %19, %13
  ret void
}

declare dso_local i32 @event_queue_insert(i32, %struct.event*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
