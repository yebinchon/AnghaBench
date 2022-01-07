; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_alloc_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_alloc_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_buf = type { i32, i32, i32 }

@MLX5_ALLOC_TYPE_ANON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_alloc_buf(%struct.mlx5_buf* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_buf* %0, %struct.mlx5_buf** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @align(i64 %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.mlx5_buf*, %struct.mlx5_buf** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %13, i32 0, i32 2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @posix_memalign(i32* %14, i32 %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %3
  %23 = load %struct.mlx5_buf*, %struct.mlx5_buf** %5, align 8
  %24 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ibv_dontfork_range(i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %22
  %31 = load %struct.mlx5_buf*, %struct.mlx5_buf** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @free(i32 %33)
  br label %35

35:                                               ; preds = %30, %22
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.mlx5_buf*, %struct.mlx5_buf** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @MLX5_ALLOC_TYPE_ANON, align 4
  %43 = load %struct.mlx5_buf*, %struct.mlx5_buf** %5, align 8
  %44 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %45, %20
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @align(i64, i32) #1

declare dso_local i32 @posix_memalign(i32*, i32, i32) #1

declare dso_local i32 @ibv_dontfork_range(i32, i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
