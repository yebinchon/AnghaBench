; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_connection_reset_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_connection_reset_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32, i32, i32, i32, i32 (%struct.evhttp_connection*, i32)* }
%struct.evbuffer = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EVUTIL_SHUT_WR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"drain output\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"drain input\00", align 1
@EVHTTP_CON_READING_ERROR = common dso_local global i32 0, align 4
@EVCON_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_connection_reset_(%struct.evhttp_connection* %0) #0 {
  %2 = alloca %struct.evhttp_connection*, align 8
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i32, align 4
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %2, align 8
  %5 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %6 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @EV_READ, align 4
  %9 = load i32, i32* @EV_WRITE, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @bufferevent_disable_hard_(i32 %7, i32 %10)
  %12 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %13 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %18 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @bufferevent_getfd(i32 %19)
  %21 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %22 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %25 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %58

28:                                               ; preds = %23
  %29 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %30 = call i64 @evhttp_connected(%struct.evhttp_connection* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %34 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %33, i32 0, i32 5
  %35 = load i32 (%struct.evhttp_connection*, i32)*, i32 (%struct.evhttp_connection*, i32)** %34, align 8
  %36 = icmp ne i32 (%struct.evhttp_connection*, i32)* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %32
  %38 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %39 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %38, i32 0, i32 5
  %40 = load i32 (%struct.evhttp_connection*, i32)*, i32 (%struct.evhttp_connection*, i32)** %39, align 8
  %41 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %42 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %43 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 %40(%struct.evhttp_connection* %41, i32 %44)
  br label %46

46:                                               ; preds = %37, %32, %28
  %47 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %48 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @EVUTIL_SHUT_WR, align 4
  %51 = call i32 @shutdown(i32 %49, i32 %50)
  %52 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %53 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @evutil_closesocket(i32 %54)
  %56 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %57 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %56, i32 0, i32 0
  store i32 -1, i32* %57, align 8
  br label %58

58:                                               ; preds = %46, %23
  %59 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %60 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @bufferevent_setfd(i32 %61, i32 -1)
  %63 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %64 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.evbuffer* @bufferevent_get_output(i32 %65)
  store %struct.evbuffer* %66, %struct.evbuffer** %3, align 8
  %67 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %68 = call i32 @evbuffer_drain(%struct.evbuffer* %67, i32 -1)
  store i32 %68, i32* %4, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %58
  %73 = phi i1 [ false, %58 ], [ true, %71 ]
  %74 = zext i1 %73 to i32
  %75 = call i32 @EVUTIL_ASSERT(i32 %74)
  %76 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %77 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = call %struct.evbuffer* @bufferevent_get_input(i32 %78)
  store %struct.evbuffer* %79, %struct.evbuffer** %3, align 8
  %80 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %81 = call i32 @evbuffer_drain(%struct.evbuffer* %80, i32 -1)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %72
  %86 = phi i1 [ false, %72 ], [ true, %84 ]
  %87 = zext i1 %86 to i32
  %88 = call i32 @EVUTIL_ASSERT(i32 %87)
  %89 = load i32, i32* @EVHTTP_CON_READING_ERROR, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %92 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load i32, i32* @EVCON_DISCONNECTED, align 4
  %96 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %97 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  ret void
}

declare dso_local i32 @bufferevent_disable_hard_(i32, i32) #1

declare dso_local i32 @bufferevent_getfd(i32) #1

declare dso_local i64 @evhttp_connected(%struct.evhttp_connection*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @bufferevent_setfd(i32, i32) #1

declare dso_local %struct.evbuffer* @bufferevent_get_output(i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local %struct.evbuffer* @bufferevent_get_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
