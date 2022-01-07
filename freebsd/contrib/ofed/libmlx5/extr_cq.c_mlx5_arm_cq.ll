; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_arm_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_arm_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32 }
%struct.mlx5_cq = type { i32, i32, i32, i8** }
%struct.mlx5_context = type { i32, i64* }

@MLX5_CQ_DB_REQ_NOT_SOL = common dso_local global i32 0, align 4
@MLX5_CQ_DB_REQ_NOT = common dso_local global i32 0, align 4
@MLX5_CQ_ARM_DB = common dso_local global i64 0, align 8
@MLX5_CQ_DOORBELL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_arm_cq(%struct.ibv_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ibv_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_cq*, align 8
  %6 = alloca %struct.mlx5_context*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %12 = call %struct.mlx5_cq* @to_mcq(%struct.ibv_cq* %11)
  store %struct.mlx5_cq* %12, %struct.mlx5_cq** %5, align 8
  %13 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %14 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.mlx5_context* @to_mctx(i32 %15)
  store %struct.mlx5_context* %16, %struct.mlx5_context** %6, align 8
  %17 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 3
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 16777215
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @MLX5_CQ_DB_REQ_NOT_SOL, align 4
  br label %31

29:                                               ; preds = %2
  %30 = load i32, i32* @MLX5_CQ_DB_REQ_NOT, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %8, align 4
  %34 = shl i32 %33, 28
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %36, %37
  %39 = call i8* @htobe32(i32 %38)
  %40 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %40, i32 0, i32 3
  %42 = load i8**, i8*** %41, align 8
  %43 = load i64, i64* @MLX5_CQ_ARM_DB, align 8
  %44 = getelementptr inbounds i8*, i8** %42, i64 %43
  store i8* %39, i8** %44, align 8
  %45 = call i32 (...) @mmio_wc_start()
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 %46, 28
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @htobe32(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i8* @htobe32(i32 %57)
  %59 = ptrtoint i8* %58 to i32
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %62 = load %struct.mlx5_context*, %struct.mlx5_context** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MLX5_CQ_DOORBELL, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.mlx5_context*, %struct.mlx5_context** %6, align 8
  %70 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %69, i32 0, i32 0
  %71 = call i32 @mlx5_write64(i32* %61, i64 %68, i32* %70)
  %72 = call i32 (...) @mmio_flush_writes()
  ret i32 0
}

declare dso_local %struct.mlx5_cq* @to_mcq(%struct.ibv_cq*) #1

declare dso_local %struct.mlx5_context* @to_mctx(i32) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @mmio_wc_start(...) #1

declare dso_local i32 @mlx5_write64(i32*, i64, i32*) #1

declare dso_local i32 @mmio_flush_writes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
