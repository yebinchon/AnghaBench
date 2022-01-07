; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_query_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_mlx4_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_port_attr = type { i32, i32 }
%struct.ibv_query_port = type { i32 }
%struct.mlx4_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MLX4_PORTS_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_query_port(%struct.ibv_context* %0, i64 %1, %struct.ibv_port_attr* %2) #0 {
  %4 = alloca %struct.ibv_context*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ibv_port_attr*, align 8
  %7 = alloca %struct.ibv_query_port, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx4_context*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ibv_port_attr* %2, %struct.ibv_port_attr** %6, align 8
  %10 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %6, align 8
  %13 = call i32 @ibv_cmd_query_port(%struct.ibv_context* %10, i64 %11, %struct.ibv_port_attr* %12, %struct.ibv_query_port* %7, i32 4)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %64, label %16

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @MLX4_PORTS_NUM, align 8
  %19 = icmp sle i64 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = load i64, i64* %5, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %64

23:                                               ; preds = %20
  %24 = load %struct.ibv_context*, %struct.ibv_context** %4, align 8
  %25 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %24)
  store %struct.mlx4_context* %25, %struct.mlx4_context** %9, align 8
  %26 = load %struct.mlx4_context*, %struct.mlx4_context** %9, align 8
  %27 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = sub nsw i64 %29, 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %63, label %35

35:                                               ; preds = %23
  %36 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %6, align 8
  %37 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx4_context*, %struct.mlx4_context** %9, align 8
  %40 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = sub nsw i64 %42, 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %38, i32* %45, align 4
  %46 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %6, align 8
  %47 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.mlx4_context*, %struct.mlx4_context** %9, align 8
  %50 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = sub nsw i64 %52, 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store i32 %48, i32* %55, align 4
  %56 = load %struct.mlx4_context*, %struct.mlx4_context** %9, align 8
  %57 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* %5, align 8
  %60 = sub nsw i64 %59, 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %35, %23
  br label %64

64:                                               ; preds = %63, %20, %16, %3
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @ibv_cmd_query_port(%struct.ibv_context*, i64, %struct.ibv_port_attr*, %struct.ibv_query_port*, i32) #1

declare dso_local %struct.mlx4_context* @to_mctx(%struct.ibv_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
