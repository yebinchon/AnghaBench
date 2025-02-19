; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_query_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.ibv_qp_attr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ibv_qp_init_attr = type { %struct.TYPE_4__ }
%struct.ibv_query_qp = type { i32 }
%struct.mlx4_qp = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_query_qp(%struct.ibv_qp* %0, %struct.ibv_qp_attr* %1, i32 %2, %struct.ibv_qp_init_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ibv_qp*, align 8
  %7 = alloca %struct.ibv_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ibv_qp_init_attr*, align 8
  %10 = alloca %struct.ibv_query_qp, align 4
  %11 = alloca %struct.mlx4_qp*, align 8
  %12 = alloca i32, align 4
  store %struct.ibv_qp* %0, %struct.ibv_qp** %6, align 8
  store %struct.ibv_qp_attr* %1, %struct.ibv_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ibv_qp_init_attr* %3, %struct.ibv_qp_init_attr** %9, align 8
  %13 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %14 = call %struct.mlx4_qp* @to_mqp(%struct.ibv_qp* %13)
  store %struct.mlx4_qp* %14, %struct.mlx4_qp** %11, align 8
  %15 = load %struct.ibv_qp*, %struct.ibv_qp** %6, align 8
  %16 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %9, align 8
  %19 = call i32 @ibv_cmd_query_qp(%struct.ibv_qp* %15, %struct.ibv_qp_attr* %16, i32 %17, %struct.ibv_qp_init_attr* %18, %struct.ibv_query_qp* %10, i32 4)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %51

24:                                               ; preds = %4
  %25 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %26 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %9, align 8
  %30 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %33 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %9, align 8
  %37 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 4
  %39 = load %struct.mlx4_qp*, %struct.mlx4_qp** %11, align 8
  %40 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %9, align 8
  %43 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  %45 = load %struct.ibv_qp_attr*, %struct.ibv_qp_attr** %7, align 8
  %46 = getelementptr inbounds %struct.ibv_qp_attr, %struct.ibv_qp_attr* %45, i32 0, i32 0
  %47 = load %struct.ibv_qp_init_attr*, %struct.ibv_qp_init_attr** %9, align 8
  %48 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %47, i32 0, i32 0
  %49 = bitcast %struct.TYPE_4__* %46 to i8*
  %50 = bitcast %struct.TYPE_4__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 12, i1 false)
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %24, %22
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.mlx4_qp* @to_mqp(%struct.ibv_qp*) #1

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
