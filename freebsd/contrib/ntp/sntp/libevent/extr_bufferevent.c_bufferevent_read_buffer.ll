; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent.c_bufferevent_read_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent.c_bufferevent_read_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.evbuffer = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_read_buffer(%struct.bufferevent* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %4, align 8
  %5 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @evbuffer_add_buffer(%struct.evbuffer* %5, i32 %8)
  ret i32 %9
}

declare dso_local i32 @evbuffer_add_buffer(%struct.evbuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
