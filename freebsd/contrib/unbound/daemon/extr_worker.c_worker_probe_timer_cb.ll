; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_probe_timer_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_probe_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.timeval = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @worker_probe_timer_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.worker*, align 8
  %4 = alloca %struct.timeval, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.worker*
  store %struct.worker* %6, %struct.worker** %3, align 8
  %7 = load %struct.worker*, %struct.worker** %3, align 8
  %8 = getelementptr inbounds %struct.worker, %struct.worker* %7, i32 0, i32 0
  %9 = call i64 @autr_probe_timer(%struct.TYPE_2__* %8)
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i64 %9, i64* %10, align 8
  %11 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.worker*, %struct.worker** %3, align 8
  %17 = getelementptr inbounds %struct.worker, %struct.worker* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @comm_timer_set(i32 %19, %struct.timeval* %4)
  br label %21

21:                                               ; preds = %15, %1
  ret void
}

declare dso_local i64 @autr_probe_timer(%struct.TYPE_2__*) #1

declare dso_local i32 @comm_timer_set(i32, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
