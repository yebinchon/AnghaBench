; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_cq_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_rping.c_cq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rping_cb = type { %struct.ibv_cq*, i32 }
%struct.ibv_cq = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"cq_thread started.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to get cq event!\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Unknown CQ!\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to set notify!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @cq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cq_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rping_cb*, align 8
  %4 = alloca %struct.ibv_cq*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.rping_cb*
  store %struct.rping_cb* %8, %struct.rping_cb** %3, align 8
  %9 = call i32 @DEBUG_LOG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %1, %54
  %11 = call i32 (...) @pthread_testcancel()
  %12 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %13 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ibv_get_cq_event(i32 %14, %struct.ibv_cq** %4, i8** %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %21 = call i32 @pthread_exit(i32* null)
  br label %22

22:                                               ; preds = %18, %10
  %23 = load %struct.ibv_cq*, %struct.ibv_cq** %4, align 8
  %24 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %25 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %24, i32 0, i32 0
  %26 = load %struct.ibv_cq*, %struct.ibv_cq** %25, align 8
  %27 = icmp ne %struct.ibv_cq* %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @stderr, align 4
  %30 = call i32 @fprintf(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = call i32 @pthread_exit(i32* null)
  br label %32

32:                                               ; preds = %28, %22
  %33 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %34 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %33, i32 0, i32 0
  %35 = load %struct.ibv_cq*, %struct.ibv_cq** %34, align 8
  %36 = call i32 @ibv_req_notify_cq(%struct.ibv_cq* %35, i32 0)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @stderr, align 4
  %41 = call i32 @fprintf(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %42 = call i32 @pthread_exit(i32* null)
  br label %43

43:                                               ; preds = %39, %32
  %44 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %45 = call i32 @rping_cq_event_handler(%struct.rping_cb* %44)
  store i32 %45, i32* %6, align 4
  %46 = load %struct.rping_cb*, %struct.rping_cb** %3, align 8
  %47 = getelementptr inbounds %struct.rping_cb, %struct.rping_cb* %46, i32 0, i32 0
  %48 = load %struct.ibv_cq*, %struct.ibv_cq** %47, align 8
  %49 = call i32 @ibv_ack_cq_events(%struct.ibv_cq* %48, i32 1)
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = call i32 @pthread_exit(i32* null)
  br label %54

54:                                               ; preds = %52, %43
  br label %10
}

declare dso_local i32 @DEBUG_LOG(i8*) #1

declare dso_local i32 @pthread_testcancel(...) #1

declare dso_local i32 @ibv_get_cq_event(i32, %struct.ibv_cq**, i8**) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @pthread_exit(i32*) #1

declare dso_local i32 @ibv_req_notify_cq(%struct.ibv_cq*, i32) #1

declare dso_local i32 @rping_cq_event_handler(%struct.rping_cb*) #1

declare dso_local i32 @ibv_ack_cq_events(%struct.ibv_cq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
