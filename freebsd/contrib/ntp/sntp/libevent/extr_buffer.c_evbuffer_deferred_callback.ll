; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_deferred_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_deferred_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_callback = type { i32 }
%struct.bufferevent = type { i32 }
%struct.evbuffer = type { %struct.bufferevent* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_callback*, i8*)* @evbuffer_deferred_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evbuffer_deferred_callback(%struct.event_callback* %0, i8* %1) #0 {
  %3 = alloca %struct.event_callback*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca %struct.evbuffer*, align 8
  store %struct.event_callback* %0, %struct.event_callback** %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %5, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.evbuffer*
  store %struct.evbuffer* %8, %struct.evbuffer** %6, align 8
  %9 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %10 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %9)
  %11 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %12 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %11, i32 0, i32 0
  %13 = load %struct.bufferevent*, %struct.bufferevent** %12, align 8
  store %struct.bufferevent* %13, %struct.bufferevent** %5, align 8
  %14 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %15 = call i32 @evbuffer_run_callbacks(%struct.evbuffer* %14, i32 1)
  %16 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %17 = call i32 @evbuffer_decref_and_unlock_(%struct.evbuffer* %16)
  %18 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %19 = icmp ne %struct.bufferevent* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %22 = call i32 @bufferevent_decref_(%struct.bufferevent* %21)
  br label %23

23:                                               ; preds = %20, %2
  ret void
}

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_run_callbacks(%struct.evbuffer*, i32) #1

declare dso_local i32 @evbuffer_decref_and_unlock_(%struct.evbuffer*) #1

declare dso_local i32 @bufferevent_decref_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
