; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_alloc_buf_contig.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_mlx5_alloc_buf_contig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32, %struct.ibv_context }
%struct.ibv_context = type { i32 }
%struct.mlx5_buf = type { i64, i32, i8* }

@MAP_FAILED = common dso_local global i8* null, align 8
@MLX5_MMAP_GET_CONTIGUOUS_PAGES_CMD = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MLX5_DBG_CONTIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"block order %d, addr %p\0A\00", align 1
@MLX5_ALLOC_TYPE_CONTIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_alloc_buf_contig(%struct.mlx5_context* %0, %struct.mlx5_buf* %1, i64 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_context*, align 8
  %8 = alloca %struct.mlx5_buf*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ibv_context*, align 8
  %17 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %7, align 8
  store %struct.mlx5_buf* %1, %struct.mlx5_buf** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %18 = load i8*, i8** @MAP_FAILED, align 8
  store i8* %18, i8** %12, align 8
  %19 = load %struct.mlx5_context*, %struct.mlx5_context** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %19, i32 0, i32 1
  store %struct.ibv_context* %20, %struct.ibv_context** %16, align 8
  %21 = load i8*, i8** %11, align 8
  %22 = call i32 @mlx5_alloc_get_env_info(i32* %14, i32* %15, i8* %21)
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @mlx5_get_block_order(i64 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %28, %5
  br label %31

31:                                               ; preds = %60, %30
  store i32 0, i32* %17, align 4
  %32 = load i32, i32* @MLX5_MMAP_GET_CONTIGUOUS_PAGES_CMD, align 4
  %33 = call i32 @set_command(i32 %32, i32* %17)
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @set_order(i32 %34, i32* %17)
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* @PROT_WRITE, align 4
  %38 = load i32, i32* @PROT_READ, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MAP_SHARED, align 4
  %41 = load %struct.ibv_context*, %struct.ibv_context** %16, align 8
  %42 = getelementptr inbounds %struct.ibv_context, %struct.ibv_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %17, align 4
  %46 = mul nsw i32 %44, %45
  %47 = call i8* @mmap(i32* null, i64 %36, i32 %39, i32 %40, i32 %43, i32 %46)
  store i8* %47, i8** %12, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load i8*, i8** @MAP_FAILED, align 8
  %50 = icmp ne i8* %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %31
  br label %64

52:                                               ; preds = %31
  %53 = load i64, i64* @errno, align 8
  %54 = load i64, i64* @EINVAL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %52
  store i32 -1, i32* %6, align 4
  br label %95

57:                                               ; preds = %52
  %58 = load i32, i32* %13, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp sge i32 %61, %62
  br i1 %63, label %31, label %64

64:                                               ; preds = %60, %51
  %65 = load %struct.mlx5_context*, %struct.mlx5_context** %7, align 8
  %66 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @MLX5_DBG_CONTIG, align 4
  %69 = load i32, i32* %13, align 4
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @mlx5_dbg(i32 %67, i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %69, i8* %70)
  %72 = load i8*, i8** %12, align 8
  %73 = load i8*, i8** @MAP_FAILED, align 8
  %74 = icmp eq i8* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i32 -1, i32* %6, align 4
  br label %95

76:                                               ; preds = %64
  %77 = load i8*, i8** %12, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i64 @ibv_dontfork_range(i8* %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i8*, i8** %12, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @munmap(i8* %82, i64 %83)
  store i32 -1, i32* %6, align 4
  br label %95

85:                                               ; preds = %76
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.mlx5_buf*, %struct.mlx5_buf** %8, align 8
  %88 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.mlx5_buf*, %struct.mlx5_buf** %8, align 8
  %91 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  %92 = load i32, i32* @MLX5_ALLOC_TYPE_CONTIG, align 4
  %93 = load %struct.mlx5_buf*, %struct.mlx5_buf** %8, align 8
  %94 = getelementptr inbounds %struct.mlx5_buf, %struct.mlx5_buf* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  store i32 0, i32* %6, align 4
  br label %95

95:                                               ; preds = %85, %81, %75, %56
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local i32 @mlx5_alloc_get_env_info(i32*, i32*, i8*) #1

declare dso_local i32 @mlx5_get_block_order(i64) #1

declare dso_local i32 @set_command(i32, i32*) #1

declare dso_local i32 @set_order(i32, i32*) #1

declare dso_local i8* @mmap(i32*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mlx5_dbg(i32, i32, i8*, i32, i8*) #1

declare dso_local i64 @ibv_dontfork_range(i8*, i64) #1

declare dso_local i32 @munmap(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
