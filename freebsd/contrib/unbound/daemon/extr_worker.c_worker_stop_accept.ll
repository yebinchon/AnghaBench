; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_stop_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_stop_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @worker_stop_accept(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.worker*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.worker*
  store %struct.worker* %5, %struct.worker** %3, align 8
  %6 = load %struct.worker*, %struct.worker** %3, align 8
  %7 = getelementptr inbounds %struct.worker, %struct.worker* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @listen_stop_accept(i32 %8)
  %10 = load %struct.worker*, %struct.worker** %3, align 8
  %11 = getelementptr inbounds %struct.worker, %struct.worker* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.worker*, %struct.worker** %3, align 8
  %16 = getelementptr inbounds %struct.worker, %struct.worker* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @daemon_remote_stop_accept(i32 %19)
  br label %21

21:                                               ; preds = %14, %1
  ret void
}

declare dso_local i32 @listen_stop_accept(i32) #1

declare dso_local i32 @daemon_remote_stop_accept(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
