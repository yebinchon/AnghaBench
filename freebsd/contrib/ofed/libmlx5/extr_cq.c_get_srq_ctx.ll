; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_srq_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_srq_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32 }
%struct.mlx5_srq = type { i64 }

@CQ_POLL_ERR = common dso_local global i32 0, align 4
@CQ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_context*, %struct.mlx5_srq**, i64)* @get_srq_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_srq_ctx(%struct.mlx5_context* %0, %struct.mlx5_srq** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_context*, align 8
  %6 = alloca %struct.mlx5_srq**, align 8
  %7 = alloca i64, align 8
  store %struct.mlx5_context* %0, %struct.mlx5_context** %5, align 8
  store %struct.mlx5_srq** %1, %struct.mlx5_srq*** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.mlx5_srq**, %struct.mlx5_srq*** %6, align 8
  %9 = load %struct.mlx5_srq*, %struct.mlx5_srq** %8, align 8
  %10 = icmp ne %struct.mlx5_srq* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.mlx5_srq**, %struct.mlx5_srq*** %6, align 8
  %14 = load %struct.mlx5_srq*, %struct.mlx5_srq** %13, align 8
  %15 = getelementptr inbounds %struct.mlx5_srq, %struct.mlx5_srq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %12, %16
  br i1 %17, label %18, label %33

18:                                               ; preds = %11, %3
  %19 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call %struct.mlx5_srq* @mlx5_find_srq(%struct.mlx5_context* %19, i64 %20)
  %22 = load %struct.mlx5_srq**, %struct.mlx5_srq*** %6, align 8
  store %struct.mlx5_srq* %21, %struct.mlx5_srq** %22, align 8
  %23 = load %struct.mlx5_srq**, %struct.mlx5_srq*** %6, align 8
  %24 = load %struct.mlx5_srq*, %struct.mlx5_srq** %23, align 8
  %25 = icmp ne %struct.mlx5_srq* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* @CQ_POLL_ERR, align 4
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32, %11
  %34 = load i32, i32* @CQ_OK, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.mlx5_srq* @mlx5_find_srq(%struct.mlx5_context*, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
