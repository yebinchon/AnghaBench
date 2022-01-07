; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_handle_good_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_handle_good_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_wc = type { i32, i8*, i64 }
%struct.mlx4_cqe = type { i32, i32 }

@MLX4_CQE_OPCODE_MASK = common dso_local global i32 0, align 4
@IBV_WC_WITH_IMM = common dso_local global i64 0, align 8
@SWITCH_FALLTHROUGH = common dso_local global i32 0, align 4
@IBV_WC_RDMA_WRITE = common dso_local global i8* null, align 8
@IBV_WC_SEND = common dso_local global i8* null, align 8
@IBV_WC_RDMA_READ = common dso_local global i8* null, align 8
@IBV_WC_COMP_SWAP = common dso_local global i8* null, align 8
@IBV_WC_FETCH_ADD = common dso_local global i8* null, align 8
@IBV_WC_LOCAL_INV = common dso_local global i8* null, align 8
@IBV_WC_BIND_MW = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibv_wc*, %struct.mlx4_cqe*)* @handle_good_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_good_req(%struct.ibv_wc* %0, %struct.mlx4_cqe* %1) #0 {
  %3 = alloca %struct.ibv_wc*, align 8
  %4 = alloca %struct.mlx4_cqe*, align 8
  store %struct.ibv_wc* %0, %struct.ibv_wc** %3, align 8
  store %struct.mlx4_cqe* %1, %struct.mlx4_cqe** %4, align 8
  %5 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %6 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %4, align 8
  %8 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %11 = and i32 %9, %10
  switch i32 %11, label %64 [
    i32 131, label %12
    i32 132, label %19
    i32 129, label %23
    i32 130, label %30
    i32 128, label %30
    i32 133, label %34
    i32 137, label %44
    i32 136, label %50
    i32 134, label %56
    i32 135, label %60
  ]

12:                                               ; preds = %2
  %13 = load i64, i64* @IBV_WC_WITH_IMM, align 8
  %14 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %15 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = or i64 %16, %13
  store i64 %17, i64* %15, align 8
  %18 = load i32, i32* @SWITCH_FALLTHROUGH, align 4
  br label %19

19:                                               ; preds = %2, %12
  %20 = load i8*, i8** @IBV_WC_RDMA_WRITE, align 8
  %21 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %22 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  br label %68

23:                                               ; preds = %2
  %24 = load i64, i64* @IBV_WC_WITH_IMM, align 8
  %25 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %26 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = or i64 %27, %24
  store i64 %28, i64* %26, align 8
  %29 = load i32, i32* @SWITCH_FALLTHROUGH, align 4
  br label %30

30:                                               ; preds = %2, %2, %23
  %31 = load i8*, i8** @IBV_WC_SEND, align 8
  %32 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %33 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %68

34:                                               ; preds = %2
  %35 = load i8*, i8** @IBV_WC_RDMA_READ, align 8
  %36 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %37 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %4, align 8
  %39 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32toh(i32 %40)
  %42 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %43 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %68

44:                                               ; preds = %2
  %45 = load i8*, i8** @IBV_WC_COMP_SWAP, align 8
  %46 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %47 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %49 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %48, i32 0, i32 0
  store i32 8, i32* %49, align 8
  br label %68

50:                                               ; preds = %2
  %51 = load i8*, i8** @IBV_WC_FETCH_ADD, align 8
  %52 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %53 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  %54 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %55 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %54, i32 0, i32 0
  store i32 8, i32* %55, align 8
  br label %68

56:                                               ; preds = %2
  %57 = load i8*, i8** @IBV_WC_LOCAL_INV, align 8
  %58 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %59 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %68

60:                                               ; preds = %2
  %61 = load i8*, i8** @IBV_WC_BIND_MW, align 8
  %62 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %63 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  br label %68

64:                                               ; preds = %2
  %65 = load i8*, i8** @IBV_WC_SEND, align 8
  %66 = load %struct.ibv_wc*, %struct.ibv_wc** %3, align 8
  %67 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  br label %68

68:                                               ; preds = %64, %60, %56, %50, %44, %34, %30, %19
  ret void
}

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
