; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_init_qp_indices.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_init_qp_indices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_init_qp_indices(%struct.mlx5_qp* %0) #0 {
  %2 = alloca %struct.mlx5_qp*, align 8
  store %struct.mlx5_qp* %0, %struct.mlx5_qp** %2, align 8
  %3 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %4, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.mlx5_qp*, %struct.mlx5_qp** %2, align 8
  %16 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
