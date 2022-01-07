; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_calc_sq_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_calc_sq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32, i32, i32* }
%struct.ibv_qp_init_attr_ex = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mlx5_qp = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@MLX5_DBG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*)* @mlx5_calc_sq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_calc_sq_size(%struct.mlx5_context* %0, %struct.ibv_qp_init_attr_ex* %1, %struct.mlx5_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_context*, align 8
  %6 = alloca %struct.ibv_qp_init_attr_ex*, align 8
  %7 = alloca %struct.mlx5_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.mlx5_context* %0, %struct.mlx5_context** %5, align 8
  store %struct.ibv_qp_init_attr_ex* %1, %struct.ibv_qp_init_attr_ex** %6, align 8
  store %struct.mlx5_qp* %2, %struct.mlx5_qp** %7, align 8
  %11 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %10, align 8
  %14 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %15 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %125

20:                                               ; preds = %3
  %21 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %22 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %23 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %24 = call i32 @mlx5_calc_send_wqe(%struct.mlx5_context* %21, %struct.ibv_qp_init_attr_ex* %22, %struct.mlx5_qp* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* @MLX5_DBG_QP, align 4
  %30 = call i32 @mlx5_dbg(i32* %28, i32 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %4, align 4
  br label %125

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @MLX5_DBG_QP, align 4
  %41 = call i32 @mlx5_dbg(i32* %39, i32 %40, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %125

44:                                               ; preds = %32
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %47 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @sq_overhead(i32 %48)
  %50 = sub nsw i32 %45, %49
  %51 = sext i32 %50 to i64
  %52 = sub i64 %51, 4
  %53 = trunc i64 %52 to i32
  %54 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %55 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %57 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %60 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %63 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %67 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sdiv i32 2147483647, %68
  %70 = icmp sgt i32 %65, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %44
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* @MLX5_DBG_QP, align 4
  %74 = call i32 @mlx5_dbg(i32* %72, i32 %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %125

77:                                               ; preds = %44
  %78 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %79 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 %81, %82
  %84 = call i32 @mlx5_round_up_power_of_two(i32 %83)
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %87 = sdiv i32 %85, %86
  %88 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %89 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %92 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %96 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %94, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %77
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* @MLX5_DBG_QP, align 4
  %102 = call i32 @mlx5_dbg(i32* %100, i32 %101, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %4, align 4
  br label %125

105:                                              ; preds = %77
  %106 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %107 = call i32 @mlx5_ilog2(i32 %106)
  %108 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %109 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 3
  store i32 %107, i32* %110, align 4
  %111 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %112 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %116 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  store i32 %114, i32* %117, align 4
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %8, align 4
  %120 = sdiv i32 %118, %119
  %121 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %122 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 4
  %124 = load i32, i32* %9, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %105, %99, %71, %38, %27, %19
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @mlx5_calc_send_wqe(%struct.mlx5_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*) #1

declare dso_local i32 @mlx5_dbg(i32*, i32, i8*) #1

declare dso_local i32 @sq_overhead(i32) #1

declare dso_local i32 @mlx5_round_up_power_of_two(i32) #1

declare dso_local i32 @mlx5_ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
