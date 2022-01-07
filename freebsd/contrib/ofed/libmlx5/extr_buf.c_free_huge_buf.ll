; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_free_huge_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_free_huge_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32, i32 }
%struct.mlx5_buf = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@MLX5_Q_CHUNK_SIZE = common dso_local global i32 0, align 4
@entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_context*, %struct.mlx5_buf*)* @free_huge_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_huge_buf(%struct.mlx5_context* %0, %struct.mlx5_buf* %1) #0 {
  %3 = alloca %struct.mlx5_context*, align 8
  %4 = alloca %struct.mlx5_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %3, align 8
  store %struct.mlx5_buf* %1, %struct.mlx5_buf** %4, align 8
  %6 = load %struct.mlx5_buf*, %struct.mlx5_buf** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @MLX5_Q_CHUNK_SIZE, align 4
  %10 = sdiv i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %11, i32 0, i32 0
  %13 = call i32 @mlx5_spin_lock(i32* %12)
  %14 = load %struct.mlx5_buf*, %struct.mlx5_buf** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.mlx5_buf*, %struct.mlx5_buf** %4, align 8
  %19 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @bitmap_free_range(i32* %17, i32 %20, i32 %21)
  %23 = load %struct.mlx5_buf*, %struct.mlx5_buf** %4, align 8
  %24 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i64 @bitmap_empty(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %2
  %30 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %31 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %30, i32 0, i32 1
  %32 = load %struct.mlx5_buf*, %struct.mlx5_buf** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* @entry, align 4
  %36 = call i32 @TAILQ_REMOVE(i32* %31, %struct.TYPE_3__* %34, i32 %35)
  %37 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %38 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %37, i32 0, i32 0
  %39 = call i32 @mlx5_spin_unlock(i32* %38)
  %40 = load %struct.mlx5_buf*, %struct.mlx5_buf** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call i32 @free_huge_mem(%struct.TYPE_3__* %42)
  br label %48

44:                                               ; preds = %2
  %45 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %46 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %45, i32 0, i32 0
  %47 = call i32 @mlx5_spin_unlock(i32* %46)
  br label %48

48:                                               ; preds = %44, %29
  ret void
}

declare dso_local i32 @mlx5_spin_lock(i32*) #1

declare dso_local i32 @bitmap_free_range(i32*, i32, i32) #1

declare dso_local i64 @bitmap_empty(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @mlx5_spin_unlock(i32*) #1

declare dso_local i32 @free_huge_mem(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
