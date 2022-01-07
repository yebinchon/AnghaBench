; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_my_signal_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_my_signal_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_event = type { i32*, i32 }
%struct.ub_event_base = type { i32 }
%struct.my_event = type { %struct.ub_event, i32 }
%struct.TYPE_2__ = type { i32 }

@UB_EVENT_MAGIC = common dso_local global i32 0, align 4
@default_event_vmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_event* (%struct.ub_event_base*, i32, void (i32, i16, i8*)*, i8*)* @my_signal_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_event* @my_signal_new(%struct.ub_event_base* %0, i32 %1, void (i32, i16, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.ub_event*, align 8
  %6 = alloca %struct.ub_event_base*, align 8
  %7 = alloca i32, align 4
  %8 = alloca void (i32, i16, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.my_event*, align 8
  store %struct.ub_event_base* %0, %struct.ub_event_base** %6, align 8
  store i32 %1, i32* %7, align 4
  store void (i32, i16, i8*)* %2, void (i32, i16, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = call i64 @calloc(i32 1, i32 24)
  %12 = inttoptr i64 %11 to %struct.my_event*
  store %struct.my_event* %12, %struct.my_event** %10, align 8
  %13 = load %struct.my_event*, %struct.my_event** %10, align 8
  %14 = icmp ne %struct.my_event* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  store %struct.ub_event* null, %struct.ub_event** %5, align 8
  br label %45

16:                                               ; preds = %4
  %17 = load %struct.my_event*, %struct.my_event** %10, align 8
  %18 = getelementptr inbounds %struct.my_event, %struct.my_event* %17, i32 0, i32 1
  %19 = load i32, i32* %7, align 4
  %20 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %8, align 8
  %21 = call i32 @NATIVE_BITS_CB(void (i32, i16, i8*)* %20)
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @signal_set(i32* %18, i32 %19, i32 %21, i8* %22)
  %24 = load %struct.ub_event_base*, %struct.ub_event_base** %6, align 8
  %25 = call %struct.TYPE_2__* @AS_MY_EVENT_BASE(%struct.ub_event_base* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.my_event*, %struct.my_event** %10, align 8
  %29 = getelementptr inbounds %struct.my_event, %struct.my_event* %28, i32 0, i32 1
  %30 = call i64 @event_base_set(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %16
  %33 = load %struct.my_event*, %struct.my_event** %10, align 8
  %34 = call i32 @free(%struct.my_event* %33)
  store %struct.ub_event* null, %struct.ub_event** %5, align 8
  br label %45

35:                                               ; preds = %16
  %36 = load i32, i32* @UB_EVENT_MAGIC, align 4
  %37 = load %struct.my_event*, %struct.my_event** %10, align 8
  %38 = getelementptr inbounds %struct.my_event, %struct.my_event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.my_event*, %struct.my_event** %10, align 8
  %41 = getelementptr inbounds %struct.my_event, %struct.my_event* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %41, i32 0, i32 0
  store i32* @default_event_vmt, i32** %42, align 8
  %43 = load %struct.my_event*, %struct.my_event** %10, align 8
  %44 = getelementptr inbounds %struct.my_event, %struct.my_event* %43, i32 0, i32 0
  store %struct.ub_event* %44, %struct.ub_event** %5, align 8
  br label %45

45:                                               ; preds = %35, %32, %15
  %46 = load %struct.ub_event*, %struct.ub_event** %5, align 8
  ret %struct.ub_event* %46
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @signal_set(i32*, i32, i32, i8*) #1

declare dso_local i32 @NATIVE_BITS_CB(void (i32, i16, i8*)*) #1

declare dso_local i64 @event_base_set(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @AS_MY_EVENT_BASE(%struct.ub_event_base*) #1

declare dso_local i32 @free(%struct.my_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
