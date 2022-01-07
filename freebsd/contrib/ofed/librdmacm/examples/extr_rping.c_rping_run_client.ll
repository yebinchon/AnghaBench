; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_run_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_rping_run_client.c"
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
@.str.5 = private unnamed_addr constant [25 x i8] c"rping client failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rping_cb*)* @rping_run_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rping_run_client(%struct.rping_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca %struct.ibv_recv_wr*, align 8
  %5 = alloca i32, align 4
  store %struct.rping_cb* %0, %struct.rping_cb** %3, align 8
  %6 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %7 = call i32 @rping_bind_client(%struct.rping_cb* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %93

12:                                               ; preds = %1
  %13 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %14 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %15 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @rping_setup_qp(%struct.rping_cb* %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load i32, i32* @stderr, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @fprintf(i32 %21, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %93

25:                                               ; preds = %12
  %26 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %27 = call i32 @rping_setup_buffers(%struct.rping_cb* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @fprintf(i32 %31, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %89

34:                                               ; preds = %25
  %35 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %36 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %39 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %38, i32 0, i32 2
  %40 = call i32 @ibv_post_recv(i32 %37, i32* %39, %struct.ibv_recv_wr** %4)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @stderr, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @fprintf(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  br label %86

47:                                               ; preds = %34
  %48 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %49 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %48, i32 0, i32 0
  %50 = load i32, i32* @cq_thread, align 4
  %51 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %52 = call i32 @pthread_create(i32* %49, i32* null, i32 %50, %struct.rping_cb* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  br label %86

57:                                               ; preds = %47
  %58 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %59 = call i32 @rping_connect_client(%struct.rping_cb* %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @stderr, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  br label %81

66:                                               ; preds = %57
  %67 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %68 = call i32 @rping_test_client(%struct.rping_cb* %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @stderr, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @fprintf(i32 %72, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  br label %76

75:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %71
  %77 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %78 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @rdma_disconnect(i32 %79)
  br label %81

81:                                               ; preds = %76, %62
  %82 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %83 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pthread_join(i32 %84, i32* null)
  br label %86

86:                                               ; preds = %81, %55, %43
  %87 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %88 = call i32 @rping_free_buffers(%struct.rping_cb* %87)
  br label %89

89:                                               ; preds = %86, %30
  %90 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %91 = call i32 @rping_free_qp(%struct.rping_cb* %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %20, %10
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @rping_bind_client(%struct.rping_cb*) #1

declare dso_local i32 @rping_setup_qp(%struct.rping_cb*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @rping_setup_buffers(%struct.rping_cb*) #1

declare dso_local i32 @ibv_post_recv(i32, i32*, %struct.ibv_recv_wr**) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.rping_cb*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @rping_connect_client(%struct.rping_cb*) #1

declare dso_local i32 @rping_test_client(%struct.rping_cb*) #1

declare dso_local i32 @rdma_disconnect(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

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
