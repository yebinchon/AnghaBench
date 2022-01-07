; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_basic_test_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_basic_test_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.timeval = type { i32 }
%struct.bufferevent = type { i32 }
%struct.evhttp = type { i32 }

@HTTP_BIND_SSL = common dso_local global i32 0, align 4
@exit_base = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @http_basic_test_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_basic_test_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.basic_test_data*, align 8
  %6 = alloca %struct.timeval, align 4
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.basic_test_data*
  store %struct.basic_test_data* %15, %struct.basic_test_data** %5, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @HTTP_BIND_SSL, align 4
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %12, align 4
  %23 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %24 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %12, align 4
  %27 = call %struct.evhttp* @http_setup(i32* %10, i32 %25, i32 %26)
  store %struct.evhttp* %27, %struct.evhttp** %13, align 8
  %28 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %29 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* @exit_base, align 4
  store i32 0, i32* @test_ok, align 4
  %31 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @http_bind(%struct.evhttp* %31, i32* %11, i32 %32)
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  %36 = load i32, i32* @stdout, align 4
  %37 = call i32 @fprintf(i32 %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %38 = call i32 @exit(i32 1) #3
  unreachable

39:                                               ; preds = %21
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @http_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %43 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call %struct.bufferevent* @create_bev(i32 %44, i32 %45, i32 %46)
  store %struct.bufferevent* %47, %struct.bufferevent** %7, align 8
  %48 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %49 = load i32, i32* @http_readcb, align 4
  %50 = load i32, i32* @http_writecb, align 4
  %51 = load i32, i32* @http_errorcb, align 4
  %52 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %53 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bufferevent_setcb(%struct.bufferevent* %48, i32 %49, i32 %50, i32 %51, i32 %54)
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  %56 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 @strlen(i8* %58)
  %60 = call i32 @bufferevent_write(%struct.bufferevent* %56, i8* %57, i32 %59)
  %61 = call i32 @evutil_timerclear(%struct.timeval* %6)
  %62 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 100000, i32* %62, align 4
  %63 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %64 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @EV_TIMEOUT, align 4
  %67 = load i32, i32* @http_complete_write, align 4
  %68 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %69 = call i32 @event_base_once(i32 %65, i32 -1, i32 %66, i32 %67, %struct.bufferevent* %68, %struct.timeval* %6)
  %70 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %71 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @event_base_dispatch(i32 %72)
  %74 = load i32, i32* @test_ok, align 4
  %75 = icmp eq i32 %74, 3
  %76 = zext i1 %75 to i32
  %77 = call i32 @tt_assert(i32 %76)
  %78 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %79 = call i32 @bufferevent_free(%struct.bufferevent* %78)
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @evutil_closesocket(i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @http_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %85 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %4, align 4
  %89 = call %struct.bufferevent* @create_bev(i32 %86, i32 %87, i32 %88)
  store %struct.bufferevent* %89, %struct.bufferevent** %7, align 8
  %90 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %91 = load i32, i32* @http_readcb, align 4
  %92 = load i32, i32* @http_writecb, align 4
  %93 = load i32, i32* @http_errorcb, align 4
  %94 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %95 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @bufferevent_setcb(%struct.bufferevent* %90, i32 %91, i32 %92, i32 %93, i32 %96)
  store i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  %98 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %99 = load i8*, i8** %9, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = call i32 @strlen(i8* %100)
  %102 = call i32 @bufferevent_write(%struct.bufferevent* %98, i8* %99, i32 %101)
  %103 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %104 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @event_base_dispatch(i32 %105)
  %107 = load i32, i32* @test_ok, align 4
  %108 = icmp eq i32 %107, 5
  %109 = zext i1 %108 to i32
  %110 = call i32 @tt_assert(i32 %109)
  %111 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %112 = call i32 @bufferevent_free(%struct.bufferevent* %111)
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @evutil_closesocket(i32 %113)
  %115 = load i32, i32* %11, align 4
  %116 = call i32 @http_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %115)
  store i32 %116, i32* %8, align 4
  %117 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %118 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %4, align 4
  %122 = call %struct.bufferevent* @create_bev(i32 %119, i32 %120, i32 %121)
  store %struct.bufferevent* %122, %struct.bufferevent** %7, align 8
  %123 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %124 = load i32, i32* @http_readcb, align 4
  %125 = load i32, i32* @http_writecb, align 4
  %126 = load i32, i32* @http_errorcb, align 4
  %127 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %128 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @bufferevent_setcb(%struct.bufferevent* %123, i32 %124, i32 %125, i32 %126, i32 %129)
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  %131 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %132 = load i8*, i8** %9, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = call i32 @bufferevent_write(%struct.bufferevent* %131, i8* %132, i32 %134)
  %136 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %137 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @event_base_dispatch(i32 %138)
  %140 = load i32, i32* @test_ok, align 4
  %141 = icmp eq i32 %140, 7
  %142 = zext i1 %141 to i32
  %143 = call i32 @tt_assert(i32 %142)
  %144 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %145 = call i32 @evhttp_free(%struct.evhttp* %144)
  br label %146

146:                                              ; preds = %39
  %147 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %148 = icmp ne %struct.bufferevent* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %151 = call i32 @bufferevent_free(%struct.bufferevent* %150)
  br label %152

152:                                              ; preds = %149, %146
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

declare dso_local i32 @http_bind(%struct.evhttp*, i32*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @http_connect(i8*, i32) #1

declare dso_local %struct.bufferevent* @create_bev(i32, i32, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32, i32, i32) #1

declare dso_local i32 @bufferevent_write(%struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_base_once(i32, i32, i32, i32, %struct.bufferevent*, %struct.timeval*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
