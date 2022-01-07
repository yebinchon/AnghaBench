; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5dv_query_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5dv_query_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.mlx5dv_context = type { i32, i32, i32, i64 }
%struct.mlx5_context = type { i64, i32, i32 }

@MLX5_CQE_VERSION_V1 = common dso_local global i64 0, align 8
@MLX5DV_CONTEXT_FLAGS_CQE_V1 = common dso_local global i32 0, align 4
@MLX5_VENDOR_CAP_FLAGS_MPW = common dso_local global i32 0, align 4
@MLX5DV_CONTEXT_FLAGS_MPW = common dso_local global i32 0, align 4
@MLX5DV_CONTEXT_MASK_CQE_COMPRESION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dv_query_device(%struct.ibv_context* %0, %struct.mlx5dv_context* %1) #0 {
  %3 = alloca %struct.ibv_context*, align 8
  %4 = alloca %struct.mlx5dv_context*, align 8
  %5 = alloca %struct.mlx5_context*, align 8
  %6 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %3, align 8
  store %struct.mlx5dv_context* %1, %struct.mlx5dv_context** %4, align 8
  %7 = load %struct.ibv_context*, %struct.ibv_context** %3, align 8
  %8 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %7)
  store %struct.mlx5_context* %8, %struct.mlx5_context** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.mlx5dv_context*, %struct.mlx5dv_context** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5dv_context, %struct.mlx5dv_context* %9, i32 0, i32 3
  store i64 0, i64* %10, align 8
  %11 = load %struct.mlx5dv_context*, %struct.mlx5dv_context** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5dv_context, %struct.mlx5dv_context* %11, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MLX5_CQE_VERSION_V1, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @MLX5DV_CONTEXT_FLAGS_CQE_V1, align 4
  %20 = load %struct.mlx5dv_context*, %struct.mlx5dv_context** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5dv_context, %struct.mlx5dv_context* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @MLX5_VENDOR_CAP_FLAGS_MPW, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load i32, i32* @MLX5DV_CONTEXT_FLAGS_MPW, align 4
  %33 = load %struct.mlx5dv_context*, %struct.mlx5dv_context** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5dv_context, %struct.mlx5dv_context* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.mlx5dv_context*, %struct.mlx5dv_context** %4, align 8
  %39 = getelementptr inbounds %struct.mlx5dv_context, %struct.mlx5dv_context* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MLX5DV_CONTEXT_MASK_CQE_COMPRESION, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %37
  %45 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx5dv_context*, %struct.mlx5dv_context** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5dv_context, %struct.mlx5dv_context* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @MLX5DV_CONTEXT_MASK_CQE_COMPRESION, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %44, %37
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.mlx5dv_context*, %struct.mlx5dv_context** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5dv_context, %struct.mlx5dv_context* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  ret i32 0
}

declare dso_local %struct.mlx5_context* @to_mctx(%struct.ibv_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
