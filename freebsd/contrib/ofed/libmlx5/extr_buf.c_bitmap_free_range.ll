; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_bitmap_free_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_bitmap_free_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_bitmap = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_bitmap*, i32, i32)* @bitmap_free_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bitmap_free_range(%struct.mlx5_bitmap* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_bitmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5_bitmap* %0, %struct.mlx5_bitmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %26, %3
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mlx5_clear_bit(i32 %21, i32 %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %7, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @min(i32 %32, i32 %33)
  %35 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %39, %42
  %44 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %43, %46
  %48 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, %50
  store i32 %54, i32* %52, align 4
  ret void
}

declare dso_local i32 @mlx5_clear_bit(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
