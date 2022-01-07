; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_create_cq_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_create_cq_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_cq_init_attr_ex = type { i32 }

@MLX5_CQ_FLAGS_EXTENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_cq_ex* @mlx5_create_cq_ex(%struct.ibv_context* %0, %struct.ibv_cq_init_attr_ex* %1) #0 {
  %3 = alloca %struct.ibv_context*, align 8
  %4 = alloca %struct.ibv_cq_init_attr_ex*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %3, align 8
  store %struct.ibv_cq_init_attr_ex* %1, %struct.ibv_cq_init_attr_ex** %4, align 8
  %5 = load %struct.ibv_context*, %struct.ibv_context** %3, align 8
  %6 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %7 = load i32, i32* @MLX5_CQ_FLAGS_EXTENDED, align 4
  %8 = call %struct.ibv_cq_ex* @create_cq(%struct.ibv_context* %5, %struct.ibv_cq_init_attr_ex* %6, i32 %7, i32* null)
  ret %struct.ibv_cq_ex* %8
}

declare dso_local %struct.ibv_cq_ex* @create_cq(%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
