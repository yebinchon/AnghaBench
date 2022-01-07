; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_timer_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_timer_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_timer = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.timeval = type { i32 }

@comm_timer_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"comm_timer_set: evtimer_add failed.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_timer_set(%struct.comm_timer* %0, %struct.timeval* %1) #0 {
  %3 = alloca %struct.comm_timer*, align 8
  %4 = alloca %struct.timeval*, align 8
  store %struct.comm_timer* %0, %struct.comm_timer** %3, align 8
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %5 = load %struct.timeval*, %struct.timeval** %4, align 8
  %6 = call i32 @log_assert(%struct.timeval* %5)
  %7 = load %struct.comm_timer*, %struct.comm_timer** %3, align 8
  %8 = getelementptr inbounds %struct.comm_timer, %struct.comm_timer* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.comm_timer*, %struct.comm_timer** %3, align 8
  %15 = call i32 @comm_timer_disable(%struct.comm_timer* %14)
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.comm_timer*, %struct.comm_timer** %3, align 8
  %18 = getelementptr inbounds %struct.comm_timer, %struct.comm_timer* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.comm_timer*, %struct.comm_timer** %3, align 8
  %23 = getelementptr inbounds %struct.comm_timer, %struct.comm_timer* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @comm_timer_callback, align 4
  %32 = load %struct.comm_timer*, %struct.comm_timer** %3, align 8
  %33 = load %struct.timeval*, %struct.timeval** %4, align 8
  %34 = call i64 @ub_timer_add(i32 %21, i32 %30, i32 %31, %struct.comm_timer* %32, %struct.timeval* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %16
  %37 = call i32 @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %16
  %39 = load %struct.comm_timer*, %struct.comm_timer** %3, align 8
  %40 = getelementptr inbounds %struct.comm_timer, %struct.comm_timer* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  ret void
}

declare dso_local i32 @log_assert(%struct.timeval*) #1

declare dso_local i32 @comm_timer_disable(%struct.comm_timer*) #1

declare dso_local i64 @ub_timer_add(i32, i32, i32, %struct.comm_timer*, %struct.timeval*) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
