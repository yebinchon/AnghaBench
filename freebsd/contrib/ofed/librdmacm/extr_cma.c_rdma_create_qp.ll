; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_rdma_create_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_rdma_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { %struct.ibv_pd* }
%struct.ibv_pd = type { i32 }
%struct.ibv_qp_init_attr = type { %struct.ibv_pd*, i32 }
%struct.ibv_qp_init_attr_ex = type { %struct.ibv_pd*, i32 }

@IBV_QP_INIT_ATTR_PD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rdma_create_qp(%struct.rdma_cm_id* %0, %struct.ibv_pd* %1, %struct.ibv_qp_init_attr* %2) #0 {
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca %struct.ibv_pd*, align 8
  %6 = alloca %struct.ibv_qp_init_attr*, align 8
  %7 = alloca %struct.ibv_qp_init_attr_ex, align 8
  %8 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store %struct.ibv_pd* %1, %struct.ibv_pd** %5, align 8
  store %struct.ibv_qp_init_attr* %2, %struct.ibv_qp_init_attr** %6, align 8
  %9 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %6, align 8
  %10 = bitcast %struct.ibv_qp_init_attr* %9 to %struct.ibv_qp_init_attr_ex*
  %11 = call i32 @memcpy(%struct.ibv_qp_init_attr_ex* %7, %struct.ibv_qp_init_attr_ex* %10, i32 16)
  %12 = load i32, i32* @IBV_QP_INIT_ATTR_PD, align 4
  %13 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %7, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  %14 = load %struct.ibv_pd*, %struct.ibv_pd** %5, align 8
  %15 = icmp ne %struct.ibv_pd* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load %struct.ibv_pd*, %struct.ibv_pd** %5, align 8
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %20 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %19, i32 0, i32 0
  %21 = load %struct.ibv_pd*, %struct.ibv_pd** %20, align 8
  br label %22

22:                                               ; preds = %18, %16
  %23 = phi %struct.ibv_pd* [ %17, %16 ], [ %21, %18 ]
  %24 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %7, i32 0, i32 0
  store %struct.ibv_pd* %23, %struct.ibv_pd** %24, align 8
  %25 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %26 = call i32 @rdma_create_qp_ex(%struct.rdma_cm_id* %25, %struct.ibv_qp_init_attr_ex* %7)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %6, align 8
  %28 = bitcast %struct.ibv_qp_init_attr* %27 to %struct.ibv_qp_init_attr_ex*
  %29 = call i32 @memcpy(%struct.ibv_qp_init_attr_ex* %28, %struct.ibv_qp_init_attr_ex* %7, i32 16)
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local i32 @memcpy(%struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex*, i32) #1

declare dso_local i32 @rdma_create_qp_ex(%struct.rdma_cm_id*, %struct.ibv_qp_init_attr_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
