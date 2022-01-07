; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event.c_event_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }

@current_base = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_set(%struct.event* %0, i32 %1, i16 signext %2, void (i32, i16, i8*)* %3, i8* %4) #0 {
  %6 = alloca %struct.event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca void (i32, i16, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.event* %0, %struct.event** %6, align 8
  store i32 %1, i32* %7, align 4
  store i16 %2, i16* %8, align 2
  store void (i32, i16, i8*)* %3, void (i32, i16, i8*)** %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load %struct.event*, %struct.event** %6, align 8
  %13 = load i32, i32* @current_base, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i16, i16* %8, align 2
  %16 = load void (i32, i16, i8*)*, void (i32, i16, i8*)** %9, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = call i32 @event_assign(%struct.event* %12, i32 %13, i32 %14, i16 signext %15, void (i32, i16, i8*)* %16, i8* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @EVUTIL_ASSERT(i32 %21)
  ret void
}

declare dso_local i32 @event_assign(%struct.event*, i32, i32, i16 signext, void (i32, i16, i8*)*, i8*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
