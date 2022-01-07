; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_response_needs_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_response_needs_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, i64 }

@HTTP_NOCONTENT = common dso_local global i32 0, align 4
@HTTP_NOTMODIFIED = common dso_local global i32 0, align 4
@EVHTTP_REQ_HEAD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evhttp_request*)* @evhttp_response_needs_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evhttp_response_needs_body(%struct.evhttp_request* %0) #0 {
  %2 = alloca %struct.evhttp_request*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %2, align 8
  %3 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %4 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @HTTP_NOCONTENT, align 4
  %7 = icmp ne i32 %5, %6
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %10 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HTTP_NOTMODIFIED, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %30

14:                                               ; preds = %8
  %15 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %16 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %17, 100
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %21 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %22, 200
  br i1 %23, label %24, label %30

24:                                               ; preds = %19, %14
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %26 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @EVHTTP_REQ_HEAD, align 8
  %29 = icmp ne i64 %27, %28
  br label %30

30:                                               ; preds = %24, %19, %8, %1
  %31 = phi i1 [ false, %19 ], [ false, %8 ], [ false, %1 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
