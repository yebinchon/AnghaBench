; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_signal_foreach_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_evmap_signal_foreach_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.event_signal_map }
%struct.event_signal_map = type { i32, %struct.evmap_signal** }
%struct.evmap_signal = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*, i32 (%struct.event_base*, i32, %struct.evmap_signal*, i8*)*, i8*)* @evmap_signal_foreach_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evmap_signal_foreach_signal(%struct.event_base* %0, i32 (%struct.event_base*, i32, %struct.evmap_signal*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca i32 (%struct.event_base*, i32, %struct.evmap_signal*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.event_signal_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.evmap_signal*, align 8
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store i32 (%struct.event_base*, i32, %struct.evmap_signal*, i8*)* %1, i32 (%struct.event_base*, i32, %struct.evmap_signal*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.event_base*, %struct.event_base** %4, align 8
  %12 = getelementptr inbounds %struct.event_base, %struct.event_base* %11, i32 0, i32 0
  store %struct.event_signal_map* %12, %struct.event_signal_map** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %40, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.event_signal_map*, %struct.event_signal_map** %7, align 8
  %16 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %43

19:                                               ; preds = %13
  %20 = load %struct.event_signal_map*, %struct.event_signal_map** %7, align 8
  %21 = getelementptr inbounds %struct.event_signal_map, %struct.event_signal_map* %20, i32 0, i32 1
  %22 = load %struct.evmap_signal**, %struct.evmap_signal*** %21, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.evmap_signal*, %struct.evmap_signal** %22, i64 %24
  %26 = load %struct.evmap_signal*, %struct.evmap_signal** %25, align 8
  store %struct.evmap_signal* %26, %struct.evmap_signal** %10, align 8
  %27 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %28 = icmp ne %struct.evmap_signal* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %19
  br label %40

30:                                               ; preds = %19
  %31 = load i32 (%struct.event_base*, i32, %struct.evmap_signal*, i8*)*, i32 (%struct.event_base*, i32, %struct.evmap_signal*, i8*)** %5, align 8
  %32 = load %struct.event_base*, %struct.event_base** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.evmap_signal*, %struct.evmap_signal** %10, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 %31(%struct.event_base* %32, i32 %33, %struct.evmap_signal* %34, i8* %35)
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  br label %43

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %29
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %13

43:                                               ; preds = %38, %13
  %44 = load i32, i32* %8, align 4
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
