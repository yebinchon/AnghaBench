; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_rdma_create_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_rdma_create_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64 }
%struct.ibv_pd = type { i32 }
%struct.ibv_srq_init_attr = type { i32, %struct.ibv_pd*, i32 }
%struct.ibv_srq_init_attr_ex = type { i32, %struct.ibv_pd*, i32 }

@IBV_SRQ_INIT_ATTR_TYPE = common dso_local global i32 0, align 4
@IBV_SRQ_INIT_ATTR_PD = common dso_local global i32 0, align 4
@IBV_QPT_XRC_RECV = common dso_local global i64 0, align 8
@IBV_SRQT_XRC = common dso_local global i32 0, align 4
@IBV_SRQT_BASIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_create_srq(%struct.rdma_cm_id* %0, %struct.ibv_pd* %1, %struct.ibv_srq_init_attr* %2) #0 {
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.ibv_pd*, align 8
  %6 = alloca %struct.ibv_srq_init_attr*, align 8
  %7 = alloca %struct.ibv_srq_init_attr_ex, align 8
  %8 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.ibv_pd* %1, %struct.ibv_pd** %5, align 8
  store %struct.ibv_srq_init_attr* %2, %struct.ibv_srq_init_attr** %6, align 8
  %9 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %6, align 8
  %10 = bitcast %struct.ibv_srq_init_attr* %9 to %struct.ibv_srq_init_attr_ex*
  %11 = call i32 @memcpy(%struct.ibv_srq_init_attr_ex* %7, %struct.ibv_srq_init_attr_ex* %10, i32 24)
  %12 = load i32, i32* @IBV_SRQ_INIT_ATTR_TYPE, align 4
  %13 = load i32, i32* @IBV_SRQ_INIT_ATTR_PD, align 4
  %14 = or i32 %12, %13
  %15 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %7, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %17 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IBV_QPT_XRC_RECV, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @IBV_SRQT_XRC, align 4
  %23 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %7, i32 0, i32 2
  store i32 %22, i32* %23, align 8
  br label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @IBV_SRQT_BASIC, align 4
  %26 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %7, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.ibv_pd*, %struct.ibv_pd** %5, align 8
  %29 = getelementptr inbounds %struct.ibv_srq_init_attr_ex, %struct.ibv_srq_init_attr_ex* %7, i32 0, i32 1
  store %struct.ibv_pd* %28, %struct.ibv_pd** %29, align 8
  %30 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %31 = call i32 @rdma_create_srq_ex(%struct.rdma_cm_id* %30, %struct.ibv_srq_init_attr_ex* %7)
  store i32 %31, i32* %8, align 4
  %32 = load %struct.ibv_srq_init_attr*, %struct.ibv_srq_init_attr** %6, align 8
  %33 = bitcast %struct.ibv_srq_init_attr* %32 to %struct.ibv_srq_init_attr_ex*
  %34 = call i32 @memcpy(%struct.ibv_srq_init_attr_ex* %33, %struct.ibv_srq_init_attr_ex* %7, i32 24)
  %35 = load i32, i32* %8, align 4
  ret i32 %35
}

declare dso_local i32 @memcpy(%struct.ibv_srq_init_attr_ex*, %struct.ibv_srq_init_attr_ex*, i32) #1

declare dso_local i32 @rdma_create_srq_ex(%struct.rdma_cm_id*, %struct.ibv_srq_init_attr_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
