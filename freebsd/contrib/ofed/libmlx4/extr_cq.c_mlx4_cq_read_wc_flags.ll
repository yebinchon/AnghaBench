; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_read_wc_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_read_wc_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.mlx4_cq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MLX4_CQE_IS_SEND_MASK = common dso_local global i32 0, align 4
@MLX4_CQE_OPCODE_MASK = common dso_local global i32 0, align 4
@IBV_WC_WITH_IMM = common dso_local global i32 0, align 4
@MLX4_CQ_FLAGS_RX_CSUM_VALID = common dso_local global i32 0, align 4
@MLX4_CQE_STATUS_IPV4_CSUM_OK = common dso_local global i32 0, align 4
@IBV_WC_IP_CSUM_OK_SHIFT = common dso_local global i32 0, align 4
@IBV_WC_WITH_INV = common dso_local global i32 0, align 4
@IBV_WC_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_cq_ex*)* @mlx4_cq_read_wc_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_cq_read_wc_flags(%struct.ibv_cq_ex* %0) #0 {
  %2 = alloca %struct.ibv_cq_ex*, align 8
  %3 = alloca %struct.mlx4_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ibv_cq_ex* %0, %struct.ibv_cq_ex** %2, align 8
  %6 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %2, align 8
  %7 = call i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %6)
  %8 = call %struct.mlx4_cq* @to_mcq(i32 %7)
  store %struct.mlx4_cq* %8, %struct.mlx4_cq** %3, align 8
  %9 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %10 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MLX4_CQE_IS_SEND_MASK, align 4
  %15 = and i32 %13, %14
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %1
  %19 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %25 = and i32 %23, %24
  switch i32 %25, label %30 [
    i32 132, label %26
    i32 131, label %26
  ]

26:                                               ; preds = %18, %18
  %27 = load i32, i32* @IBV_WC_WITH_IMM, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %18, %26
  br label %87

31:                                               ; preds = %1
  %32 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @MLX4_CQ_FLAGS_RX_CSUM_VALID, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %31
  %39 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MLX4_CQE_STATUS_IPV4_CSUM_OK, align 4
  %45 = call i32 @htobe32(i32 %44)
  %46 = and i32 %43, %45
  %47 = load i32, i32* @MLX4_CQE_STATUS_IPV4_CSUM_OK, align 4
  %48 = call i32 @htobe32(i32 %47)
  %49 = icmp eq i32 %46, %48
  %50 = zext i1 %49 to i32
  %51 = load i32, i32* @IBV_WC_IP_CSUM_OK_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %38, %31
  %56 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %57 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %62 = and i32 %60, %61
  switch i32 %62, label %71 [
    i32 130, label %63
    i32 129, label %63
    i32 128, label %67
  ]

63:                                               ; preds = %55, %55
  %64 = load i32, i32* @IBV_WC_WITH_IMM, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %71

67:                                               ; preds = %55
  %68 = load i32, i32* @IBV_WC_WITH_INV, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %55, %67, %63
  %72 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %73 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %72, i32 0, i32 1
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @be32toh(i32 %76)
  %78 = and i32 %77, -2147483648
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @IBV_WC_GRH, align 4
  br label %83

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %30
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local %struct.mlx4_cq* @to_mcq(i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
