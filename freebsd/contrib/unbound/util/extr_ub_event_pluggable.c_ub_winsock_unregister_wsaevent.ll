; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_winsock_unregister_wsaevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_winsock_unregister_wsaevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.ub_event*)* }
%struct.ub_event = type { i64, %struct.TYPE_2__* }

@UB_EVENT_MAGIC = common dso_local global i64 0, align 8
@default_event_vmt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ub_winsock_unregister_wsaevent(%struct.ub_event* %0) #0 {
  %2 = alloca %struct.ub_event*, align 8
  store %struct.ub_event* %0, %struct.ub_event** %2, align 8
  %3 = load %struct.ub_event*, %struct.ub_event** %2, align 8
  %4 = icmp ne %struct.ub_event* %3, null
  br i1 %4, label %5, label %34

5:                                                ; preds = %1
  %6 = load %struct.ub_event*, %struct.ub_event** %2, align 8
  %7 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UB_EVENT_MAGIC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %34

11:                                               ; preds = %5
  %12 = load %struct.ub_event*, %struct.ub_event** %2, align 8
  %13 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = icmp ne %struct.TYPE_2__* %14, @default_event_vmt
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load %struct.ub_event*, %struct.ub_event** %2, align 8
  %18 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.ub_event*)*, i32 (%struct.ub_event*)** %20, align 8
  %22 = icmp eq i32 (%struct.ub_event*)* %21, @my_winsock_unregister_wsaevent
  br label %23

23:                                               ; preds = %16, %11
  %24 = phi i1 [ true, %11 ], [ %22, %16 ]
  %25 = zext i1 %24 to i32
  %26 = call i32 @fptr_ok(i32 %25)
  %27 = load %struct.ub_event*, %struct.ub_event** %2, align 8
  %28 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.ub_event*)*, i32 (%struct.ub_event*)** %30, align 8
  %32 = load %struct.ub_event*, %struct.ub_event** %2, align 8
  %33 = call i32 %31(%struct.ub_event* %32)
  br label %34

34:                                               ; preds = %23, %5, %1
  ret void
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @my_winsock_unregister_wsaevent(%struct.ub_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
