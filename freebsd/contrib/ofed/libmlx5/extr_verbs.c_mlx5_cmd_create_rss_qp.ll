; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_cmd_create_rss_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_verbs.c_mlx5_cmd_create_rss_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_qp_init_attr_ex = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.mlx5_qp = type { i32, i32 }
%struct.mlx5_create_qp_ex_rss = type { i32, i32, i32, i32, i32 }
%struct.mlx5_create_qp_resp_ex = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_context*, %struct.ibv_qp_init_attr_ex*, %struct.mlx5_qp*)* @mlx5_cmd_create_rss_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_cmd_create_rss_qp(%struct.ibv_context* %0, %struct.ibv_qp_init_attr_ex* %1, %struct.mlx5_qp* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_context*, align 8
  %6 = alloca %struct.ibv_qp_init_attr_ex*, align 8
  %7 = alloca %struct.mlx5_qp*, align 8
  %8 = alloca %struct.mlx5_create_qp_ex_rss, align 4
  %9 = alloca %struct.mlx5_create_qp_resp_ex, align 4
  %10 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %5, align 8
  store %struct.ibv_qp_init_attr_ex* %1, %struct.ibv_qp_init_attr_ex** %6, align 8
  store %struct.mlx5_qp* %2, %struct.mlx5_qp** %7, align 8
  %11 = bitcast %struct.mlx5_create_qp_ex_rss* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 20, i1 false)
  %12 = bitcast %struct.mlx5_create_qp_resp_ex* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %14 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* @errno, align 4
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %4, align 4
  br label %63

22:                                               ; preds = %3
  %23 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %24 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.mlx5_create_qp_ex_rss, %struct.mlx5_create_qp_ex_rss* %8, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %29 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.mlx5_create_qp_ex_rss, %struct.mlx5_create_qp_ex_rss* %8, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %34 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.mlx5_create_qp_ex_rss, %struct.mlx5_create_qp_ex_rss* %8, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = getelementptr inbounds %struct.mlx5_create_qp_ex_rss, %struct.mlx5_create_qp_ex_rss* %8, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %41 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %45 = getelementptr inbounds %struct.ibv_qp_init_attr_ex, %struct.ibv_qp_init_attr_ex* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @memcpy(i32 %39, i32 %43, i32 %47)
  %49 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %50 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %51 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %50, i32 0, i32 1
  %52 = load %struct.ibv_qp_init_attr_ex*, %struct.ibv_qp_init_attr_ex** %6, align 8
  %53 = getelementptr inbounds %struct.mlx5_create_qp_ex_rss, %struct.mlx5_create_qp_ex_rss* %8, i32 0, i32 1
  %54 = getelementptr inbounds %struct.mlx5_create_qp_resp_ex, %struct.mlx5_create_qp_resp_ex* %9, i32 0, i32 0
  %55 = call i32 @ibv_cmd_create_qp_ex2(%struct.ibv_context* %49, i32* %51, i32 4, %struct.ibv_qp_init_attr_ex* %52, i32* %53, i32 4, i32 20, i32* %54, i32 4, i32 4)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %22
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %22
  %61 = load %struct.mlx5_qp*, %struct.mlx5_qp** %7, align 8
  %62 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %60, %58, %19
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i32 @ibv_cmd_create_qp_ex2(%struct.ibv_context*, i32*, i32, %struct.ibv_qp_init_attr_ex*, i32*, i32, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
