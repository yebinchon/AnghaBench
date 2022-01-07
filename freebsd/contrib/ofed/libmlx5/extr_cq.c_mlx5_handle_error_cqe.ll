; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_handle_error_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_handle_error_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_err_cqe = type { i32 }

@IBV_WC_LOC_LEN_ERR = common dso_local global i32 0, align 4
@IBV_WC_LOC_QP_OP_ERR = common dso_local global i32 0, align 4
@IBV_WC_LOC_PROT_ERR = common dso_local global i32 0, align 4
@IBV_WC_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@IBV_WC_MW_BIND_ERR = common dso_local global i32 0, align 4
@IBV_WC_BAD_RESP_ERR = common dso_local global i32 0, align 4
@IBV_WC_LOC_ACCESS_ERR = common dso_local global i32 0, align 4
@IBV_WC_REM_INV_REQ_ERR = common dso_local global i32 0, align 4
@IBV_WC_REM_ACCESS_ERR = common dso_local global i32 0, align 4
@IBV_WC_REM_OP_ERR = common dso_local global i32 0, align 4
@IBV_WC_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IBV_WC_RNR_RETRY_EXC_ERR = common dso_local global i32 0, align 4
@IBV_WC_REM_ABORT_ERR = common dso_local global i32 0, align 4
@IBV_WC_GENERAL_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_err_cqe*)* @mlx5_handle_error_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_handle_error_cqe(%struct.mlx5_err_cqe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_err_cqe*, align 8
  store %struct.mlx5_err_cqe* %0, %struct.mlx5_err_cqe** %3, align 8
  %4 = load %struct.mlx5_err_cqe*, %struct.mlx5_err_cqe** %3, align 8
  %5 = getelementptr inbounds %struct.mlx5_err_cqe, %struct.mlx5_err_cqe* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %33 [
    i32 138, label %7
    i32 136, label %9
    i32 137, label %11
    i32 128, label %13
    i32 135, label %15
    i32 140, label %17
    i32 139, label %19
    i32 132, label %21
    i32 133, label %23
    i32 131, label %25
    i32 129, label %27
    i32 130, label %29
    i32 134, label %31
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @IBV_WC_LOC_LEN_ERR, align 4
  store i32 %8, i32* %2, align 4
  br label %35

9:                                                ; preds = %1
  %10 = load i32, i32* @IBV_WC_LOC_QP_OP_ERR, align 4
  store i32 %10, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load i32, i32* @IBV_WC_LOC_PROT_ERR, align 4
  store i32 %12, i32* %2, align 4
  br label %35

13:                                               ; preds = %1
  %14 = load i32, i32* @IBV_WC_WR_FLUSH_ERR, align 4
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load i32, i32* @IBV_WC_MW_BIND_ERR, align 4
  store i32 %16, i32* %2, align 4
  br label %35

17:                                               ; preds = %1
  %18 = load i32, i32* @IBV_WC_BAD_RESP_ERR, align 4
  store i32 %18, i32* %2, align 4
  br label %35

19:                                               ; preds = %1
  %20 = load i32, i32* @IBV_WC_LOC_ACCESS_ERR, align 4
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load i32, i32* @IBV_WC_REM_INV_REQ_ERR, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load i32, i32* @IBV_WC_REM_ACCESS_ERR, align 4
  store i32 %24, i32* %2, align 4
  br label %35

25:                                               ; preds = %1
  %26 = load i32, i32* @IBV_WC_REM_OP_ERR, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %1
  %28 = load i32, i32* @IBV_WC_RETRY_EXC_ERR, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %1
  %30 = load i32, i32* @IBV_WC_RNR_RETRY_EXC_ERR, align 4
  store i32 %30, i32* %2, align 4
  br label %35

31:                                               ; preds = %1
  %32 = load i32, i32* @IBV_WC_REM_ABORT_ERR, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %1
  %34 = load i32, i32* @IBV_WC_GENERAL_ERR, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %31, %29, %27, %25, %23, %21, %19, %17, %15, %13, %11, %9, %7
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
