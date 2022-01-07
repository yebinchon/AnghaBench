; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_resize_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_resize_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_cq = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_cq = type { i32, %struct.mlx4_buf, i32 }
%struct.mlx4_buf = type { i64 }
%struct.mlx4_resize_cq = type { i64, i32 }
%struct.ibv_resize_cq_resp = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_resize_cq(%struct.ibv_cq* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibv_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_cq*, align 8
  %7 = alloca %struct.mlx4_resize_cq, align 8
  %8 = alloca %struct.ibv_resize_cq_resp, align 4
  %9 = alloca %struct.mlx4_buf, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ibv_cq* %0, %struct.ibv_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %14 = call %struct.mlx4_cq* @to_mcq(%struct.ibv_cq* %13)
  store %struct.mlx4_cq* %14, %struct.mlx4_cq** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 4194303
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %93

19:                                               ; preds = %2
  %20 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %21 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %20, i32 0, i32 0
  %22 = call i32 @pthread_spin_lock(i32* %21)
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = call i32 @align_queue_size(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %28 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = icmp eq i32 %26, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  store i32 0, i32* %12, align 4
  br label %88

33:                                               ; preds = %19
  %34 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %35 = call i32 @mlx4_get_outstanding_cqes(%struct.mlx4_cq* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %12, align 4
  br label %88

42:                                               ; preds = %33
  %43 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %44 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @to_mdev(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %51 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @mlx4_alloc_cq_buf(i32 %48, %struct.mlx4_buf* %9, i32 %49, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %42
  br label %88

57:                                               ; preds = %42
  %58 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %59 = getelementptr inbounds %struct.ibv_cq, %struct.ibv_cq* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %10, align 4
  %61 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %9, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.mlx4_resize_cq, %struct.mlx4_resize_cq* %7, i32 0, i32 0
  store i64 %62, i64* %63, align 8
  %64 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sub nsw i32 %65, 1
  %67 = getelementptr inbounds %struct.mlx4_resize_cq, %struct.mlx4_resize_cq* %7, i32 0, i32 1
  %68 = call i32 @ibv_cmd_resize_cq(%struct.ibv_cq* %64, i32 %66, i32* %67, i32 16, %struct.ibv_resize_cq_resp* %8, i32 4)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %57
  %72 = call i32 @mlx4_free_buf(%struct.mlx4_buf* %9)
  br label %88

73:                                               ; preds = %57
  %74 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %75 = getelementptr inbounds %struct.mlx4_buf, %struct.mlx4_buf* %9, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @mlx4_cq_resize_copy_cqes(%struct.mlx4_cq* %74, i64 %76, i32 %77)
  %79 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %80 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %79, i32 0, i32 1
  %81 = call i32 @mlx4_free_buf(%struct.mlx4_buf* %80)
  %82 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %83 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %82, i32 0, i32 1
  %84 = bitcast %struct.mlx4_buf* %83 to i8*
  %85 = bitcast %struct.mlx4_buf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %84, i8* align 8 %85, i64 8, i1 false)
  %86 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %87 = call i32 @mlx4_update_cons_index(%struct.mlx4_cq* %86)
  br label %88

88:                                               ; preds = %73, %71, %56, %40, %32
  %89 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %90 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %89, i32 0, i32 0
  %91 = call i32 @pthread_spin_unlock(i32* %90)
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %17
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.mlx4_cq* @to_mcq(%struct.ibv_cq*) #1

declare dso_local i32 @pthread_spin_lock(i32*) #1

declare dso_local i32 @align_queue_size(i32) #1

declare dso_local i32 @mlx4_get_outstanding_cqes(%struct.mlx4_cq*) #1

declare dso_local i32 @mlx4_alloc_cq_buf(i32, %struct.mlx4_buf*, i32, i32) #1

declare dso_local i32 @to_mdev(i32) #1

declare dso_local i32 @ibv_cmd_resize_cq(%struct.ibv_cq*, i32, i32*, i32, %struct.ibv_resize_cq_resp*, i32) #1

declare dso_local i32 @mlx4_free_buf(%struct.mlx4_buf*) #1

declare dso_local i32 @mlx4_cq_resize_copy_cqes(%struct.mlx4_cq*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mlx4_update_cons_index(%struct.mlx4_cq*) #1

declare dso_local i32 @pthread_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
