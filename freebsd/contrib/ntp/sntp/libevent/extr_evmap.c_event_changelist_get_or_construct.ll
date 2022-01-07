; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_event_changelist_get_or_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evmap.c_event_changelist_get_or_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_change = type { i64, i16 }
%struct.event_changelist = type { i64, i64, %struct.event_change* }
%struct.event_changelist_fdinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.event_change* (%struct.event_changelist*, i64, i16, %struct.event_changelist_fdinfo*)* @event_changelist_get_or_construct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.event_change* @event_changelist_get_or_construct(%struct.event_changelist* %0, i64 %1, i16 signext %2, %struct.event_changelist_fdinfo* %3) #0 {
  %5 = alloca %struct.event_change*, align 8
  %6 = alloca %struct.event_changelist*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca %struct.event_changelist_fdinfo*, align 8
  %10 = alloca %struct.event_change*, align 8
  %11 = alloca i32, align 4
  store %struct.event_changelist* %0, %struct.event_changelist** %6, align 8
  store i64 %1, i64* %7, align 8
  store i16 %2, i16* %8, align 2
  store %struct.event_changelist_fdinfo* %3, %struct.event_changelist_fdinfo** %9, align 8
  %12 = load %struct.event_changelist_fdinfo*, %struct.event_changelist_fdinfo** %9, align 8
  %13 = getelementptr inbounds %struct.event_changelist_fdinfo, %struct.event_changelist_fdinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %4
  %17 = load %struct.event_changelist*, %struct.event_changelist** %6, align 8
  %18 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.event_changelist*, %struct.event_changelist** %6, align 8
  %21 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @EVUTIL_ASSERT(i32 %24)
  %26 = load %struct.event_changelist*, %struct.event_changelist** %6, align 8
  %27 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.event_changelist*, %struct.event_changelist** %6, align 8
  %30 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %16
  %34 = load %struct.event_changelist*, %struct.event_changelist** %6, align 8
  %35 = call i64 @event_changelist_grow(%struct.event_changelist* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store %struct.event_change* null, %struct.event_change** %5, align 8
  br label %82

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %16
  %40 = load %struct.event_changelist*, %struct.event_changelist** %6, align 8
  %41 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %41, align 8
  %44 = trunc i64 %42 to i32
  store i32 %44, i32* %11, align 4
  %45 = load %struct.event_changelist*, %struct.event_changelist** %6, align 8
  %46 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %45, i32 0, i32 2
  %47 = load %struct.event_change*, %struct.event_change** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.event_change, %struct.event_change* %47, i64 %49
  store %struct.event_change* %50, %struct.event_change** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  %53 = load %struct.event_changelist_fdinfo*, %struct.event_changelist_fdinfo** %9, align 8
  %54 = getelementptr inbounds %struct.event_changelist_fdinfo, %struct.event_changelist_fdinfo* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = load %struct.event_change*, %struct.event_change** %10, align 8
  %56 = call i32 @memset(%struct.event_change* %55, i32 0, i32 16)
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.event_change*, %struct.event_change** %10, align 8
  %59 = getelementptr inbounds %struct.event_change, %struct.event_change* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i16, i16* %8, align 2
  %61 = load %struct.event_change*, %struct.event_change** %10, align 8
  %62 = getelementptr inbounds %struct.event_change, %struct.event_change* %61, i32 0, i32 1
  store i16 %60, i16* %62, align 8
  br label %80

63:                                               ; preds = %4
  %64 = load %struct.event_changelist*, %struct.event_changelist** %6, align 8
  %65 = getelementptr inbounds %struct.event_changelist, %struct.event_changelist* %64, i32 0, i32 2
  %66 = load %struct.event_change*, %struct.event_change** %65, align 8
  %67 = load %struct.event_changelist_fdinfo*, %struct.event_changelist_fdinfo** %9, align 8
  %68 = getelementptr inbounds %struct.event_changelist_fdinfo, %struct.event_changelist_fdinfo* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.event_change, %struct.event_change* %66, i64 %71
  store %struct.event_change* %72, %struct.event_change** %10, align 8
  %73 = load %struct.event_change*, %struct.event_change** %10, align 8
  %74 = getelementptr inbounds %struct.event_change, %struct.event_change* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i32 @EVUTIL_ASSERT(i32 %78)
  br label %80

80:                                               ; preds = %63, %39
  %81 = load %struct.event_change*, %struct.event_change** %10, align 8
  store %struct.event_change* %81, %struct.event_change** %5, align 8
  br label %82

82:                                               ; preds = %80, %37
  %83 = load %struct.event_change*, %struct.event_change** %5, align 8
  ret %struct.event_change* %83
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i64 @event_changelist_grow(%struct.event_changelist*) #1

declare dso_local i32 @memset(%struct.event_change*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
