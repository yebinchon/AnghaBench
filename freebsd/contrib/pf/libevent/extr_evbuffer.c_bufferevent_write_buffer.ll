; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_write_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_write_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.evbuffer = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_write_buffer(%struct.bufferevent* %0, %struct.evbuffer* %1) #0 {
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca i32, align 4
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %4, align 8
  %6 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %7 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %8 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %11 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bufferevent_write(%struct.bufferevent* %6, i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %18 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %19 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @evbuffer_drain(%struct.evbuffer* %17, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @bufferevent_write(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @evbuffer_drain(%struct.evbuffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
