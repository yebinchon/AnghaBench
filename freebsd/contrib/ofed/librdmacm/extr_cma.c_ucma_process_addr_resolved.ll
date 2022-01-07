; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_process_addr_resolved.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_cma.c_ucma_process_addr_resolved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cma_event = type { %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }

@af_ib_support = common dso_local global i64 0, align 8
@IBV_TRANSPORT_IB = common dso_local global i64 0, align 8
@RDMA_CM_EVENT_ADDR_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cma_event*)* @ucma_process_addr_resolved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucma_process_addr_resolved(%struct.cma_event* %0) #0 {
  %2 = alloca %struct.cma_event*, align 8
  store %struct.cma_event* %0, %struct.cma_event** %2, align 8
  %3 = load i64, i64* @af_ib_support, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %42

5:                                                ; preds = %1
  %6 = load %struct.cma_event*, %struct.cma_event** %2, align 8
  %7 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = call i64 @ucma_query_addr(%struct.TYPE_12__* %9)
  %11 = load %struct.cma_event*, %struct.cma_event** %2, align 8
  %12 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i64 %10, i64* %13, align 8
  %14 = load %struct.cma_event*, %struct.cma_event** %2, align 8
  %15 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %41, label %19

19:                                               ; preds = %5
  %20 = load %struct.cma_event*, %struct.cma_event** %2, align 8
  %21 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IBV_TRANSPORT_IB, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %19
  %33 = load %struct.cma_event*, %struct.cma_event** %2, align 8
  %34 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = call i64 @ucma_query_gid(%struct.TYPE_12__* %36)
  %38 = load %struct.cma_event*, %struct.cma_event** %2, align 8
  %39 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  store i64 %37, i64* %40, align 8
  br label %41

41:                                               ; preds = %32, %19, %5
  br label %51

42:                                               ; preds = %1
  %43 = load %struct.cma_event*, %struct.cma_event** %2, align 8
  %44 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %43, i32 0, i32 1
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = call i64 @ucma_query_route(%struct.TYPE_12__* %46)
  %48 = load %struct.cma_event*, %struct.cma_event** %2, align 8
  %49 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  br label %51

51:                                               ; preds = %42, %41
  %52 = load %struct.cma_event*, %struct.cma_event** %2, align 8
  %53 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* @RDMA_CM_EVENT_ADDR_ERROR, align 4
  %59 = load %struct.cma_event*, %struct.cma_event** %2, align 8
  %60 = getelementptr inbounds %struct.cma_event, %struct.cma_event* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 8
  br label %62

62:                                               ; preds = %57, %51
  ret void
}

declare dso_local i64 @ucma_query_addr(%struct.TYPE_12__*) #1

declare dso_local i64 @ucma_query_gid(%struct.TYPE_12__*) #1

declare dso_local i64 @ucma_query_route(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
