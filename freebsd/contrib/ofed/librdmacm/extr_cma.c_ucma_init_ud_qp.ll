; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init_ud_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init_ud_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_id_private = type { i32 }
%struct.ibv_qp = type { i32 }
%struct.ibv_qp_attr = type { i64, i32 }

@abi_ver = common dso_local global i32 0, align 4
@IBV_QPS_INIT = common dso_local global i32 0, align 4
@IBV_QPS_RTR = common dso_local global i32 0, align 4
@IBV_QP_STATE = common dso_local global i32 0, align 4
@IBV_QPS_RTS = common dso_local global i32 0, align 4
@IBV_QP_SQ_PSN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma_id_private*, %struct.ibv_qp*)* @ucma_init_ud_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_init_ud_qp(%struct.cma_id_private* %0, %struct.ibv_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cma_id_private*, align 8
  %5 = alloca %struct.ibv_qp*, align 8
  %6 = alloca %struct.ibv_qp_attr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cma_id_private* %0, %struct.cma_id_private** %4, align 8
  store %struct.ibv_qp* %1, %struct.ibv_qp** %5, align 8
  %9 = load i32, i32* @abi_ver, align 4
  %10 = icmp eq i32 %9, 3
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %13 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %14 = call i32 @ucma_init_ud_qp3(%struct.cma_id_private* %12, %struct.ibv_qp* %13)
  store i32 %14, i32* %3, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load i32, i32* @IBV_QPS_INIT, align 4
  %17 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 8
  %18 = load %struct.cma_id_private*, %struct.cma_id_private** %4, align 8
  %19 = getelementptr inbounds %struct.cma_id_private, %struct.cma_id_private* %18, i32 0, i32 0
  %20 = call i32 @rdma_init_qp_attr(i32* %19, %struct.ibv_qp_attr* %6, i32* %7)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %56

25:                                               ; preds = %15
  %26 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ibv_modify_qp(%struct.ibv_qp* %26, %struct.ibv_qp_attr* %6, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ERR(i32 %32)
  store i32 %33, i32* %3, align 4
  br label %56

34:                                               ; preds = %25
  %35 = load i32, i32* @IBV_QPS_RTR, align 4
  %36 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 1
  store i32 %35, i32* %36, align 8
  %37 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %38 = load i32, i32* @IBV_QP_STATE, align 4
  %39 = call i32 @ibv_modify_qp(%struct.ibv_qp* %37, %struct.ibv_qp_attr* %6, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @ERR(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %56

45:                                               ; preds = %34
  %46 = load i32, i32* @IBV_QPS_RTS, align 4
  %47 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 0
  store i64 0, i64* %48, align 8
  %49 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %50 = load i32, i32* @IBV_QP_STATE, align 4
  %51 = load i32, i32* @IBV_QP_SQ_PSN, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @ibv_modify_qp(%struct.ibv_qp* %49, %struct.ibv_qp_attr* %6, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @rdma_seterrno(i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %45, %42, %31, %23, %11
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @ucma_init_ud_qp3(%struct.cma_id_private*, %struct.ibv_qp*) #1

declare dso_local i32 @rdma_init_qp_attr(i32*, %struct.ibv_qp_attr*, i32*) #1

declare dso_local i32 @ibv_modify_qp(%struct.ibv_qp*, %struct.ibv_qp_attr*, i32) #1

declare dso_local i32 @ERR(i32) #1

declare dso_local i32 @rdma_seterrno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
