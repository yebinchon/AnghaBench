; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_signal_closure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_event_signal_closure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event = type { i16, i16*, i32, i32, i32, i32 (i32, i32, i32)* }

@th_base_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_base*, %struct.event*)* @event_signal_closure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_signal_closure(%struct.event_base* %0, %struct.event* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.event*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.event* %1, %struct.event** %4, align 8
  %7 = load %struct.event*, %struct.event** %4, align 8
  %8 = getelementptr inbounds %struct.event, %struct.event* %7, i32 0, i32 0
  %9 = load i16, i16* %8, align 8
  store i16 %9, i16* %5, align 2
  %10 = load i16, i16* %5, align 2
  %11 = sext i16 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.event*, %struct.event** %4, align 8
  %15 = getelementptr inbounds %struct.event, %struct.event* %14, i32 0, i32 1
  store i16* %5, i16** %15, align 8
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.event_base*, %struct.event_base** %3, align 8
  %18 = load i32, i32* @th_base_lock, align 4
  %19 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %17, i32 %18)
  br label %20

20:                                               ; preds = %68, %16
  %21 = load i16, i16* %5, align 2
  %22 = icmp ne i16 %21, 0
  br i1 %22, label %23, label %69

23:                                               ; preds = %20
  %24 = load i16, i16* %5, align 2
  %25 = add i16 %24, -1
  store i16 %25, i16* %5, align 2
  %26 = load i16, i16* %5, align 2
  %27 = load %struct.event*, %struct.event** %4, align 8
  %28 = getelementptr inbounds %struct.event, %struct.event* %27, i32 0, i32 0
  store i16 %26, i16* %28, align 8
  %29 = load i16, i16* %5, align 2
  %30 = sext i16 %29 to i32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load %struct.event*, %struct.event** %4, align 8
  %34 = getelementptr inbounds %struct.event, %struct.event* %33, i32 0, i32 1
  store i16* null, i16** %34, align 8
  br label %35

35:                                               ; preds = %32, %23
  %36 = load %struct.event*, %struct.event** %4, align 8
  %37 = getelementptr inbounds %struct.event, %struct.event* %36, i32 0, i32 5
  %38 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %37, align 8
  %39 = load %struct.event*, %struct.event** %4, align 8
  %40 = getelementptr inbounds %struct.event, %struct.event* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.event*, %struct.event** %4, align 8
  %43 = getelementptr inbounds %struct.event, %struct.event* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.event*, %struct.event** %4, align 8
  %46 = getelementptr inbounds %struct.event, %struct.event* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %38(i32 %41, i32 %44, i32 %47)
  %49 = load %struct.event_base*, %struct.event_base** %3, align 8
  %50 = load i32, i32* @th_base_lock, align 4
  %51 = call i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base* %49, i32 %50)
  %52 = load %struct.event_base*, %struct.event_base** %3, align 8
  %53 = getelementptr inbounds %struct.event_base, %struct.event_base* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.event_base*, %struct.event_base** %3, align 8
  %56 = load i32, i32* @th_base_lock, align 4
  %57 = call i32 @EVBASE_RELEASE_LOCK(%struct.event_base* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %35
  %61 = load i16, i16* %5, align 2
  %62 = sext i16 %61 to i32
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  %65 = load %struct.event*, %struct.event** %4, align 8
  %66 = getelementptr inbounds %struct.event, %struct.event* %65, i32 0, i32 1
  store i16* null, i16** %66, align 8
  br label %67

67:                                               ; preds = %64, %60
  br label %69

68:                                               ; preds = %35
  br label %20

69:                                               ; preds = %67, %20
  ret void
}

declare dso_local i32 @EVBASE_RELEASE_LOCK(%struct.event_base*, i32) #1

declare dso_local i32 @EVBASE_ACQUIRE_LOCK(%struct.event_base*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
