; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_write_connectioncb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_write_connectioncb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i64, i32 }
%struct.evhttp_request = type { i32 }

@EVCON_WRITING = common dso_local global i64 0, align 8
@EVHTTP_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, i8*)* @evhttp_write_connectioncb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_write_connectioncb(%struct.evhttp_connection* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evhttp_request*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %7 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %6, i32 0, i32 1
  %8 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %7)
  store %struct.evhttp_request* %8, %struct.evhttp_request** %5, align 8
  %9 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %10 = icmp ne %struct.evhttp_request* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @EVUTIL_ASSERT(i32 %11)
  %13 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %14 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EVCON_WRITING, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @EVUTIL_ASSERT(i32 %18)
  %20 = load i32, i32* @EVHTTP_RESPONSE, align 4
  %21 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %22 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %24 = call i32 @evhttp_start_read_(%struct.evhttp_connection* %23)
  ret void
}

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evhttp_start_read_(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
