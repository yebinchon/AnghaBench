; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_signal_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/util/extr_netevent.c_comm_signal_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_signal = type { i32, %struct.comm_signal*, %struct.comm_signal* }
%struct.internal_signal = type { i32, %struct.internal_signal*, %struct.internal_signal* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comm_signal_delete(%struct.comm_signal* %0) #0 {
  %2 = alloca %struct.comm_signal*, align 8
  %3 = alloca %struct.internal_signal*, align 8
  %4 = alloca %struct.internal_signal*, align 8
  store %struct.comm_signal* %0, %struct.comm_signal** %2, align 8
  %5 = load %struct.comm_signal*, %struct.comm_signal** %2, align 8
  %6 = icmp ne %struct.comm_signal* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %35

8:                                                ; preds = %1
  %9 = load %struct.comm_signal*, %struct.comm_signal** %2, align 8
  %10 = getelementptr inbounds %struct.comm_signal, %struct.comm_signal* %9, i32 0, i32 2
  %11 = load %struct.comm_signal*, %struct.comm_signal** %10, align 8
  %12 = bitcast %struct.comm_signal* %11 to %struct.internal_signal*
  store %struct.internal_signal* %12, %struct.internal_signal** %3, align 8
  br label %13

13:                                               ; preds = %16, %8
  %14 = load %struct.internal_signal*, %struct.internal_signal** %3, align 8
  %15 = icmp ne %struct.internal_signal* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %13
  %17 = load %struct.internal_signal*, %struct.internal_signal** %3, align 8
  %18 = getelementptr inbounds %struct.internal_signal, %struct.internal_signal* %17, i32 0, i32 1
  %19 = load %struct.internal_signal*, %struct.internal_signal** %18, align 8
  store %struct.internal_signal* %19, %struct.internal_signal** %4, align 8
  %20 = load %struct.internal_signal*, %struct.internal_signal** %3, align 8
  %21 = getelementptr inbounds %struct.internal_signal, %struct.internal_signal* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ub_signal_del(i32 %22)
  %24 = load %struct.internal_signal*, %struct.internal_signal** %3, align 8
  %25 = getelementptr inbounds %struct.internal_signal, %struct.internal_signal* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @ub_event_free(i32 %26)
  %28 = load %struct.internal_signal*, %struct.internal_signal** %3, align 8
  %29 = call i32 @free(%struct.internal_signal* %28)
  %30 = load %struct.internal_signal*, %struct.internal_signal** %4, align 8
  store %struct.internal_signal* %30, %struct.internal_signal** %3, align 8
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.comm_signal*, %struct.comm_signal** %2, align 8
  %33 = bitcast %struct.comm_signal* %32 to %struct.internal_signal*
  %34 = call i32 @free(%struct.internal_signal* %33)
  br label %35

35:                                               ; preds = %31, %7
  ret void
}

declare dso_local i32 @ub_signal_del(i32) #1

declare dso_local i32 @ub_event_free(i32) #1

declare dso_local i32 @free(%struct.internal_signal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
