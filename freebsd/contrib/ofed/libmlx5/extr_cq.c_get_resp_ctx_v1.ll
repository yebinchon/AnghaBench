; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_resp_ctx_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/libmlx5/extr_cq.c_get_resp_ctx_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_context = type { i32 }
%struct.mlx5_resource = type { i64, i32 }
%struct.mlx5_srq = type { i32 }
%struct.mlx5_qp = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CQ_POLL_ERR = common dso_local global i32 0, align 4
@CQ_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_context*, %struct.mlx5_resource**, %struct.mlx5_srq**, i64, i32*)* @get_resp_ctx_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_resp_ctx_v1(%struct.mlx5_context* %0, %struct.mlx5_resource** %1, %struct.mlx5_srq** %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_context*, align 8
  %8 = alloca %struct.mlx5_resource**, align 8
  %9 = alloca %struct.mlx5_srq**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx5_qp*, align 8
  store %struct.mlx5_context* %0, %struct.mlx5_context** %7, align 8
  store %struct.mlx5_resource** %1, %struct.mlx5_resource*** %8, align 8
  store %struct.mlx5_srq** %2, %struct.mlx5_srq*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %8, align 8
  %14 = load %struct.mlx5_resource*, %struct.mlx5_resource** %13, align 8
  %15 = icmp ne %struct.mlx5_resource* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %5
  %17 = load i64, i64* %10, align 8
  %18 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %8, align 8
  %19 = load %struct.mlx5_resource*, %struct.mlx5_resource** %18, align 8
  %20 = getelementptr inbounds %struct.mlx5_resource, %struct.mlx5_resource* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %17, %21
  br i1 %22, label %23, label %38

23:                                               ; preds = %16, %5
  %24 = load %struct.mlx5_context*, %struct.mlx5_context** %7, align 8
  %25 = load i64, i64* %10, align 8
  %26 = call %struct.mlx5_resource* @mlx5_find_uidx(%struct.mlx5_context* %24, i64 %25)
  %27 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %8, align 8
  store %struct.mlx5_resource* %26, %struct.mlx5_resource** %27, align 8
  %28 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %8, align 8
  %29 = load %struct.mlx5_resource*, %struct.mlx5_resource** %28, align 8
  %30 = icmp ne %struct.mlx5_resource* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* @CQ_POLL_ERR, align 4
  store i32 %36, i32* %6, align 4
  br label %74

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37, %16
  %39 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %8, align 8
  %40 = load %struct.mlx5_resource*, %struct.mlx5_resource** %39, align 8
  %41 = getelementptr inbounds %struct.mlx5_resource, %struct.mlx5_resource* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %70 [
    i32 130, label %43
    i32 128, label %63
    i32 129, label %69
  ]

43:                                               ; preds = %38
  %44 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %8, align 8
  %45 = load %struct.mlx5_resource*, %struct.mlx5_resource** %44, align 8
  %46 = call %struct.mlx5_qp* @rsc_to_mqp(%struct.mlx5_resource* %45)
  store %struct.mlx5_qp* %46, %struct.mlx5_qp** %12, align 8
  %47 = load %struct.mlx5_qp*, %struct.mlx5_qp** %12, align 8
  %48 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %43
  %54 = load %struct.mlx5_qp*, %struct.mlx5_qp** %12, align 8
  %55 = getelementptr inbounds %struct.mlx5_qp, %struct.mlx5_qp* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.mlx5_srq* @to_msrq(i32 %58)
  %60 = load %struct.mlx5_srq**, %struct.mlx5_srq*** %9, align 8
  store %struct.mlx5_srq* %59, %struct.mlx5_srq** %60, align 8
  %61 = load i32*, i32** %11, align 8
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %53, %43
  br label %72

63:                                               ; preds = %38
  %64 = load %struct.mlx5_resource**, %struct.mlx5_resource*** %8, align 8
  %65 = load %struct.mlx5_resource*, %struct.mlx5_resource** %64, align 8
  %66 = call %struct.mlx5_srq* @rsc_to_msrq(%struct.mlx5_resource* %65)
  %67 = load %struct.mlx5_srq**, %struct.mlx5_srq*** %9, align 8
  store %struct.mlx5_srq* %66, %struct.mlx5_srq** %67, align 8
  %68 = load i32*, i32** %11, align 8
  store i32 1, i32* %68, align 4
  br label %72

69:                                               ; preds = %38
  br label %72

70:                                               ; preds = %38
  %71 = load i32, i32* @CQ_POLL_ERR, align 4
  store i32 %71, i32* %6, align 4
  br label %74

72:                                               ; preds = %69, %63, %62
  %73 = load i32, i32* @CQ_OK, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %72, %70, %35
  %75 = load i32, i32* %6, align 4
  ret i32 %75
}

declare dso_local %struct.mlx5_resource* @mlx5_find_uidx(%struct.mlx5_context*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.mlx5_qp* @rsc_to_mqp(%struct.mlx5_resource*) #1

declare dso_local %struct.mlx5_srq* @to_msrq(i32) #1

declare dso_local %struct.mlx5_srq* @rsc_to_msrq(%struct.mlx5_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
