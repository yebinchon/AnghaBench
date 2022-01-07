; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5_clear_uidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5_clear_uidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32**, i32 }

@MLX5_UIDX_TABLE_SHIFT = common dso_local global i64 0, align 8
@MLX5_UIDX_TABLE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_clear_uidx(%struct.mlx5_context* %0, i64 %1) #0 {
  %3 = alloca %struct.mlx5_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @MLX5_UIDX_TABLE_SHIFT, align 8
  %8 = lshr i64 %6, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %10, i32 0, i32 0
  %12 = call i32 @pthread_mutex_lock(i32* %11)
  %13 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %33, label %23

23:                                               ; preds = %2
  %24 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %25 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = call i32 @free(i32** %31)
  br label %46

33:                                               ; preds = %2
  %34 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = load i64, i64* @MLX5_UIDX_TABLE_MASK, align 8
  %44 = and i64 %42, %43
  %45 = getelementptr inbounds i32*, i32** %41, i64 %44
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %33, %23
  %47 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %48 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %47, i32 0, i32 0
  %49 = call i32 @pthread_mutex_unlock(i32* %48)
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
