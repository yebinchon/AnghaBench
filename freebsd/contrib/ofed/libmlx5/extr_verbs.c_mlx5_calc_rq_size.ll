; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_calc_rq_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_calc_rq_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i64, i32, i32* }
%struct.ibv_qp_init_attr_ex = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mlx5_qp = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@MLX5_DBG_QP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*)* @mlx5_calc_rq_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_calc_rq_size(%struct.mlx5_context* %0, %struct.ibv_qp_init_attr_ex* %1, %struct.mlx5_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_context*, align 8
  %6 = alloca %struct.ibv_qp_init_attr_ex*, align 8
  %7 = alloca %struct.mlx5_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.mlx5_context* %0, %struct.mlx5_context** %5, align 8
  store %struct.ibv_qp_init_attr_ex* %1, %struct.ibv_qp_init_attr_ex** %6, align 8
  store %struct.mlx5_qp* %2, %struct.mlx5_qp** %7, align 8
  %12 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %11, align 8
  %15 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %16 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %120

21:                                               ; preds = %3
  %22 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %23 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %27 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* @MLX5_DBG_QP, align 4
  %33 = call i32 @mlx5_dbg(i32* %31, i32 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %120

36:                                               ; preds = %21
  %37 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %38 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %39 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %40 = call i32 @mlx5_calc_rcv_wqe(%struct.mlx5_context* %37, %struct.ibv_qp_init_attr_ex* %38, %struct.mlx5_qp* %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_context, %struct.mlx5_context* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp sgt i32 %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %43, %36
  %50 = load i32*, i32** %11, align 8
  %51 = load i32, i32* @MLX5_DBG_QP, align 4
  %52 = call i32 @mlx5_dbg(i32* %50, i32 %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %120

55:                                               ; preds = %43
  %56 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %57 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @mlx5_round_up_power_of_two(i64 %59)
  %61 = load i32, i32* %8, align 4
  %62 = mul nsw i32 %60, %61
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %55
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %68 = call i32 @max(i32 %66, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sdiv i32 %69, %70
  %72 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %73 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  store i32 %71, i32* %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @mlx5_ilog2(i32 %75)
  %77 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %78 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sdiv i32 %80, %81
  %83 = call i32 @mlx5_ilog2(i32 %82)
  %84 = shl i32 1, %83
  %85 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %86 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %91 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, i64 4, i64 0
  %96 = sub i64 %89, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = udiv i64 %99, 4
  %101 = trunc i64 %100 to i32
  %102 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %103 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 3
  store i32 %101, i32* %104, align 4
  br label %118

105:                                              ; preds = %55
  %106 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %107 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 0, i32* %108, align 8
  %109 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %110 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  store i32 0, i32* %111, align 4
  %112 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %113 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  store i32 0, i32* %114, align 8
  %115 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %116 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 3
  store i32 0, i32* %117, align 4
  br label %118

118:                                              ; preds = %105, %65
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %118, %49, %30, %20
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @mlx5_dbg(i32*, i32, i8*) #1

declare dso_local i32 @mlx5_calc_rcv_wqe(%struct.mlx5_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*) #1

declare dso_local i32 @mlx5_round_up_power_of_two(i64) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mlx5_ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
