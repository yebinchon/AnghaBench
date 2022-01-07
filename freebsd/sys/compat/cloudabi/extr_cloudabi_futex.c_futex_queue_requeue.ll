; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_queue_requeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_futex.c_futex_queue_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.futex_queue = type { i32, i32 }
%struct.futex_waiter = type { %struct.futex_queue* }

@fw_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.futex_queue*, %struct.futex_queue*, i32)* @futex_queue_requeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @futex_queue_requeue(%struct.futex_queue* %0, %struct.futex_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.futex_queue*, align 8
  %5 = alloca %struct.futex_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.futex_waiter*, align 8
  store %struct.futex_queue* %0, %struct.futex_queue** %4, align 8
  store %struct.futex_queue* %1, %struct.futex_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %8

8:                                                ; preds = %20, %3
  %9 = load i32, i32* %6, align 4
  %10 = add i32 %9, -1
  store i32 %10, i32* %6, align 4
  %11 = icmp ugt i32 %9, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %8
  %13 = load %struct.futex_queue*, %struct.futex_queue** %4, align 8
  %14 = getelementptr inbounds %struct.futex_queue, %struct.futex_queue* %13, i32 0, i32 1
  %15 = call i32 @STAILQ_EMPTY(i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi i1 [ false, %8 ], [ %17, %12 ]
  br i1 %19, label %20, label %44

20:                                               ; preds = %18
  %21 = load %struct.futex_queue*, %struct.futex_queue** %4, align 8
  %22 = getelementptr inbounds %struct.futex_queue, %struct.futex_queue* %21, i32 0, i32 1
  %23 = call %struct.futex_waiter* @STAILQ_FIRST(i32* %22)
  store %struct.futex_waiter* %23, %struct.futex_waiter** %7, align 8
  %24 = load %struct.futex_queue*, %struct.futex_queue** %4, align 8
  %25 = getelementptr inbounds %struct.futex_queue, %struct.futex_queue* %24, i32 0, i32 1
  %26 = load i32, i32* @fw_next, align 4
  %27 = call i32 @STAILQ_REMOVE_HEAD(i32* %25, i32 %26)
  %28 = load %struct.futex_queue*, %struct.futex_queue** %4, align 8
  %29 = getelementptr inbounds %struct.futex_queue, %struct.futex_queue* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.futex_queue*, %struct.futex_queue** %5, align 8
  %33 = load %struct.futex_waiter*, %struct.futex_waiter** %7, align 8
  %34 = getelementptr inbounds %struct.futex_waiter, %struct.futex_waiter* %33, i32 0, i32 0
  store %struct.futex_queue* %32, %struct.futex_queue** %34, align 8
  %35 = load %struct.futex_queue*, %struct.futex_queue** %5, align 8
  %36 = getelementptr inbounds %struct.futex_queue, %struct.futex_queue* %35, i32 0, i32 1
  %37 = load %struct.futex_waiter*, %struct.futex_waiter** %7, align 8
  %38 = load i32, i32* @fw_next, align 4
  %39 = call i32 @STAILQ_INSERT_TAIL(i32* %36, %struct.futex_waiter* %37, i32 %38)
  %40 = load %struct.futex_queue*, %struct.futex_queue** %5, align 8
  %41 = getelementptr inbounds %struct.futex_queue, %struct.futex_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  br label %8

44:                                               ; preds = %18
  ret void
}

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local %struct.futex_waiter* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.futex_waiter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
