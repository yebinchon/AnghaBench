; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_basic_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_basic_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.timeval = type { i32 }
%struct.bufferevent = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@http = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"FAILED (bind)\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_readcb = common dso_local global i32 0, align 4
@http_writecb = common dso_local global i32 0, align 4
@http_errorcb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"GET /test HTTP/1.1\0D\0AHost: some\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@http_complete_write = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"GET /test HTTP/1.1\0D\0AHost: somehost\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"GET http://somehost.net/test HTTP/1.1\0D\0AHost: somehost\0D\0AConnection: close\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_basic_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_basic_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca %struct.timeval, align 4
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.basic_test_data*
  store %struct.basic_test_data* %11, %struct.basic_test_data** %3, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* @test_ok, align 4
  %12 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %13 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @http_setup(i32* %8, i32 %14, i32 0)
  store i32 %15, i32* @http, align 4
  %16 = load i32, i32* @http, align 4
  %17 = call i32 @http_bind(i32 %16, i32* %9, i32 0)
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %1
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @http_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %27 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call %struct.bufferevent* @bufferevent_socket_new(i32 %28, i32 %29, i32 0)
  store %struct.bufferevent* %30, %struct.bufferevent** %5, align 8
  %31 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %32 = load i32, i32* @http_readcb, align 4
  %33 = load i32, i32* @http_writecb, align 4
  %34 = load i32, i32* @http_errorcb, align 4
  %35 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %36 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bufferevent_setcb(%struct.bufferevent* %31, i32 %32, i32 %33, i32 %34, i32 %37)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %7, align 8
  %39 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @strlen(i8* %41)
  %43 = call i32 @bufferevent_write(%struct.bufferevent* %39, i8* %40, i32 %42)
  %44 = call i32 @evutil_timerclear(%struct.timeval* %4)
  %45 = getelementptr inbounds %struct.timeval, %struct.timeval* %4, i32 0, i32 0
  store i32 10000, i32* %45, align 4
  %46 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %47 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @EV_TIMEOUT, align 4
  %50 = load i32, i32* @http_complete_write, align 4
  %51 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %52 = call i32 @event_base_once(i32 %48, i32 -1, i32 %49, i32 %50, %struct.bufferevent* %51, %struct.timeval* %4)
  %53 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %54 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @event_base_dispatch(i32 %55)
  %57 = load i32, i32* @test_ok, align 4
  %58 = icmp eq i32 %57, 3
  %59 = zext i1 %58 to i32
  %60 = call i32 @tt_assert(i32 %59)
  %61 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %62 = call i32 @bufferevent_free(%struct.bufferevent* %61)
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @evutil_closesocket(i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @http_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %68 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %6, align 4
  %71 = call %struct.bufferevent* @bufferevent_socket_new(i32 %69, i32 %70, i32 0)
  store %struct.bufferevent* %71, %struct.bufferevent** %5, align 8
  %72 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %73 = load i32, i32* @http_readcb, align 4
  %74 = load i32, i32* @http_writecb, align 4
  %75 = load i32, i32* @http_errorcb, align 4
  %76 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %77 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bufferevent_setcb(%struct.bufferevent* %72, i32 %73, i32 %74, i32 %75, i32 %78)
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8** %7, align 8
  %80 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %81 = load i8*, i8** %7, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = call i32 @strlen(i8* %82)
  %84 = call i32 @bufferevent_write(%struct.bufferevent* %80, i8* %81, i32 %83)
  %85 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %86 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @event_base_dispatch(i32 %87)
  %89 = load i32, i32* @test_ok, align 4
  %90 = icmp eq i32 %89, 5
  %91 = zext i1 %90 to i32
  %92 = call i32 @tt_assert(i32 %91)
  %93 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %94 = call i32 @bufferevent_free(%struct.bufferevent* %93)
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @evutil_closesocket(i32 %95)
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @http_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  store i32 %98, i32* %6, align 4
  %99 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %100 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %6, align 4
  %103 = call %struct.bufferevent* @bufferevent_socket_new(i32 %101, i32 %102, i32 0)
  store %struct.bufferevent* %103, %struct.bufferevent** %5, align 8
  %104 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %105 = load i32, i32* @http_readcb, align 4
  %106 = load i32, i32* @http_writecb, align 4
  %107 = load i32, i32* @http_errorcb, align 4
  %108 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %109 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @bufferevent_setcb(%struct.bufferevent* %104, i32 %105, i32 %106, i32 %107, i32 %110)
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i8** %7, align 8
  %112 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %113 = load i8*, i8** %7, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = call i32 @strlen(i8* %114)
  %116 = call i32 @bufferevent_write(%struct.bufferevent* %112, i8* %113, i32 %115)
  %117 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %118 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @event_base_dispatch(i32 %119)
  %121 = load i32, i32* @test_ok, align 4
  %122 = icmp eq i32 %121, 7
  %123 = zext i1 %122 to i32
  %124 = call i32 @tt_assert(i32 %123)
  %125 = load i32, i32* @http, align 4
  %126 = call i32 @evhttp_free(i32 %125)
  br label %127

127:                                              ; preds = %23
  %128 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %129 = icmp ne %struct.bufferevent* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %132 = call i32 @bufferevent_free(%struct.bufferevent* %131)
  br label %133

133:                                              ; preds = %130, %127
  ret void
}

declare dso_local i32 @http_setup(i32*, i32, i32) #1

declare dso_local i32 @http_bind(i32, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @http_connect(i8*, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_socket_new(i32, i32, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32, i32, i32) #1

declare dso_local i32 @bufferevent_write(%struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_base_once(i32, i32, i32, i32, %struct.bufferevent*, %struct.timeval*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @evhttp_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
