; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_event.c_event_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.event = type { void (i32, i16, i8*)*, i32, i16, i32, i32*, i64, i32, i8*, %struct.TYPE_2__* }

@current_base = common dso_local global %struct.TYPE_2__* null, align 8
@EVLIST_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_set(%struct.event* %0, i32 %1, i16 signext %2, void (i32, i16, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca void (i32, i16, i8*)*, align 8
  %10 = alloca i8*, align 8
  store %struct.event* %0, %struct.event** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store void (i32, i16, i8*)* %3, void (i32, i16, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_base, align 8
  %12 = load %struct.event*, %struct.event** %6, align 8
  %13 = getelementptr inbounds %struct.event, %struct.event* %12, i32 0, i32 8
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %13, align 8
  %14 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %9, align 8
  %15 = load %struct.event*, %struct.event** %6, align 8
  %16 = getelementptr inbounds %struct.event, %struct.event* %15, i32 0, i32 0
  store void (i32, i16, i8*)* %14, void (i32, i16, i8*)** %16, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = load %struct.event*, %struct.event** %6, align 8
  %19 = getelementptr inbounds %struct.event, %struct.event* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.event*, %struct.event** %6, align 8
  %22 = getelementptr inbounds %struct.event, %struct.event* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  %23 = load i16, i16* %8, align 2
  %24 = load %struct.event*, %struct.event** %6, align 8
  %25 = getelementptr inbounds %struct.event, %struct.event* %24, i32 0, i32 2
  store i16 %23, i16* %25, align 4
  %26 = load i32, i32* @EVLIST_INIT, align 4
  %27 = load %struct.event*, %struct.event** %6, align 8
  %28 = getelementptr inbounds %struct.event, %struct.event* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load %struct.event*, %struct.event** %6, align 8
  %30 = getelementptr inbounds %struct.event, %struct.event* %29, i32 0, i32 5
  store i64 0, i64* %30, align 8
  %31 = load %struct.event*, %struct.event** %6, align 8
  %32 = getelementptr inbounds %struct.event, %struct.event* %31, i32 0, i32 4
  store i32* null, i32** %32, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current_base, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = sdiv i32 %35, 2
  %37 = load %struct.event*, %struct.event** %6, align 8
  %38 = getelementptr inbounds %struct.event, %struct.event* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
