; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evmap.c_evmap_foreach_event_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evmap.c_evmap_foreach_event_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.evmap_foreach_event_helper = type { i8*, i32 }

@evmap_io_foreach_event_fn = common dso_local global i32 0, align 4
@evmap_signal_foreach_event_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evmap_foreach_event_(%struct.event_base* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.evmap_foreach_event_helper, align 8
  %9 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = getelementptr inbounds %struct.evmap_foreach_event_helper, %struct.evmap_foreach_event_helper* %8, i32 0, i32 1
  store i32 %10, i32* %11, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr inbounds %struct.evmap_foreach_event_helper, %struct.evmap_foreach_event_helper* %8, i32 0, i32 0
  store i8* %12, i8** %13, align 8
  %14 = load %struct.event_base*, %struct.event_base** %5, align 8
  %15 = load i32, i32* @evmap_io_foreach_event_fn, align 4
  %16 = call i32 @evmap_io_foreach_fd(%struct.event_base* %14, i32 %15, %struct.evmap_foreach_event_helper* %8)
  store i32 %16, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %4, align 4
  br label %24

20:                                               ; preds = %3
  %21 = load %struct.event_base*, %struct.event_base** %5, align 8
  %22 = load i32, i32* @evmap_signal_foreach_event_fn, align 4
  %23 = call i32 @evmap_signal_foreach_signal(%struct.event_base* %21, i32 %22, %struct.evmap_foreach_event_helper* %8)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %20, %18
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @evmap_io_foreach_fd(%struct.event_base*, i32, %struct.evmap_foreach_event_helper*) #1

declare dso_local i32 @evmap_signal_foreach_signal(%struct.event_base*, i32, %struct.evmap_foreach_event_helper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
