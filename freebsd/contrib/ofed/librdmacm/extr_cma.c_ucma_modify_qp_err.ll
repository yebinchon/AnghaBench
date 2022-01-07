; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_modify_qp_err.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_modify_qp_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32 }
%struct.ibv_qp_attr = type { i32 }

@IBV_QPS_ERR = common dso_local global i32 0, align 4
@IBV_QP_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*)* @ucma_modify_qp_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_modify_qp_err(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.ibv_qp_attr, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  %5 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %6 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  %11 = load i32, i32* @IBV_QPS_ERR, align 4
  %12 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %4, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %14 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IBV_QP_STATE, align 4
  %17 = call i32 @ibv_modify_qp(i32 %15, %struct.ibv_qp_attr* %4, i32 %16)
  %18 = call i32 @rdma_seterrno(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %10, %9
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @rdma_seterrno(i32) #1

declare dso_local i32 @ibv_modify_qp(i32, %struct.ibv_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
