; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_connect_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_cmatose.c_connect_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.cmatest_node* }
%struct.cmatest_node = type { %struct.rdma_cm_id* }
%struct.rdma_cm_id = type { %struct.cmatest_node* }

@test = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@connections = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cmatose: failure accepting\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"cmatose: failing connection request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*)* @connect_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.cmatest_node*, align 8
  %5 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 8
  %7 = load i64, i64* @connections, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  br label %48

12:                                               ; preds = %1
  %13 = load %struct.cmatest_node*, %struct.cmatest_node** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 1), align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 8
  %15 = add nsw i64 %14, 1
  store i64 %15, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test, i32 0, i32 0), align 8
  %16 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %13, i64 %14
  store %struct.cmatest_node* %16, %struct.cmatest_node** %4, align 8
  %17 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %18 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %19 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %18, i32 0, i32 0
  store %struct.rdma_cm_id* %17, %struct.rdma_cm_id** %19, align 8
  %20 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %21 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %22 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %21, i32 0, i32 0
  store %struct.cmatest_node* %20, %struct.cmatest_node** %22, align 8
  %23 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %24 = call i32 @init_node(%struct.cmatest_node* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  br label %44

28:                                               ; preds = %12
  %29 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %30 = call i32 @post_recvs(%struct.cmatest_node* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %44

34:                                               ; preds = %28
  %35 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %36 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %35, i32 0, i32 0
  %37 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %36, align 8
  %38 = call i32 @rdma_accept(%struct.rdma_cm_id* %37, i32* null)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = call i32 @perror(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %44

43:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %53

44:                                               ; preds = %41, %33, %27
  %45 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %46 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %45, i32 0, i32 0
  store %struct.rdma_cm_id* null, %struct.rdma_cm_id** %46, align 8
  %47 = call i32 (...) @connect_error()
  br label %48

48:                                               ; preds = %44, %9
  %49 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %51 = call i32 @rdma_reject(%struct.rdma_cm_id* %50, i32* null, i32 0)
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @init_node(%struct.cmatest_node*) #1

declare dso_local i32 @post_recvs(%struct.cmatest_node*) #1

declare dso_local i32 @rdma_accept(%struct.rdma_cm_id*, i32*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @connect_error(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @rdma_reject(%struct.rdma_cm_id*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
