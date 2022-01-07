; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_signal_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_signal_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { {}* }
%struct.ub_event = type { i64, %struct.TYPE_2__* }

@UB_EVENT_MAGIC = common dso_local global i64 0, align 8
@default_event_vmt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_signal_del(%struct.ub_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ub_event*, align 8
  store %struct.ub_event* %0, %struct.ub_event** %3, align 8
  %4 = load %struct.ub_event*, %struct.ub_event** %3, align 8
  %5 = icmp ne %struct.ub_event* %4, null
  br i1 %5, label %6, label %37

6:                                                ; preds = %1
  %7 = load %struct.ub_event*, %struct.ub_event** %3, align 8
  %8 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @UB_EVENT_MAGIC, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = load %struct.ub_event*, %struct.ub_event** %3, align 8
  %14 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = icmp ne %struct.TYPE_2__* %15, @default_event_vmt
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = load %struct.ub_event*, %struct.ub_event** %3, align 8
  %19 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = bitcast {}** %21 to i32 (%struct.ub_event*)**
  %23 = load i32 (%struct.ub_event*)*, i32 (%struct.ub_event*)** %22, align 8
  %24 = icmp eq i32 (%struct.ub_event*)* %23, @my_signal_del
  br label %25

25:                                               ; preds = %17, %12
  %26 = phi i1 [ true, %12 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @fptr_ok(i32 %27)
  %29 = load %struct.ub_event*, %struct.ub_event** %3, align 8
  %30 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = bitcast {}** %32 to i32 (%struct.ub_event*)**
  %34 = load i32 (%struct.ub_event*)*, i32 (%struct.ub_event*)** %33, align 8
  %35 = load %struct.ub_event*, %struct.ub_event** %3, align 8
  %36 = call i32 %34(%struct.ub_event* %35)
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %6, %1
  store i32 -1, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %25
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @my_signal_del(%struct.ub_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
