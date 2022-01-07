; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_find_xsrq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_find_xsrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_srq = type { i32 }
%struct.mlx4_xsrq_table = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx4_srq**, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx4_srq* @mlx4_find_xsrq(%struct.mlx4_xsrq_table* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_srq*, align 8
  %4 = alloca %struct.mlx4_xsrq_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx4_xsrq_table* %0, %struct.mlx4_xsrq_table** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  %12 = and i32 %7, %11
  %13 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %14 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %12, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %18 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %17, i32 0, i32 3
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %2
  %27 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %27, i32 0, i32 3
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.mlx4_srq**, %struct.mlx4_srq*** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = and i32 %35, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.mlx4_srq*, %struct.mlx4_srq** %34, i64 %40
  %42 = load %struct.mlx4_srq*, %struct.mlx4_srq** %41, align 8
  store %struct.mlx4_srq* %42, %struct.mlx4_srq** %3, align 8
  br label %44

43:                                               ; preds = %2
  store %struct.mlx4_srq* null, %struct.mlx4_srq** %3, align 8
  br label %44

44:                                               ; preds = %43, %26
  %45 = load %struct.mlx4_srq*, %struct.mlx4_srq** %3, align 8
  ret %struct.mlx4_srq* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
