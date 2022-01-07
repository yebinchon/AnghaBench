; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init_ud_qp3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init_ud_qp3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_id_private = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ibv_qp = type { i32 }
%struct.ibv_qp_attr = type { i64, i32, i32, i32, i32 }

@IBV_QPS_INIT = common dso_local global i32 0, align 4
@RDMA_UDP_QKEY = common dso_local global i32 0, align 4
@IBV_QP_STATE = common dso_local global i32 0, align 4
@IBV_QP_QKEY = common dso_local global i32 0, align 4
@IBV_QP_PKEY_INDEX = common dso_local global i32 0, align 4
@IBV_QP_PORT = common dso_local global i32 0, align 4
@IBV_QPS_RTR = common dso_local global i32 0, align 4
@IBV_QPS_RTS = common dso_local global i32 0, align 4
@IBV_QP_SQ_PSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma_id_private*, %struct.ibv_qp*)* @ucma_init_ud_qp3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_init_ud_qp3(%struct.cma_id_private* %0, %struct.ibv_qp* %1) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %16 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 4
  %24 = call i32 @ucma_find_pkey(i32 %10, i32 %14, i32 %22, i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %75

29:                                               ; preds = %2
  %30 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %31 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = load i32, i32* @IBV_QPS_INIT, align 4
  %36 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @RDMA_UDP_QKEY, align 4
  %38 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %40 = load i32, i32* @IBV_QP_STATE, align 4
  %41 = load i32, i32* @IBV_QP_QKEY, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @IBV_QP_PKEY_INDEX, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IBV_QP_PORT, align 4
  %46 = or i32 %44, %45
  %47 = call i32 @ibv_modify_qp(%struct.ibv_qp* %39, %struct.ibv_qp_attr* %6, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %29
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @ERR(i32 %51)
  store i32 %52, i32* %3, align 4
  br label %75

53:                                               ; preds = %29
  %54 = load i32, i32* @IBV_QPS_RTR, align 4
  %55 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %57 = load i32, i32* @IBV_QP_STATE, align 4
  %58 = call i32 @ibv_modify_qp(%struct.ibv_qp* %56, %struct.ibv_qp_attr* %6, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @ERR(i32 %62)
  store i32 %63, i32* %3, align 4
  br label %75

64:                                               ; preds = %53
  %65 = load i32, i32* @IBV_QPS_RTS, align 4
  %66 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %69 = load i32, i32* @IBV_QP_STATE, align 4
  %70 = load i32, i32* @IBV_QP_SQ_PSN, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @ibv_modify_qp(%struct.ibv_qp* %68, %struct.ibv_qp_attr* %6, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @rdma_seterrno(i32 %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %64, %61, %50, %27
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @ucma_find_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @ibv_modify_qp(%struct.ibv_qp*, %struct.ibv_qp_attr*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rdma_seterrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
