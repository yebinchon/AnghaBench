; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_cma_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_cma_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.rdma_cm_id = type { i64 }
%struct.rdma_cm_event = type { i32, i32 }
%struct.cmatest_node = type { i32 }

@test = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"cmatose: event: %s, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*, %struct.rdma_cm_event*)* @cma_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cma_handler(%struct.rdma_cm_id* %0, %struct.rdma_cm_event* %1) #0 {
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.rdma_cm_event*, align 8
  %5 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  store %struct.rdma_cm_event* %1, %struct.rdma_cm_event** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %7 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %51 [
    i32 137, label %9
    i32 129, label %14
    i32 135, label %19
    i32 132, label %22
    i32 138, label %32
    i32 130, label %32
    i32 136, label %32
    i32 128, label %32
    i32 131, label %32
    i32 133, label %45
    i32 134, label %50
  ]

9:                                                ; preds = %2
  %10 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %11 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @addr_handler(i64 %12)
  store i32 %13, i32* %5, align 4
  br label %52

14:                                               ; preds = %2
  %15 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %16 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @route_handler(i64 %17)
  store i32 %18, i32* %5, align 4
  br label %52

19:                                               ; preds = %2
  %20 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %21 = call i32 @connect_handler(%struct.rdma_cm_id* %20)
  store i32 %21, i32* %5, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %24 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.cmatest_node*
  %27 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 1), align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 1), align 4
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 4
  br label %52

32:                                               ; preds = %2, %2, %2, %2, %2
  %33 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %34 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @rdma_event_str(i32 %35)
  %37 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %38 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %36, i32 %39)
  %41 = call i32 (...) @connect_error()
  %42 = load %struct.rdma_cm_event*, %struct.rdma_cm_event** %4, align 8
  %43 = getelementptr inbounds %struct.rdma_cm_event, %struct.rdma_cm_event* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %5, align 4
  br label %52

45:                                               ; preds = %2
  %46 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %47 = call i32 @rdma_disconnect(%struct.rdma_cm_id* %46)
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 4
  br label %52

50:                                               ; preds = %2
  br label %52

51:                                               ; preds = %2
  br label %52

52:                                               ; preds = %51, %50, %45, %32, %22, %19, %14, %9
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @addr_handler(i64) #1

declare dso_local i32 @route_handler(i64) #1

declare dso_local i32 @connect_handler(%struct.rdma_cm_id*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @rdma_event_str(i32) #1

declare dso_local i32 @connect_error(...) #1

declare dso_local i32 @rdma_disconnect(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
