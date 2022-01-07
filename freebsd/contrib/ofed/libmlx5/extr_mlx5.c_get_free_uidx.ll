; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_get_free_uidx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_get_free_uidx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }

@MLX5_UIDX_TABLE_SIZE = common dso_local global i64 0, align 8
@MLX5_UIDX_TABLE_MASK = common dso_local global i64 0, align 8
@MLX5_UIDX_TABLE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mlx5_context*)* @get_free_uidx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_free_uidx(%struct.mlx5_context* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mlx5_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5_context* %0, %struct.mlx5_context** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @MLX5_UIDX_TABLE_SIZE, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %25

10:                                               ; preds = %6
  %11 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MLX5_UIDX_TABLE_MASK, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %10
  br label %25

21:                                               ; preds = %10
  br label %22

22:                                               ; preds = %21
  %23 = load i64, i64* %4, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %4, align 8
  br label %6

25:                                               ; preds = %20, %6
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @MLX5_UIDX_TABLE_SIZE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i64 -1, i64* %2, align 8
  br label %72

30:                                               ; preds = %25
  %31 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %32 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @MLX5_UIDX_TABLE_SHIFT, align 8
  %42 = shl i64 %40, %41
  store i64 %42, i64* %2, align 8
  br label %72

43:                                               ; preds = %30
  store i64 0, i64* %5, align 8
  br label %44

44:                                               ; preds = %63, %43
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* @MLX5_UIDX_TABLE_MASK, align 8
  %47 = add nsw i64 %46, 1
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %44
  %50 = load %struct.mlx5_context*, %struct.mlx5_context** %3, align 8
  %51 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %49
  br label %66

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %5, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %5, align 8
  br label %44

66:                                               ; preds = %61, %44
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* @MLX5_UIDX_TABLE_SHIFT, align 8
  %69 = shl i64 %67, %68
  %70 = load i64, i64* %5, align 8
  %71 = or i64 %69, %70
  store i64 %71, i64* %2, align 8
  br label %72

72:                                               ; preds = %66, %39, %29
  %73 = load i64, i64* %2, align 8
  ret i64 %73
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
