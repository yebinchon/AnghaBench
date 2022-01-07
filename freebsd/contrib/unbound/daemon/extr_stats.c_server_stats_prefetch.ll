; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_prefetch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_stats.c_server_stats_prefetch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_server_stats = type { i64, i32, i32 }
%struct.worker = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @server_stats_prefetch(%struct.ub_server_stats* %0, %struct.worker* %1) #0 {
  %3 = alloca %struct.ub_server_stats*, align 8
  %4 = alloca %struct.worker*, align 8
  store %struct.ub_server_stats* %0, %struct.ub_server_stats** %3, align 8
  store %struct.worker* %1, %struct.worker** %4, align 8
  %5 = load %struct.ub_server_stats*, %struct.ub_server_stats** %3, align 8
  %6 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 4
  %9 = load %struct.worker*, %struct.worker** %4, align 8
  %10 = getelementptr inbounds %struct.worker, %struct.worker* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ub_server_stats*, %struct.ub_server_stats** %3, align 8
  %17 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 8
  %22 = load %struct.worker*, %struct.worker** %4, align 8
  %23 = getelementptr inbounds %struct.worker, %struct.worker* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ub_server_stats*, %struct.ub_server_stats** %3, align 8
  %30 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %2
  %34 = load %struct.worker*, %struct.worker** %4, align 8
  %35 = getelementptr inbounds %struct.worker, %struct.worker* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ub_server_stats*, %struct.ub_server_stats** %3, align 8
  %42 = getelementptr inbounds %struct.ub_server_stats, %struct.ub_server_stats* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  br label %43

43:                                               ; preds = %33, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
