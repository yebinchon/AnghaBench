; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_event_del_bits.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_ub_event_pluggable.c_ub_event_del_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.ub_event*, i16)* }
%struct.ub_event = type { i64, %struct.TYPE_2__* }

@UB_EVENT_MAGIC = common dso_local global i64 0, align 8
@default_event_vmt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ub_event_del_bits(%struct.ub_event* %0, i16 signext %1) #0 {
  %3 = alloca %struct.ub_event*, align 8
  %4 = alloca i16, align 2
  store %struct.ub_event* %0, %struct.ub_event** %3, align 8
  store i16 %1, i16* %4, align 2
  %5 = load %struct.ub_event*, %struct.ub_event** %3, align 8
  %6 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @UB_EVENT_MAGIC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %34

10:                                               ; preds = %2
  %11 = load %struct.ub_event*, %struct.ub_event** %3, align 8
  %12 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, @default_event_vmt
  br i1 %14, label %22, label %15

15:                                               ; preds = %10
  %16 = load %struct.ub_event*, %struct.ub_event** %3, align 8
  %17 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ub_event*, i16)*, i32 (%struct.ub_event*, i16)** %19, align 8
  %21 = icmp eq i32 (%struct.ub_event*, i16)* %20, @my_event_del_bits
  br label %22

22:                                               ; preds = %15, %10
  %23 = phi i1 [ true, %10 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @fptr_ok(i32 %24)
  %26 = load %struct.ub_event*, %struct.ub_event** %3, align 8
  %27 = getelementptr inbounds %struct.ub_event, %struct.ub_event* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32 (%struct.ub_event*, i16)*, i32 (%struct.ub_event*, i16)** %29, align 8
  %31 = load %struct.ub_event*, %struct.ub_event** %3, align 8
  %32 = load i16, i16* %4, align 2
  %33 = call i32 %30(%struct.ub_event* %31, i16 signext %32)
  br label %34

34:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @fptr_ok(i32) #1

declare dso_local i32 @my_event_del_bits(%struct.ub_event*, i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
