; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5dv_get_rwq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5dv_get_rwq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_wq = type { i32 }
%struct.mlx5dv_rwq = type { i32, i32, i32, i32, i64 }
%struct.mlx5_rwq = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_wq*, %struct.mlx5dv_rwq*)* @mlx5dv_get_rwq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5dv_get_rwq(%struct.ibv_wq* %0, %struct.mlx5dv_rwq* %1) #0 {
  %3 = alloca %struct.ibv_wq*, align 8
  %4 = alloca %struct.mlx5dv_rwq*, align 8
  %5 = alloca %struct.mlx5_rwq*, align 8
  store %struct.ibv_wq* %0, %struct.ibv_wq** %3, align 8
  store %struct.mlx5dv_rwq* %1, %struct.mlx5dv_rwq** %4, align 8
  %6 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %7 = call %struct.mlx5_rwq* @to_mrwq(%struct.ibv_wq* %6)
  store %struct.mlx5_rwq* %7, %struct.mlx5_rwq** %5, align 8
  %8 = load %struct.mlx5dv_rwq*, %struct.mlx5dv_rwq** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5dv_rwq, %struct.mlx5dv_rwq* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx5dv_rwq*, %struct.mlx5dv_rwq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5dv_rwq, %struct.mlx5dv_rwq* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx5dv_rwq*, %struct.mlx5dv_rwq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5dv_rwq, %struct.mlx5dv_rwq* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx5dv_rwq*, %struct.mlx5dv_rwq** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5dv_rwq, %struct.mlx5dv_rwq* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 1, %29
  %31 = load %struct.mlx5dv_rwq*, %struct.mlx5dv_rwq** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5dv_rwq, %struct.mlx5dv_rwq* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret i32 0
}

declare dso_local %struct.mlx5_rwq* @to_mrwq(%struct.ibv_wq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
