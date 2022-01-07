; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xserver.c_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rdma_xserver.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.rdma_addrinfo = type { i32 }
%struct.ibv_qp_init_attr = type { i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.rdma_conn_param = type { i32, i32*, %struct.TYPE_4__ }
%struct.ibv_wc = type { i32 }

@port = common dso_local global i32 0, align 4
@hints = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [22 x i8] c"rdma_getaddrinfo: %s\0A\00", align 1
@listen_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"rdma_create_ep\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"rdma_listen\00", align 1
@id = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"rdma_get_request\00", align 1
@IBV_QPT_XRC_RECV = common dso_local global i64 0, align 8
@recv_msg = common dso_local global i32 0, align 4
@mr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"rdma_reg_msgs\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"rdma_post_recv\00", align 1
@srqn = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"rdma_accept\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"rdma_get_recv_comp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.rdma_addrinfo*, align 8
  %3 = alloca %struct.ibv_qp_init_attr, align 8
  %4 = alloca %struct.rdma_conn_param, align 8
  %5 = alloca %struct.ibv_wc, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @port, align 4
  %8 = call i32 @rdma_getaddrinfo(i32* null, i32 %7, %struct.TYPE_5__* @hints, %struct.rdma_addrinfo** %2)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %0
  %12 = load i32, i32* %6, align 4
  %13 = call i8* @gai_strerror(i32 %12)
  %14 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %1, align 4
  br label %111

16:                                               ; preds = %0
  %17 = bitcast %struct.ibv_qp_init_attr* %3 to %struct.rdma_conn_param*
  %18 = call i32 @memset(%struct.rdma_conn_param* %17, i32 0, i32 32)
  %19 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 3
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.ibv_qp_init_attr, %struct.ibv_qp_init_attr* %3, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  store i32 1, i32* %26, align 8
  %27 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %28 = bitcast %struct.ibv_qp_init_attr* %3 to %struct.rdma_conn_param*
  %29 = call i32 @rdma_create_ep(i32* @listen_id, %struct.rdma_addrinfo* %27, i32* null, %struct.rdma_conn_param* %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.rdma_addrinfo*, %struct.rdma_addrinfo** %2, align 8
  %31 = call i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo* %30)
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %16
  %35 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %1, align 4
  br label %111

37:                                               ; preds = %16
  %38 = load i32, i32* @listen_id, align 4
  %39 = call i32 @rdma_listen(i32 %38, i32 0)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %1, align 4
  br label %111

45:                                               ; preds = %37
  %46 = load i32, i32* @listen_id, align 4
  %47 = call i32 @rdma_get_request(i32 %46, i32* @id)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %1, align 4
  br label %111

53:                                               ; preds = %45
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @hints, i32 0, i32 0), align 8
  %55 = load i64, i64* @IBV_QPT_XRC_RECV, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = call i32 (...) @create_srq()
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %1, align 4
  br label %111

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63, %53
  %65 = load i32, i32* @id, align 4
  %66 = load i32, i32* @recv_msg, align 4
  %67 = call i32 @rdma_reg_msgs(i32 %65, i32 %66, i32 4)
  store i32 %67, i32* @mr, align 4
  %68 = load i32, i32* @mr, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %1, align 4
  br label %111

73:                                               ; preds = %64
  %74 = load i32, i32* @id, align 4
  %75 = load i32, i32* @recv_msg, align 4
  %76 = load i32, i32* @mr, align 4
  %77 = call i32 @rdma_post_recv(i32 %74, i32* null, i32 %75, i32 4, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %1, align 4
  br label %111

83:                                               ; preds = %73
  %84 = call i32 @memset(%struct.rdma_conn_param* %4, i32 0, i32 32)
  %85 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %4, i32 0, i32 1
  store i32* @srqn, i32** %85, align 8
  %86 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %4, i32 0, i32 0
  store i32 4, i32* %86, align 8
  %87 = load i32, i32* @id, align 4
  %88 = call i32 @rdma_accept(i32 %87, %struct.rdma_conn_param* %4)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %83
  %92 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %1, align 4
  br label %111

94:                                               ; preds = %83
  %95 = load i32, i32* @id, align 4
  %96 = call i32 @rdma_get_recv_comp(i32 %95, %struct.ibv_wc* %5)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %1, align 4
  br label %111

102:                                              ; preds = %94
  %103 = load i32, i32* @id, align 4
  %104 = call i32 @rdma_disconnect(i32 %103)
  %105 = load i32, i32* @mr, align 4
  %106 = call i32 @rdma_dereg_mr(i32 %105)
  %107 = load i32, i32* @id, align 4
  %108 = call i32 @rdma_destroy_ep(i32 %107)
  %109 = load i32, i32* @listen_id, align 4
  %110 = call i32 @rdma_destroy_ep(i32 %109)
  store i32 0, i32* %1, align 4
  br label %111

111:                                              ; preds = %102, %99, %91, %80, %70, %61, %50, %42, %34, %11
  %112 = load i32, i32* %1, align 4
  ret i32 %112
}

declare dso_local i32 @rdma_getaddrinfo(i32*, i32, %struct.TYPE_5__*, %struct.rdma_addrinfo**) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @gai_strerror(i32) #1

declare dso_local i32 @memset(%struct.rdma_conn_param*, i32, i32) #1

declare dso_local i32 @rdma_create_ep(i32*, %struct.rdma_addrinfo*, i32*, %struct.rdma_conn_param*) #1

declare dso_local i32 @rdma_freeaddrinfo(%struct.rdma_addrinfo*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rdma_listen(i32, i32) #1

declare dso_local i32 @rdma_get_request(i32, i32*) #1

declare dso_local i32 @create_srq(...) #1

declare dso_local i32 @rdma_reg_msgs(i32, i32, i32) #1

declare dso_local i32 @rdma_post_recv(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @rdma_accept(i32, %struct.rdma_conn_param*) #1

declare dso_local i32 @rdma_get_recv_comp(i32, %struct.ibv_wc*) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @rdma_dereg_mr(i32) #1

declare dso_local i32 @rdma_destroy_ep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
