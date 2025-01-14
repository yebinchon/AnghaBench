; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_event_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_event_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { {}* }
%struct.ub_event = type { i64, %struct.TYPE_2__* }
%struct.timeval = type { i32 }

@UB_EVENT_MAGIC = common dso_local global i64 0, align 8
@default_event_vmt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ub_event_add(%struct.ub_event* %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ub_event*, align 8
  %5 = alloca %struct.timeval*, align 8
  store %struct.ub_event* %0, %struct.ub_event** %4, align 8
  store %struct.timeval* %1, %struct.timeval** %5, align 8
  %6 = load %struct.ub_event*, %struct.ub_event** %4, align 8
  %7 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UB_EVENT_MAGIC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %37

11:                                               ; preds = %2
  %12 = load %struct.ub_event*, %struct.ub_event** %4, align 8
  %13 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, @default_event_vmt
  br i1 %15, label %24, label %16

16:                                               ; preds = %11
  %17 = load %struct.ub_event*, %struct.ub_event** %4, align 8
  %18 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.ub_event*, %struct.timeval*)**
  %22 = load i32 (%struct.ub_event*, %struct.timeval*)*, i32 (%struct.ub_event*, %struct.timeval*)** %21, align 8
  %23 = icmp eq i32 (%struct.ub_event*, %struct.timeval*)* %22, @my_event_add
  br label %24

24:                                               ; preds = %16, %11
  %25 = phi i1 [ true, %11 ], [ %23, %16 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @fptr_ok(i32 %26)
  %28 = load %struct.ub_event*, %struct.ub_event** %4, align 8
  %29 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = bitcast {}** %31 to i32 (%struct.ub_event*, %struct.timeval*)**
  %33 = load i32 (%struct.ub_event*, %struct.timeval*)*, i32 (%struct.ub_event*, %struct.timeval*)** %32, align 8
  %34 = load %struct.ub_event*, %struct.ub_event** %4, align 8
  %35 = load %struct.timeval*, %struct.timeval** %5, align 8
  %36 = call i32 %33(%struct.ub_event* %34, %struct.timeval* %35)
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @my_event_add(%struct.ub_event*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
