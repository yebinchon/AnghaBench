; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_destroy_cqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_destroy_cqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i64, i32*, i32*, i32*, i32*, i64 }

@IBV_QPT_XRC_RECV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*)* @ucma_destroy_cqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_destroy_cqs(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %3 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %4 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @IBV_QPT_XRC_RECV, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %10 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %78

14:                                               ; preds = %8, %1
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %14
  %20 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %21 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @ibv_destroy_cq(i32* %22)
  %24 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %25 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %24, i32 0, i32 4
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %43

28:                                               ; preds = %19
  %29 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %30 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %33 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %31, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %28
  %37 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %38 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @ibv_destroy_cq(i32* %39)
  %41 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %42 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %41, i32 0, i32 4
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %36, %28, %19
  %44 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %45 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %43, %14
  %47 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %48 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %78

51:                                               ; preds = %46
  %52 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %53 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @ibv_destroy_comp_channel(i32* %54)
  %56 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %57 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %75

60:                                               ; preds = %51
  %61 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %62 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %65 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %63, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %60
  %69 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %70 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @ibv_destroy_comp_channel(i32* %71)
  %73 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %74 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %73, i32 0, i32 2
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %68, %60, %51
  %76 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %77 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %76, i32 0, i32 1
  store i32* null, i32** %77, align 8
  br label %78

78:                                               ; preds = %13, %75, %46
  ret void
}

declare dso_local i32 @ibv_destroy_cq(i32*) #1

declare dso_local i32 @ibv_destroy_comp_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
