; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_stat_timer_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_stat_timer_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"mesh has\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @worker_stat_timer_cb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.worker*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.worker*
  store %struct.worker* %5, %struct.worker** %3, align 8
  %6 = load %struct.worker*, %struct.worker** %3, align 8
  %7 = getelementptr inbounds %struct.worker, %struct.worker* %6, i32 0, i32 3
  %8 = load %struct.worker*, %struct.worker** %3, align 8
  %9 = load %struct.worker*, %struct.worker** %3, align 8
  %10 = getelementptr inbounds %struct.worker, %struct.worker* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @server_stats_log(i32* %7, %struct.worker* %8, i32 %11)
  %13 = load %struct.worker*, %struct.worker** %3, align 8
  %14 = getelementptr inbounds %struct.worker, %struct.worker* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mesh_stats(i32 %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.worker*, %struct.worker** %3, align 8
  %19 = call i32 @worker_mem_report(%struct.worker* %18, i32* null)
  %20 = load %struct.worker*, %struct.worker** %3, align 8
  %21 = getelementptr inbounds %struct.worker, %struct.worker* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.worker*, %struct.worker** %3, align 8
  %30 = call i32 @shm_main_run(%struct.worker* %29)
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.worker*, %struct.worker** %3, align 8
  %33 = getelementptr inbounds %struct.worker, %struct.worker* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %31
  %41 = load %struct.worker*, %struct.worker** %3, align 8
  %42 = call i32 @worker_stats_clear(%struct.worker* %41)
  br label %43

43:                                               ; preds = %40, %31
  %44 = load %struct.worker*, %struct.worker** %3, align 8
  %45 = call i32 @worker_restart_timer(%struct.worker* %44)
  ret void
}

declare dso_local i32 @server_stats_log(i32*, %struct.worker*, i32) #1

declare dso_local i32 @mesh_stats(i32, i8*) #1

declare dso_local i32 @worker_mem_report(%struct.worker*, i32*) #1

declare dso_local i32 @shm_main_run(%struct.worker*) #1

declare dso_local i32 @worker_stats_clear(%struct.worker*) #1

declare dso_local i32 @worker_restart_timer(%struct.worker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
