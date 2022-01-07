; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_req_context.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_req_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_qp = type { i32 }
%struct.mlx5_context = type { i32 }
%struct.mlx5_resource = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_qp* (%struct.mlx5_context*, %struct.mlx5_resource**, i64, i32)* @get_req_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_qp* @get_req_context(%struct.mlx5_context* %0, %struct.mlx5_resource** %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_context*, align 8
  %6 = alloca %struct.mlx5_resource**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5_context* %0, %struct.mlx5_context** %5, align 8
  store %struct.mlx5_resource** %1, %struct.mlx5_resource*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %6, align 8
  %10 = load %struct.mlx5_resource*, %struct.mlx5_resource** %9, align 8
  %11 = icmp ne %struct.mlx5_resource* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %4
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %6, align 8
  %15 = load %struct.mlx5_resource*, %struct.mlx5_resource** %14, align 8
  %16 = getelementptr inbounds %struct.mlx5_resource, %struct.mlx5_resource* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %13, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %12, %4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call %struct.mlx5_resource* @mlx5_find_uidx(%struct.mlx5_context* %23, i64 %24)
  br label %31

26:                                               ; preds = %19
  %27 = load %struct.mlx5_context*, %struct.mlx5_context** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @mlx5_find_qp(%struct.mlx5_context* %27, i64 %28)
  %30 = inttoptr i64 %29 to %struct.mlx5_resource*
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi %struct.mlx5_resource* [ %25, %22 ], [ %30, %26 ]
  %33 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %6, align 8
  store %struct.mlx5_resource* %32, %struct.mlx5_resource** %33, align 8
  br label %34

34:                                               ; preds = %31, %12
  %35 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %6, align 8
  %36 = load %struct.mlx5_resource*, %struct.mlx5_resource** %35, align 8
  %37 = call %struct.mlx5_qp* @rsc_to_mqp(%struct.mlx5_resource* %36)
  ret %struct.mlx5_qp* %37
}

declare dso_local %struct.mlx5_resource* @mlx5_find_uidx(%struct.mlx5_context*, i64) #1

declare dso_local i64 @mlx5_find_qp(%struct.mlx5_context*, i64) #1

declare dso_local %struct.mlx5_qp* @rsc_to_mqp(%struct.mlx5_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
