; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_open_device_1_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libibverbs/extr_compat-1_0.c___ibv_open_device_1_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context_1_0 = type { %struct.TYPE_2__, %struct.ibv_context*, %struct.ibv_device_1_0* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_device_1_0 = type { i32 }

@poll_cq_wrapper_1_0 = common dso_local global i32 0, align 4
@req_notify_cq_wrapper_1_0 = common dso_local global i32 0, align 4
@post_send_wrapper_1_0 = common dso_local global i32 0, align 4
@post_recv_wrapper_1_0 = common dso_local global i32 0, align 4
@post_srq_recv_wrapper_1_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_context_1_0* @__ibv_open_device_1_0(%struct.ibv_device_1_0* %0) #0 {
  %2 = alloca %struct.ibv_context_1_0*, align 8
  %3 = alloca %struct.ibv_device_1_0*, align 8
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_context_1_0*, align 8
  store %struct.ibv_device_1_0* %0, %struct.ibv_device_1_0** %3, align 8
  %6 = call %struct.ibv_context_1_0* @malloc(i32 40)
  store %struct.ibv_context_1_0* %6, %struct.ibv_context_1_0** %5, align 8
  %7 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %5, align 8
  %8 = icmp ne %struct.ibv_context_1_0* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.ibv_context_1_0* null, %struct.ibv_context_1_0** %2, align 8
  br label %48

10:                                               ; preds = %1
  %11 = load %struct.ibv_device_1_0*, %struct.ibv_device_1_0** %3, align 8
  %12 = getelementptr inbounds %struct.ibv_device_1_0, %struct.ibv_device_1_0* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ibv_context* @ibv_open_device(i32 %13)
  store %struct.ibv_context* %14, %struct.ibv_context** %4, align 8
  %15 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %16 = icmp ne %struct.ibv_context* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %10
  %18 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %5, align 8
  %19 = call i32 @free(%struct.ibv_context_1_0* %18)
  store %struct.ibv_context_1_0* null, %struct.ibv_context_1_0** %2, align 8
  br label %48

20:                                               ; preds = %10
  %21 = load %struct.ibv_device_1_0*, %struct.ibv_device_1_0** %3, align 8
  %22 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %5, align 8
  %23 = getelementptr inbounds %struct.ibv_context_1_0, %struct.ibv_context_1_0* %22, i32 0, i32 2
  store %struct.ibv_device_1_0* %21, %struct.ibv_device_1_0** %23, align 8
  %24 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %25 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %5, align 8
  %26 = getelementptr inbounds %struct.ibv_context_1_0, %struct.ibv_context_1_0* %25, i32 0, i32 1
  store %struct.ibv_context* %24, %struct.ibv_context** %26, align 8
  %27 = load i32, i32* @poll_cq_wrapper_1_0, align 4
  %28 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %5, align 8
  %29 = getelementptr inbounds %struct.ibv_context_1_0, %struct.ibv_context_1_0* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @req_notify_cq_wrapper_1_0, align 4
  %32 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %5, align 8
  %33 = getelementptr inbounds %struct.ibv_context_1_0, %struct.ibv_context_1_0* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @post_send_wrapper_1_0, align 4
  %36 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %5, align 8
  %37 = getelementptr inbounds %struct.ibv_context_1_0, %struct.ibv_context_1_0* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @post_recv_wrapper_1_0, align 4
  %40 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %5, align 8
  %41 = getelementptr inbounds %struct.ibv_context_1_0, %struct.ibv_context_1_0* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @post_srq_recv_wrapper_1_0, align 4
  %44 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %5, align 8
  %45 = getelementptr inbounds %struct.ibv_context_1_0, %struct.ibv_context_1_0* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %5, align 8
  store %struct.ibv_context_1_0* %47, %struct.ibv_context_1_0** %2, align 8
  br label %48

48:                                               ; preds = %20, %17, %9
  %49 = load %struct.ibv_context_1_0*, %struct.ibv_context_1_0** %2, align 8
  ret %struct.ibv_context_1_0* %49
}

declare dso_local %struct.ibv_context_1_0* @malloc(i32) #1

declare dso_local %struct.ibv_context* @ibv_open_device(i32) #1

declare dso_local i32 @free(%struct.ibv_context_1_0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
