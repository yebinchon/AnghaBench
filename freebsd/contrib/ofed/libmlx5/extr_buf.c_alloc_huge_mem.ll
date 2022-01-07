; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_alloc_huge_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_alloc_huge_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hugetlb_mem = type { i32, i8*, i32 }

@MLX5_SHM_LENGTH = common dso_local global i32 0, align 4
@IPC_PRIVATE = common dso_local global i32 0, align 4
@SHM_HUGETLB = common dso_local global i32 0, align 4
@SHM_R = common dso_local global i32 0, align 4
@SHM_W = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@MLX5_DBG_CONTIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@MLX5_SHM_ADDR = common dso_local global i32 0, align 4
@MLX5_SHMAT_FLAGS = common dso_local global i32 0, align 4
@MLX5_Q_CHUNK_SIZE = common dso_local global i64 0, align 8
@IPC_RMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_hugetlb_mem* (i64)* @alloc_huge_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_hugetlb_mem* @alloc_huge_mem(i64 %0) #0 {
  %2 = alloca %struct.mlx5_hugetlb_mem*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlx5_hugetlb_mem*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = call %struct.mlx5_hugetlb_mem* @malloc(i32 24)
  store %struct.mlx5_hugetlb_mem* %6, %struct.mlx5_hugetlb_mem** %4, align 8
  %7 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  %8 = icmp ne %struct.mlx5_hugetlb_mem* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.mlx5_hugetlb_mem* null, %struct.mlx5_hugetlb_mem** %2, align 8
  br label %100

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = load i32, i32* @MLX5_SHM_LENGTH, align 4
  %13 = call i64 @align(i64 %11, i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load i32, i32* @IPC_PRIVATE, align 4
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @SHM_HUGETLB, align 4
  %17 = load i32, i32* @SHM_R, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SHM_W, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @shmget(i32 %14, i64 %15, i32 %20)
  %22 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  %25 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %10
  %29 = load i32, i32* @stderr, align 4
  %30 = load i32, i32* @MLX5_DBG_CONTIG, align 4
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 @mlx5_dbg(i32 %29, i32 %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %97

34:                                               ; preds = %10
  %35 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MLX5_SHM_ADDR, align 4
  %39 = load i32, i32* @MLX5_SHMAT_FLAGS, align 4
  %40 = call i8* @shmat(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = icmp eq i8* %45, inttoptr (i64 -1 to i8*)
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32, i32* @stderr, align 4
  %49 = load i32, i32* @MLX5_DBG_CONTIG, align 4
  %50 = load i32, i32* @errno, align 4
  %51 = call i32 @strerror(i32 %50)
  %52 = call i32 @mlx5_dbg(i32 %48, i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %91

53:                                               ; preds = %34
  %54 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %54, i32 0, i32 2
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @MLX5_Q_CHUNK_SIZE, align 8
  %58 = udiv i64 %56, %57
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @MLX5_Q_CHUNK_SIZE, align 8
  %61 = udiv i64 %59, %60
  %62 = sub i64 %61, 1
  %63 = call i64 @mlx5_bitmap_init(i32* %55, i64 %58, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %53
  %66 = load i32, i32* @stderr, align 4
  %67 = load i32, i32* @MLX5_DBG_CONTIG, align 4
  %68 = load i32, i32* @errno, align 4
  %69 = call i32 @strerror(i32 %68)
  %70 = call i32 @mlx5_dbg(i32 %66, i32 %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %69)
  br label %78

71:                                               ; preds = %53
  %72 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  %73 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @IPC_RMID, align 4
  %76 = call i32 @shmctl(i32 %74, i32 %75, i32* null)
  %77 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  store %struct.mlx5_hugetlb_mem* %77, %struct.mlx5_hugetlb_mem** %2, align 8
  br label %100

78:                                               ; preds = %65
  %79 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  %80 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @shmdt(i8* %81)
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32, i32* @stderr, align 4
  %86 = load i32, i32* @MLX5_DBG_CONTIG, align 4
  %87 = load i32, i32* @errno, align 4
  %88 = call i32 @strerror(i32 %87)
  %89 = call i32 @mlx5_dbg(i32 %85, i32 %86, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %84, %78
  br label %91

91:                                               ; preds = %90, %47
  %92 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  %93 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IPC_RMID, align 4
  %96 = call i32 @shmctl(i32 %94, i32 %95, i32* null)
  br label %97

97:                                               ; preds = %91, %28
  %98 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %4, align 8
  %99 = call i32 @free(%struct.mlx5_hugetlb_mem* %98)
  store %struct.mlx5_hugetlb_mem* null, %struct.mlx5_hugetlb_mem** %2, align 8
  br label %100

100:                                              ; preds = %97, %71, %9
  %101 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %2, align 8
  ret %struct.mlx5_hugetlb_mem* %101
}

declare dso_local %struct.mlx5_hugetlb_mem* @malloc(i32) #1

declare dso_local i64 @align(i64, i32) #1

declare dso_local i32 @shmget(i32, i64, i32) #1

declare dso_local i32 @mlx5_dbg(i32, i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i8* @shmat(i32, i32, i32) #1

declare dso_local i64 @mlx5_bitmap_init(i32*, i64, i64) #1

declare dso_local i32 @shmctl(i32, i32, i32*) #1

declare dso_local i32 @shmdt(i8*) #1

declare dso_local i32 @free(%struct.mlx5_hugetlb_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
