; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_read_wc_imm_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_cq_read_wc_imm_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.mlx4_cq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MLX4_CQE_OPCODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_cq_ex*)* @mlx4_cq_read_wc_imm_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_cq_read_wc_imm_data(%struct.ibv_cq_ex* %0) #0 {
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
  %13 = load i32, i32* @MLX4_CQE_OPCODE_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %22 [
    i32 128, label %15
  ]

15:                                               ; preds = %1
  %16 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %17 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32toh(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %1
  %23 = load %struct.mlx4_cq*, %struct.mlx4_cq** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %22, %15
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.mlx4_cq* @to_mcq(i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
