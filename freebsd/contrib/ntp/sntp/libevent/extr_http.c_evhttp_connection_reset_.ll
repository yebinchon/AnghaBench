; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_connection_reset_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_connection_reset_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32, i32, i32, i32 (%struct.evhttp_connection*, i32)* }
%struct.evbuffer = type { i32 }

@EV_READ = common dso_local global i32 0, align 4
@EV_WRITE = common dso_local global i32 0, align 4
@EVUTIL_SHUT_WR = common dso_local global i32 0, align 4
@EVCON_DISCONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_connection_reset_(%struct.evhttp_connection* %0) #0 {
  %2 = alloca %struct.evhttp_connection*, align 8
  %3 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %2, align 8
  %4 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %5 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @EV_READ, align 4
  %8 = load i32, i32* @EV_WRITE, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @bufferevent_disable_hard_(i32 %6, i32 %9)
  %11 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %12 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %49

15:                                               ; preds = %1
  %16 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %17 = call i64 @evhttp_connected(%struct.evhttp_connection* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %21 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %20, i32 0, i32 4
  %22 = load i32 (%struct.evhttp_connection*, i32)*, i32 (%struct.evhttp_connection*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.evhttp_connection*, i32)* %22, null
  br i1 %23, label %24, label %33

24:                                               ; preds = %19
  %25 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %26 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %25, i32 0, i32 4
  %27 = load i32 (%struct.evhttp_connection*, i32)*, i32 (%struct.evhttp_connection*, i32)** %26, align 8
  %28 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %29 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %30 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 %27(%struct.evhttp_connection* %28, i32 %31)
  br label %33

33:                                               ; preds = %24, %19, %15
  %34 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %35 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @EVUTIL_SHUT_WR, align 4
  %38 = call i32 @shutdown(i32 %36, i32 %37)
  %39 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %40 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @evutil_closesocket(i32 %41)
  %43 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %44 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bufferevent_setfd(i32 %45, i32 -1)
  %47 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %48 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  br label %49

49:                                               ; preds = %33, %1
  %50 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %51 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.evbuffer* @bufferevent_get_output(i32 %52)
  store %struct.evbuffer* %53, %struct.evbuffer** %3, align 8
  %54 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %55 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %56 = call i32 @evbuffer_get_length(%struct.evbuffer* %55)
  %57 = call i32 @evbuffer_drain(%struct.evbuffer* %54, i32 %56)
  %58 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %59 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call %struct.evbuffer* @bufferevent_get_input(i32 %60)
  store %struct.evbuffer* %61, %struct.evbuffer** %3, align 8
  %62 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %63 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %64 = call i32 @evbuffer_get_length(%struct.evbuffer* %63)
  %65 = call i32 @evbuffer_drain(%struct.evbuffer* %62, i32 %64)
  %66 = load i32, i32* @EVCON_DISCONNECTED, align 4
  %67 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %68 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  ret void
}

declare dso_local i32 @bufferevent_disable_hard_(i32, i32) #1

declare dso_local i64 @evhttp_connected(%struct.evhttp_connection*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @evutil_closesocket(i32) #1

declare dso_local i32 @bufferevent_setfd(i32, i32) #1

declare dso_local %struct.evbuffer* @bufferevent_get_output(i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local %struct.evbuffer* @bufferevent_get_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
