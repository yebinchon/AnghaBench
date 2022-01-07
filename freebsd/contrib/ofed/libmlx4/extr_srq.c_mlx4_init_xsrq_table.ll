; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_init_xsrq_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_init_xsrq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_xsrq_table = type { i32, i32, i32, i32 }

@MLX4_XSRQ_TABLE_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_init_xsrq_table(%struct.mlx4_xsrq_table* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_xsrq_table*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx4_xsrq_table* %0, %struct.mlx4_xsrq_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %6 = call i32 @memset(%struct.mlx4_xsrq_table* %5, i32 0, i32 16)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @ffs(i32 %10)
  %12 = sub nsw i32 %11, 1
  %13 = load i32, i32* @MLX4_XSRQ_TABLE_BITS, align 4
  %14 = sub nsw i32 %12, %13
  %15 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %18 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = sub nsw i32 %20, 1
  %22 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %23 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %25 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %24, i32 0, i32 3
  %26 = call i32 @pthread_mutex_init(i32* %25, i32* null)
  ret void
}

declare dso_local i32 @memset(%struct.mlx4_xsrq_table*, i32, i32) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
