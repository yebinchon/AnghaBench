; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xclient.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xclient.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.rdma_addrinfo = type { i32 }
%struct.ibv_qp_init_attr = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.ibv_wc = type { i32 }

@server = common dso_local global i32 0, align 4
@port = common dso_local global i32 0, align 4
@hints = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"rdma_getaddrinfo: %s\0A\00", align 1
@id = common dso_local global %struct.TYPE_18__* null, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"rdma_create_ep\00", align 1
@send_msg = common dso_local global i32 0, align 4
@mr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"rdma_reg_msgs\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"rdma_connect\00", align 1
@IBV_QPT_XRC_SEND = common dso_local global i64 0, align 8
@srqn = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"post_send\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"rdma_get_recv_comp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rdma_addrinfo*, align 8
  %3 = alloca %struct.ibv_qp_init_attr, align 4
  %4 = alloca %struct.ibv_wc, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @server, align 4
  %7 = load i32, i32* @port, align 4
  %8 = call i32 @rdma_getaddrinfo(i32 %6, i32 %7, %struct.TYPE_19__* @hints, %struct.rdma_addrinfo** %2)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, i32* %5, align 4
  %13 = call i8* @gai_strerror(i32 %12)
  %14 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %1, align 4
  br label %90

16:                                               ; preds = %0
  %17 = call i32 @memset(%struct.ibv_qp_init_attr* %3, i32 0, i32 20)
  %18 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 1
  store i32 1, i32* %19, align 4
  %20 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  %22 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 3
  store i32 1, i32* %23, align 4
  %24 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 2
  store i32 1, i32* %25, align 4
  %26 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %28 = call i32 @rdma_create_ep(%struct.TYPE_18__** @id, %struct.rdma_addrinfo* %27, i32* null, %struct.ibv_qp_init_attr* %3)
  store i32 %28, i32* %5, align 4
  %29 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %30 = call i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo* %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %16
  %34 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %1, align 4
  br label %90

36:                                               ; preds = %16
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** @id, align 8
  %38 = load i32, i32* @send_msg, align 4
  %39 = call i32 @rdma_reg_msgs(%struct.TYPE_18__* %37, i32 %38, i32 4)
  store i32 %39, i32* @mr, align 4
  %40 = load i32, i32* @mr, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %1, align 4
  br label %90

45:                                               ; preds = %36
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** @id, align 8
  %47 = call i32 @rdma_connect(%struct.TYPE_18__* %46, i32* null)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %1, align 4
  br label %90

53:                                               ; preds = %45
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @hints, i32 0, i32 0), align 8
  %55 = load i64, i64* @IBV_QPT_XRC_SEND, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** @id, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @be32toh(i32 %66)
  store i32 %67, i32* @srqn, align 4
  br label %68

68:                                               ; preds = %57, %53
  %69 = call i32 (...) @post_send()
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %1, align 4
  br label %90

75:                                               ; preds = %68
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** @id, align 8
  %77 = call i32 @rdma_get_send_comp(%struct.TYPE_18__* %76, %struct.ibv_wc* %4)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %1, align 4
  br label %90

83:                                               ; preds = %75
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** @id, align 8
  %85 = call i32 @rdma_disconnect(%struct.TYPE_18__* %84)
  %86 = load i32, i32* @mr, align 4
  %87 = call i32 @rdma_dereg_mr(i32 %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** @id, align 8
  %89 = call i32 @rdma_destroy_ep(%struct.TYPE_18__* %88)
  store i32 0, i32* %1, align 4
  br label %90

90:                                               ; preds = %83, %80, %72, %50, %42, %33, %11
  %91 = load i32, i32* %1, align 4
  ret i32 %91
}

declare dso_local i32 @rdma_getaddrinfo(i32, i32, %struct.TYPE_19__*, %struct.rdma_addrinfo**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @memset(%struct.ibv_qp_init_attr*, i32, i32) #1

declare dso_local i32 @rdma_create_ep(%struct.TYPE_18__**, %struct.rdma_addrinfo*, i32*, %struct.ibv_qp_init_attr*) #1

declare dso_local i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rdma_reg_msgs(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @rdma_connect(%struct.TYPE_18__*, i32*) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @post_send(...) #1

declare dso_local i32 @rdma_get_send_comp(%struct.TYPE_18__*, %struct.ibv_wc*) #1

declare dso_local i32 @rdma_disconnect(%struct.TYPE_18__*) #1

declare dso_local i32 @rdma_dereg_mr(i32) #1

declare dso_local i32 @rdma_destroy_ep(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
