; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_my_event_new.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_my_event_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_event = type { i32*, i32 }
%struct.ub_event_base = type { i32 }
%struct.my_event = type { %struct.ub_event, i32 }
%struct.TYPE_2__ = type { i32 }

@UB_EVENT_MAGIC = common dso_local global i32 0, align 4
@default_event_vmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ub_event* (%struct.ub_event_base*, i32, i16, void (i32, i16, i8*)*, i8*)* @my_event_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ub_event* @my_event_new(%struct.ub_event_base* %0, i32 %1, i16 signext %2, void (i32, i16, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.ub_event*, align 8
  %7 = alloca %struct.ub_event_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca void (i32, i16, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.my_event*, align 8
  store %struct.ub_event_base* %0, %struct.ub_event_base** %7, align 8
  store i32 %1, i32* %8, align 4
  store i16 %2, i16* %9, align 2
  store void (i32, i16, i8*)* %3, void (i32, i16, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  %13 = call i64 @calloc(i32 1, i32 24)
  %14 = inttoptr i64 %13 to %struct.my_event*
  store %struct.my_event* %14, %struct.my_event** %12, align 8
  %15 = load %struct.my_event*, %struct.my_event** %12, align 8
  %16 = icmp ne %struct.my_event* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store %struct.ub_event* null, %struct.ub_event** %6, align 8
  br label %49

18:                                               ; preds = %5
  %19 = load %struct.my_event*, %struct.my_event** %12, align 8
  %20 = getelementptr inbounds %struct.my_event, %struct.my_event* %19, i32 0, i32 1
  %21 = load i32, i32* %8, align 4
  %22 = load i16, i16* %9, align 2
  %23 = call i32 @NATIVE_BITS(i16 signext %22)
  %24 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %10, align 8
  %25 = call i32 @NATIVE_BITS_CB(void (i32, i16, i8*)* %24)
  %26 = load i8*, i8** %11, align 8
  %27 = call i32 @event_set(i32* %20, i32 %21, i32 %23, i32 %25, i8* %26)
  %28 = load %struct.ub_event_base*, %struct.ub_event_base** %7, align 8
  %29 = call %struct.TYPE_2__* @AS_MY_EVENT_BASE(%struct.ub_event_base* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.my_event*, %struct.my_event** %12, align 8
  %33 = getelementptr inbounds %struct.my_event, %struct.my_event* %32, i32 0, i32 1
  %34 = call i64 @event_base_set(i32 %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %18
  %37 = load %struct.my_event*, %struct.my_event** %12, align 8
  %38 = call i32 @free(%struct.my_event* %37)
  store %struct.ub_event* null, %struct.ub_event** %6, align 8
  br label %49

39:                                               ; preds = %18
  %40 = load i32, i32* @UB_EVENT_MAGIC, align 4
  %41 = load %struct.my_event*, %struct.my_event** %12, align 8
  %42 = getelementptr inbounds %struct.my_event, %struct.my_event* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %42, i32 0, i32 1
  store i32 %40, i32* %43, align 8
  %44 = load %struct.my_event*, %struct.my_event** %12, align 8
  %45 = getelementptr inbounds %struct.my_event, %struct.my_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %45, i32 0, i32 0
  store i32* @default_event_vmt, i32** %46, align 8
  %47 = load %struct.my_event*, %struct.my_event** %12, align 8
  %48 = getelementptr inbounds %struct.my_event, %struct.my_event* %47, i32 0, i32 0
  store %struct.ub_event* %48, %struct.ub_event** %6, align 8
  br label %49

49:                                               ; preds = %39, %36, %17
  %50 = load %struct.ub_event*, %struct.ub_event** %6, align 8
  ret %struct.ub_event* %50
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @event_set(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @NATIVE_BITS(i16 signext) #1

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
