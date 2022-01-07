; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_reply_done_closure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evrpc.c_evrpc_reply_done_closure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evrpc_request_wrapper = type { i32 (i32, i32)*, i32, i32, i32, i32 (%struct.evrpc_status*, i32, i32, i32)*, i32 (i32)*, %struct.evrpc_pool*, %struct.evhttp_request* }
%struct.evrpc_status = type { i32, %struct.evhttp_request* }
%struct.evrpc_pool = type { i32 }
%struct.evhttp_request = type { i32 }

@EVRPC_STATUS_ERR_TIMEOUT = common dso_local global i32 0, align 4
@EVRPC_TERMINATE = common dso_local global i32 0, align 4
@EVRPC_STATUS_ERR_HOOKABORTED = common dso_local global i32 0, align 4
@EVRPC_STATUS_ERR_BADPAYLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @evrpc_reply_done_closure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evrpc_reply_done_closure(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evrpc_request_wrapper*, align 8
  %6 = alloca %struct.evhttp_request*, align 8
  %7 = alloca %struct.evrpc_pool*, align 8
  %8 = alloca %struct.evrpc_status, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.evrpc_request_wrapper*
  store %struct.evrpc_request_wrapper* %11, %struct.evrpc_request_wrapper** %5, align 8
  %12 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %13 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %12, i32 0, i32 7
  %14 = load %struct.evhttp_request*, %struct.evhttp_request** %13, align 8
  store %struct.evhttp_request* %14, %struct.evhttp_request** %6, align 8
  %15 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %16 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %15, i32 0, i32 6
  %17 = load %struct.evrpc_pool*, %struct.evrpc_pool** %16, align 8
  store %struct.evrpc_pool* %17, %struct.evrpc_pool** %7, align 8
  store i32 -1, i32* %9, align 4
  %18 = call i32 @memset(%struct.evrpc_status* %8, i32 0, i32 16)
  %19 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %20 = getelementptr inbounds %struct.evrpc_status, %struct.evrpc_status* %8, i32 0, i32 1
  store %struct.evhttp_request* %19, %struct.evhttp_request** %20, align 8
  %21 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %22 = icmp eq %struct.evhttp_request* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EVRPC_STATUS_ERR_TIMEOUT, align 4
  %25 = getelementptr inbounds %struct.evrpc_status, %struct.evrpc_status* %8, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  br label %51

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @EVRPC_TERMINATE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EVRPC_STATUS_ERR_HOOKABORTED, align 4
  %32 = getelementptr inbounds %struct.evrpc_status, %struct.evrpc_status* %8, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  br label %50

33:                                               ; preds = %26
  %34 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %35 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %34, i32 0, i32 0
  %36 = load i32 (i32, i32)*, i32 (i32, i32)** %35, align 8
  %37 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %38 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %41 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 %36(i32 %39, i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @EVRPC_STATUS_ERR_BADPAYLOAD, align 4
  %48 = getelementptr inbounds %struct.evrpc_status, %struct.evrpc_status* %8, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  br label %49

49:                                               ; preds = %46, %33
  br label %50

50:                                               ; preds = %49, %30
  br label %51

51:                                               ; preds = %50, %23
  %52 = load i32, i32* %9, align 4
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %62

54:                                               ; preds = %51
  %55 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %56 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %55, i32 0, i32 5
  %57 = load i32 (i32)*, i32 (i32)** %56, align 8
  %58 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %59 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 %57(i32 %60)
  br label %62

62:                                               ; preds = %54, %51
  %63 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %64 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %63, i32 0, i32 4
  %65 = load i32 (%struct.evrpc_status*, i32, i32, i32)*, i32 (%struct.evrpc_status*, i32, i32, i32)** %64, align 8
  %66 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %67 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %70 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %73 = getelementptr inbounds %struct.evrpc_request_wrapper, %struct.evrpc_request_wrapper* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 %65(%struct.evrpc_status* %8, i32 %68, i32 %71, i32 %74)
  %76 = load %struct.evrpc_request_wrapper*, %struct.evrpc_request_wrapper** %5, align 8
  %77 = call i32 @evrpc_request_wrapper_free(%struct.evrpc_request_wrapper* %76)
  %78 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %79 = icmp ne %struct.evhttp_request* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %62
  %81 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %82 = call i64 @evhttp_request_is_owned(%struct.evhttp_request* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %86 = call i32 @evhttp_request_free(%struct.evhttp_request* %85)
  br label %87

87:                                               ; preds = %84, %80, %62
  %88 = load %struct.evrpc_pool*, %struct.evrpc_pool** %7, align 8
  %89 = call i32 @evrpc_pool_schedule(%struct.evrpc_pool* %88)
  ret void
}

declare dso_local i32 @memset(%struct.evrpc_status*, i32, i32) #1

declare dso_local i32 @evrpc_request_wrapper_free(%struct.evrpc_request_wrapper*) #1

declare dso_local i64 @evhttp_request_is_owned(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_request_free(%struct.evhttp_request*) #1

declare dso_local i32 @evrpc_pool_schedule(%struct.evrpc_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
