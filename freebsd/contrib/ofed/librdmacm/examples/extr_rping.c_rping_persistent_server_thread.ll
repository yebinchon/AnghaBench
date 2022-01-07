; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_persistent_server_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_persistent_server_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { i32, i32, i32, i32 }
%struct.ibv_recv_wr = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"setup_qp failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"rping_setup_buffers failed: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ibv_post_recv failed: %d\0A\00", align 1
@cq_thread = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"connect error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rping_persistent_server_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rping_persistent_server_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rping_cb*, align 8
  %5 = alloca %struct.ibv_recv_wr*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rping_cb*
  store %struct.rping_cb* %8, %struct.rping_cb** %4, align 8
  %9 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %10 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %11 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @rping_setup_qp(%struct.rping_cb* %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @stderr, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @fprintf(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %97

20:                                               ; preds = %1
  %21 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %22 = call i32 @rping_setup_buffers(%struct.rping_cb* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load i32, i32* @stderr, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @fprintf(i32 %26, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  br label %94

29:                                               ; preds = %20
  %30 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %31 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %34 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %33, i32 0, i32 2
  %35 = call i32 @ibv_post_recv(i32 %32, i32* %34, %struct.ibv_recv_wr** %5)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load i32, i32* @stderr, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %91

42:                                               ; preds = %29
  %43 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %44 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %43, i32 0, i32 0
  %45 = load i32, i32* @cq_thread, align 4
  %46 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %47 = call i32 @pthread_create(i32* %44, i32* null, i32 %45, %struct.rping_cb* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %91

52:                                               ; preds = %42
  %53 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %54 = call i32 @rping_accept(%struct.rping_cb* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i32, i32* @stderr, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @fprintf(i32 %58, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %59)
  br label %82

61:                                               ; preds = %52
  %62 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %63 = call i32 @rping_test_server(%struct.rping_cb* %62)
  %64 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %65 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @rdma_disconnect(i32 %66)
  %68 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %69 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pthread_join(i32 %70, i32* null)
  %72 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %73 = call i32 @rping_free_buffers(%struct.rping_cb* %72)
  %74 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %75 = call i32 @rping_free_qp(%struct.rping_cb* %74)
  %76 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %77 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @rdma_destroy_id(i32 %78)
  %80 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %81 = call i32 @free_cb(%struct.rping_cb* %80)
  store i8* null, i8** %2, align 8
  br label %100

82:                                               ; preds = %57
  %83 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %84 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @pthread_cancel(i32 %85)
  %87 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %88 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pthread_join(i32 %89, i32* null)
  br label %91

91:                                               ; preds = %82, %50, %38
  %92 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %93 = call i32 @rping_free_buffers(%struct.rping_cb* %92)
  br label %94

94:                                               ; preds = %91, %25
  %95 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %96 = call i32 @rping_free_qp(%struct.rping_cb* %95)
  br label %97

97:                                               ; preds = %94, %16
  %98 = load %struct.rping_cb*, %struct.rping_cb** %4, align 8
  %99 = call i32 @free_cb(%struct.rping_cb* %98)
  store i8* null, i8** %2, align 8
  br label %100

100:                                              ; preds = %97, %61
  %101 = load i8*, i8** %2, align 8
  ret i8* %101
}

declare dso_local i32 @rping_setup_qp(%struct.rping_cb*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @rping_setup_buffers(%struct.rping_cb*) #1

declare dso_local i32 @ibv_post_recv(i32, i32*, %struct.ibv_recv_wr**) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.rping_cb*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rping_accept(%struct.rping_cb*) #1

declare dso_local i32 @rping_test_server(%struct.rping_cb*) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @rping_free_buffers(%struct.rping_cb*) #1

declare dso_local i32 @rping_free_qp(%struct.rping_cb*) #1

declare dso_local i32 @rdma_destroy_id(i32) #1

declare dso_local i32 @free_cb(%struct.rping_cb*) #1

declare dso_local i32 @pthread_cancel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
