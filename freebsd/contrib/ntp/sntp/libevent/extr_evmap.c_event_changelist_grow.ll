; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_event_changelist_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_event_changelist_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_changelist = type { i32, %struct.event_change* }
%struct.event_change = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_changelist*)* @event_changelist_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_changelist_grow(%struct.event_changelist* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.event_changelist*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_change*, align 8
  store %struct.event_changelist* %0, %struct.event_changelist** %3, align 8
  %6 = load %struct.event_changelist*, %struct.event_changelist** %3, align 8
  %7 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %8, 64
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 64, i32* %4, align 4
  br label %16

11:                                               ; preds = %1
  %12 = load %struct.event_changelist*, %struct.event_changelist** %3, align 8
  %13 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 2
  store i32 %15, i32* %4, align 4
  br label %16

16:                                               ; preds = %11, %10
  %17 = load %struct.event_changelist*, %struct.event_changelist** %3, align 8
  %18 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %17, i32 0, i32 1
  %19 = load %struct.event_change*, %struct.event_change** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = mul i64 %21, 4
  %23 = trunc i64 %22 to i32
  %24 = call %struct.event_change* @mm_realloc(%struct.event_change* %19, i32 %23)
  store %struct.event_change* %24, %struct.event_change** %5, align 8
  %25 = load %struct.event_change*, %struct.event_change** %5, align 8
  %26 = icmp eq %struct.event_change* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i64 @EVUTIL_UNLIKELY(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %38

31:                                               ; preds = %16
  %32 = load %struct.event_change*, %struct.event_change** %5, align 8
  %33 = load %struct.event_changelist*, %struct.event_changelist** %3, align 8
  %34 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %33, i32 0, i32 1
  store %struct.event_change* %32, %struct.event_change** %34, align 8
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.event_changelist*, %struct.event_changelist** %3, align 8
  %37 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %30
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.event_change* @mm_realloc(%struct.event_change*, i32) #1

declare dso_local i64 @EVUTIL_UNLIKELY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
