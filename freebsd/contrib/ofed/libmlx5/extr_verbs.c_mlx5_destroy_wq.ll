; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_destroy_wq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_destroy_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_wq = type { i32, i32 }
%struct.mlx5_rwq = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_destroy_wq(%struct.ibv_wq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibv_wq*, align 8
  %4 = alloca %struct.mlx5_rwq*, align 8
  %5 = alloca i32, align 4
  store %struct.ibv_wq* %0, %struct.ibv_wq** %3, align 8
  %6 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %7 = call %struct.mlx5_rwq* @to_mrwq(%struct.ibv_wq* %6)
  store %struct.mlx5_rwq* %7, %struct.mlx5_rwq** %4, align 8
  %8 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %9 = call i32 @ibv_cmd_destroy_wq(%struct.ibv_wq* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %16 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_5__* @to_mcq(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @mlx5_spin_lock(i32* %19)
  %21 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %22 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.TYPE_5__* @to_mcq(i32 %23)
  %25 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @__mlx5_cq_clean(%struct.TYPE_5__* %24, i32 %28, i32* null)
  %30 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %31 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.TYPE_5__* @to_mcq(i32 %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @mlx5_spin_unlock(i32* %34)
  %36 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %37 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @to_mctx(i32 %38)
  %40 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mlx5_clear_uidx(i32 %39, i32 %43)
  %45 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %46 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @to_mctx(i32 %47)
  %49 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @mlx5_free_db(i32 %48, i32 %51)
  %53 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %4, align 8
  %54 = load %struct.ibv_wq*, %struct.ibv_wq** %3, align 8
  %55 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @mlx5_free_rwq_buf(%struct.mlx5_rwq* %53, i32 %56)
  %58 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %4, align 8
  %59 = call i32 @free(%struct.mlx5_rwq* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %14, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.mlx5_rwq* @to_mrwq(%struct.ibv_wq*) #1

declare dso_local i32 @ibv_cmd_destroy_wq(%struct.ibv_wq*) #1

declare dso_local i32 @mlx5_spin_lock(i32*) #1

declare dso_local %struct.TYPE_5__* @to_mcq(i32) #1

declare dso_local i32 @__mlx5_cq_clean(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @mlx5_spin_unlock(i32*) #1

declare dso_local i32 @mlx5_clear_uidx(i32, i32) #1

declare dso_local i32 @to_mctx(i32) #1

declare dso_local i32 @mlx5_free_db(i32, i32) #1

declare dso_local i32 @mlx5_free_rwq_buf(%struct.mlx5_rwq*, i32) #1

declare dso_local i32 @free(%struct.mlx5_rwq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
