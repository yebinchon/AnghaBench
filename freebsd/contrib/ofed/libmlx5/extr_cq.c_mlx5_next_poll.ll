; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_next_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_mlx5_next_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq_ex = type { i32 }
%struct.mlx5_cq = type { i32 }
%struct.mlx5_cqe64 = type { i32 }

@CQ_EMPTY = common dso_local global i32 0, align 4
@POLLING_MODE_STALL_ADAPTIVE = common dso_local global i32 0, align 4
@MLX5_CQ_FLAGS_EMPTY_DURING_POLL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_cq_ex*, i32, i32)* @mlx5_next_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_next_poll(%struct.ibv_cq_ex* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_cq_ex*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_cq*, align 8
  %9 = alloca %struct.mlx5_cqe64*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.ibv_cq_ex* %0, %struct.ibv_cq_ex** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ibv_cq_ex*, %struct.ibv_cq_ex** %5, align 8
  %13 = call i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex* %12)
  %14 = call %struct.mlx5_cq* @to_mcq(i32 %13)
  store %struct.mlx5_cq* %14, %struct.mlx5_cq** %8, align 8
  %15 = load %struct.mlx5_cq*, %struct.mlx5_cq** %8, align 8
  %16 = call i32 @mlx5_get_next_cqe(%struct.mlx5_cq* %15, %struct.mlx5_cqe64** %9, i8** %10)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = load i32, i32* @CQ_EMPTY, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @POLLING_MODE_STALL_ADAPTIVE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32, i32* @MLX5_CQ_FLAGS_EMPTY_DURING_POLL, align 4
  %26 = load %struct.mlx5_cq*, %struct.mlx5_cq** %8, align 8
  %27 = getelementptr inbounds %struct.mlx5_cq, %struct.mlx5_cq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %20
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %4, align 4
  br label %38

32:                                               ; preds = %3
  %33 = load %struct.mlx5_cq*, %struct.mlx5_cq** %8, align 8
  %34 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @mlx5_parse_lazy_cqe(%struct.mlx5_cq* %33, %struct.mlx5_cqe64* %34, i8* %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %32, %30
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.mlx5_cq* @to_mcq(i32) #1

declare dso_local i32 @ibv_cq_ex_to_cq(%struct.ibv_cq_ex*) #1

declare dso_local i32 @mlx5_get_next_cqe(%struct.mlx5_cq*, %struct.mlx5_cqe64**, i8**) #1

declare dso_local i32 @mlx5_parse_lazy_cqe(%struct.mlx5_cq*, %struct.mlx5_cqe64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
