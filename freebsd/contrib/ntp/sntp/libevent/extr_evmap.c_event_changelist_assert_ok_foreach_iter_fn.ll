; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_event_changelist_assert_ok_foreach_iter_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_event_changelist_assert_ok_foreach_iter_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { %struct.event_changelist }
%struct.event_changelist = type { %struct.event_change* }
%struct.event_change = type { i64 }
%struct.evmap_io = type { i32 }
%struct.event_changelist_fdinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*, i64, %struct.evmap_io*, i8*)* @event_changelist_assert_ok_foreach_iter_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_changelist_assert_ok_foreach_iter_fn(%struct.event_base* %0, i64 %1, %struct.evmap_io* %2, i8* %3) #0 {
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.evmap_io*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.event_changelist*, align 8
  %10 = alloca %struct.event_changelist_fdinfo*, align 8
  %11 = alloca %struct.event_change*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.evmap_io* %2, %struct.evmap_io** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.event_base*, %struct.event_base** %5, align 8
  %13 = getelementptr inbounds %struct.event_base, %struct.event_base* %12, i32 0, i32 0
  store %struct.event_changelist* %13, %struct.event_changelist** %9, align 8
  %14 = load %struct.evmap_io*, %struct.evmap_io** %7, align 8
  %15 = bitcast %struct.evmap_io* %14 to i8*
  %16 = getelementptr inbounds i8, i8* %15, i64 4
  %17 = bitcast i8* %16 to %struct.event_changelist_fdinfo*
  store %struct.event_changelist_fdinfo* %17, %struct.event_changelist_fdinfo** %10, align 8
  %18 = load %struct.event_changelist_fdinfo*, %struct.event_changelist_fdinfo** %10, align 8
  %19 = getelementptr inbounds %struct.event_changelist_fdinfo, %struct.event_changelist_fdinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %4
  %23 = load %struct.event_changelist*, %struct.event_changelist** %9, align 8
  %24 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %23, i32 0, i32 0
  %25 = load %struct.event_change*, %struct.event_change** %24, align 8
  %26 = load %struct.event_changelist_fdinfo*, %struct.event_changelist_fdinfo** %10, align 8
  %27 = getelementptr inbounds %struct.event_changelist_fdinfo, %struct.event_changelist_fdinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.event_change, %struct.event_change* %25, i64 %30
  store %struct.event_change* %31, %struct.event_change** %11, align 8
  %32 = load %struct.event_change*, %struct.event_change** %11, align 8
  %33 = getelementptr inbounds %struct.event_change, %struct.event_change* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @EVUTIL_ASSERT(i32 %37)
  br label %39

39:                                               ; preds = %22, %4
  ret i32 0
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
