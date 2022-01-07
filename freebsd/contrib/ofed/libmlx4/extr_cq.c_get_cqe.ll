; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_get_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_cq.c_get_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_cqe = type { i32 }
%struct.mlx4_cq = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx4_cqe* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx4_cqe* (%struct.mlx4_cq*, i32)* @get_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx4_cqe* @get_cqe(%struct.mlx4_cq* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_cq*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_cq* %0, %struct.mlx4_cq** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.mlx4_cqe*, %struct.mlx4_cqe** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.mlx4_cq*, %struct.mlx4_cq** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = mul nsw i32 %9, %12
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mlx4_cqe, %struct.mlx4_cqe* %8, i64 %14
  ret %struct.mlx4_cqe* %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
