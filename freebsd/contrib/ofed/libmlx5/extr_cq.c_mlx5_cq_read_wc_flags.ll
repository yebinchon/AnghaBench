; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_cq_read_wc_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_cq_read_wc_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.mlx5_cq = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@MLX5_CQ_FLAGS_RX_CSUM_VALID = common dso_local global i32 0, align 4
@MLX5_CQE_L4_OK = common dso_local global i32 0, align 4
@MLX5_CQE_L3_OK = common dso_local global i32 0, align 4
@MLX5_CQE_L3_HDR_TYPE_IPV4 = common dso_local global i64 0, align 8
@IBV_WC_IP_CSUM_OK_SHIFT = common dso_local global i32 0, align 4
@IBV_WC_WITH_IMM = common dso_local global i32 0, align 4
@IBV_WC_WITH_INV = common dso_local global i32 0, align 4
@IBV_WC_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_cq_ex*)* @mlx5_cq_read_wc_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cq_read_wc_flags(%struct.ibv_cq_ex* %0) #0 {
  %2 = alloca %struct.ibv_cq_ex*, align 8
  %3 = alloca %struct.mlx5_cq*, align 8
  %4 = alloca i32, align 4
  store %struct.ibv_cq_ex* %0, %struct.ibv_cq_ex** %2, align 8
  %5 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %2, align 8
  %6 = call i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %5)
  %7 = call %struct.mlx5_cq* @to_mcq(i32 %6)
  store %struct.mlx5_cq* %7, %struct.mlx5_cq** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MLX5_CQ_FLAGS_RX_CSUM_VALID, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %48

14:                                               ; preds = %1
  %15 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MLX5_CQE_L4_OK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MLX5_CQE_L3_OK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = and i32 %25, %36
  %38 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %39 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i64 @get_cqe_l3_hdr_type(%struct.TYPE_3__* %40)
  %42 = load i64, i64* @MLX5_CQE_L3_HDR_TYPE_IPV4, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = and i32 %37, %44
  %46 = load i32, i32* @IBV_WC_IP_CSUM_OK_SHIFT, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %14, %1
  %49 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = call i32 @mlx5dv_get_cqe_opcode(%struct.TYPE_3__* %51)
  switch i32 %52, label %61 [
    i32 128, label %53
    i32 130, label %53
    i32 129, label %57
  ]

53:                                               ; preds = %48, %48
  %54 = load i32, i32* @IBV_WC_WITH_IMM, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %48
  %58 = load i32, i32* @IBV_WC_WITH_INV, align 4
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %48, %57, %53
  %62 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %63 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32toh(i32 %66)
  %68 = ashr i32 %67, 28
  %69 = and i32 %68, 3
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @IBV_WC_GRH, align 4
  br label %74

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32 [ %72, %71 ], [ 0, %73 ]
  %76 = load i32, i32* %4, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.mlx5_cq* @to_mcq(i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

declare dso_local i64 @get_cqe_l3_hdr_type(%struct.TYPE_3__*) #1

declare dso_local i32 @mlx5dv_get_cqe_opcode(%struct.TYPE_3__*) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
