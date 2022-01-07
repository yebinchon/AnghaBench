; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_get_send_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_get_send_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { i8* }

@MLX5_SEND_WQE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mlx5_get_send_wqe(%struct.mlx5_qp* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_qp*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx5_qp* %0, %struct.mlx5_qp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mlx5_qp*, %struct.mlx5_qp** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %5, i32 0, i32 0
  %7 = load i8*, i8** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MLX5_SEND_WQE_SHIFT, align 4
  %10 = shl i32 %8, %9
  %11 = sext i32 %10 to i64
  %12 = getelementptr i8, i8* %7, i64 %11
  ret i8* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
