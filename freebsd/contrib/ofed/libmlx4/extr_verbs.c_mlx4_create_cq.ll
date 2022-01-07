; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_create_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_comp_channel = type { i32 }
%struct.ibv_cq_ex = type { i32 }
%struct.ibv_cq_init_attr_ex = type { i32, i32, i32, %struct.ibv_comp_channel* }

@IBV_WC_STANDARD_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_cq* @mlx4_create_cq(%struct.ibv_context* %0, i32 %1, %struct.ibv_comp_channel* %2, i32 %3) #0 {
  %5 = alloca %struct.ibv_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_comp_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ibv_cq_ex*, align 8
  %10 = alloca %struct.ibv_cq_init_attr_ex, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ibv_comp_channel* %2, %struct.ibv_comp_channel** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %10, i32 0, i32 0
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %10, i32 0, i32 1
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %10, i32 0, i32 2
  %16 = load i32, i32* @IBV_WC_STANDARD_FLAGS, align 4
  store i32 %16, i32* %15, align 8
  %17 = getelementptr inbounds %struct.ibv_cq_init_attr_ex, %struct.ibv_cq_init_attr_ex* %10, i32 0, i32 3
  %18 = load %struct.ibv_comp_channel*, %struct.ibv_comp_channel** %7, align 8
  store %struct.ibv_comp_channel* %18, %struct.ibv_comp_channel** %17, align 8
  %19 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %20 = call %struct.ibv_cq_ex* @create_cq(%struct.ibv_context* %19, %struct.ibv_cq_init_attr_ex* %10, i32 0)
  store %struct.ibv_cq_ex* %20, %struct.ibv_cq_ex** %9, align 8
  %21 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %9, align 8
  %22 = icmp ne %struct.ibv_cq_ex* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %9, align 8
  %25 = call %struct.ibv_cq* @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %24)
  br label %27

26:                                               ; preds = %4
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi %struct.ibv_cq* [ %25, %23 ], [ null, %26 ]
  ret %struct.ibv_cq* %28
}

declare dso_local %struct.ibv_cq_ex* @create_cq(%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*, i32) #1

declare dso_local %struct.ibv_cq* @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
