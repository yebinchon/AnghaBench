; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event.c_ub_event_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event.c_ub_event_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_event = type { i32 }
%struct.ub_event_base = type { i32 }
%struct.event = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ub_event* @ub_event_new(%struct.ub_event_base* %0, i32 %1, i16 signext %2, void (i32, i16, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.ub_event*, align 8
  %7 = alloca %struct.ub_event_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca void (i32, i16, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.event*, align 8
  store %struct.ub_event_base* %0, %struct.ub_event_base** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store void (i32, i16, i8*)* %3, void (i32, i16, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = call i64 @calloc(i32 1, i32 4)
  %14 = inttoptr i64 %13 to %struct.event*
  store %struct.event* %14, %struct.event** %12, align 8
  %15 = load %struct.event*, %struct.event** %12, align 8
  %16 = icmp ne %struct.event* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.ub_event* null, %struct.ub_event** %6, align 8
  br label %38

18:                                               ; preds = %5
  %19 = load %struct.event*, %struct.event** %12, align 8
  %20 = load i32, i32* %8, align 4
  %21 = load i16, i16* %9, align 2
  %22 = call i32 @NATIVE_BITS(i16 signext %21)
  %23 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %10, align 8
  %24 = call i32 @NATIVE_BITS_CB(void (i32, i16, i8*)* %23)
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @event_set(%struct.event* %19, i32 %20, i32 %22, i32 %24, i8* %25)
  %27 = load %struct.ub_event_base*, %struct.ub_event_base** %7, align 8
  %28 = call i32 @AS_EVENT_BASE(%struct.ub_event_base* %27)
  %29 = load %struct.event*, %struct.event** %12, align 8
  %30 = call i64 @event_base_set(i32 %28, %struct.event* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %18
  %33 = load %struct.event*, %struct.event** %12, align 8
  %34 = call i32 @free(%struct.event* %33)
  store %struct.ub_event* null, %struct.ub_event** %6, align 8
  br label %38

35:                                               ; preds = %18
  %36 = load %struct.event*, %struct.event** %12, align 8
  %37 = call %struct.ub_event* @AS_UB_EVENT(%struct.event* %36)
  store %struct.ub_event* %37, %struct.ub_event** %6, align 8
  br label %38

38:                                               ; preds = %35, %32, %17
  %39 = load %struct.ub_event*, %struct.ub_event** %6, align 8
  ret %struct.ub_event* %39
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @event_set(%struct.event*, i32, i32, i32, i8*) #1

declare dso_local i32 @NATIVE_BITS(i16 signext) #1

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
