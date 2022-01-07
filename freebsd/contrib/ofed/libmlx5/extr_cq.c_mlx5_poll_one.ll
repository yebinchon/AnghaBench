; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_poll_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_poll_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cq = type { i32 }
%struct.mlx5_resource = type { i32 }
%struct.mlx5_srq = type { i32 }
%struct.ibv_wc = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@CQ_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_cq*, %struct.mlx5_resource**, %struct.mlx5_srq**, %struct.ibv_wc*, i32)* @mlx5_poll_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_poll_one(%struct.mlx5_cq* %0, %struct.mlx5_resource** %1, %struct.mlx5_srq** %2, %struct.ibv_wc* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_cq*, align 8
  %8 = alloca %struct.mlx5_resource**, align 8
  %9 = alloca %struct.mlx5_srq**, align 8
  %10 = alloca %struct.ibv_wc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mlx5_cqe64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5_cq* %0, %struct.mlx5_cq** %7, align 8
  store %struct.mlx5_resource** %1, %struct.mlx5_resource*** %8, align 8
  store %struct.mlx5_srq** %2, %struct.mlx5_srq*** %9, align 8
  store %struct.ibv_wc* %3, %struct.ibv_wc** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.mlx5_cq*, %struct.mlx5_cq** %7, align 8
  %16 = call i32 @mlx5_get_next_cqe(%struct.mlx5_cq* %15, %struct.mlx5_cqe64** %12, i8** %13)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* @CQ_EMPTY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %6, align 4
  br label %31

22:                                               ; preds = %5
  %23 = load %struct.mlx5_cq*, %struct.mlx5_cq** %7, align 8
  %24 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %12, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %8, align 8
  %27 = load %struct.mlx5_srq**, %struct.mlx5_srq*** %9, align 8
  %28 = load %struct.ibv_wc*, %struct.ibv_wc** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @mlx5_parse_cqe(%struct.mlx5_cq* %23, %struct.mlx5_cqe64* %24, i8* %25, %struct.mlx5_resource** %26, %struct.mlx5_srq** %27, %struct.ibv_wc* %28, i32 %29, i32 0)
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %22, %20
  %32 = load i32, i32* %6, align 4
  ret i32 %32
}

declare dso_local i32 @mlx5_get_next_cqe(%struct.mlx5_cq*, %struct.mlx5_cqe64**, i8**) #1

declare dso_local i32 @mlx5_parse_cqe(%struct.mlx5_cq*, %struct.mlx5_cqe64*, i8*, %struct.mlx5_resource**, %struct.mlx5_srq**, %struct.ibv_wc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
