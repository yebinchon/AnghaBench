; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_evthread_notify_base.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event.c_evthread_notify_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { {}*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*)* @evthread_notify_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evthread_notify_base(%struct.event_base* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.event_base*, align 8
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  %4 = load %struct.event_base*, %struct.event_base** %3, align 8
  %5 = call i32 @EVENT_BASE_ASSERT_LOCKED(%struct.event_base* %4)
  %6 = load %struct.event_base*, %struct.event_base** %3, align 8
  %7 = getelementptr inbounds %struct.event_base, %struct.event_base* %6, i32 0, i32 0
  %8 = bitcast {}** %7 to i32 (%struct.event_base*)**
  %9 = load i32 (%struct.event_base*)*, i32 (%struct.event_base*)** %8, align 8
  %10 = icmp ne i32 (%struct.event_base*)* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %27

12:                                               ; preds = %1
  %13 = load %struct.event_base*, %struct.event_base** %3, align 8
  %14 = getelementptr inbounds %struct.event_base, %struct.event_base* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %27

18:                                               ; preds = %12
  %19 = load %struct.event_base*, %struct.event_base** %3, align 8
  %20 = getelementptr inbounds %struct.event_base, %struct.event_base* %19, i32 0, i32 1
  store i32 1, i32* %20, align 8
  %21 = load %struct.event_base*, %struct.event_base** %3, align 8
  %22 = getelementptr inbounds %struct.event_base, %struct.event_base* %21, i32 0, i32 0
  %23 = bitcast {}** %22 to i32 (%struct.event_base*)**
  %24 = load i32 (%struct.event_base*)*, i32 (%struct.event_base*)** %23, align 8
  %25 = load %struct.event_base*, %struct.event_base** %3, align 8
  %26 = call i32 %24(%struct.event_base* %25)
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %18, %17, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @EVENT_BASE_ASSERT_LOCKED(%struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
