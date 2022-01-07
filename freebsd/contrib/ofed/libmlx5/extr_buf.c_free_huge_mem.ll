; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_free_huge_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_buf.c_free_huge_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_hugetlb_mem = type { i32, i32, i32 }

@stderr = common dso_local global i32 0, align 4
@MLX5_DBG_CONTIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@IPC_RMID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_hugetlb_mem*)* @free_huge_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_huge_mem(%struct.mlx5_hugetlb_mem* %0) #0 {
  %2 = alloca %struct.mlx5_hugetlb_mem*, align 8
  store %struct.mlx5_hugetlb_mem* %0, %struct.mlx5_hugetlb_mem** %2, align 8
  %3 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %3, i32 0, i32 2
  %5 = call i32 @mlx5_bitmap_cleanup(i32* %4)
  %6 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %2, align 8
  %7 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @shmdt(i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @stderr, align 4
  %13 = load i32, i32* @MLX5_DBG_CONTIG, align 4
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 @strerror(i32 %14)
  %16 = call i32 @mlx5_dbg(i32 %12, i32 %13, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5_hugetlb_mem, %struct.mlx5_hugetlb_mem* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IPC_RMID, align 4
  %22 = call i32 @shmctl(i32 %20, i32 %21, i32* null)
  %23 = load %struct.mlx5_hugetlb_mem*, %struct.mlx5_hugetlb_mem** %2, align 8
  %24 = call i32 @free(%struct.mlx5_hugetlb_mem* %23)
  ret void
}

declare dso_local i32 @mlx5_bitmap_cleanup(i32*) #1

declare dso_local i32 @shmdt(i32) #1

declare dso_local i32 @mlx5_dbg(i32, i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @shmctl(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.mlx5_hugetlb_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
