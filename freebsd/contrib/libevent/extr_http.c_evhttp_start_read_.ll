; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_start_read_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_start_read_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32, i32, i32 }

@EV_WRITE = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EVCON_READING_FIRSTLINE = common dso_local global i32 0, align 4
@evhttp_read_cb = common dso_local global i32 0, align 4
@evhttp_write_cb = common dso_local global i32 0, align 4
@evhttp_error_cb = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_start_read_(%struct.evhttp_connection* %0) #0 {
  %2 = alloca %struct.evhttp_connection*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %2, align 8
  %3 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %4 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @EV_WRITE, align 4
  %7 = call i32 @bufferevent_disable(i32 %5, i32 %6)
  %8 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %9 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EV_READ, align 4
  %12 = call i32 @bufferevent_enable(i32 %10, i32 %11)
  %13 = load i32, i32* @EVCON_READING_FIRSTLINE, align 4
  %14 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %15 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %17 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @evhttp_read_cb, align 4
  %20 = load i32, i32* @evhttp_write_cb, align 4
  %21 = load i32, i32* @evhttp_error_cb, align 4
  %22 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %23 = call i32 @bufferevent_setcb(i32 %18, i32 %19, i32 %20, i32 %21, %struct.evhttp_connection* %22)
  %24 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %25 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bufferevent_get_input(i32 %26)
  %28 = call i64 @evbuffer_get_length(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %32 = call i32 @get_deferred_queue(%struct.evhttp_connection* %31)
  %33 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %34 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %33, i32 0, i32 0
  %35 = call i32 @event_deferred_cb_schedule_(i32 %32, i32* %34)
  br label %36

36:                                               ; preds = %30, %1
  ret void
}

declare dso_local i32 @bufferevent_disable(i32, i32) #1

declare dso_local i32 @bufferevent_enable(i32, i32) #1

declare dso_local i32 @bufferevent_setcb(i32, i32, i32, i32, %struct.evhttp_connection*) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @bufferevent_get_input(i32) #1

declare dso_local i32 @event_deferred_cb_schedule_(i32, i32*) #1

declare dso_local i32 @get_deferred_queue(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
