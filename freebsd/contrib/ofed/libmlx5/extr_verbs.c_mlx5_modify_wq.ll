; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_modify_wq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_modify_wq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_wq = type { i64, i32 }
%struct.ibv_wq_attr = type { i32, i64, i64 }
%struct.mlx5_modify_wq = type { i32 }
%struct.mlx5_rwq = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@IBV_WQ_ATTR_STATE = common dso_local global i32 0, align 4
@IBV_WQS_RDY = common dso_local global i64 0, align 8
@IBV_WQ_ATTR_CURR_STATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IBV_WQS_RESET = common dso_local global i64 0, align 8
@MLX5_RCV_DBR = common dso_local global i64 0, align 8
@MLX5_SND_DBR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_modify_wq(%struct.ibv_wq* %0, %struct.ibv_wq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibv_wq*, align 8
  %5 = alloca %struct.ibv_wq_attr*, align 8
  %6 = alloca %struct.mlx5_modify_wq, align 4
  %7 = alloca %struct.mlx5_rwq*, align 8
  store %struct.ibv_wq* %0, %struct.ibv_wq** %4, align 8
  store %struct.ibv_wq_attr* %1, %struct.ibv_wq_attr** %5, align 8
  %8 = bitcast %struct.mlx5_modify_wq* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.ibv_wq*, %struct.ibv_wq** %4, align 8
  %10 = call %struct.mlx5_rwq* @to_mrwq(%struct.ibv_wq* %9)
  store %struct.mlx5_rwq* %10, %struct.mlx5_rwq** %7, align 8
  %11 = load %struct.ibv_wq_attr*, %struct.ibv_wq_attr** %5, align 8
  %12 = getelementptr inbounds %struct.ibv_wq_attr, %struct.ibv_wq_attr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IBV_WQ_ATTR_STATE, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %2
  %18 = load %struct.ibv_wq_attr*, %struct.ibv_wq_attr** %5, align 8
  %19 = getelementptr inbounds %struct.ibv_wq_attr, %struct.ibv_wq_attr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IBV_WQS_RDY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %82

23:                                               ; preds = %17
  %24 = load %struct.ibv_wq_attr*, %struct.ibv_wq_attr** %5, align 8
  %25 = getelementptr inbounds %struct.ibv_wq_attr, %struct.ibv_wq_attr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @IBV_WQ_ATTR_CURR_STATE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %23
  %31 = load %struct.ibv_wq_attr*, %struct.ibv_wq_attr** %5, align 8
  %32 = getelementptr inbounds %struct.ibv_wq_attr, %struct.ibv_wq_attr* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ibv_wq*, %struct.ibv_wq** %4, align 8
  %35 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %87

41:                                               ; preds = %30, %23
  %42 = load %struct.ibv_wq*, %struct.ibv_wq** %4, align 8
  %43 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IBV_WQS_RESET, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %41
  %48 = load %struct.ibv_wq*, %struct.ibv_wq** %4, align 8
  %49 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call %struct.TYPE_5__* @to_mcq(i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @mlx5_spin_lock(i32* %52)
  %54 = load %struct.ibv_wq*, %struct.ibv_wq** %4, align 8
  %55 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call %struct.TYPE_5__* @to_mcq(i32 %56)
  %58 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %59 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @__mlx5_cq_clean(%struct.TYPE_5__* %57, i32 %61, i32* null)
  %63 = load %struct.ibv_wq*, %struct.ibv_wq** %4, align 8
  %64 = getelementptr inbounds %struct.ibv_wq, %struct.ibv_wq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call %struct.TYPE_5__* @to_mcq(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @mlx5_spin_unlock(i32* %67)
  %69 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %70 = call i32 @mlx5_init_rwq_indices(%struct.mlx5_rwq* %69)
  %71 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %72 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* @MLX5_RCV_DBR, align 8
  %75 = getelementptr inbounds i64, i64* %73, i64 %74
  store i64 0, i64* %75, align 8
  %76 = load %struct.mlx5_rwq*, %struct.mlx5_rwq** %7, align 8
  %77 = getelementptr inbounds %struct.mlx5_rwq, %struct.mlx5_rwq* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = load i64, i64* @MLX5_SND_DBR, align 8
  %80 = getelementptr inbounds i64, i64* %78, i64 %79
  store i64 0, i64* %80, align 8
  br label %81

81:                                               ; preds = %47, %41
  br label %82

82:                                               ; preds = %81, %17, %2
  %83 = load %struct.ibv_wq*, %struct.ibv_wq** %4, align 8
  %84 = load %struct.ibv_wq_attr*, %struct.ibv_wq_attr** %5, align 8
  %85 = getelementptr inbounds %struct.mlx5_modify_wq, %struct.mlx5_modify_wq* %6, i32 0, i32 0
  %86 = call i32 @ibv_cmd_modify_wq(%struct.ibv_wq* %83, %struct.ibv_wq_attr* %84, i32* %85, i32 4, i32 4)
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %82, %38
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlx5_rwq* @to_mrwq(%struct.ibv_wq*) #2

declare dso_local i32 @mlx5_spin_lock(i32*) #2

declare dso_local %struct.TYPE_5__* @to_mcq(i32) #2

declare dso_local i32 @__mlx5_cq_clean(%struct.TYPE_5__*, i32, i32*) #2

declare dso_local i32 @mlx5_spin_unlock(i32*) #2

declare dso_local i32 @mlx5_init_rwq_indices(%struct.mlx5_rwq*) #2

declare dso_local i32 @ibv_cmd_modify_wq(%struct.ibv_wq*, %struct.ibv_wq_attr*, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
