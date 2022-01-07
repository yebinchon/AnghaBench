; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_get_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_get_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32 }
%struct.evhttp_request = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@EVHTTP_REQUEST = common dso_local global i64 0, align 8
@EVCON_READING_BODY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1
@EVREQ_HTTP_INVALID_HEADER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"Expect\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"100-continue\00", align 1
@EV_INT64_MAX = common dso_local global i64 0, align 8
@HTTP_ENTITYTOOLARGE = common dso_local global i32 0, align 4
@HTTP_EXPECTATIONFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_get_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_get_body(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %7 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %8 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @EVHTTP_REQUEST, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %14 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @evhttp_method_may_have_body(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %20 = call i32 @evhttp_connection_done(%struct.evhttp_connection* %19)
  br label %135

21:                                               ; preds = %12, %2
  %22 = load i32, i32* @EVCON_READING_BODY, align 4
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %24 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %26 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @evhttp_find_header(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i8* %28, i8** %5, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load i8*, i8** %5, align 8
  %33 = call i64 @evutil_ascii_strcasecmp(i8* %32, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %37 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %39 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %38, i32 0, i32 2
  store i32 -1, i32* %39, align 4
  br label %63

40:                                               ; preds = %31, %21
  %41 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %42 = call i32 @evhttp_get_body_length(%struct.evhttp_request* %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %46 = load i32, i32* @EVREQ_HTTP_INVALID_HEADER, align 4
  %47 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %45, i32 %46)
  br label %135

48:                                               ; preds = %40
  %49 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %50 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EVHTTP_REQUEST, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %56 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %61 = call i32 @evhttp_connection_done(%struct.evhttp_connection* %60)
  br label %135

62:                                               ; preds = %54, %48
  br label %63

63:                                               ; preds = %62, %35
  %64 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %65 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @EVHTTP_REQUEST, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %131

69:                                               ; preds = %63
  %70 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %71 = call i64 @REQ_VERSION_ATLEAST(%struct.evhttp_request* %70, i32 1, i32 1)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %131

73:                                               ; preds = %69
  %74 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %75 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 8
  %77 = call i8* @evhttp_find_header(i32 %76, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %130

80:                                               ; preds = %73
  %81 = load i8*, i8** %6, align 8
  %82 = call i64 @evutil_ascii_strcasecmp(i8* %81, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %125, label %84

84:                                               ; preds = %80
  %85 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %86 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %113

89:                                               ; preds = %84
  %90 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %91 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %90, i32 0, i32 3
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @EV_INT64_MAX, align 8
  %96 = icmp sle i64 %94, %95
  br i1 %96, label %97, label %112

97:                                               ; preds = %89
  %98 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %99 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %103 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %102, i32 0, i32 3
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %101, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %110 = load i32, i32* @HTTP_ENTITYTOOLARGE, align 4
  %111 = call i32 @evhttp_send_error(%struct.evhttp_request* %109, i32 %110, i32* null)
  br label %135

112:                                              ; preds = %97, %89
  br label %113

113:                                              ; preds = %112, %84
  %114 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %115 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @bufferevent_get_input(i32 %116)
  %118 = call i32 @evbuffer_get_length(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %113
  %121 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %122 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %123 = call i32 @evhttp_send_continue(%struct.evhttp_connection* %121, %struct.evhttp_request* %122)
  br label %124

124:                                              ; preds = %120, %113
  br label %129

125:                                              ; preds = %80
  %126 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %127 = load i32, i32* @HTTP_EXPECTATIONFAILED, align 4
  %128 = call i32 @evhttp_send_error(%struct.evhttp_request* %126, i32 %127, i32* null)
  br label %135

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %73
  br label %131

131:                                              ; preds = %130, %69, %63
  %132 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %133 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %134 = call i32 @evhttp_read_body(%struct.evhttp_connection* %132, %struct.evhttp_request* %133)
  br label %135

135:                                              ; preds = %131, %125, %108, %59, %44, %18
  ret void
}

declare dso_local i32 @evhttp_method_may_have_body(i32) #1

declare dso_local i32 @evhttp_connection_done(%struct.evhttp_connection*) #1

declare dso_local i8* @evhttp_find_header(i32, i8*) #1

declare dso_local i64 @evutil_ascii_strcasecmp(i8*, i8*) #1

declare dso_local i32 @evhttp_get_body_length(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_fail_(%struct.evhttp_connection*, i32) #1

declare dso_local i64 @REQ_VERSION_ATLEAST(%struct.evhttp_request*, i32, i32) #1

declare dso_local i32 @evhttp_send_error(%struct.evhttp_request*, i32, i32*) #1

declare dso_local i32 @evbuffer_get_length(i32) #1

declare dso_local i32 @bufferevent_get_input(i32) #1

declare dso_local i32 @evhttp_send_continue(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evhttp_read_body(%struct.evhttp_connection*, %struct.evhttp_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
