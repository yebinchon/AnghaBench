; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_alloc_rwq_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_alloc_rwq_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.mlx5_rwq = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@MLX5_ALLOC_TYPE_PREFER_CONTIG = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@MLX5_RWQ_PREFIX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_context*, %struct.mlx5_rwq*, i32)* @mlx5_alloc_rwq_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_alloc_rwq_buf(%struct.ibv_context* %0, %struct.mlx5_rwq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_context*, align 8
  %6 = alloca %struct.mlx5_rwq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %5, align 8
  store %struct.mlx5_rwq* %1, %struct.mlx5_rwq** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @MLX5_ALLOC_TYPE_PREFER_CONTIG, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = trunc i64 %16 to i32
  %18 = call i32 @malloc(i32 %17)
  %19 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %6, align 8
  %23 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  store i32 %28, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %63

29:                                               ; preds = %3
  %30 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %31 = call i32 @to_mctx(%struct.ibv_context* %30)
  %32 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %32, i32 0, i32 2
  %34 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %38 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.TYPE_4__* @to_mdev(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @align(i32 %36, i32 %42)
  %44 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %45 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.TYPE_4__* @to_mdev(i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @MLX5_RWQ_PREFIX, align 4
  %52 = call i32 @mlx5_alloc_prefered_buf(i32 %31, i32* %33, i32 %43, i32 %49, i32 %50, i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %29
  %56 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %6, align 8
  %57 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @free(i32 %59)
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %63

62:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %62, %55, %27
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @mlx5_alloc_prefered_buf(i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @to_mctx(%struct.ibv_context*) #1

declare dso_local i32 @align(i32, i32) #1

declare dso_local %struct.TYPE_4__* @to_mdev(i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
