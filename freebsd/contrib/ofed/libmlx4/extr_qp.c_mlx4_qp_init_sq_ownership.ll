; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_qp_init_sq_ownership.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_qp_init_sq_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx4_wqe_ctrl_seg = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_qp_init_sq_ownership(%struct.mlx4_qp* %0) #0 {
  %2 = alloca %struct.mlx4_qp*, align 8
  %3 = alloca %struct.mlx4_wqe_ctrl_seg*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_qp* %0, %struct.mlx4_qp** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %30, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.mlx4_qp*, %struct.mlx4_qp** %2, align 8
  %8 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %6, %10
  br i1 %11, label %12, label %33

12:                                               ; preds = %5
  %13 = load %struct.mlx4_qp*, %struct.mlx4_qp** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call %struct.mlx4_wqe_ctrl_seg* @get_send_wqe(%struct.mlx4_qp* %13, i32 %14)
  store %struct.mlx4_wqe_ctrl_seg* %15, %struct.mlx4_wqe_ctrl_seg** %3, align 8
  %16 = call i32 @htobe32(i32 -2147483648)
  %17 = load %struct.mlx4_wqe_ctrl_seg*, %struct.mlx4_wqe_ctrl_seg** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, %struct.mlx4_wqe_ctrl_seg* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mlx4_qp*, %struct.mlx4_qp** %2, align 8
  %20 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 4
  %24 = shl i32 1, %23
  %25 = load %struct.mlx4_wqe_ctrl_seg*, %struct.mlx4_wqe_ctrl_seg** %3, align 8
  %26 = getelementptr inbounds %struct.mlx4_wqe_ctrl_seg, %struct.mlx4_wqe_ctrl_seg* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mlx4_qp*, %struct.mlx4_qp** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @stamp_send_wqe(%struct.mlx4_qp* %27, i32 %28)
  br label %30

30:                                               ; preds = %12
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %5

33:                                               ; preds = %5
  ret void
}

declare dso_local %struct.mlx4_wqe_ctrl_seg* @get_send_wqe(%struct.mlx4_qp*, i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @stamp_send_wqe(%struct.mlx4_qp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
