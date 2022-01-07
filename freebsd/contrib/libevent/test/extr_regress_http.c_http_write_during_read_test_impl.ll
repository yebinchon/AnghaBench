; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_write_during_read_test_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_write_during_read_test_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.bufferevent = type { i32 }
%struct.timeval = type { i32 }
%struct.evhttp = type { i32 }

@HTTP_BIND_SSL = common dso_local global i32 0, align 4
@test_ok = common dso_local global i64 0, align 8
@exit_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@EV_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"GET /large HTTP/1.1\0D\0AHost: somehost\0D\0A\0D\0A\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@http_write_during_read = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @http_write_during_read_test_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_write_during_read_test_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.basic_test_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.basic_test_data*
  store %struct.basic_test_data* %13, %struct.basic_test_data** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.bufferevent* null, %struct.bufferevent** %7, align 8
  %14 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %15 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @HTTP_BIND_SSL, align 4
  br label %22

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i32 [ %20, %19 ], [ 0, %21 ]
  %24 = call %struct.evhttp* @http_setup(i32* %6, i32 %16, i32 %23)
  store %struct.evhttp* %24, %struct.evhttp** %11, align 8
  store i64 0, i64* @test_ok, align 8
  %25 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %26 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* @exit_base, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @http_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %31 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.bufferevent* @create_bev(i32 %32, i32 %33, i32 0)
  store %struct.bufferevent* %34, %struct.bufferevent** %7, align 8
  %35 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %36 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %37 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bufferevent_setcb(%struct.bufferevent* %35, i32* null, i32* null, i32* null, i32 %38)
  %40 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %41 = load i32, i32* @EV_READ, align 4
  %42 = call i32 @bufferevent_disable(%struct.bufferevent* %40, i32 %41)
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %43 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = load i8*, i8** %10, align 8
  %46 = call i32 @strlen(i8* %45)
  %47 = call i32 @bufferevent_write(%struct.bufferevent* %43, i8* %44, i32 %46)
  %48 = call i32 @evutil_timerclear(%struct.timeval* %8)
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 10000, i32* %49, align 4
  %50 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %51 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @EV_TIMEOUT, align 4
  %54 = load i32, i32* @http_write_during_read, align 4
  %55 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %56 = call i32 @event_base_once(i32 %52, i32 -1, i32 %53, i32 %54, %struct.bufferevent* %55, %struct.timeval* %8)
  %57 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %58 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @event_base_dispatch(i32 %59)
  %61 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %62 = icmp ne %struct.bufferevent* %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %22
  %64 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %65 = call i32 @bufferevent_free(%struct.bufferevent* %64)
  br label %66

66:                                               ; preds = %63, %22
  %67 = load %struct.evhttp*, %struct.evhttp** %11, align 8
  %68 = icmp ne %struct.evhttp* %67, null
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.evhttp*, %struct.evhttp** %11, align 8
  %71 = call i32 @evhttp_free(%struct.evhttp* %70)
  br label %72

72:                                               ; preds = %69, %66
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

declare dso_local i32 @http_connect(i8*, i32) #1

declare dso_local %struct.bufferevent* @create_bev(i32, i32, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @bufferevent_write(%struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_base_once(i32, i32, i32, i32, %struct.bufferevent*, %struct.timeval*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
