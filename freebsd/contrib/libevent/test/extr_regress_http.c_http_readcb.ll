; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_readcb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_readcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.bufferevent = type { i32 }
%struct.evhttp_request = type { i32 }

@BASIC_REQUEST_BODY = common dso_local global i8* null, align 8
@ALL_DATA_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@test_ok = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@exit_base = common dso_local global %struct.event_base* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"No way to exit loop!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*, i8*)* @http_readcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_readcb(%struct.bufferevent* %0, i8* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca %struct.evhttp_request*, align 8
  %8 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** @BASIC_REQUEST_BODY, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.event_base*
  store %struct.event_base* %11, %struct.event_base** %6, align 8
  %12 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %13 = call i32 @bufferevent_get_input(%struct.bufferevent* %12)
  %14 = load i8*, i8** %5, align 8
  %15 = call i64 @evbuffer_contains(i32 %13, i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %71

17:                                               ; preds = %2
  %18 = call %struct.evhttp_request* @evhttp_request_new(i32* null, i32* null)
  store %struct.evhttp_request* %18, %struct.evhttp_request** %7, align 8
  %19 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %20 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %21 = call i32 @bufferevent_get_input(%struct.bufferevent* %20)
  %22 = call i32 @evhttp_parse_firstline_(%struct.evhttp_request* %19, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @ALL_DATA_READ, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  br label %48

27:                                               ; preds = %17
  %28 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %29 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %30 = call i32 @bufferevent_get_input(%struct.bufferevent* %29)
  %31 = call i32 @evhttp_parse_headers_(%struct.evhttp_request* %28, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ALL_DATA_READ, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %48

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %36
  %40 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %41 = call i32 @evhttp_request_get_input_headers(%struct.evhttp_request* %40)
  %42 = call i32* @evhttp_find_header(i32 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @test_ok, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* @test_ok, align 4
  br label %47

47:                                               ; preds = %44, %39, %36
  br label %48

48:                                               ; preds = %47, %35, %26
  %49 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %50 = call i32 @evhttp_request_free(%struct.evhttp_request* %49)
  %51 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %52 = load i32, i32* @EV_READ, align 4
  %53 = call i32 @bufferevent_disable(%struct.bufferevent* %51, i32 %52)
  %54 = load %struct.event_base*, %struct.event_base** @exit_base, align 8
  %55 = icmp ne %struct.event_base* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load %struct.event_base*, %struct.event_base** @exit_base, align 8
  %58 = call i32 @event_base_loopexit(%struct.event_base* %57, i32* null)
  br label %70

59:                                               ; preds = %48
  %60 = load %struct.event_base*, %struct.event_base** %6, align 8
  %61 = icmp ne %struct.event_base* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.event_base*, %struct.event_base** %6, align 8
  %64 = call i32 @event_base_loopexit(%struct.event_base* %63, i32* null)
  br label %69

65:                                               ; preds = %59
  %66 = load i32, i32* @stderr, align 4
  %67 = call i32 @fprintf(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %68 = call i32 @exit(i32 1) #3
  unreachable

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %56
  br label %71

71:                                               ; preds = %70, %2
  ret void
}

declare dso_local i64 @evbuffer_contains(i32, i8*) #1

declare dso_local i32 @bufferevent_get_input(%struct.bufferevent*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32*, i32*) #1

declare dso_local i32 @evhttp_parse_firstline_(%struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_parse_headers_(%struct.evhttp_request*, i32) #1

declare dso_local i32* @evhttp_find_header(i32, i8*) #1

declare dso_local i32 @evhttp_request_get_input_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_request_free(%struct.evhttp_request*) #1

declare dso_local i32 @bufferevent_disable(%struct.bufferevent*, i32) #1

declare dso_local i32 @event_base_loopexit(%struct.event_base*, i32*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
