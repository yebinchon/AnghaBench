; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_bitmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_bitmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_bitmap = type { i32, i8*, i8*, i8*, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_bitmap*, i8*, i8*)* @mlx5_bitmap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_bitmap_init(%struct.mlx5_bitmap* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_bitmap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store %struct.mlx5_bitmap* %0, %struct.mlx5_bitmap** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %8 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %9 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %8, i32 0, i32 5
  store i64 0, i64* %9, align 8
  %10 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %10, i32 0, i32 4
  store i64 0, i64* %11, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %14 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %13, i32 0, i32 1
  store i8* %12, i8** %14, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %16, i32 0, i32 2
  store i8* %15, i8** %17, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %19, i32 0, i32 3
  store i8* %18, i8** %20, align 8
  %21 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %22 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %25 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @BITS_TO_LONGS(i8* %28)
  %30 = call i32 @calloc(i32 %29, i32 8)
  %31 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %32 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.mlx5_bitmap*, %struct.mlx5_bitmap** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_bitmap, %struct.mlx5_bitmap* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %3
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %41

40:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @calloc(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
