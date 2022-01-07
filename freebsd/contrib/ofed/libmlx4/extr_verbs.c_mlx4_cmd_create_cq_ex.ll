; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_cmd_create_cq_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_cmd_create_cq_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_cq_init_attr_ex = type { i32 }
%struct.mlx4_cq = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.mlx4_create_cq_ex = type { i64, i64, i32 }
%struct.mlx4_create_cq_resp_ex = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*, %struct.mlx4_cq*)* @mlx4_cmd_create_cq_ex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_cmd_create_cq_ex(%struct.ibv_context* %0, %struct.ibv_cq_init_attr_ex* %1, %struct.mlx4_cq* %2) #0 {
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_cq_init_attr_ex*, align 8
  %6 = alloca %struct.mlx4_cq*, align 8
  %7 = alloca %struct.mlx4_create_cq_ex, align 8
  %8 = alloca %struct.mlx4_create_cq_resp_ex, align 4
  %9 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_cq_init_attr_ex* %1, %struct.ibv_cq_init_attr_ex** %5, align 8
  store %struct.mlx4_cq* %2, %struct.mlx4_cq** %6, align 8
  %10 = bitcast %struct.mlx4_create_cq_ex* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = bitcast %struct.mlx4_create_cq_resp_ex* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds %struct.mlx4_create_cq_ex, %struct.mlx4_create_cq_ex* %7, i32 0, i32 0
  store i64 %15, i64* %16, align 8
  %17 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.mlx4_create_cq_ex, %struct.mlx4_create_cq_ex* %7, i32 0, i32 1
  store i64 %19, i64* %20, align 8
  %21 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %22 = load %struct.ibv_cq_init_attr_ex*, %struct.ibv_cq_init_attr_ex** %5, align 8
  %23 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %24 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.mlx4_create_cq_ex, %struct.mlx4_create_cq_ex* %7, i32 0, i32 2
  %26 = getelementptr inbounds %struct.mlx4_create_cq_resp_ex, %struct.mlx4_create_cq_resp_ex* %8, i32 0, i32 1
  %27 = call i32 @ibv_cmd_create_cq_ex(%struct.ibv_context* %21, %struct.ibv_cq_init_attr_ex* %22, i32* %24, i32* %25, i32 4, i32 24, i32* %26, i32 4, i32 8)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.mlx4_create_cq_resp_ex, %struct.mlx4_create_cq_resp_ex* %8, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx4_cq*, %struct.mlx4_cq** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_cq, %struct.mlx4_cq* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %30, %3
  %36 = load i32, i32* %9, align 4
  ret i32 %36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ibv_cmd_create_cq_ex(%struct.ibv_context*, %struct.ibv_cq_init_attr_ex*, i32*, i32*, i32, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
