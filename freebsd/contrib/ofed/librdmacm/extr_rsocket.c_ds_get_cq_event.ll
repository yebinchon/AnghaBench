; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_get_cq_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_get_cq_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { i64, i32 }
%struct.epoll_event = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ds_qp* }
%struct.ds_qp = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ibv_cq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsocket*)* @ds_get_cq_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds_get_cq_event(%struct.rsocket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsocket*, align 8
  %4 = alloca %struct.epoll_event, align 8
  %5 = alloca %struct.ds_qp*, align 8
  %6 = alloca %struct.ibv_cq*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.rsocket* %0, %struct.rsocket** %3, align 8
  %9 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %10 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %16 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @epoll_wait(i32 %17, %struct.epoll_event* %4, i32 1, i32 -1)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %4, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.ds_qp*, %struct.ds_qp** %25, align 8
  store %struct.ds_qp* %26, %struct.ds_qp** %5, align 8
  %27 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %28 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ibv_get_cq_event(i32 %31, %struct.ibv_cq** %6, i8** %7)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %46, label %35

35:                                               ; preds = %23
  %36 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %37 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @ibv_ack_cq_events(i32 %40, i32 1)
  %42 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  %43 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.rsocket*, %struct.rsocket** %3, align 8
  %45 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %35, %23
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %21, %13
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare dso_local i32 @ibv_get_cq_event(i32, %struct.ibv_cq**, i8**) #1

declare dso_local i32 @ibv_ack_cq_events(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
