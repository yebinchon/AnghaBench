; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_query_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.ibv_qp_attr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ibv_qp_init_attr = type { %struct.TYPE_4__ }
%struct.ibv_query_qp = type { i32 }
%struct.mlx5_qp = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_query_qp(%struct.ibv_qp* %0, %struct.ibv_qp_attr* %1, i32 %2, %struct.ibv_qp_init_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_qp*, align 8
  %7 = alloca %struct.ibv_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ibv_qp_init_attr*, align 8
  %10 = alloca %struct.ibv_query_qp, align 4
  %11 = alloca %struct.mlx5_qp*, align 8
  %12 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %6, align 8
  store %struct.ibv_qp_attr* %1, %struct.ibv_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ibv_qp_init_attr* %3, %struct.ibv_qp_init_attr** %9, align 8
  %13 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %14 = call %struct.mlx5_qp* @to_mqp(%struct.ibv_qp* %13)
  store %struct.mlx5_qp* %14, %struct.mlx5_qp** %11, align 8
  %15 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %16 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOSYS, align 4
  store i32 %20, i32* %5, align 4
  br label %58

21:                                               ; preds = %4
  %22 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %23 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %9, align 8
  %26 = call i32 @ibv_cmd_query_qp(%struct.ibv_qp* %22, %struct.ibv_qp_attr* %23, i32 %24, %struct.ibv_qp_init_attr* %25, %struct.ibv_query_qp* %10, i32 4)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %58

31:                                               ; preds = %21
  %32 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %33 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %9, align 8
  %37 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %40 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %9, align 8
  %44 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.mlx5_qp*, %struct.mlx5_qp** %11, align 8
  %47 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %9, align 8
  %50 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %7, align 8
  %53 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %52, i32 0, i32 0
  %54 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %9, align 8
  %55 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %54, i32 0, i32 0
  %56 = bitcast %struct.TYPE_4__* %53 to i8*
  %57 = bitcast %struct.TYPE_4__* %55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %56, i8* align 4 %57, i64 12, i1 false)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %31, %29, %19
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.mlx5_qp* @to_mqp(%struct.ibv_qp*) #1

declare dso_local i32 @ibv_cmd_query_qp(%struct.ibv_qp*, %struct.ibv_qp_attr*, i32, %struct.ibv_qp_init_attr*, %struct.ibv_query_qp*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
