; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___ibv_ack_async_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_device.c___ibv_ack_async_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_async_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ibv_wq*, %struct.ibv_srq*, %struct.ibv_qp*, %struct.ibv_cq* }
%struct.ibv_wq = type { i32, i32, i32 }
%struct.ibv_srq = type { i32, i32, i32 }
%struct.ibv_qp = type { i32, i32, i32 }
%struct.ibv_cq = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ibv_ack_async_event(%struct.ibv_async_event* %0) #0 {
  %2 = alloca %struct.ibv_async_event*, align 8
  %3 = alloca %struct.ibv_cq*, align 8
  %4 = alloca %struct.ibv_qp*, align 8
  %5 = alloca %struct.ibv_srq*, align 8
  %6 = alloca %struct.ibv_wq*, align 8
  store %struct.ibv_async_event* %0, %struct.ibv_async_event** %2, align 8
  %7 = load %struct.ibv_async_event*, %struct.ibv_async_event** %2, align 8
  %8 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %82 [
    i32 138, label %10
    i32 134, label %28
    i32 132, label %28
    i32 135, label %28
    i32 139, label %28
    i32 131, label %28
    i32 137, label %28
    i32 136, label %28
    i32 133, label %28
    i32 130, label %46
    i32 129, label %46
    i32 128, label %64
  ]

10:                                               ; preds = %1
  %11 = load %struct.ibv_async_event*, %struct.ibv_async_event** %2, align 8
  %12 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 3
  %14 = load %struct.ibv_cq*, %struct.ibv_cq** %13, align 8
  store %struct.ibv_cq* %14, %struct.ibv_cq** %3, align 8
  %15 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %16 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %15, i32 0, i32 0
  %17 = call i32 @pthread_mutex_lock(i32* %16)
  %18 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %19 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %23 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %22, i32 0, i32 1
  %24 = call i32 @pthread_cond_signal(i32* %23)
  %25 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %26 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %25, i32 0, i32 0
  %27 = call i32 @pthread_mutex_unlock(i32* %26)
  br label %83

28:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  %29 = load %struct.ibv_async_event*, %struct.ibv_async_event** %2, align 8
  %30 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load %struct.ibv_qp*, %struct.ibv_qp** %31, align 8
  store %struct.ibv_qp* %32, %struct.ibv_qp** %4, align 8
  %33 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %34 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %33, i32 0, i32 0
  %35 = call i32 @pthread_mutex_lock(i32* %34)
  %36 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %37 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %41 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %40, i32 0, i32 1
  %42 = call i32 @pthread_cond_signal(i32* %41)
  %43 = load %struct.ibv_qp*, %struct.ibv_qp** %4, align 8
  %44 = getelementptr inbounds %struct.ibv_qp, %struct.ibv_qp* %43, i32 0, i32 0
  %45 = call i32 @pthread_mutex_unlock(i32* %44)
  br label %83

46:                                               ; preds = %1, %1
  %47 = load %struct.ibv_async_event*, %struct.ibv_async_event** %2, align 8
  %48 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.ibv_srq*, %struct.ibv_srq** %49, align 8
  store %struct.ibv_srq* %50, %struct.ibv_srq** %5, align 8
  %51 = load %struct.ibv_srq*, %struct.ibv_srq** %5, align 8
  %52 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %51, i32 0, i32 0
  %53 = call i32 @pthread_mutex_lock(i32* %52)
  %54 = load %struct.ibv_srq*, %struct.ibv_srq** %5, align 8
  %55 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.ibv_srq*, %struct.ibv_srq** %5, align 8
  %59 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %58, i32 0, i32 1
  %60 = call i32 @pthread_cond_signal(i32* %59)
  %61 = load %struct.ibv_srq*, %struct.ibv_srq** %5, align 8
  %62 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %61, i32 0, i32 0
  %63 = call i32 @pthread_mutex_unlock(i32* %62)
  br label %83

64:                                               ; preds = %1
  %65 = load %struct.ibv_async_event*, %struct.ibv_async_event** %2, align 8
  %66 = getelementptr inbounds %struct.ibv_async_event, %struct.ibv_async_event* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load %struct.ibv_wq*, %struct.ibv_wq** %67, align 8
  store %struct.ibv_wq* %68, %struct.ibv_wq** %6, align 8
  %69 = load %struct.ibv_wq*, %struct.ibv_wq** %6, align 8
  %70 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %69, i32 0, i32 0
  %71 = call i32 @pthread_mutex_lock(i32* %70)
  %72 = load %struct.ibv_wq*, %struct.ibv_wq** %6, align 8
  %73 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.ibv_wq*, %struct.ibv_wq** %6, align 8
  %77 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %76, i32 0, i32 1
  %78 = call i32 @pthread_cond_signal(i32* %77)
  %79 = load %struct.ibv_wq*, %struct.ibv_wq** %6, align 8
  %80 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %79, i32 0, i32 0
  %81 = call i32 @pthread_mutex_unlock(i32* %80)
  br label %83

82:                                               ; preds = %1
  br label %83

83:                                               ; preds = %82, %64, %46, %28, %10
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
