; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_alloc_prefered_buf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_alloc_prefered_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32 }
%struct.mlx5_buf = type { i32 }

@MLX5_ALLOC_TYPE_HUGE = common dso_local global i32 0, align 4
@MLX5_ALLOC_TYPE_PREFER_HUGE = common dso_local global i32 0, align 4
@MLX5_ALLOC_TYPE_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@MLX5_DBG_CONTIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Huge mode allocation failed, fallback to %s mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"contig\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@MLX5_ALLOC_TYPE_CONTIG = common dso_local global i32 0, align 4
@MLX5_ALLOC_TYPE_PREFER_CONTIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Contig allocation failed, fallback to default mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_alloc_prefered_buf(%struct.mlx5_context* %0, %struct.mlx5_buf* %1, i64 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_context*, align 8
  %9 = alloca %struct.mlx5_buf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %8, align 8
  store %struct.mlx5_buf* %1, %struct.mlx5_buf** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* %12, align 4
  %16 = load i32, i32* @MLX5_ALLOC_TYPE_HUGE, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %26, label %18

18:                                               ; preds = %6
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @MLX5_ALLOC_TYPE_PREFER_HUGE, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @MLX5_ALLOC_TYPE_ALL, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %48

26:                                               ; preds = %22, %18, %6
  %27 = load %struct.mlx5_context*, %struct.mlx5_context** %8, align 8
  %28 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %29 = load i64, i64* %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @alloc_huge_buf(%struct.mlx5_context* %27, %struct.mlx5_buf* %28, i64 %29, i32 %30)
  store i32 %31, i32* %14, align 4
  %32 = load i32, i32* %14, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %84

35:                                               ; preds = %26
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @MLX5_ALLOC_TYPE_HUGE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 -1, i32* %7, align 4
  br label %84

40:                                               ; preds = %35
  %41 = load i32, i32* @stderr, align 4
  %42 = load i32, i32* @MLX5_DBG_CONTIG, align 4
  %43 = load i32, i32* @MLX5_ALLOC_TYPE_ALL, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %47 = call i32 (i32, i32, i8*, ...) @mlx5_dbg(i32 %41, i32 %42, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %40, %22
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @MLX5_ALLOC_TYPE_CONTIG, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @MLX5_ALLOC_TYPE_PREFER_CONTIG, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @MLX5_ALLOC_TYPE_ALL, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %56, %52, %48
  %61 = load %struct.mlx5_context*, %struct.mlx5_context** %8, align 8
  %62 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %63 = load i64, i64* %10, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = call i32 @mlx5_alloc_buf_contig(%struct.mlx5_context* %61, %struct.mlx5_buf* %62, i64 %63, i32 %64, i8* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %84

70:                                               ; preds = %60
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @MLX5_ALLOC_TYPE_CONTIG, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 -1, i32* %7, align 4
  br label %84

75:                                               ; preds = %70
  %76 = load i32, i32* @stderr, align 4
  %77 = load i32, i32* @MLX5_DBG_CONTIG, align 4
  %78 = call i32 (i32, i32, i8*, ...) @mlx5_dbg(i32 %76, i32 %77, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %75, %56
  %80 = load %struct.mlx5_buf*, %struct.mlx5_buf** %9, align 8
  %81 = load i64, i64* %10, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @mlx5_alloc_buf(%struct.mlx5_buf* %80, i64 %81, i32 %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %79, %74, %69, %39, %34
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @alloc_huge_buf(%struct.mlx5_context*, %struct.mlx5_buf*, i64, i32) #1

declare dso_local i32 @mlx5_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @mlx5_alloc_buf_contig(%struct.mlx5_context*, %struct.mlx5_buf*, i64, i32, i8*) #1

declare dso_local i32 @mlx5_alloc_buf(%struct.mlx5_buf*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
