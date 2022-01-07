; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_get_atomic_laddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_get_atomic_laddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { i32 }
%struct.mlx5_wqe_data_seg = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @mlx5_get_atomic_laddr(%struct.mlx5_qp* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mlx5_wqe_data_seg*, align 8
  %8 = alloca i8*, align 8
  store %struct.mlx5_qp* %0, %struct.mlx5_qp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.mlx5_qp*, %struct.mlx5_qp** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.mlx5_wqe_data_seg* @mlx5_get_send_wqe(%struct.mlx5_qp* %9, i32 %10)
  %12 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %11, i64 4
  %13 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %12, i64 4
  %14 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %13, i64 4
  store %struct.mlx5_wqe_data_seg* %14, %struct.mlx5_wqe_data_seg** %7, align 8
  %15 = load %struct.mlx5_wqe_data_seg*, %struct.mlx5_wqe_data_seg** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5_wqe_data_seg, %struct.mlx5_wqe_data_seg* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @be64toh(i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %8, align 8
  %20 = load i32*, i32** %6, align 8
  store i32 8, i32* %20, align 4
  %21 = load i8*, i8** %8, align 8
  ret i8* %21
}

declare dso_local %struct.mlx5_wqe_data_seg* @mlx5_get_send_wqe(%struct.mlx5_qp*, i32) #1

declare dso_local i64 @be64toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
