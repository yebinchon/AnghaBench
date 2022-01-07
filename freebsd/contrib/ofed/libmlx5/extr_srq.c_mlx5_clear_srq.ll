; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_srq.c_mlx5_clear_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_srq.c_mlx5_clear_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32**, i32 }

@MLX5_QP_TABLE_SHIFT = common dso_local global i64 0, align 8
@MLX5_SRQ_TABLE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_clear_srq(%struct.mlx5_context* %0, i64 %1) #0 {
  %3 = alloca %struct.mlx5_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @MLX5_QP_TABLE_SHIFT, align 8
  %8 = lshr i64 %6, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = call i32 @free(i32** %28)
  br label %43

30:                                               ; preds = %2
  %31 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load i64, i64* @MLX5_SRQ_TABLE_MASK, align 8
  %41 = and i64 %39, %40
  %42 = getelementptr inbounds i32*, i32** %38, i64 %41
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %30, %20
  ret void
}

declare dso_local i32 @free(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
