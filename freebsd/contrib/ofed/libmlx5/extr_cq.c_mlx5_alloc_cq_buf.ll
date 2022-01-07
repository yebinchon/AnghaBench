; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_alloc_cq_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_alloc_cq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_cq = type { i32 }
%struct.mlx5_buf = type { %struct.mlx5_cqe64* }
%struct.mlx5_cqe64 = type { i32 }
%struct.mlx5_device = type { i32 }

@MLX5_ALLOC_TYPE_ANON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"HUGE_CQ\00", align 1
@MLX5_ALLOC_TYPE_HUGE = common dso_local global i32 0, align 4
@MLX5_CQ_PREFIX = common dso_local global i32 0, align 4
@MLX5_CQE_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_alloc_cq_buf(%struct.mlx5_context* %0, %struct.mlx5_cq* %1, %struct.mlx5_buf* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_context*, align 8
  %8 = alloca %struct.mlx5_cq*, align 8
  %9 = alloca %struct.mlx5_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_cqe64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlx5_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %7, align 8
  store %struct.mlx5_cq* %1, %struct.mlx5_cq** %8, align 8
  store %struct.mlx5_buf* %2, %struct.mlx5_buf** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.mlx5_context*, %struct.mlx5_context** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.mlx5_device* @to_mdev(i32 %21)
  store %struct.mlx5_device* %22, %struct.mlx5_device** %14, align 8
  %23 = load i32, i32* @MLX5_ALLOC_TYPE_ANON, align 4
  store i32 %23, i32* %17, align 4
  %24 = call i64 @mlx5_use_huge(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @MLX5_ALLOC_TYPE_HUGE, align 4
  store i32 %27, i32* %17, align 4
  br label %28

28:                                               ; preds = %26, %5
  %29 = load i32, i32* @MLX5_CQ_PREFIX, align 4
  %30 = load i32, i32* %17, align 4
  %31 = call i32 @mlx5_get_alloc_type(i32 %29, i32* %16, i32 %30)
  %32 = load %struct.mlx5_context*, %struct.mlx5_context** %7, align 8
  %33 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = mul nsw i32 %34, %35
  %37 = load %struct.mlx5_device*, %struct.mlx5_device** %14, align 8
  %38 = getelementptr inbounds %struct.mlx5_device, %struct.mlx5_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @align(i32 %36, i32 %39)
  %41 = load %struct.mlx5_device*, %struct.mlx5_device** %14, align 8
  %42 = getelementptr inbounds %struct.mlx5_device, %struct.mlx5_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* @MLX5_CQ_PREFIX, align 4
  %46 = call i32 @mlx5_alloc_prefered_buf(%struct.mlx5_context* %32, %struct.mlx5_buf* %33, i32 %40, i32 %43, i32 %44, i32 %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  store i32 -1, i32* %6, align 4
  br label %86

50:                                               ; preds = %28
  %51 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %52 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %51, i32 0, i32 0
  %53 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %54, %55
  %57 = call i32 @memset(%struct.mlx5_cqe64* %53, i32 0, i32 %56)
  store i32 0, i32* %13, align 4
  br label %58

58:                                               ; preds = %82, %50
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %85

62:                                               ; preds = %58
  %63 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %64 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %63, i32 0, i32 0
  %65 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %64, align 8
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %11, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %65, i64 %69
  store %struct.mlx5_cqe64* %70, %struct.mlx5_cqe64** %12, align 8
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 128
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %12, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %75, i64 %76
  store %struct.mlx5_cqe64* %77, %struct.mlx5_cqe64** %12, align 8
  %78 = load i32, i32* @MLX5_CQE_INVALID, align 4
  %79 = shl i32 %78, 4
  %80 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %12, align 8
  %81 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %62
  %83 = load i32, i32* %13, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %13, align 4
  br label %58

85:                                               ; preds = %58
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %49
  %87 = load i32, i32* %6, align 4
  ret i32 %87
}

declare dso_local %struct.mlx5_device* @to_mdev(i32) #1

declare dso_local i64 @mlx5_use_huge(i8*) #1

declare dso_local i32 @mlx5_get_alloc_type(i32, i32*, i32) #1

declare dso_local i32 @mlx5_alloc_prefered_buf(%struct.mlx5_context*, %struct.mlx5_buf*, i32, i32, i32, i32) #1

declare dso_local i32 @align(i32, i32) #1

declare dso_local i32 @memset(%struct.mlx5_cqe64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
