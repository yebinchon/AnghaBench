; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event.c_ub_signal_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event.c_ub_signal_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_event = type { i32 }
%struct.ub_event_base = type { i32 }
%struct.event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ub_event* @ub_signal_new(%struct.ub_event_base* %0, i32 %1, void (i32, i16, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.ub_event*, align 8
  %6 = alloca %struct.ub_event_base*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i32, i16, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.event*, align 8
  store %struct.ub_event_base* %0, %struct.ub_event_base** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (i32, i16, i8*)* %2, void (i32, i16, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call i64 @calloc(i32 1, i32 4)
  %12 = inttoptr i64 %11 to %struct.event*
  store %struct.event* %12, %struct.event** %10, align 8
  %13 = load %struct.event*, %struct.event** %10, align 8
  %14 = icmp ne %struct.event* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.ub_event* null, %struct.ub_event** %5, align 8
  br label %34

16:                                               ; preds = %4
  %17 = load %struct.event*, %struct.event** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %8, align 8
  %20 = call i32 @NATIVE_BITS_CB(void (i32, i16, i8*)* %19)
  %21 = load i8*, i8** %9, align 8
  %22 = call i32 @signal_set(%struct.event* %17, i32 %18, i32 %20, i8* %21)
  %23 = load %struct.ub_event_base*, %struct.ub_event_base** %6, align 8
  %24 = call i32 @AS_EVENT_BASE(%struct.ub_event_base* %23)
  %25 = load %struct.event*, %struct.event** %10, align 8
  %26 = call i64 @event_base_set(i32 %24, %struct.event* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load %struct.event*, %struct.event** %10, align 8
  %30 = call i32 @free(%struct.event* %29)
  store %struct.ub_event* null, %struct.ub_event** %5, align 8
  br label %34

31:                                               ; preds = %16
  %32 = load %struct.event*, %struct.event** %10, align 8
  %33 = call %struct.ub_event* @AS_UB_EVENT(%struct.event* %32)
  store %struct.ub_event* %33, %struct.ub_event** %5, align 8
  br label %34

34:                                               ; preds = %31, %28, %15
  %35 = load %struct.ub_event*, %struct.ub_event** %5, align 8
  ret %struct.ub_event* %35
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @signal_set(%struct.event*, i32, i32, i8*) #1

declare dso_local i32 @NATIVE_BITS_CB(void (i32, i16, i8*)*) #1

declare dso_local i64 @event_base_set(i32, %struct.event*) #1

declare dso_local i32 @AS_EVENT_BASE(%struct.ub_event_base*) #1

declare dso_local i32 @free(%struct.event*) #1

declare dso_local %struct.ub_event* @AS_UB_EVENT(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
