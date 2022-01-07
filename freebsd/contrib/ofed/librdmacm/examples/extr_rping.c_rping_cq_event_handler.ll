; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_cq_event_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_cq_event_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i32, i32, i32, i32, i32, i32 }
%struct.ibv_wc = type { i64, i32 }
%struct.ibv_recv_wr = type { i32 }

@IBV_WC_WR_FLUSH_ERR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"cq completion failed status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"send completion\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"rdma write completion\0A\00", align 1
@RDMA_WRITE_COMPLETE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"rdma read completion\0A\00", align 1
@RDMA_READ_COMPLETE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"recv completion\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"recv wc error: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"post recv error: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"unknown!!!!! completion\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"poll error %d\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*)* @rping_cq_event_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_cq_event_handler(%struct.rping_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca %struct.ibv_wc, align 8
  %5 = alloca %struct.ibv_recv_wr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rping_cb* %0, %struct.rping_cb** %3, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %90, %23, %1
  %9 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %10 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ibv_poll_cq(i32 %11, i32 1, %struct.ibv_wc* %4)
  store i32 %12, i32* %6, align 4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %91

14:                                               ; preds = %8
  store i32 0, i32* %6, align 4
  %15 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IBV_WC_WR_FLUSH_ERR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %8

24:                                               ; preds = %18
  %25 = load i32, i32* @stderr, align 4
  %26 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = trunc i64 %27 to i32
  %29 = call i32 @fprintf(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 -1, i32* %6, align 4
  br label %100

30:                                               ; preds = %14
  %31 = getelementptr inbounds %struct.ibv_wc, %struct.ibv_wc* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  switch i32 %32, label %88 [
    i32 128, label %33
    i32 130, label %35
    i32 131, label %43
    i32 129, label %51
  ]

33:                                               ; preds = %30
  %34 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %90

35:                                               ; preds = %30
  %36 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32, i32* @RDMA_WRITE_COMPLETE, align 4
  %38 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %39 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %41 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %40, i32 0, i32 0
  %42 = call i32 @sem_post(i32* %41)
  br label %90

43:                                               ; preds = %30
  %44 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @RDMA_READ_COMPLETE, align 4
  %46 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %47 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %49 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %48, i32 0, i32 0
  %50 = call i32 @sem_post(i32* %49)
  br label %90

51:                                               ; preds = %30
  %52 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %54 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %59 = call i32 @server_recv(%struct.rping_cb* %58, %struct.ibv_wc* %4)
  br label %63

60:                                               ; preds = %51
  %61 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %62 = call i32 @client_recv(%struct.rping_cb* %61, %struct.ibv_wc* %4)
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i32 [ %59, %57 ], [ %62, %60 ]
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @fprintf(i32 %68, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  br label %100

71:                                               ; preds = %63
  %72 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %73 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %76 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %75, i32 0, i32 2
  %77 = call i32 @ibv_post_recv(i32 %74, i32* %76, %struct.ibv_recv_wr** %5)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %71
  %81 = load i32, i32* @stderr, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  br label %100

84:                                               ; preds = %71
  %85 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %86 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %85, i32 0, i32 0
  %87 = call i32 @sem_post(i32* %86)
  br label %90

88:                                               ; preds = %30
  %89 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %100

90:                                               ; preds = %84, %43, %35, %33
  br label %8

91:                                               ; preds = %8
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @stderr, align 4
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @fprintf(i32 %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %96)
  br label %100

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %2, align 4
  br label %108

100:                                              ; preds = %94, %88, %80, %67, %24
  %101 = load i32, i32* @ERROR, align 4
  %102 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %103 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %105 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %104, i32 0, i32 0
  %106 = call i32 @sem_post(i32* %105)
  %107 = load i32, i32* %6, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %100, %98
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @ibv_poll_cq(i32, i32, %struct.ibv_wc*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @DEBUG_LOG(i8*) #1

declare dso_local i32 @sem_post(i32*) #1

declare dso_local i32 @server_recv(%struct.rping_cb*, %struct.ibv_wc*) #1

declare dso_local i32 @client_recv(%struct.rping_cb*, %struct.ibv_wc*) #1

declare dso_local i32 @ibv_post_recv(i32, i32*, %struct.ibv_recv_wr**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
