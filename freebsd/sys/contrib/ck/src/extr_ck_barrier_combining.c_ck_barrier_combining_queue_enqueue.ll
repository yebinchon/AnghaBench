; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_combining.c_ck_barrier_combining_queue_enqueue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ck/src/extr_ck_barrier_combining.c_ck_barrier_combining_queue_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ck_barrier_combining_queue = type { %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group* }
%struct.ck_barrier_combining_group = type { %struct.ck_barrier_combining_group* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ck_barrier_combining_queue*, %struct.ck_barrier_combining_group*)* @ck_barrier_combining_queue_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ck_barrier_combining_queue_enqueue(%struct.ck_barrier_combining_queue* %0, %struct.ck_barrier_combining_group* %1) #0 {
  %3 = alloca %struct.ck_barrier_combining_queue*, align 8
  %4 = alloca %struct.ck_barrier_combining_group*, align 8
  store %struct.ck_barrier_combining_queue* %0, %struct.ck_barrier_combining_queue** %3, align 8
  store %struct.ck_barrier_combining_group* %1, %struct.ck_barrier_combining_group** %4, align 8
  %5 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %4, align 8
  %6 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %5, i32 0, i32 0
  store %struct.ck_barrier_combining_group* null, %struct.ck_barrier_combining_group** %6, align 8
  %7 = load %struct.ck_barrier_combining_queue*, %struct.ck_barrier_combining_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ck_barrier_combining_queue, %struct.ck_barrier_combining_queue* %7, i32 0, i32 1
  %9 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %8, align 8
  %10 = icmp eq %struct.ck_barrier_combining_group* %9, null
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %4, align 8
  %13 = load %struct.ck_barrier_combining_queue*, %struct.ck_barrier_combining_queue** %3, align 8
  %14 = getelementptr inbounds %struct.ck_barrier_combining_queue, %struct.ck_barrier_combining_queue* %13, i32 0, i32 0
  store %struct.ck_barrier_combining_group* %12, %struct.ck_barrier_combining_group** %14, align 8
  %15 = load %struct.ck_barrier_combining_queue*, %struct.ck_barrier_combining_queue** %3, align 8
  %16 = getelementptr inbounds %struct.ck_barrier_combining_queue, %struct.ck_barrier_combining_queue* %15, i32 0, i32 1
  store %struct.ck_barrier_combining_group* %12, %struct.ck_barrier_combining_group** %16, align 8
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %4, align 8
  %19 = load %struct.ck_barrier_combining_queue*, %struct.ck_barrier_combining_queue** %3, align 8
  %20 = getelementptr inbounds %struct.ck_barrier_combining_queue, %struct.ck_barrier_combining_queue* %19, i32 0, i32 0
  %21 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %20, align 8
  %22 = getelementptr inbounds %struct.ck_barrier_combining_group, %struct.ck_barrier_combining_group* %21, i32 0, i32 0
  store %struct.ck_barrier_combining_group* %18, %struct.ck_barrier_combining_group** %22, align 8
  %23 = load %struct.ck_barrier_combining_group*, %struct.ck_barrier_combining_group** %4, align 8
  %24 = load %struct.ck_barrier_combining_queue*, %struct.ck_barrier_combining_queue** %3, align 8
  %25 = getelementptr inbounds %struct.ck_barrier_combining_queue, %struct.ck_barrier_combining_queue* %24, i32 0, i32 0
  store %struct.ck_barrier_combining_group* %23, %struct.ck_barrier_combining_group** %25, align 8
  br label %26

26:                                               ; preds = %17, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
