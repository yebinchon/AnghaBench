; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_calc_wq_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_calc_wq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32 }
%struct.ibv_qp_init_attr_ex = type { i32 }
%struct.mlx5_qp = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*)* @mlx5_calc_wq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_calc_wq_size(%struct.mlx5_context* %0, %struct.ibv_qp_init_attr_ex* %1, %struct.mlx5_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_context*, align 8
  %6 = alloca %struct.ibv_qp_init_attr_ex*, align 8
  %7 = alloca %struct.mlx5_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %5, align 8
  store %struct.ibv_qp_init_attr_ex* %1, %struct.ibv_qp_init_attr_ex** %6, align 8
  store %struct.mlx5_qp* %2, %struct.mlx5_qp** %7, align 8
  %10 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %11 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %12 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %13 = call i32 @mlx5_calc_sq_size(%struct.mlx5_context* %10, %struct.ibv_qp_init_attr_ex* %11, %struct.mlx5_qp* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %9, align 4
  %20 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %21 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %22 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %23 = call i32 @mlx5_calc_rq_size(%struct.mlx5_context* %20, %struct.ibv_qp_init_attr_ex* %21, %struct.mlx5_qp* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %40

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %28, %26, %16
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @mlx5_calc_sq_size(%struct.mlx5_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*) #1

declare dso_local i32 @mlx5_calc_rq_size(%struct.mlx5_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
