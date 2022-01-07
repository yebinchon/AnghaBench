; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_qp_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_qp_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32 }
%struct.mlx5_resource = type { i64 }

@CQ_POLL_ERR = common dso_local global i32 0, align 4
@CQ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_context*, %struct.mlx5_resource**, i64)* @get_qp_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_qp_ctx(%struct.mlx5_context* %0, %struct.mlx5_resource** %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_context*, align 8
  %6 = alloca %struct.mlx5_resource**, align 8
  %7 = alloca i64, align 8
  store %struct.mlx5_context* %0, %struct.mlx5_context** %5, align 8
  store %struct.mlx5_resource** %1, %struct.mlx5_resource*** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %6, align 8
  %9 = load %struct.mlx5_resource*, %struct.mlx5_resource** %8, align 8
  %10 = icmp ne %struct.mlx5_resource* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %6, align 8
  %14 = load %struct.mlx5_resource*, %struct.mlx5_resource** %13, align 8
  %15 = getelementptr inbounds %struct.mlx5_resource, %struct.mlx5_resource* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %12, %16
  br i1 %17, label %18, label %34

18:                                               ; preds = %11, %3
  %19 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %20 = load i64, i64* %7, align 8
  %21 = call i64 @mlx5_find_qp(%struct.mlx5_context* %19, i64 %20)
  %22 = inttoptr i64 %21 to %struct.mlx5_resource*
  %23 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %6, align 8
  store %struct.mlx5_resource* %22, %struct.mlx5_resource** %23, align 8
  %24 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %6, align 8
  %25 = load %struct.mlx5_resource*, %struct.mlx5_resource** %24, align 8
  %26 = icmp ne %struct.mlx5_resource* %25, null
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @CQ_POLL_ERR, align 4
  store i32 %32, i32* %4, align 4
  br label %36

33:                                               ; preds = %18
  br label %34

34:                                               ; preds = %33, %11
  %35 = load i32, i32* @CQ_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i64 @mlx5_find_qp(%struct.mlx5_context*, i64) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
