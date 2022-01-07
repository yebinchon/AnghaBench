; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init_conn_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_init_conn_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_id_private = type { i32 }
%struct.ibv_qp = type { i32 }
%struct.ibv_qp_attr = type { i32 }

@abi_ver = common dso_local global i32 0, align 4
@IBV_QPS_INIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cma_id_private*, %struct.ibv_qp*)* @ucma_init_conn_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucma_init_conn_qp(%struct.cma_id_private* %0, %struct.ibv_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cma_id_private*, align 8
  %5 = alloca %struct.ibv_qp*, align 8
  %6 = alloca %struct.ibv_qp_attr, align 4
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
  %14 = call i32 @ucma_init_conn_qp3(%struct.cma_id_private* %12, %struct.ibv_qp* %13)
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load i32, i32* @IBV_QPS_INIT, align 4
  %17 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 4
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
  br label %30

25:                                               ; preds = %15
  %26 = load %struct.ibv_qp*, %struct.ibv_qp** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @ibv_modify_qp(%struct.ibv_qp* %26, %struct.ibv_qp_attr* %6, i32 %27)
  %29 = call i32 @rdma_seterrno(i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %23, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @ucma_init_conn_qp3(%struct.cma_id_private*, %struct.ibv_qp*) #1

declare dso_local i32 @rdma_init_qp_attr(i32*, %struct.ibv_qp_attr*, i32*) #1

declare dso_local i32 @rdma_seterrno(i32) #1

declare dso_local i32 @ibv_modify_qp(%struct.ibv_qp*, %struct.ibv_qp_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
