; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_schedule_request_closure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_schedule_request_closure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_request_wrapper = type { i32, i32, i32, i32 (%struct.evrpc_status*, i32, i32, i32)*, i32, i32, %struct.evrpc_pool*, %struct.evhttp_request*, %struct.evhttp_connection* }
%struct.evrpc_status = type { i32 }
%struct.evrpc_pool = type { i64 }
%struct.evhttp_request = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.timeval = type { i64 }

@EVRPC_TERMINATE = common dso_local global i32 0, align 4
@EVHTTP_REQ_POST = common dso_local global i32 0, align 4
@EVRPC_STATUS_ERR_UNSTARTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @evrpc_schedule_request_closure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evrpc_schedule_request_closure(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evrpc_request_wrapper*, align 8
  %6 = alloca %struct.evhttp_connection*, align 8
  %7 = alloca %struct.evhttp_request*, align 8
  %8 = alloca %struct.evrpc_pool*, align 8
  %9 = alloca %struct.evrpc_status, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.timeval, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.evrpc_request_wrapper*
  store %struct.evrpc_request_wrapper* %14, %struct.evrpc_request_wrapper** %5, align 8
  %15 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %16 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %15, i32 0, i32 8
  %17 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  store %struct.evhttp_connection* %17, %struct.evhttp_connection** %6, align 8
  %18 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %19 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %18, i32 0, i32 7
  %20 = load %struct.evhttp_request*, %struct.evhttp_request** %19, align 8
  store %struct.evhttp_request* %20, %struct.evhttp_request** %7, align 8
  %21 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %22 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %21, i32 0, i32 6
  %23 = load %struct.evrpc_pool*, %struct.evrpc_pool** %22, align 8
  store %struct.evrpc_pool* %23, %struct.evrpc_pool** %8, align 8
  store i8* null, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @EVRPC_TERMINATE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %62

28:                                               ; preds = %2
  %29 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %30 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @evrpc_construct_uri(i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i8*, i8** %10, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %62

36:                                               ; preds = %28
  %37 = load %struct.evrpc_pool*, %struct.evrpc_pool** %8, align 8
  %38 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = call i32 @evutil_timerclear(%struct.timeval* %12)
  %43 = load %struct.evrpc_pool*, %struct.evrpc_pool** %8, align 8
  %44 = getelementptr inbounds %struct.evrpc_pool, %struct.evrpc_pool* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  store i64 %45, i64* %46, align 8
  %47 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %48 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %47, i32 0, i32 4
  %49 = call i32 @evtimer_add(i32* %48, %struct.timeval* %12)
  br label %50

50:                                               ; preds = %41, %36
  %51 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %52 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %53 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %54 = load i8*, i8** %10, align 8
  %55 = call i32 @evhttp_make_request(%struct.evhttp_connection* %51, %struct.evhttp_request* %52, i32 %53, i8* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i8*, i8** %10, align 8
  %57 = call i32 @mm_free(i8* %56)
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %50
  br label %62

61:                                               ; preds = %50
  br label %81

62:                                               ; preds = %60, %35, %27
  %63 = call i32 @memset(%struct.evrpc_status* %9, i32 0, i32 4)
  %64 = load i32, i32* @EVRPC_STATUS_ERR_UNSTARTED, align 4
  %65 = getelementptr inbounds %struct.evrpc_status, %struct.evrpc_status* %9, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %67 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %66, i32 0, i32 3
  %68 = load i32 (%struct.evrpc_status*, i32, i32, i32)*, i32 (%struct.evrpc_status*, i32, i32, i32)** %67, align 8
  %69 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %70 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %73 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %76 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 %68(%struct.evrpc_status* %9, i32 %71, i32 %74, i32 %77)
  %79 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %80 = call i32 @evrpc_request_wrapper_free(%struct.evrpc_request_wrapper* %79)
  br label %81

81:                                               ; preds = %62, %61
  ret void
}

declare dso_local i8* @evrpc_construct_uri(i32) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @evtimer_add(i32*, %struct.timeval*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @mm_free(i8*) #1

declare dso_local i32 @memset(%struct.evrpc_status*, i32, i32) #1

declare dso_local i32 @evrpc_request_wrapper_free(%struct.evrpc_request_wrapper*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
