; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_destroy_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_destroy_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmatest_node = type { %struct.TYPE_3__*, i64, i64, i32, i64, i64 }
%struct.TYPE_3__ = type { i64 }

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
  br label %69

8:                                                ; preds = %1
  %9 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %10 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %9, i32 0, i32 5
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %8
  %14 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %15 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ibv_destroy_ah(i64 %16)
  br label %18

18:                                               ; preds = %13, %8
  %19 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %20 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %27 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i32 @rdma_destroy_qp(%struct.TYPE_3__* %28)
  br label %30

30:                                               ; preds = %25, %18
  %31 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %32 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %37 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @ibv_destroy_cq(i64 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %42 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %40
  %46 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %47 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @ibv_dereg_mr(i32 %48)
  %50 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %51 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @free(i64 %52)
  br label %54

54:                                               ; preds = %45, %40
  %55 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %56 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %54
  %60 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %61 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @ibv_dealloc_pd(i64 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.cmatest_node*, %struct.cmatest_node** %2, align 8
  %66 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = call i32 @rdma_destroy_id(%struct.TYPE_3__* %67)
  br label %69

69:                                               ; preds = %64, %7
  ret void
}

declare dso_local i32 @ibv_destroy_ah(i64) #1

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
