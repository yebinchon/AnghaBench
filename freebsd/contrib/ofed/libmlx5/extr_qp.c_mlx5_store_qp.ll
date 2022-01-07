; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_store_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_qp.c_mlx5_store_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5_qp**, i32 }
%struct.mlx5_qp = type { i32 }

@MLX5_QP_TABLE_SHIFT = common dso_local global i32 0, align 4
@MLX5_QP_TABLE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_store_qp(%struct.mlx5_context* %0, i32 %1, %struct.mlx5_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_qp*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx5_qp* %2, %struct.mlx5_qp** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @MLX5_QP_TABLE_SHIFT, align 4
  %11 = ashr i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %43, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @MLX5_QP_TABLE_MASK, align 4
  %23 = add nsw i32 %22, 1
  %24 = call %struct.mlx5_qp** @calloc(i32 %23, i32 8)
  %25 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.mlx5_qp** %24, %struct.mlx5_qp*** %31, align 8
  %32 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.mlx5_qp**, %struct.mlx5_qp*** %38, align 8
  %40 = icmp ne %struct.mlx5_qp** %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %67

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %3
  %44 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %45 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %54 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %55 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load %struct.mlx5_qp**, %struct.mlx5_qp*** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @MLX5_QP_TABLE_MASK, align 4
  %64 = and i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.mlx5_qp*, %struct.mlx5_qp** %61, i64 %65
  store %struct.mlx5_qp* %53, %struct.mlx5_qp** %66, align 8
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %43, %41
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.mlx5_qp** @calloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
