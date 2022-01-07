; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_run_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_run_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i64, i32, i32, i32, i32, i32 }
%struct.ibv_recv_wr = type { i32 }

@CONNECT_REQUEST = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"wait for CONNECT_REQUEST state %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"setup_qp failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"rping_setup_buffers failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ibv_post_recv failed: %d\0A\00", align 1
@cq_thread = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"connect error %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"rping server failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*)* @rping_run_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_run_server(%struct.rping_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca %struct.ibv_recv_wr*, align 8
  %5 = alloca i32, align 4
  store %struct.rping_cb* %0, %struct.rping_cb** %3, align 8
  %6 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %7 = call i32 @rping_bind_server(%struct.rping_cb* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %112

12:                                               ; preds = %1
  %13 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %14 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %13, i32 0, i32 5
  %15 = call i32 @sem_wait(i32* %14)
  %16 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %17 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CONNECT_REQUEST, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %12
  %22 = load i32, i32* @stderr, align 4
  %23 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %24 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @fprintf(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %26)
  store i32 -1, i32* %2, align 4
  br label %112

28:                                               ; preds = %12
  %29 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %30 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %31 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @rping_setup_qp(%struct.rping_cb* %29, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @fprintf(i32 %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %112

41:                                               ; preds = %28
  %42 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %43 = call i32 @rping_setup_buffers(%struct.rping_cb* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @stderr, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %108

50:                                               ; preds = %41
  %51 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %52 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %55 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %54, i32 0, i32 3
  %56 = call i32 @ibv_post_recv(i32 %53, i32* %55, %struct.ibv_recv_wr** %4)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @stderr, align 4
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @fprintf(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  br label %105

63:                                               ; preds = %50
  %64 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %65 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %64, i32 0, i32 2
  %66 = load i32, i32* @cq_thread, align 4
  %67 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %68 = call i32 @pthread_create(i32* %65, i32* null, i32 %66, %struct.rping_cb* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  br label %105

73:                                               ; preds = %63
  %74 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %75 = call i32 @rping_accept(%struct.rping_cb* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @stderr, align 4
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @fprintf(i32 %79, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  br label %105

82:                                               ; preds = %73
  %83 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %84 = call i32 @rping_test_server(%struct.rping_cb* %83)
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %89)
  br label %92

91:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %87
  %93 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %94 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @rdma_disconnect(i32 %95)
  %97 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %98 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @pthread_join(i32 %99, i32* null)
  %101 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %102 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @rdma_destroy_id(i32 %103)
  br label %105

105:                                              ; preds = %92, %78, %71, %59
  %106 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %107 = call i32 @rping_free_buffers(%struct.rping_cb* %106)
  br label %108

108:                                              ; preds = %105, %46
  %109 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %110 = call i32 @rping_free_qp(%struct.rping_cb* %109)
  %111 = load i32, i32* %5, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %36, %21, %10
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @rping_bind_server(%struct.rping_cb*) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @rping_setup_qp(%struct.rping_cb*, i32) #1

declare dso_local i32 @rping_setup_buffers(%struct.rping_cb*) #1

declare dso_local i32 @ibv_post_recv(i32, i32*, %struct.ibv_recv_wr**) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.rping_cb*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rping_accept(%struct.rping_cb*) #1

declare dso_local i32 @rping_test_server(%struct.rping_cb*) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @rdma_destroy_id(i32) #1

declare dso_local i32 @rping_free_buffers(%struct.rping_cb*) #1

declare dso_local i32 @rping_free_qp(%struct.rping_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
