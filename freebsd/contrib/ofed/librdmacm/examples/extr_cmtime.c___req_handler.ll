; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c___req_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmtime.c___req_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdma_cm_id = type { i32 }

@init_qp_attr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"failure creating qp\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"failure accepting\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failing connection request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdma_cm_id*)* @__req_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__req_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca %struct.rdma_cm_id*, align 8
  %3 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %2, align 8
  %4 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %5 = call i32 @rdma_create_qp(%struct.rdma_cm_id* %4, i32* null, i32* @init_qp_attr)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @perror(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %12 = call i32 @rdma_accept(%struct.rdma_cm_id* %11, i32* null)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %18

17:                                               ; preds = %10
  br label %24

18:                                               ; preds = %15, %8
  %19 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %21 = call i32 @rdma_reject(%struct.rdma_cm_id* %20, i32* null, i32 0)
  %22 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %2, align 8
  %23 = call i32 @rdma_destroy_id(%struct.rdma_cm_id* %22)
  br label %24

24:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @rdma_create_qp(%struct.rdma_cm_id*, i32*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rdma_accept(%struct.rdma_cm_id*, i32*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @rdma_reject(%struct.rdma_cm_id*, i32*, i32) #1

declare dso_local i32 @rdma_destroy_id(%struct.rdma_cm_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
