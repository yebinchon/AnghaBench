; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_arm_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_mlx4_arm_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32 }
%struct.mlx4_cq = type { i32, i32, i32, i8** }

@MLX4_CQ_DB_REQ_NOT_SOL = common dso_local global i32 0, align 4
@MLX4_CQ_DB_REQ_NOT = common dso_local global i32 0, align 4
@MLX4_CQ_DOORBELL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_arm_cq(%struct.ibv_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.ibv_cq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_cq*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %11 = call %struct.mlx4_cq* @to_mcq(%struct.ibv_cq* %10)
  store %struct.mlx4_cq* %11, %struct.mlx4_cq** %5, align 8
  %12 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 3
  store i32 %15, i32* %7, align 4
  %16 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %17 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 16777215
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @MLX4_CQ_DB_REQ_NOT_SOL, align 4
  br label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @MLX4_CQ_DB_REQ_NOT, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 28
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %8, align 4
  %33 = or i32 %31, %32
  %34 = call i8* @htobe32(i32 %33)
  %35 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %36 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %35, i32 0, i32 3
  %37 = load i8**, i8*** %36, align 8
  store i8* %34, i8** %37, align 8
  %38 = call i32 (...) @udma_to_device_barrier()
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, 28
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %40, %41
  %43 = load %struct.mlx4_cq*, %struct.mlx4_cq** %5, align 8
  %44 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %42, %45
  %47 = call i8* @htobe32(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @htobe32(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %55 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %56 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @to_mctx(i32 %57)
  %59 = load i32, i32* @MLX4_CQ_DOORBELL, align 4
  %60 = call i32 @mlx4_write64(i32* %54, i32 %58, i32 %59)
  ret i32 0
}

declare dso_local %struct.mlx4_cq* @to_mcq(%struct.ibv_cq*) #1

declare dso_local i8* @htobe32(i32) #1

declare dso_local i32 @udma_to_device_barrier(...) #1

declare dso_local i32 @mlx4_write64(i32*, i32, i32) #1

declare dso_local i32 @to_mctx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
