; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_connect_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_connect_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i64, i32, i32 }
%struct.rdma_conn_param = type { i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"rdma_connect\00", align 1
@CONNECTED = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"wait for CONNECTED state %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"rmda_connect successful\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*)* @rping_connect_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_connect_client(%struct.rping_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca %struct.rdma_conn_param, align 4
  %5 = alloca i32, align 4
  store %struct.rping_cb* %0, %struct.rping_cb** %3, align 8
  %6 = call i32 @memset(%struct.rdma_conn_param* %4, i32 0, i32 12)
  %7 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %4, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %4, i32 0, i32 1
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.rdma_conn_param, %struct.rdma_conn_param* %4, i32 0, i32 2
  store i32 7, i32* %9, align 4
  %10 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %11 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rdma_connect(i32 %12, %struct.rdma_conn_param* %4)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %1
  %20 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %21 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %20, i32 0, i32 1
  %22 = call i32 @sem_wait(i32* %21)
  %23 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %24 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CONNECTED, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load i32, i32* @stderr, align 4
  %30 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %31 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  store i32 -1, i32* %2, align 4
  br label %36

34:                                               ; preds = %19
  %35 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %28, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @memset(%struct.rdma_conn_param*, i32, i32) #1

declare dso_local i32 @rdma_connect(i32, %struct.rdma_conn_param*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @DEBUG_LOG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
