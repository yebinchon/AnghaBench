; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_browser-android.c_http_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_browser-android.c_http_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_request = type { i32 }
%struct.browser_data = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Browser response received: %s\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"/osu/\00", align 1
@browser_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.http_request*)* @http_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_req(i8* %0, %struct.http_request* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.http_request*, align 8
  %5 = alloca %struct.browser_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.http_request* %1, %struct.http_request** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.browser_data*
  store %struct.browser_data* %10, %struct.browser_data** %5, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.http_request*, %struct.http_request** %4, align 8
  %12 = call i8* @http_request_get_uri(%struct.http_request* %11)
  store i8* %12, i8** %7, align 8
  %13 = load i32, i32* @MSG_INFO, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @wpa_printf(i32 %13, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load i8*, i8** %7, align 8
  %17 = call i64 @os_strcmp(i8* %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load %struct.browser_data*, %struct.browser_data** %5, align 8
  %21 = getelementptr inbounds %struct.browser_data, %struct.browser_data* %20, i32 0, i32 0
  store i32 1, i32* %21, align 4
  store i32 1, i32* %8, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @os_strncmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load i8*, i8** %7, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 5
  %29 = call i32 @atoi(i8* %28)
  %30 = load %struct.browser_data*, %struct.browser_data** %5, align 8
  %31 = getelementptr inbounds %struct.browser_data, %struct.browser_data* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 1, i32* %8, align 4
  br label %32

32:                                               ; preds = %26, %22
  br label %33

33:                                               ; preds = %32, %19
  %34 = call %struct.wpabuf* @wpabuf_alloc(i32 1)
  store %struct.wpabuf* %34, %struct.wpabuf** %6, align 8
  %35 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %36 = icmp eq %struct.wpabuf* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load %struct.http_request*, %struct.http_request** %4, align 8
  %39 = call i32 @http_request_deinit(%struct.http_request* %38)
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = call i32 (...) @eloop_terminate()
  br label %44

44:                                               ; preds = %42, %37
  br label %57

45:                                               ; preds = %33
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load i32, i32* @browser_timeout, align 4
  %50 = call i32 @eloop_cancel_timeout(i32 %49, i32* null, i32* null)
  %51 = load i32, i32* @browser_timeout, align 4
  %52 = call i32 @eloop_register_timeout(i32 0, i32 500000, i32 %51, %struct.browser_data** %5, i32* null)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load %struct.http_request*, %struct.http_request** %4, align 8
  %55 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %56 = call i32 @http_request_send_and_deinit(%struct.http_request* %54, %struct.wpabuf* %55)
  br label %57

57:                                               ; preds = %53, %44
  ret void
}

declare dso_local i8* @http_request_get_uri(%struct.http_request*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i64 @os_strcmp(i8*, i8*) #1

declare dso_local i64 @os_strncmp(i8*, i8*, i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @http_request_deinit(%struct.http_request*) #1

declare dso_local i32 @eloop_terminate(...) #1

declare dso_local i32 @eloop_cancel_timeout(i32, i32*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.browser_data**, i32*) #1

declare dso_local i32 @http_request_send_and_deinit(%struct.http_request*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
