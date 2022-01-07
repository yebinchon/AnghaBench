; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_modify_qp_rts.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_modify_qp_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32 }
%struct.ibv_qp_attr = type { i64, i32 }

@IBV_QPS_RTS = common dso_local global i32 0, align 4
@RDMA_MAX_INIT_DEPTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, i64)* @ucma_modify_qp_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_modify_qp_rts(%struct.rdma_cm_id* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rdma_cm_id*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ibv_qp_attr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @IBV_QPS_RTS, align 4
  %10 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 1
  store i32 %9, i32* %10, align 8
  %11 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %12 = call i32 @rdma_init_qp_attr(%struct.rdma_cm_id* %11, %struct.ibv_qp_attr* %6, i32* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @RDMA_MAX_INIT_DEPTH, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i64, i64* %5, align 8
  %23 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %4, align 8
  %26 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ibv_modify_qp(i32 %27, %struct.ibv_qp_attr* %6, i32 %28)
  %30 = call i32 @rdma_seterrno(i32 %29)
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %24, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @rdma_init_qp_attr(%struct.rdma_cm_id*, %struct.ibv_qp_attr*, i32*) #1

declare dso_local i32 @rdma_seterrno(i32) #1

declare dso_local i32 @ibv_modify_qp(i32, %struct.ibv_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
