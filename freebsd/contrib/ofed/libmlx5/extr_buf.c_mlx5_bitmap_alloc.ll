; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_bitmap_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_bitmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_bitmap = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_bitmap*)* @mlx5_bitmap_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_bitmap_alloc(%struct.mlx5_bitmap* %0) #0 {
  %2 = alloca %struct.mlx5_bitmap*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mlx5_bitmap* %0, %struct.mlx5_bitmap** %2, align 8
  %5 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mlx5_find_first_zero_bit(i32 %7, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %2, align 8
  %20 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mlx5_set_bit(i32 %18, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  %25 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %17
  %35 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %2, align 8
  %36 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %17
  %38 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %2, align 8
  %39 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  store i32 %43, i32* %4, align 4
  br label %45

44:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %37
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, -1
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %2, align 8
  %50 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @mlx5_find_first_zero_bit(i32, i32) #1

declare dso_local i32 @mlx5_set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
