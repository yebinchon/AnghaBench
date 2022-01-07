; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5dv_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5dv_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_cq_init_attr_ex = type { i32, i32 }
%struct.mlx5dv_cq_init_attr = type { i32 }

@MLX5_CQ_FLAGS_EXTENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_cq_ex* @mlx5dv_create_cq(%struct.ibv_context* %0, %struct.ibv_cq_init_attr_ex* %1, %struct.mlx5dv_cq_init_attr* %2) #0 {
  %4 = alloca %struct.ibv_cq_ex*, align 8
  %5 = alloca %struct.ibv_context*, align 8
  %6 = alloca %struct.ibv_cq_init_attr_ex*, align 8
  %7 = alloca %struct.mlx5dv_cq_init_attr*, align 8
  %8 = alloca %struct.ibv_cq_ex*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %5, align 8
  store %struct.ibv_cq_init_attr_ex* %1, %struct.ibv_cq_init_attr_ex** %6, align 8
  store %struct.mlx5dv_cq_init_attr* %2, %struct.mlx5dv_cq_init_attr** %7, align 8
  %9 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %10 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %11 = load i32, i32* @MLX5_CQ_FLAGS_EXTENDED, align 4
  %12 = load %struct.mlx5dv_cq_init_attr*, %struct.mlx5dv_cq_init_attr** %7, align 8
  %13 = call %struct.ibv_cq_ex* @create_cq(%struct.ibv_context* %9, %struct.ibv_cq_init_attr_ex* %10, i32 %11, %struct.mlx5dv_cq_init_attr* %12)
  store %struct.ibv_cq_ex* %13, %struct.ibv_cq_ex** %8, align 8
  %14 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %8, align 8
  %15 = icmp ne %struct.ibv_cq_ex* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.ibv_cq_ex* null, %struct.ibv_cq_ex** %4, align 8
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %8, align 8
  %19 = call i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %18)
  %20 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %21 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %22 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %6, align 8
  %25 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @verbs_init_cq(i32 %19, %struct.ibv_context* %20, i32 %23, i32 %26)
  %28 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %8, align 8
  store %struct.ibv_cq_ex* %28, %struct.ibv_cq_ex** %4, align 8
  br label %29

29:                                               ; preds = %17, %16
  %30 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %4, align 8
  ret %struct.ibv_cq_ex* %30
}

declare dso_local %struct.ibv_cq_ex* @create_cq(%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*, i32, %struct.mlx5dv_cq_init_attr*) #1

declare dso_local i32 @verbs_init_cq(i32, %struct.ibv_context*, i32, i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
