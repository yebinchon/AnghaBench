; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_read_wc_opcode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_read_wc_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.mlx4_cq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MLX4_CQE_IS_SEND_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OPCODE_MASK = common dso_local global i32 0, align 4
@IBV_WC_RDMA_WRITE = common dso_local global i32 0, align 4
@IBV_WC_SEND = common dso_local global i32 0, align 4
@IBV_WC_RDMA_READ = common dso_local global i32 0, align 4
@IBV_WC_COMP_SWAP = common dso_local global i32 0, align 4
@IBV_WC_FETCH_ADD = common dso_local global i32 0, align 4
@IBV_WC_LOCAL_INV = common dso_local global i32 0, align 4
@IBV_WC_BIND_MW = common dso_local global i32 0, align 4
@IBV_WC_RECV_RDMA_WITH_IMM = common dso_local global i32 0, align 4
@IBV_WC_RECV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_cq_ex*)* @mlx4_cq_read_wc_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_cq_read_wc_opcode(%struct.ibv_cq_ex* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_cq_ex*, align 8
  %4 = alloca %struct.mlx4_cq*, align 8
  store %struct.ibv_cq_ex* %0, %struct.ibv_cq_ex** %3, align 8
  %5 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %3, align 8
  %6 = call i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %5)
  %7 = call %struct.mlx4_cq* @to_mcq(i32 %6)
  store %struct.mlx4_cq* %7, %struct.mlx4_cq** %4, align 8
  %8 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MLX4_CQE_IS_SEND_MASK, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %39

16:                                               ; preds = %1
  %17 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %23 = and i32 %21, %22
  switch i32 %23, label %38 [
    i32 135, label %24
    i32 136, label %24
    i32 132, label %26
    i32 133, label %26
    i32 134, label %26
    i32 137, label %28
    i32 141, label %30
    i32 140, label %32
    i32 138, label %34
    i32 139, label %36
  ]

24:                                               ; preds = %16, %16
  %25 = load i32, i32* @IBV_WC_RDMA_WRITE, align 4
  store i32 %25, i32* %2, align 4
  br label %53

26:                                               ; preds = %16, %16, %16
  %27 = load i32, i32* @IBV_WC_SEND, align 4
  store i32 %27, i32* %2, align 4
  br label %53

28:                                               ; preds = %16
  %29 = load i32, i32* @IBV_WC_RDMA_READ, align 4
  store i32 %29, i32* %2, align 4
  br label %53

30:                                               ; preds = %16
  %31 = load i32, i32* @IBV_WC_COMP_SWAP, align 4
  store i32 %31, i32* %2, align 4
  br label %53

32:                                               ; preds = %16
  %33 = load i32, i32* @IBV_WC_FETCH_ADD, align 4
  store i32 %33, i32* %2, align 4
  br label %53

34:                                               ; preds = %16
  %35 = load i32, i32* @IBV_WC_LOCAL_INV, align 4
  store i32 %35, i32* %2, align 4
  br label %53

36:                                               ; preds = %16
  %37 = load i32, i32* @IBV_WC_BIND_MW, align 4
  store i32 %37, i32* %2, align 4
  br label %53

38:                                               ; preds = %16
  br label %52

39:                                               ; preds = %1
  %40 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %41 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %46 = and i32 %44, %45
  switch i32 %46, label %51 [
    i32 131, label %47
    i32 128, label %49
    i32 129, label %49
    i32 130, label %49
  ]

47:                                               ; preds = %39
  %48 = load i32, i32* @IBV_WC_RECV_RDMA_WITH_IMM, align 4
  store i32 %48, i32* %2, align 4
  br label %53

49:                                               ; preds = %39, %39, %39
  %50 = load i32, i32* @IBV_WC_RECV, align 4
  store i32 %50, i32* %2, align 4
  br label %53

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %38
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %49, %47, %36, %34, %32, %30, %28, %26, %24
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.mlx4_cq* @to_mcq(i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
