; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_resolved_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_resolved_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.cmatest_node = type { i32, i32, i32, i32, i32 }
%struct.rdma_cm_event = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"udaddy: failure creating address handle\0A\00", align 1
@test = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmatest_node*, %struct.rdma_cm_event*)* @resolved_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolved_handler(%struct.cmatest_node* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cmatest_node*, align 8
  %5 = alloca %struct.rdma_cm_event*, align 8
  store %struct.cmatest_node* %0, %struct.cmatest_node** %4, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %5, align 8
  %6 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %7 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %12 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %14 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %19 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %21 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %5, align 8
  %24 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @ibv_create_ah(i32 %22, i32* %26)
  %28 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %29 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %31 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %2
  %35 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %41

36:                                               ; preds = %2
  %37 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %38 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 0), align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @test, i32 0, i32 0), align 4
  store i32 0, i32* %3, align 4
  br label %43

41:                                               ; preds = %34
  %42 = call i32 (...) @connect_error()
  store i32 -1, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %36
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @ibv_create_ah(i32, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @connect_error(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
