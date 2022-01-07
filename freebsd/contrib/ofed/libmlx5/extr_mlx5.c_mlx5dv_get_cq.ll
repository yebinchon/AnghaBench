; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5dv_get_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5dv_get_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32 }
%struct.mlx5dv_cq = type { i32, i32, i32, i32, i64, i32, i64 }
%struct.mlx5_cq = type { i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.mlx5_context = type { i32 }

@MLX5_CQ_FLAGS_DV_OWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_cq*, %struct.mlx5dv_cq*)* @mlx5dv_get_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5dv_get_cq(%struct.ibv_cq* %0, %struct.mlx5dv_cq* %1) #0 {
  %3 = alloca %struct.ibv_cq*, align 8
  %4 = alloca %struct.mlx5dv_cq*, align 8
  %5 = alloca %struct.mlx5_cq*, align 8
  %6 = alloca %struct.mlx5_context*, align 8
  store %struct.ibv_cq* %0, %struct.ibv_cq** %3, align 8
  store %struct.mlx5dv_cq* %1, %struct.mlx5dv_cq** %4, align 8
  %7 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %8 = call %struct.mlx5_cq* @to_mcq(%struct.ibv_cq* %7)
  store %struct.mlx5_cq* %8, %struct.mlx5_cq** %5, align 8
  %9 = load %struct.ibv_cq*, %struct.ibv_cq** %3, align 8
  %10 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlx5_context* @to_mctx(i32 %11)
  store %struct.mlx5_context* %12, %struct.mlx5_context** %6, align 8
  %13 = load %struct.mlx5dv_cq*, %struct.mlx5dv_cq** %4, align 8
  %14 = getelementptr inbounds %struct.mlx5dv_cq, %struct.mlx5dv_cq* %13, i32 0, i32 6
  store i64 0, i64* %14, align 8
  %15 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mlx5dv_cq*, %struct.mlx5dv_cq** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5dv_cq, %struct.mlx5dv_cq* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 8
  %20 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 1
  %25 = load %struct.mlx5dv_cq*, %struct.mlx5dv_cq** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5dv_cq, %struct.mlx5dv_cq* %25, i32 0, i32 4
  store i64 %24, i64* %26, align 8
  %27 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.mlx5dv_cq*, %struct.mlx5dv_cq** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5dv_cq, %struct.mlx5dv_cq* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %32, i32 0, i32 2
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mlx5dv_cq*, %struct.mlx5dv_cq** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5dv_cq, %struct.mlx5dv_cq* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx5dv_cq*, %struct.mlx5dv_cq** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5dv_cq, %struct.mlx5dv_cq* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.mlx5_context*, %struct.mlx5_context** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.mlx5dv_cq*, %struct.mlx5dv_cq** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5dv_cq, %struct.mlx5dv_cq* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @MLX5_CQ_FLAGS_DV_OWNED, align 4
  %50 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %51 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  ret i32 0
}

declare dso_local %struct.mlx5_cq* @to_mcq(%struct.ibv_cq*) #1

declare dso_local %struct.mlx5_context* @to_mctx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
