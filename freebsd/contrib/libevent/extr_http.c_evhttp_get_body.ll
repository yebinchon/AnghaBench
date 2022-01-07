; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_get_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_get_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32 }
%struct.evhttp_request = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EVHTTP_REQUEST = common dso_local global i64 0, align 8
@EVCON_READING_BODY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@EVREQ_HTTP_INVALID_HEADER = common dso_local global i32 0, align 4
@EV_INT64_MAX = common dso_local global i32 0, align 4
@HTTP_EXPECTATIONFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_get_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_get_body(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i8*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %6 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %7 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EVHTTP_REQUEST, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %13 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @evhttp_method_may_have_body(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %19 = call i32 @evhttp_connection_done(%struct.evhttp_connection* %18)
  br label %114

20:                                               ; preds = %11, %2
  %21 = load i32, i32* @EVCON_READING_BODY, align 4
  %22 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %23 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %25 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @evhttp_find_header(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %27, i8** %5, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %20
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @evutil_ascii_strcasecmp(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %36 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %38 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %37, i32 0, i32 2
  store i32 -1, i32* %38, align 4
  br label %62

39:                                               ; preds = %30, %20
  %40 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %41 = call i32 @evhttp_get_body_length(%struct.evhttp_request* %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %45 = load i32, i32* @EVREQ_HTTP_INVALID_HEADER, align 4
  %46 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %44, i32 %45)
  br label %114

47:                                               ; preds = %39
  %48 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %49 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EVHTTP_REQUEST, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %55 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %60 = call i32 @evhttp_connection_done(%struct.evhttp_connection* %59)
  br label %114

61:                                               ; preds = %53, %47
  br label %62

62:                                               ; preds = %61, %34
  %63 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %64 = call i32 @evhttp_have_expect(%struct.evhttp_request* %63, i32 1)
  switch i32 %64, label %110 [
    i32 130, label %65
    i32 128, label %105
    i32 129, label %109
  ]

65:                                               ; preds = %62
  %66 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %67 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %65
  %71 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %72 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @EV_INT64_MAX, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %70
  %79 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %80 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %83 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %82, i32 0, i32 3
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %81, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %90 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %91 = call i32 @evhttp_lingering_fail(%struct.evhttp_connection* %89, %struct.evhttp_request* %90)
  br label %114

92:                                               ; preds = %78, %70
  br label %93

93:                                               ; preds = %92, %65
  %94 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %95 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bufferevent_get_input(i32 %96)
  %98 = call i32 @evbuffer_get_length(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %93
  %101 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %102 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %103 = call i32 @evhttp_send_continue(%struct.evhttp_connection* %101, %struct.evhttp_request* %102)
  br label %104

104:                                              ; preds = %100, %93
  br label %110

105:                                              ; preds = %62
  %106 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %107 = load i32, i32* @HTTP_EXPECTATIONFAILED, align 4
  %108 = call i32 @evhttp_send_error(%struct.evhttp_request* %106, i32 %107, i32* null)
  br label %114

109:                                              ; preds = %62
  br label %110

110:                                              ; preds = %62, %109, %104
  %111 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %112 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %113 = call i32 @evhttp_read_body(%struct.evhttp_connection* %111, %struct.evhttp_request* %112)
  br label %114

114:                                              ; preds = %110, %105, %88, %58, %43, %17
  ret void
}

declare dso_local i32 @evhttp_method_may_have_body(i32) #1

declare dso_local i32 @evhttp_connection_done(%struct.evhttp_connection*) #1

declare dso_local i8* @evhttp_find_header(i32, i8*) #1

declare dso_local i64 @evutil_ascii_strcasecmp(i8*, i8*) #1

declare dso_local i32 @evhttp_get_body_length(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_fail_(%struct.evhttp_connection*, i32) #1

declare dso_local i32 @evhttp_have_expect(%struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_lingering_fail(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evbuffer_get_length(i32) #1

declare dso_local i32 @bufferevent_get_input(i32) #1

declare dso_local i32 @evhttp_send_continue(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evhttp_send_error(%struct.evhttp_request*, i32, i32*) #1

declare dso_local i32 @evhttp_read_body(%struct.evhttp_connection*, %struct.evhttp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
