; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_foreach_find_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress.c_foreach_find_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.event = type { i32 }
%struct.foreach_helper = type { i32 }

@timeout_cb = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_base*, %struct.event*, i8*)* @foreach_find_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @foreach_find_cb(%struct.event_base* %0, %struct.event* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca %struct.event*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.event**, align 8
  %9 = alloca %struct.foreach_helper*, align 8
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store %struct.event* %1, %struct.event** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.event**
  store %struct.event** %11, %struct.event*** %8, align 8
  %12 = load %struct.event*, %struct.event** %6, align 8
  %13 = call %struct.foreach_helper* @event_get_callback_arg(%struct.event* %12)
  store %struct.foreach_helper* %13, %struct.foreach_helper** %9, align 8
  %14 = load %struct.event*, %struct.event** %6, align 8
  %15 = call i64 @event_get_callback(%struct.event* %14)
  %16 = load i64, i64* @timeout_cb, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %28

19:                                               ; preds = %3
  %20 = load %struct.foreach_helper*, %struct.foreach_helper** %9, align 8
  %21 = getelementptr inbounds %struct.foreach_helper, %struct.foreach_helper* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 99
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.event*, %struct.event** %6, align 8
  %26 = load %struct.event**, %struct.event*** %8, align 8
  store %struct.event* %25, %struct.event** %26, align 8
  store i32 101, i32* %4, align 4
  br label %28

27:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %27, %24, %18
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local %struct.foreach_helper* @event_get_callback_arg(%struct.event*) #1

declare dso_local i64 @event_get_callback(%struct.event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
