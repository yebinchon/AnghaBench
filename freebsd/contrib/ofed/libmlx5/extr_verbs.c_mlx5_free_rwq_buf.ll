; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_free_rwq_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_free_rwq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_rwq = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ibv_context = type { i32 }
%struct.mlx5_context = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_rwq*, %struct.ibv_context*)* @mlx5_free_rwq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_free_rwq_buf(%struct.mlx5_rwq* %0, %struct.ibv_context* %1) #0 {
  %3 = alloca %struct.mlx5_rwq*, align 8
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.mlx5_context*, align 8
  store %struct.mlx5_rwq* %0, %struct.mlx5_rwq** %3, align 8
  store %struct.ibv_context* %1, %struct.ibv_context** %4, align 8
  %6 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %7 = call %struct.mlx5_context* @to_mctx(%struct.ibv_context* %6)
  store %struct.mlx5_context* %7, %struct.mlx5_context** %5, align 8
  %8 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %9 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %3, align 8
  %10 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %9, i32 0, i32 1
  %11 = call i32 @mlx5_free_actual_buf(%struct.mlx5_context* %8, i32* %10)
  %12 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @free(i32 %15)
  ret void
}

declare dso_local %struct.mlx5_context* @to_mctx(%struct.ibv_context*) #1

declare dso_local i32 @mlx5_free_actual_buf(%struct.mlx5_context*, i32*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
