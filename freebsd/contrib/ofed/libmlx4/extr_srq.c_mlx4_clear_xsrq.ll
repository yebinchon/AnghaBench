; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_clear_xsrq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_clear_xsrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_xsrq_table = type { i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32**, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_clear_xsrq(%struct.mlx4_xsrq_table* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_xsrq_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx4_xsrq_table* %0, %struct.mlx4_xsrq_table** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  %11 = and i32 %6, %10
  %12 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = ashr i32 %11, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %16, i32 0, i32 3
  %18 = call i32 @pthread_mutex_lock(i32* %17)
  %19 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %20 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* %25, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %45

29:                                               ; preds = %2
  %30 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %31 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %30, i32 0, i32 4
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %37, i64 %43
  store i32* null, i32** %44, align 8
  br label %55

45:                                               ; preds = %2
  %46 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %47 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = call i32 @free(i32** %53)
  br label %55

55:                                               ; preds = %45, %29
  %56 = load %struct.mlx4_xsrq_table*, %struct.mlx4_xsrq_table** %3, align 8
  %57 = getelementptr inbounds %struct.mlx4_xsrq_table, %struct.mlx4_xsrq_table* %56, i32 0, i32 3
  %58 = call i32 @pthread_mutex_unlock(i32* %57)
  ret void
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
