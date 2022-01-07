; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_destroy_xrc_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_srq.c_mlx4_destroy_xrc_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_srq = type { i32 }
%struct.mlx4_context = type { i32 }
%struct.mlx4_srq = type { %struct.mlx4_srq*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlx4_cq = type { i32 }

@MLX4_DB_TYPE_RQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_destroy_xrc_srq(%struct.ibv_srq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_srq*, align 8
  %4 = alloca %struct.mlx4_context*, align 8
  %5 = alloca %struct.mlx4_srq*, align 8
  %6 = alloca %struct.mlx4_cq*, align 8
  %7 = alloca i32, align 4
  store %struct.ibv_srq* %0, %struct.ibv_srq** %3, align 8
  %8 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  %9 = getelementptr inbounds %struct.ibv_srq, %struct.ibv_srq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.mlx4_context* @to_mctx(i32 %10)
  store %struct.mlx4_context* %11, %struct.mlx4_context** %4, align 8
  %12 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  %13 = call %struct.mlx4_srq* @to_msrq(%struct.ibv_srq* %12)
  store %struct.mlx4_srq* %13, %struct.mlx4_srq** %5, align 8
  %14 = load %struct.mlx4_srq*, %struct.mlx4_srq** %5, align 8
  %15 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.mlx4_cq* @to_mcq(i32 %17)
  store %struct.mlx4_cq* %18, %struct.mlx4_cq** %6, align 8
  %19 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %20 = load %struct.mlx4_srq*, %struct.mlx4_srq** %5, align 8
  %21 = call i32 @mlx4_cq_clean(%struct.mlx4_cq* %19, i32 0, %struct.mlx4_srq* %20)
  %22 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %22, i32 0, i32 0
  %24 = call i32 @pthread_spin_lock(i32* %23)
  %25 = load %struct.mlx4_context*, %struct.mlx4_context** %4, align 8
  %26 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %25, i32 0, i32 0
  %27 = load %struct.mlx4_srq*, %struct.mlx4_srq** %5, align 8
  %28 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mlx4_clear_xsrq(i32* %26, i32 %30)
  %32 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %33 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %32, i32 0, i32 0
  %34 = call i32 @pthread_spin_unlock(i32* %33)
  %35 = load %struct.ibv_srq*, %struct.ibv_srq** %3, align 8
  %36 = call i32 @ibv_cmd_destroy_srq(%struct.ibv_srq* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %1
  %40 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %41 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %40, i32 0, i32 0
  %42 = call i32 @pthread_spin_lock(i32* %41)
  %43 = load %struct.mlx4_context*, %struct.mlx4_context** %4, align 8
  %44 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %43, i32 0, i32 0
  %45 = load %struct.mlx4_srq*, %struct.mlx4_srq** %5, align 8
  %46 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.mlx4_srq*, %struct.mlx4_srq** %5, align 8
  %50 = call i32 @mlx4_store_xsrq(i32* %44, i32 %48, %struct.mlx4_srq* %49)
  %51 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %52 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %51, i32 0, i32 0
  %53 = call i32 @pthread_spin_unlock(i32* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %71

55:                                               ; preds = %1
  %56 = load %struct.mlx4_context*, %struct.mlx4_context** %4, align 8
  %57 = load i32, i32* @MLX4_DB_TYPE_RQ, align 4
  %58 = load %struct.mlx4_srq*, %struct.mlx4_srq** %5, align 8
  %59 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mlx4_free_db(%struct.mlx4_context* %56, i32 %57, i32 %60)
  %62 = load %struct.mlx4_srq*, %struct.mlx4_srq** %5, align 8
  %63 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %62, i32 0, i32 1
  %64 = call i32 @mlx4_free_buf(i32* %63)
  %65 = load %struct.mlx4_srq*, %struct.mlx4_srq** %5, align 8
  %66 = getelementptr inbounds %struct.mlx4_srq, %struct.mlx4_srq* %65, i32 0, i32 0
  %67 = load %struct.mlx4_srq*, %struct.mlx4_srq** %66, align 8
  %68 = call i32 @free(%struct.mlx4_srq* %67)
  %69 = load %struct.mlx4_srq*, %struct.mlx4_srq** %5, align 8
  %70 = call i32 @free(%struct.mlx4_srq* %69)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %55, %39
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.mlx4_context* @to_mctx(i32) #1

declare dso_local %struct.mlx4_srq* @to_msrq(%struct.ibv_srq*) #1

declare dso_local %struct.mlx4_cq* @to_mcq(i32) #1

declare dso_local i32 @mlx4_cq_clean(%struct.mlx4_cq*, i32, %struct.mlx4_srq*) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i32 @mlx4_clear_xsrq(i32*, i32) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

declare dso_local i32 @ibv_cmd_destroy_srq(%struct.ibv_srq*) #1

declare dso_local i32 @mlx4_store_xsrq(i32*, i32, %struct.mlx4_srq*) #1

declare dso_local i32 @mlx4_free_db(%struct.mlx4_context*, i32, i32) #1

declare dso_local i32 @mlx4_free_buf(i32*) #1

declare dso_local i32 @free(%struct.mlx4_srq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
