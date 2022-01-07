; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_query_port_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx4/extr_verbs.c_query_port_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibv_context = type { i32 }
%struct.ibv_port_attr = type { i32, i32 }
%struct.mlx4_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@MLX4_PORTS_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibv_context*, i32, %struct.ibv_port_attr*)* @query_port_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_port_cache(%struct.ibv_context* %0, i32 %1, %struct.ibv_port_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibv_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ibv_port_attr*, align 8
  %8 = alloca %struct.mlx4_context*, align 8
  store %struct.ibv_context* %0, %struct.ibv_context** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ibv_port_attr* %2, %struct.ibv_port_attr** %7, align 8
  %9 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %10 = call %struct.mlx4_context* @to_mctx(%struct.ibv_context* %9)
  store %struct.mlx4_context* %10, %struct.mlx4_context** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sle i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MLX4_PORTS_NUM, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13, %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %59

20:                                               ; preds = %13
  %21 = load %struct.mlx4_context*, %struct.mlx4_context** %8, align 8
  %22 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %20
  %32 = load %struct.mlx4_context*, %struct.mlx4_context** %8, align 8
  %33 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %7, align 8
  %42 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.mlx4_context*, %struct.mlx4_context** %8, align 8
  %44 = getelementptr inbounds %struct.mlx4_context, %struct.mlx4_context* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %7, align 8
  %53 = getelementptr inbounds %struct.ibv_port_attr, %struct.ibv_port_attr* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %4, align 4
  br label %59

54:                                               ; preds = %20
  %55 = load %struct.ibv_context*, %struct.ibv_context** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.ibv_port_attr*, %struct.ibv_port_attr** %7, align 8
  %58 = call i32 @mlx4_query_port(%struct.ibv_context* %55, i32 %56, %struct.ibv_port_attr* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %54, %31, %17
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.mlx4_context* @to_mctx(%struct.ibv_context*) #1

declare dso_local i32 @mlx4_query_port(%struct.ibv_context*, i32, %struct.ibv_port_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
