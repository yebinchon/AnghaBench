; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_connect_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udaddy.c_connect_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, %struct.cmatest_node* }
%struct.cmatest_node = type { i32, %struct.rdma_cm_id* }
%struct.rdma_cm_id = type { %struct.TYPE_3__*, %struct.cmatest_node* }
%struct.TYPE_3__ = type { i32 }
%struct.rdma_conn_param = type { i32 }

@test = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@connections = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"udaddy: failure accepting\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"udaddy: failing connection request\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rdma_cm_id*)* @connect_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_handler(%struct.rdma_cm_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rdma_cm_id*, align 8
  %4 = alloca %struct.cmatest_node*, align 8
  %5 = alloca %struct.rdma_conn_param, align 4
  %6 = alloca i32, align 4
  store %struct.rdma_cm_id* %0, %struct.rdma_cm_id** %3, align 8
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 0), align 8
  %8 = load i64, i64* @connections, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %6, align 4
  br label %68

13:                                               ; preds = %1
  %14 = load %struct.cmatest_node*, %struct.cmatest_node** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 2), align 8
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 0), align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 0), align 8
  %17 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %14, i64 %15
  store %struct.cmatest_node* %17, %struct.cmatest_node** %4, align 8
  %18 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %19 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %20 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %19, i32 0, i32 1
  store %struct.rdma_cm_id* %18, %struct.rdma_cm_id** %20, align 8
  %21 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %22 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %23 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %22, i32 0, i32 1
  store %struct.cmatest_node* %21, %struct.cmatest_node** %23, align 8
  %24 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %25 = call i32 @verify_test_params(%struct.cmatest_node* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %13
  br label %64

29:                                               ; preds = %13
  %30 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %31 = call i32 @init_node(%struct.cmatest_node* %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %64

35:                                               ; preds = %29
  %36 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %37 = call i32 @post_recvs(%struct.cmatest_node* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %64

41:                                               ; preds = %35
  %42 = call i32 @memset(%struct.rdma_conn_param* %5, i32 0, i32 4)
  %43 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %44 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %43, i32 0, i32 1
  %45 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %44, align 8
  %46 = getelementptr inbounds %struct.rdma_cm_id, %struct.rdma_cm_id* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %5, i32 0, i32 0
  store i32 %49, i32* %50, align 4
  %51 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %52 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %51, i32 0, i32 1
  %53 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %52, align 8
  %54 = call i32 @rdma_accept(%struct.rdma_cm_id* %53, %struct.rdma_conn_param* %5)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %41
  %58 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %64

59:                                               ; preds = %41
  %60 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %61 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 1), align 8
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @test, i32 0, i32 1), align 8
  store i32 0, i32* %2, align 4
  br label %73

64:                                               ; preds = %57, %40, %34, %28
  %65 = load %struct.cmatest_node*, %struct.cmatest_node** %4, align 8
  %66 = getelementptr inbounds %struct.cmatest_node, %struct.cmatest_node* %65, i32 0, i32 1
  store %struct.rdma_cm_id* null, %struct.rdma_cm_id** %66, align 8
  %67 = call i32 (...) @connect_error()
  br label %68

68:                                               ; preds = %64, %10
  %69 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %70 = load %struct.rdma_cm_id*, %struct.rdma_cm_id** %3, align 8
  %71 = call i32 @rdma_reject(%struct.rdma_cm_id* %70, i32* null, i32 0)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %68, %59
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @verify_test_params(%struct.cmatest_node*) #1

declare dso_local i32 @init_node(%struct.cmatest_node*) #1

declare dso_local i32 @post_recvs(%struct.cmatest_node*) #1

declare dso_local i32 @memset(%struct.rdma_conn_param*, i32, i32) #1

declare dso_local i32 @rdma_accept(%struct.rdma_cm_id*, %struct.rdma_conn_param*) #1

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
