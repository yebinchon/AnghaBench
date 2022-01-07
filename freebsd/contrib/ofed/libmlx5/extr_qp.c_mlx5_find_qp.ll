; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_find_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_find_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { i32 }
%struct.mlx5_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5_qp**, i64 }

@MLX5_QP_TABLE_SHIFT = common dso_local global i64 0, align 8
@MLX5_QP_TABLE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_qp* @mlx5_find_qp(%struct.mlx5_context* %0, i64 %1) #0 {
  %3 = alloca %struct.mlx5_qp*, align 8
  %4 = alloca %struct.mlx5_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MLX5_QP_TABLE_SHIFT, align 8
  %9 = lshr i64 %7, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load %struct.mlx5_context*, %struct.mlx5_context** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load %struct.mlx5_context*, %struct.mlx5_context** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.mlx5_qp**, %struct.mlx5_qp*** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @MLX5_QP_TABLE_MASK, align 8
  %31 = and i64 %29, %30
  %32 = getelementptr inbounds %struct.mlx5_qp*, %struct.mlx5_qp** %28, i64 %31
  %33 = load %struct.mlx5_qp*, %struct.mlx5_qp** %32, align 8
  store %struct.mlx5_qp* %33, %struct.mlx5_qp** %3, align 8
  br label %35

34:                                               ; preds = %2
  store %struct.mlx5_qp* null, %struct.mlx5_qp** %3, align 8
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.mlx5_qp*, %struct.mlx5_qp** %3, align 8
  ret %struct.mlx5_qp* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
