; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evmap.c_event_changelist_remove_all_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evmap.c_event_changelist_remove_all_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_changelist = type { i32, %struct.event_change* }
%struct.event_change = type { i32 }
%struct.event_base = type { i32 }
%struct.event_changelist_fdinfo = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_changelist_remove_all_(%struct.event_changelist* %0, %struct.event_base* %1) #0 {
  %3 = alloca %struct.event_changelist*, align 8
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.event_change*, align 8
  %7 = alloca %struct.event_changelist_fdinfo*, align 8
  store %struct.event_changelist* %0, %struct.event_changelist** %3, align 8
  store %struct.event_base* %1, %struct.event_base** %4, align 8
  %8 = load %struct.event_base*, %struct.event_base** %4, align 8
  %9 = call i32 @event_changelist_check(%struct.event_base* %8)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %36, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.event_changelist*, %struct.event_changelist** %3, align 8
  %13 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load %struct.event_changelist*, %struct.event_changelist** %3, align 8
  %18 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %17, i32 0, i32 1
  %19 = load %struct.event_change*, %struct.event_change** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.event_change, %struct.event_change* %19, i64 %21
  store %struct.event_change* %22, %struct.event_change** %6, align 8
  %23 = load %struct.event_base*, %struct.event_base** %4, align 8
  %24 = load %struct.event_change*, %struct.event_change** %6, align 8
  %25 = call %struct.event_changelist_fdinfo* @event_change_get_fdinfo(%struct.event_base* %23, %struct.event_change* %24)
  store %struct.event_changelist_fdinfo* %25, %struct.event_changelist_fdinfo** %7, align 8
  %26 = load %struct.event_changelist_fdinfo*, %struct.event_changelist_fdinfo** %7, align 8
  %27 = getelementptr inbounds %struct.event_changelist_fdinfo, %struct.event_changelist_fdinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  %31 = icmp eq i32 %28, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @EVUTIL_ASSERT(i32 %32)
  %34 = load %struct.event_changelist_fdinfo*, %struct.event_changelist_fdinfo** %7, align 8
  %35 = getelementptr inbounds %struct.event_changelist_fdinfo, %struct.event_changelist_fdinfo* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %16
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %10

39:                                               ; preds = %10
  %40 = load %struct.event_changelist*, %struct.event_changelist** %3, align 8
  %41 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.event_base*, %struct.event_base** %4, align 8
  %43 = call i32 @event_changelist_check(%struct.event_base* %42)
  ret void
}

declare dso_local i32 @event_changelist_check(%struct.event_base*) #1

declare dso_local %struct.event_changelist_fdinfo* @event_change_get_fdinfo(%struct.event_base*, %struct.event_change*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
