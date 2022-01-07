; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_open_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_open_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_qp = type { i32 }
%struct.ibv_context = type { i32 }
%struct.ibv_qp_open_attr = type { i32 }
%struct.ibv_open_qp = type { i32 }
%struct.ibv_create_qp_resp = type { i32 }
%struct.mlx4_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ibv_qp }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ibv_qp* @mlx4_open_qp(%struct.ibv_context* %0, %struct.ibv_qp_open_attr* %1) #0 {
  %3 = alloca %struct.ibv_qp*, align 8
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca %struct.ibv_qp_open_attr*, align 8
  %6 = alloca %struct.ibv_open_qp, align 4
  %7 = alloca %struct.ibv_create_qp_resp, align 4
  %8 = alloca %struct.mlx4_qp*, align 8
  %9 = alloca i32, align 4
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store %struct.ibv_qp_open_attr* %1, %struct.ibv_qp_open_attr** %5, align 8
  %10 = call %struct.mlx4_qp* @calloc(i32 1, i32 4)
  store %struct.mlx4_qp* %10, %struct.mlx4_qp** %8, align 8
  %11 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %12 = icmp ne %struct.mlx4_qp* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %16 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %17 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %16, i32 0, i32 0
  %18 = load %struct.ibv_qp_open_attr*, %struct.ibv_qp_open_attr** %5, align 8
  %19 = call i32 @ibv_cmd_open_qp(%struct.ibv_context* %15, %struct.TYPE_2__* %17, i32 4, %struct.ibv_qp_open_attr* %18, %struct.ibv_open_qp* %6, i32 4, %struct.ibv_create_qp_resp* %7, i32 4)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %27

23:                                               ; preds = %14
  %24 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %25 = getelementptr inbounds %struct.mlx4_qp, %struct.mlx4_qp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store %struct.ibv_qp* %26, %struct.ibv_qp** %3, align 8
  br label %30

27:                                               ; preds = %22
  %28 = load %struct.mlx4_qp*, %struct.mlx4_qp** %8, align 8
  %29 = call i32 @free(%struct.mlx4_qp* %28)
  store %struct.ibv_qp* null, %struct.ibv_qp** %3, align 8
  br label %30

30:                                               ; preds = %27, %23, %13
  %31 = load %struct.ibv_qp*, %struct.ibv_qp** %3, align 8
  ret %struct.ibv_qp* %31
}

declare dso_local %struct.mlx4_qp* @calloc(i32, i32) #1

declare dso_local i32 @ibv_cmd_open_qp(%struct.ibv_context*, %struct.TYPE_2__*, i32, %struct.ibv_qp_open_attr*, %struct.ibv_open_qp*, i32, %struct.ibv_create_qp_resp*, i32) #1

declare dso_local i32 @free(%struct.mlx4_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
