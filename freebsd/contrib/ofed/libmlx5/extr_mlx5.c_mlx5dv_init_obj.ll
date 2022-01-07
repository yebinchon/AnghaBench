; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5dv_init_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_mlx5.c_mlx5dv_init_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dv_obj = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@MLX5DV_OBJ_QP = common dso_local global i32 0, align 4
@MLX5DV_OBJ_CQ = common dso_local global i32 0, align 4
@MLX5DV_OBJ_SRQ = common dso_local global i32 0, align 4
@MLX5DV_OBJ_RWQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dv_init_obj(%struct.mlx5dv_obj* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5dv_obj*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5dv_obj* %0, %struct.mlx5dv_obj** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MLX5DV_OBJ_QP, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.mlx5dv_obj*, %struct.mlx5dv_obj** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5dv_obj, %struct.mlx5dv_obj* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlx5dv_obj*, %struct.mlx5dv_obj** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5dv_obj, %struct.mlx5dv_obj* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlx5dv_get_qp(i32 %14, i32 %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %10, %2
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %38, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MLX5DV_OBJ_CQ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.mlx5dv_obj*, %struct.mlx5dv_obj** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5dv_obj, %struct.mlx5dv_obj* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5dv_obj*, %struct.mlx5dv_obj** %3, align 8
  %34 = getelementptr inbounds %struct.mlx5dv_obj, %struct.mlx5dv_obj* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @mlx5dv_get_cq(i32 %32, i32 %36)
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %28, %23, %20
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @MLX5DV_OBJ_SRQ, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.mlx5dv_obj*, %struct.mlx5dv_obj** %3, align 8
  %48 = getelementptr inbounds %struct.mlx5dv_obj, %struct.mlx5dv_obj* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mlx5dv_obj*, %struct.mlx5dv_obj** %3, align 8
  %52 = getelementptr inbounds %struct.mlx5dv_obj, %struct.mlx5dv_obj* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mlx5dv_get_srq(i32 %50, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %46, %41, %38
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %74, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @MLX5DV_OBJ_RWQ, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.mlx5dv_obj*, %struct.mlx5dv_obj** %3, align 8
  %66 = getelementptr inbounds %struct.mlx5dv_obj, %struct.mlx5dv_obj* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlx5dv_obj*, %struct.mlx5dv_obj** %3, align 8
  %70 = getelementptr inbounds %struct.mlx5dv_obj, %struct.mlx5dv_obj* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @mlx5dv_get_rwq(i32 %68, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %64, %59, %56
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i32 @mlx5dv_get_qp(i32, i32) #1

declare dso_local i32 @mlx5dv_get_cq(i32, i32) #1

declare dso_local i32 @mlx5dv_get_srq(i32, i32) #1

declare dso_local i32 @mlx5dv_get_rwq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
