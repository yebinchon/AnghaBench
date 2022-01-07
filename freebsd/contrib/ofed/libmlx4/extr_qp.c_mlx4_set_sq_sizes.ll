; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_set_sq_sizes.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_set_sq_sizes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_qp = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.ibv_qp_cap = type { i32, i32, i64 }

@MLX4_INLINE_ALIGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_set_sq_sizes(%struct.mlx4_qp* %0, %struct.ibv_qp_cap* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_qp*, align 8
  %5 = alloca %struct.ibv_qp_cap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx4_qp* %0, %struct.mlx4_qp** %4, align 8
  store %struct.ibv_qp_cap* %1, %struct.ibv_qp_cap** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = shl i32 1, %11
  %13 = sext i32 %12 to i64
  %14 = sub i64 %13, 4
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %27 [
    i32 129, label %17
    i32 128, label %22
    i32 130, label %22
    i32 131, label %22
  ]

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  br label %28

22:                                               ; preds = %3, %3, %3
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = sub i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %7, align 4
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %22, %17
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %34 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 4
  %36 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %37 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ibv_qp_cap*, %struct.ibv_qp_cap** %5, align 8
  %41 = getelementptr inbounds %struct.ibv_qp_cap, %struct.ibv_qp_cap* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %43 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %47 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %45, %48
  %50 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %51 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i64 %49, i64* %52, align 8
  %53 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %54 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ibv_qp_cap*, %struct.ibv_qp_cap** %5, align 8
  %58 = getelementptr inbounds %struct.ibv_qp_cap, %struct.ibv_qp_cap* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @MLX4_INLINE_ALIGN, align 4
  %63 = call i32 @align(i32 %61, i32 %62)
  %64 = load i32, i32* @MLX4_INLINE_ALIGN, align 4
  %65 = sdiv i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = mul i64 4, %66
  %68 = sub i64 %60, %67
  %69 = trunc i64 %68 to i32
  %70 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %71 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.mlx4_qp*, %struct.mlx4_qp** %4, align 8
  %73 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ibv_qp_cap*, %struct.ibv_qp_cap** %5, align 8
  %76 = getelementptr inbounds %struct.ibv_qp_cap, %struct.ibv_qp_cap* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  ret void
}

declare dso_local i32 @align(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
