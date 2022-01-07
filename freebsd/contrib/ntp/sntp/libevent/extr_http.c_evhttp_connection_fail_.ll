; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_connection_fail_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_connection_fail_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32, i32 }
%struct.evhttp_request = type { void (i32, i8*)*, void (%struct.evhttp_request*, i8*)*, i8* }

@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EVHTTP_CON_INCOMING = common dso_local global i32 0, align 4
@EVREQ_HTTP_REQUEST_CANCEL = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_connection_fail_(%struct.evhttp_connection* %0, i32 %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.evhttp_request*, align 8
  %7 = alloca void (%struct.evhttp_request*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca void (i32, i8*)*, align 8
  %10 = alloca i8*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = call i32 (...) @EVUTIL_SOCKET_ERROR()
  store i32 %11, i32* %5, align 4
  %12 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %13 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %12, i32 0, i32 1
  %14 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %13)
  store %struct.evhttp_request* %14, %struct.evhttp_request** %6, align 8
  %15 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %16 = icmp ne %struct.evhttp_request* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @EVUTIL_ASSERT(i32 %17)
  %19 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %20 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @EV_READ, align 4
  %23 = load i32, i32* @EV_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @bufferevent_disable(i32 %21, i32 %24)
  %26 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %27 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EVHTTP_CON_INCOMING, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %2
  %33 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @evhttp_connection_incoming_fail(%struct.evhttp_request* %33, i32 %34)
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %39 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %91

41:                                               ; preds = %2
  %42 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %43 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %42, i32 0, i32 0
  %44 = load void (i32, i8*)*, void (i32, i8*)** %43, align 8
  store void (i32, i8*)* %44, void (i32, i8*)** %9, align 8
  %45 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %46 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %45, i32 0, i32 2
  %47 = load i8*, i8** %46, align 8
  store i8* %47, i8** %10, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @EVREQ_HTTP_REQUEST_CANCEL, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %53 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %52, i32 0, i32 1
  %54 = load void (%struct.evhttp_request*, i8*)*, void (%struct.evhttp_request*, i8*)** %53, align 8
  store void (%struct.evhttp_request*, i8*)* %54, void (%struct.evhttp_request*, i8*)** %7, align 8
  %55 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %56 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %8, align 8
  br label %59

58:                                               ; preds = %41
  store void (%struct.evhttp_request*, i8*)* null, void (%struct.evhttp_request*, i8*)** %7, align 8
  store i8* null, i8** %8, align 8
  br label %59

59:                                               ; preds = %58, %51
  %60 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %61 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %60, i32 0, i32 1
  %62 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %63 = load i32, i32* @next, align 4
  %64 = call i32 @TAILQ_REMOVE(i32* %61, %struct.evhttp_request* %62, i32 %63)
  %65 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %66 = call i32 @evhttp_request_free(%struct.evhttp_request* %65)
  %67 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %68 = call i32 @evhttp_connection_reset_(%struct.evhttp_connection* %67)
  %69 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %70 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %69, i32 0, i32 1
  %71 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %70)
  %72 = icmp ne %struct.evhttp_request* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %59
  %74 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %75 = call i32 @evhttp_connection_connect_(%struct.evhttp_connection* %74)
  br label %76

76:                                               ; preds = %73, %59
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @EVUTIL_SET_SOCKET_ERROR(i32 %77)
  %79 = load void (i32, i8*)*, void (i32, i8*)** %9, align 8
  %80 = icmp ne void (i32, i8*)* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load void (i32, i8*)*, void (i32, i8*)** %9, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i8*, i8** %10, align 8
  call void %82(i32 %83, i8* %84)
  br label %85

85:                                               ; preds = %81, %76
  %86 = load void (%struct.evhttp_request*, i8*)*, void (%struct.evhttp_request*, i8*)** %7, align 8
  %87 = icmp ne void (%struct.evhttp_request*, i8*)* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load void (%struct.evhttp_request*, i8*)*, void (%struct.evhttp_request*, i8*)** %7, align 8
  %90 = load i8*, i8** %8, align 8
  call void %89(%struct.evhttp_request* null, i8* %90)
  br label %91

91:                                               ; preds = %40, %88, %85
  ret void
}

declare dso_local i32 @EVUTIL_SOCKET_ERROR(...) #1

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @bufferevent_disable(i32, i32) #1

declare dso_local i32 @evhttp_connection_incoming_fail(%struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_request_free(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_reset_(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_connection_connect_(%struct.evhttp_connection*) #1

declare dso_local i32 @EVUTIL_SET_SOCKET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
