; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init_conn_qp3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init_conn_qp3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_id_private = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.ibv_qp = type { i32 }
%struct.ibv_qp_attr = type { i64, i32, i32, i32 }

@IBV_QPS_INIT = common dso_local global i32 0, align 4
@IBV_QP_STATE = common dso_local global i32 0, align 4
@IBV_QP_ACCESS_FLAGS = common dso_local global i32 0, align 4
@IBV_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IBV_QP_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma_id_private*, %struct.ibv_qp*)* @ucma_init_conn_qp3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_init_conn_qp3(%struct.cma_id_private* %0, %struct.ibv_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cma_id_private*, align 8
  %5 = alloca %struct.ibv_qp*, align 8
  %6 = alloca %struct.ibv_qp_attr, align 8
  %7 = alloca i32, align 4
  store %struct.cma_id_private* %0, %struct.cma_id_private** %4, align 8
  store %struct.ibv_qp* %1, %struct.ibv_qp** %5, align 8
  %8 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %9 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %12 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %16 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 3
  %24 = call i32 @ucma_find_pkey(i32 %10, i32 %14, i32 %22, i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %49

29:                                               ; preds = %2
  %30 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %31 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 2
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @IBV_QPS_INIT, align 4
  %36 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %39 = load i32, i32* @IBV_QP_STATE, align 4
  %40 = load i32, i32* @IBV_QP_ACCESS_FLAGS, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @IBV_QP_PKEY_INDEX, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IBV_QP_PORT, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @ibv_modify_qp(%struct.ibv_qp* %38, %struct.ibv_qp_attr* %6, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @rdma_seterrno(i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %29, %27
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ucma_find_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @ibv_modify_qp(%struct.ibv_qp*, %struct.ibv_qp_attr*, i32) #1

declare dso_local i32 @rdma_seterrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
