; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_req_notify_cqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_rsocket.c_ds_req_notify_cqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsocket = type { %struct.ds_qp* }
%struct.ds_qp = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rsocket*)* @ds_req_notify_cqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds_req_notify_cqs(%struct.rsocket* %0) #0 {
  %2 = alloca %struct.rsocket*, align 8
  %3 = alloca %struct.ds_qp*, align 8
  store %struct.rsocket* %0, %struct.rsocket** %2, align 8
  %4 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %5 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %4, i32 0, i32 0
  %6 = load %struct.ds_qp*, %struct.ds_qp** %5, align 8
  store %struct.ds_qp* %6, %struct.ds_qp** %3, align 8
  %7 = icmp ne %struct.ds_qp* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %33

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %27, %9
  %11 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %12 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %10
  %16 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %17 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ibv_req_notify_cq(i32 %20, i32 0)
  %22 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %23 = getelementptr inbounds %struct.ds_qp, %struct.ds_qp* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %15, %10
  %25 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %26 = call %struct.ds_qp* @ds_next_qp(%struct.ds_qp* %25)
  store %struct.ds_qp* %26, %struct.ds_qp** %3, align 8
  br label %27

27:                                               ; preds = %24
  %28 = load %struct.ds_qp*, %struct.ds_qp** %3, align 8
  %29 = load %struct.rsocket*, %struct.rsocket** %2, align 8
  %30 = getelementptr inbounds %struct.rsocket, %struct.rsocket* %29, i32 0, i32 0
  %31 = load %struct.ds_qp*, %struct.ds_qp** %30, align 8
  %32 = icmp ne %struct.ds_qp* %28, %31
  br i1 %32, label %10, label %33

33:                                               ; preds = %8, %27
  ret void
}

declare dso_local i32 @ibv_req_notify_cq(i32, i32) #1

declare dso_local %struct.ds_qp* @ds_next_qp(%struct.ds_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
