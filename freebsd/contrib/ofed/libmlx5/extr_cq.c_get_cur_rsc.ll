; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_cur_rsc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_cur_rsc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32 }
%struct.mlx5_resource = type { i32 }
%struct.mlx5_srq = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_context*, i32, i64, i64, %struct.mlx5_resource**, %struct.mlx5_srq**, i32*)* @get_cur_rsc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cur_rsc(%struct.mlx5_context* %0, i32 %1, i64 %2, i64 %3, %struct.mlx5_resource** %4, %struct.mlx5_srq** %5, i32* %6) #0 {
  %8 = alloca %struct.mlx5_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mlx5_resource**, align 8
  %13 = alloca %struct.mlx5_srq**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store %struct.mlx5_resource** %4, %struct.mlx5_resource*** %12, align 8
  store %struct.mlx5_srq** %5, %struct.mlx5_srq*** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %7
  %19 = load %struct.mlx5_context*, %struct.mlx5_context** %8, align 8
  %20 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %12, align 8
  %21 = load %struct.mlx5_srq**, %struct.mlx5_srq*** %13, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i32*, i32** %14, align 8
  %24 = call i32 @get_resp_ctx_v1(%struct.mlx5_context* %19, %struct.mlx5_resource** %20, %struct.mlx5_srq** %21, i64 %22, i32* %23)
  store i32 %24, i32* %15, align 4
  br label %40

25:                                               ; preds = %7
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load i32*, i32** %14, align 8
  store i32 1, i32* %29, align 4
  %30 = load %struct.mlx5_context*, %struct.mlx5_context** %8, align 8
  %31 = load %struct.mlx5_srq**, %struct.mlx5_srq*** %13, align 8
  %32 = load i64, i64* %11, align 8
  %33 = call i32 @get_srq_ctx(%struct.mlx5_context* %30, %struct.mlx5_srq** %31, i64 %32)
  store i32 %33, i32* %15, align 4
  br label %39

34:                                               ; preds = %25
  %35 = load %struct.mlx5_context*, %struct.mlx5_context** %8, align 8
  %36 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %12, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @get_qp_ctx(%struct.mlx5_context* %35, %struct.mlx5_resource** %36, i64 %37)
  store i32 %38, i32* %15, align 4
  br label %39

39:                                               ; preds = %34, %28
  br label %40

40:                                               ; preds = %39, %18
  %41 = load i32, i32* %15, align 4
  ret i32 %41
}

declare dso_local i32 @get_resp_ctx_v1(%struct.mlx5_context*, %struct.mlx5_resource**, %struct.mlx5_srq**, i64, i32*) #1

declare dso_local i32 @get_srq_ctx(%struct.mlx5_context*, %struct.mlx5_srq**, i64) #1

declare dso_local i32 @get_qp_ctx(%struct.mlx5_context*, %struct.mlx5_resource**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
