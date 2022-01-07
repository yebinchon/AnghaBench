; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_cq_read_wc_byte_len.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_cq_read_wc_byte_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.mlx5_cq = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_cq_ex*)* @mlx5_cq_read_wc_byte_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cq_read_wc_byte_len(%struct.ibv_cq_ex* %0) #0 {
  %2 = alloca %struct.ibv_cq_ex*, align 8
  %3 = alloca %struct.mlx5_cq*, align 8
  store %struct.ibv_cq_ex* %0, %struct.ibv_cq_ex** %2, align 8
  %4 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %2, align 8
  %5 = call i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %4)
  %6 = call %struct.mlx5_cq* @to_mcq(i32 %5)
  store %struct.mlx5_cq* %6, %struct.mlx5_cq** %3, align 8
  %7 = load %struct.mlx5_cq*, %struct.mlx5_cq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @be32toh(i32 %11)
  ret i32 %12
}

declare dso_local %struct.mlx5_cq* @to_mcq(i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
