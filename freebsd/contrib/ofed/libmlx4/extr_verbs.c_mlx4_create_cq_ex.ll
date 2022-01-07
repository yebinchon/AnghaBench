; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_create_cq_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_create_cq_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_cq_init_attr_ex = type { i32, i32, i32, i32, i32, i32 }

@MLX4_CQ_FLAGS_EXTENDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_cq_ex* @mlx4_create_cq_ex(%struct.ibv_context* %0, %struct.ibv_cq_init_attr_ex* %1) #0 {
  %3 = alloca %struct.ibv_context*, align 8
  %4 = alloca %struct.ibv_cq_init_attr_ex*, align 8
  %5 = alloca %struct.ibv_cq_init_attr_ex, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %3, align 8
  store %struct.ibv_cq_init_attr_ex* %1, %struct.ibv_cq_init_attr_ex** %4, align 8
  %6 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %5, i32 0, i32 0
  %7 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %8 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %6, align 4
  %10 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %5, i32 0, i32 1
  %11 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %12 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %5, i32 0, i32 2
  %15 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %16 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %5, i32 0, i32 3
  %19 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %20 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %5, i32 0, i32 4
  %23 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %24 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %5, i32 0, i32 5
  %27 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %4, align 8
  %28 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %26, align 4
  %30 = load %struct.ibv_context*, %struct.ibv_context** %3, align 8
  %31 = load i32, i32* @MLX4_CQ_FLAGS_EXTENDED, align 4
  %32 = call %struct.ibv_cq_ex* @create_cq(%struct.ibv_context* %30, %struct.ibv_cq_init_attr_ex* %5, i32 %31)
  ret %struct.ibv_cq_ex* %32
}

declare dso_local %struct.ibv_cq_ex* @create_cq(%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
