; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_calc_send_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_calc_send_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32 }
%struct.ibv_qp_init_attr_ex = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx5_qp = type { i32 }

@IBV_QP_INIT_ATTR_MAX_TSO_HEADER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*)* @mlx5_calc_send_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_calc_send_wqe(%struct.mlx5_context* %0, %struct.ibv_qp_init_attr_ex* %1, %struct.mlx5_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_context*, align 8
  %6 = alloca %struct.ibv_qp_init_attr_ex*, align 8
  %7 = alloca %struct.mlx5_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %5, align 8
  store %struct.ibv_qp_init_attr_ex* %1, %struct.ibv_qp_init_attr_ex** %6, align 8
  store %struct.mlx5_qp* %2, %struct.mlx5_qp** %7, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %13 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @sq_overhead(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %4, align 4
  br label %100

20:                                               ; preds = %3
  %21 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %22 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %29 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 4, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @align(i32 %34, i32 16)
  %36 = add nsw i32 %27, %35
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %26, %20
  %38 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %39 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IBV_QP_INIT_ATTR_MAX_TSO_HEADER, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %46 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @align(i32 %47, i32 16)
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %52 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %55 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %44, %37
  %57 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %58 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %10, align 4
  %65 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %66 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %56
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %100

74:                                               ; preds = %56
  %75 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %76 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @max_int(i32 %85, i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %90 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %74
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %100

96:                                               ; preds = %74
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %99 = call i32 @align(i32 %97, i32 %98)
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %96, %93, %71, %18
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @sq_overhead(i32) #1

declare dso_local i32 @align(i32, i32) #1

declare dso_local i32 @max_int(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
