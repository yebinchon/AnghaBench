; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_preload_dequeue_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_idr.c_idr_preload_dequeue_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.idr_layer = type { %struct.idr_layer** }
%struct.linux_idr_cache = type { i32, %struct.idr_layer*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.idr_layer* (%struct.linux_idr_cache*)* @idr_preload_dequeue_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.idr_layer* @idr_preload_dequeue_locked(%struct.linux_idr_cache* %0) #0 {
  %2 = alloca %struct.idr_layer*, align 8
  %3 = alloca %struct.linux_idr_cache*, align 8
  %4 = alloca %struct.idr_layer*, align 8
  store %struct.linux_idr_cache* %0, %struct.linux_idr_cache** %3, align 8
  %5 = load %struct.linux_idr_cache*, %struct.linux_idr_cache** %3, align 8
  %6 = getelementptr inbounds %struct.linux_idr_cache, %struct.linux_idr_cache* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i64 @mtx_owned(i32* %7)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.idr_layer* null, %struct.idr_layer** %2, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load %struct.linux_idr_cache*, %struct.linux_idr_cache** %3, align 8
  %13 = getelementptr inbounds %struct.linux_idr_cache, %struct.linux_idr_cache* %12, i32 0, i32 1
  %14 = load %struct.idr_layer*, %struct.idr_layer** %13, align 8
  store %struct.idr_layer* %14, %struct.idr_layer** %4, align 8
  %15 = load %struct.idr_layer*, %struct.idr_layer** %4, align 8
  %16 = icmp ne %struct.idr_layer* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %11
  %21 = load %struct.idr_layer*, %struct.idr_layer** %4, align 8
  %22 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %21, i32 0, i32 0
  %23 = load %struct.idr_layer**, %struct.idr_layer*** %22, align 8
  %24 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %23, i64 0
  %25 = load %struct.idr_layer*, %struct.idr_layer** %24, align 8
  %26 = load %struct.linux_idr_cache*, %struct.linux_idr_cache** %3, align 8
  %27 = getelementptr inbounds %struct.linux_idr_cache, %struct.linux_idr_cache* %26, i32 0, i32 1
  store %struct.idr_layer* %25, %struct.idr_layer** %27, align 8
  %28 = load %struct.linux_idr_cache*, %struct.linux_idr_cache** %3, align 8
  %29 = getelementptr inbounds %struct.linux_idr_cache, %struct.linux_idr_cache* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.idr_layer*, %struct.idr_layer** %4, align 8
  %33 = getelementptr inbounds %struct.idr_layer, %struct.idr_layer* %32, i32 0, i32 0
  %34 = load %struct.idr_layer**, %struct.idr_layer*** %33, align 8
  %35 = getelementptr inbounds %struct.idr_layer*, %struct.idr_layer** %34, i64 0
  store %struct.idr_layer* null, %struct.idr_layer** %35, align 8
  br label %36

36:                                               ; preds = %20, %11
  %37 = load %struct.idr_layer*, %struct.idr_layer** %4, align 8
  store %struct.idr_layer* %37, %struct.idr_layer** %2, align 8
  br label %38

38:                                               ; preds = %36, %10
  %39 = load %struct.idr_layer*, %struct.idr_layer** %2, align 8
  ret %struct.idr_layer* %39
}

declare dso_local i64 @mtx_owned(i32*) #1

declare dso_local i64 @likely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
