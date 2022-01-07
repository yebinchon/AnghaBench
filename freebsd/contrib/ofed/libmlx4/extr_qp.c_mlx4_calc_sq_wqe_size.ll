; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_calc_sq_wqe_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_qp.c_mlx4_calc_sq_wqe_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp_cap = type { i32, i64 }
%struct.mlx4_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_calc_sq_wqe_size(%struct.ibv_qp_cap* %0, i32 %1, %struct.mlx4_qp* %2) #0 {
  %4 = alloca %struct.ibv_qp_cap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_qp*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ibv_qp_cap* %0, %struct.ibv_qp_cap** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_qp* %2, %struct.mlx4_qp** %6, align 8
  %9 = load %struct.ibv_qp_cap*, %struct.ibv_qp_cap** %4, align 8
  %10 = getelementptr inbounds %struct.ibv_qp_cap, %struct.ibv_qp_cap* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.ibv_qp_cap*, %struct.ibv_qp_cap** %4, align 8
  %13 = getelementptr inbounds %struct.ibv_qp_cap, %struct.ibv_qp_cap* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @num_inline_segs(i64 %14, i32 %15)
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %11, %18
  %20 = call i32 @align(i64 %19, i32 4)
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 4
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ibv_qp_cap*, %struct.ibv_qp_cap** %4, align 8
  %26 = getelementptr inbounds %struct.ibv_qp_cap, %struct.ibv_qp_cap* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.ibv_qp_cap*, %struct.ibv_qp_cap** %4, align 8
  %31 = getelementptr inbounds %struct.ibv_qp_cap, %struct.ibv_qp_cap* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %29, %3
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %5, align 4
  switch i32 %38, label %59 [
    i32 129, label %39
    i32 130, label %44
    i32 128, label %49
    i32 131, label %49
  ]

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %7, align 4
  br label %60

44:                                               ; preds = %33
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 4
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %7, align 4
  br label %60

49:                                               ; preds = %33, %33
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = add i64 %51, 4
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %55, 12
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 12, i32* %7, align 4
  br label %58

58:                                               ; preds = %57, %49
  br label %60

59:                                               ; preds = %33
  br label %60

60:                                               ; preds = %59, %58, %44, %39
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = icmp ult i64 %62, 4
  br i1 %63, label %64, label %65

64:                                               ; preds = %60
  store i32 4, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %60
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = add i64 %67, 4
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %7, align 4
  %70 = load %struct.mlx4_qp*, %struct.mlx4_qp** %6, align 8
  %71 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i32 6, i32* %72, align 4
  br label %73

73:                                               ; preds = %82, %65
  %74 = load %struct.mlx4_qp*, %struct.mlx4_qp** %6, align 8
  %75 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 1, %77
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.mlx4_qp*, %struct.mlx4_qp** %6, align 8
  %84 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %73

88:                                               ; preds = %73
  ret void
}

declare dso_local i32 @align(i64, i32) #1

declare dso_local i32 @num_inline_segs(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
