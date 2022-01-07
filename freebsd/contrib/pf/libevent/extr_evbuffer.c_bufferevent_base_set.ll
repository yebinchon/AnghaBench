; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_base_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/pf/libevent/extr_evbuffer.c_bufferevent_base_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.bufferevent = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_base_set(%struct.event_base* %0, %struct.bufferevent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_base*, align 8
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %4, align 8
  store %struct.bufferevent* %1, %struct.bufferevent** %5, align 8
  %7 = load %struct.event_base*, %struct.event_base** %4, align 8
  %8 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %9 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %8, i32 0, i32 1
  %10 = call i32 @event_base_set(%struct.event_base* %7, i32* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %3, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load %struct.event_base*, %struct.event_base** %4, align 8
  %17 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %18 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %17, i32 0, i32 0
  %19 = call i32 @event_base_set(%struct.event_base* %16, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %15, %13
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @event_base_set(%struct.event_base*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
