; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_query_rt_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_query_rt_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_values_ex = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@IBV_VALUES_MASK_RAW_CLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_rt_values(%struct.ibv_context* %0, %struct.ibv_values_ex* %1) #0 {
  %3 = alloca %struct.ibv_context*, align 8
  %4 = alloca %struct.ibv_values_ex*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %3, align 8
  store %struct.ibv_values_ex* %1, %struct.ibv_values_ex** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load %struct.ibv_values_ex*, %struct.ibv_values_ex** %4, align 8
  %9 = getelementptr inbounds %struct.ibv_values_ex, %struct.ibv_values_ex* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IBV_VALUES_MASK_RAW_CLOCK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %31

14:                                               ; preds = %2
  %15 = load %struct.ibv_context*, %struct.ibv_context** %3, align 8
  %16 = call i32 @mlx5_read_clock(%struct.ibv_context* %15, i32* %7)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = load %struct.ibv_values_ex*, %struct.ibv_values_ex** %4, align 8
  %21 = getelementptr inbounds %struct.ibv_values_ex, %struct.ibv_values_ex* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.ibv_values_ex*, %struct.ibv_values_ex** %4, align 8
  %25 = getelementptr inbounds %struct.ibv_values_ex, %struct.ibv_values_ex* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @IBV_VALUES_MASK_RAW_CLOCK, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %19, %14
  br label %31

31:                                               ; preds = %30, %2
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.ibv_values_ex*, %struct.ibv_values_ex** %4, align 8
  %34 = getelementptr inbounds %struct.ibv_values_ex, %struct.ibv_values_ex* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @mlx5_read_clock(%struct.ibv_context*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
