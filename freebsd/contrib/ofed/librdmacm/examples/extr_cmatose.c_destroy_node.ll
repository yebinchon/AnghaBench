; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_destroy_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_destroy_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { %struct.TYPE_3__*, i64, i64, i32, i64* }
%struct.TYPE_3__ = type { i64 }

@SEND_CQ_INDEX = common dso_local global i64 0, align 8
@RECV_CQ_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cmatest_node*)* @destroy_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_node(%struct.cmatest_node* %0) #0 {
  %2 = alloca %struct.cmatest_node*, align 8
  store %struct.cmatest_node* %0, %struct.cmatest_node** %2, align 8
  %3 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %4 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = icmp ne %struct.TYPE_3__* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %81

8:                                                ; preds = %1
  %9 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %10 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %17 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = call i32 @rdma_destroy_qp(%struct.TYPE_3__* %18)
  br label %20

20:                                               ; preds = %15, %8
  %21 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %22 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %21, i32 0, i32 4
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @SEND_CQ_INDEX, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %30 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %29, i32 0, i32 4
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @SEND_CQ_INDEX, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @ibv_destroy_cq(i64 %34)
  br label %36

36:                                               ; preds = %28, %20
  %37 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %38 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %37, i32 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = load i64, i64* @RECV_CQ_INDEX, align 8
  %41 = getelementptr inbounds i64, i64* %39, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %36
  %45 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %46 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %45, i32 0, i32 4
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @RECV_CQ_INDEX, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @ibv_destroy_cq(i64 %50)
  br label %52

52:                                               ; preds = %44, %36
  %53 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %54 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %59 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ibv_dereg_mr(i32 %60)
  %62 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %63 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @free(i64 %64)
  br label %66

66:                                               ; preds = %57, %52
  %67 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %68 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %66
  %72 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %73 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @ibv_dealloc_pd(i64 %74)
  br label %76

76:                                               ; preds = %71, %66
  %77 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %78 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = call i32 @rdma_destroy_id(%struct.TYPE_3__* %79)
  br label %81

81:                                               ; preds = %76, %7
  ret void
}

declare dso_local i32 @rdma_destroy_qp(%struct.TYPE_3__*) #1

declare dso_local i32 @ibv_destroy_cq(i64) #1

declare dso_local i32 @ibv_dereg_mr(i32) #1

declare dso_local i32 @free(i64) #1

declare dso_local i32 @ibv_dealloc_pd(i64) #1

declare dso_local i32 @rdma_destroy_id(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
