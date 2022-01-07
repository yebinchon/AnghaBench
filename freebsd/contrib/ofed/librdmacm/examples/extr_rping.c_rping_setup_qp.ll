; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_setup_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_setup_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i32, i32, i32, i32 }
%struct.rdma_cm_id = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"ibv_alloc_pd failed\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"created pd %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ibv_create_comp_channel failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"created channel %p\0A\00", align 1
@RPING_SQ_DEPTH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"ibv_create_cq failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"created cq %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"rdma_create_qp\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"created qp %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*, %struct.rdma_cm_id*)* @rping_setup_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_setup_qp(%struct.rping_cb* %0, %struct.rdma_cm_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rping_cb*, align 8
  %5 = alloca %struct.rdma_cm_id*, align 8
  %6 = alloca i32, align 4
  store %struct.rping_cb* %0, %struct.rping_cb** %4, align 8
  store %struct.rdma_cm_id* %1, %struct.rdma_cm_id** %5, align 8
  %7 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %8 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ibv_alloc_pd(i32 %9)
  %11 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %12 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %14 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @stderr, align 4
  %19 = call i32 @fprintf(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @errno, align 4
  store i32 %20, i32* %3, align 4
  br label %108

21:                                               ; preds = %2
  %22 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %23 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %27 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ibv_create_comp_channel(i32 %28)
  %30 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %31 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %33 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @errno, align 4
  store i32 %39, i32* %6, align 4
  br label %102

40:                                               ; preds = %21
  %41 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %42 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %5, align 8
  %46 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RPING_SQ_DEPTH, align 4
  %49 = mul nsw i32 %48, 2
  %50 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %51 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %52 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @ibv_create_cq(i32 %47, i32 %49, %struct.rping_cb* %50, i32 %53, i32 0)
  %55 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %56 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %58 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %40
  %62 = load i32, i32* @stderr, align 4
  %63 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* @errno, align 4
  store i32 %64, i32* %6, align 4
  br label %97

65:                                               ; preds = %40
  %66 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %67 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %68)
  %70 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %71 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ibv_req_notify_cq(i32 %72, i32 0)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %65
  %77 = load i32, i32* @stderr, align 4
  %78 = call i32 @fprintf(i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %79 = load i32, i32* @errno, align 4
  store i32 %79, i32* %6, align 4
  br label %92

80:                                               ; preds = %65
  %81 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %82 = call i32 @rping_create_qp(%struct.rping_cb* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  br label %92

87:                                               ; preds = %80
  %88 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %89 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %90)
  store i32 0, i32* %3, align 4
  br label %108

92:                                               ; preds = %85, %76
  %93 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %94 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ibv_destroy_cq(i32 %95)
  br label %97

97:                                               ; preds = %92, %61
  %98 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %99 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ibv_destroy_comp_channel(i32 %100)
  br label %102

102:                                              ; preds = %97, %36
  %103 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %104 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @ibv_dealloc_pd(i32 %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %102, %87, %17
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @ibv_alloc_pd(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @DEBUG_LOG(i8*, i32) #1

declare dso_local i32 @ibv_create_comp_channel(i32) #1

declare dso_local i32 @ibv_create_cq(i32, i32, %struct.rping_cb*, i32, i32) #1

declare dso_local i32 @ibv_req_notify_cq(i32, i32) #1

declare dso_local i32 @rping_create_qp(%struct.rping_cb*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ibv_destroy_cq(i32) #1

declare dso_local i32 @ibv_destroy_comp_channel(i32) #1

declare dso_local i32 @ibv_dealloc_pd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
