; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_get_next_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_get_next_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cq = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@CQ_EMPTY = common dso_local global i32 0, align 4
@CQ_OK = common dso_local global i32 0, align 4
@MLX5_DBG_CQ_CQE = common dso_local global i32 0, align 4
@mlx5_debug_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_cq*, %struct.mlx5_cqe64**, i8**)* @mlx5_get_next_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_get_next_cqe(%struct.mlx5_cq* %0, %struct.mlx5_cqe64** %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_cq*, align 8
  %6 = alloca %struct.mlx5_cqe64**, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mlx5_cqe64*, align 8
  store %struct.mlx5_cq* %0, %struct.mlx5_cq** %5, align 8
  store %struct.mlx5_cqe64** %1, %struct.mlx5_cqe64*** %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %11 = call i8* @next_cqe_sw(%struct.mlx5_cq* %10)
  store i8* %11, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @CQ_EMPTY, align 4
  store i32 %15, i32* %4, align 4
  br label %41

16:                                               ; preds = %3
  %17 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 64
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i8*, i8** %8, align 8
  br label %26

23:                                               ; preds = %16
  %24 = load i8*, i8** %8, align 8
  %25 = getelementptr i8, i8* %24, i64 64
  br label %26

26:                                               ; preds = %23, %21
  %27 = phi i8* [ %22, %21 ], [ %25, %23 ]
  %28 = bitcast i8* %27 to %struct.mlx5_cqe64*
  store %struct.mlx5_cqe64* %28, %struct.mlx5_cqe64** %9, align 8
  %29 = load %struct.mlx5_cq*, %struct.mlx5_cq** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %34 = call i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.mlx5_cqe64* %33, i32 4)
  %35 = call i32 (...) @udma_from_device_barrier()
  %36 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %37 = load %struct.mlx5_cqe64**, %struct.mlx5_cqe64*** %6, align 8
  store %struct.mlx5_cqe64* %36, %struct.mlx5_cqe64** %37, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i8**, i8*** %7, align 8
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* @CQ_OK, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %26, %14
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i8* @next_cqe_sw(%struct.mlx5_cq*) #1

declare dso_local i32 @VALGRIND_MAKE_MEM_DEFINED(%struct.mlx5_cqe64*, i32) #1

declare dso_local i32 @udma_from_device_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
