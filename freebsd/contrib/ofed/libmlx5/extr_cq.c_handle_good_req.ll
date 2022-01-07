; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_handle_good_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_handle_good_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_wc = type { i32, i32, i32 }
%struct.mlx5_cqe64 = type { i32, i32 }
%struct.mlx5_wq = type { i32* }

@IBV_WC_WITH_IMM = common dso_local global i32 0, align 4
@SWITCH_FALLTHROUGH = common dso_local global i32 0, align 4
@IBV_WC_RDMA_WRITE = common dso_local global i32 0, align 4
@IBV_WC_SEND = common dso_local global i32 0, align 4
@IBV_WC_RDMA_READ = common dso_local global i32 0, align 4
@IBV_WC_COMP_SWAP = common dso_local global i32 0, align 4
@IBV_WC_FETCH_ADD = common dso_local global i32 0, align 4
@IBV_WC_TSO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_wc*, %struct.mlx5_cqe64*, %struct.mlx5_wq*, i32)* @handle_good_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_good_req(%struct.ibv_wc* %0, %struct.mlx5_cqe64* %1, %struct.mlx5_wq* %2, i32 %3) #0 {
  %5 = alloca %struct.ibv_wc*, align 8
  %6 = alloca %struct.mlx5_cqe64*, align 8
  %7 = alloca %struct.mlx5_wq*, align 8
  %8 = alloca i32, align 4
  store %struct.ibv_wc* %0, %struct.ibv_wc** %5, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %6, align 8
  store %struct.mlx5_wq* %2, %struct.mlx5_wq** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %10 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @be32toh(i32 %11)
  %13 = ashr i32 %12, 24
  switch i32 %13, label %72 [
    i32 133, label %14
    i32 134, label %21
    i32 131, label %25
    i32 132, label %32
    i32 130, label %32
    i32 135, label %36
    i32 137, label %46
    i32 136, label %52
    i32 128, label %58
    i32 129, label %68
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* @IBV_WC_WITH_IMM, align 4
  %16 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %17 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* @SWITCH_FALLTHROUGH, align 4
  br label %21

21:                                               ; preds = %4, %14
  %22 = load i32, i32* @IBV_WC_RDMA_WRITE, align 4
  %23 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %24 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  br label %72

25:                                               ; preds = %4
  %26 = load i32, i32* @IBV_WC_WITH_IMM, align 4
  %27 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %28 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @SWITCH_FALLTHROUGH, align 4
  br label %32

32:                                               ; preds = %4, %4, %25
  %33 = load i32, i32* @IBV_WC_SEND, align 4
  %34 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %35 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %72

36:                                               ; preds = %4
  %37 = load i32, i32* @IBV_WC_RDMA_READ, align 4
  %38 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %39 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be32toh(i32 %42)
  %44 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %45 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  br label %72

46:                                               ; preds = %4
  %47 = load i32, i32* @IBV_WC_COMP_SWAP, align 4
  %48 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %49 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %51 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %50, i32 0, i32 0
  store i32 8, i32* %51, align 4
  br label %72

52:                                               ; preds = %4
  %53 = load i32, i32* @IBV_WC_FETCH_ADD, align 4
  %54 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %55 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %57 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %56, i32 0, i32 0
  store i32 8, i32* %57, align 4
  br label %72

58:                                               ; preds = %4
  %59 = load %struct.mlx5_wq*, %struct.mlx5_wq** %7, align 8
  %60 = getelementptr inbounds %struct.mlx5_wq, %struct.mlx5_wq* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %67 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %72

68:                                               ; preds = %4
  %69 = load i32, i32* @IBV_WC_TSO, align 4
  %70 = load %struct.ibv_wc*, %struct.ibv_wc** %5, align 8
  %71 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %4, %68, %58, %52, %46, %36, %32, %21
  ret void
}

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
