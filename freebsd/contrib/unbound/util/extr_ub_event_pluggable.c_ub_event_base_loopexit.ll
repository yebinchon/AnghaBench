; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_event_base_loopexit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_event_base_loopexit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.ub_event_base*, i32*)* }
%struct.ub_event_base = type { i64, %struct.TYPE_2__* }

@UB_EVENT_MAGIC = common dso_local global i64 0, align 8
@default_event_base_vmt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_event_base_loopexit(%struct.ub_event_base* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ub_event_base*, align 8
  store %struct.ub_event_base* %0, %struct.ub_event_base** %3, align 8
  %4 = load %struct.ub_event_base*, %struct.ub_event_base** %3, align 8
  %5 = getelementptr inbounds %struct.ub_event_base, %struct.ub_event_base* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @UB_EVENT_MAGIC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %1
  %10 = load %struct.ub_event_base*, %struct.ub_event_base** %3, align 8
  %11 = getelementptr inbounds %struct.ub_event_base, %struct.ub_event_base* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, @default_event_base_vmt
  br i1 %13, label %21, label %14

14:                                               ; preds = %9
  %15 = load %struct.ub_event_base*, %struct.ub_event_base** %3, align 8
  %16 = getelementptr inbounds %struct.ub_event_base, %struct.ub_event_base* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.ub_event_base*, i32*)*, i32 (%struct.ub_event_base*, i32*)** %18, align 8
  %20 = icmp eq i32 (%struct.ub_event_base*, i32*)* %19, @my_event_base_loopexit
  br label %21

21:                                               ; preds = %14, %9
  %22 = phi i1 [ true, %9 ], [ %20, %14 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @fptr_ok(i32 %23)
  %25 = load %struct.ub_event_base*, %struct.ub_event_base** %3, align 8
  %26 = getelementptr inbounds %struct.ub_event_base, %struct.ub_event_base* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.ub_event_base*, i32*)*, i32 (%struct.ub_event_base*, i32*)** %28, align 8
  %30 = load %struct.ub_event_base*, %struct.ub_event_base** %3, align 8
  %31 = call i32 %29(%struct.ub_event_base* %30, i32* null)
  store i32 %31, i32* %2, align 4
  br label %33

32:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %21
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @my_event_base_loopexit(%struct.ub_event_base*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
