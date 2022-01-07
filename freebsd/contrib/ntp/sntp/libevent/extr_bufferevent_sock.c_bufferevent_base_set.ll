; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_sock.c_bufferevent_base_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_sock.c_bufferevent_base_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.bufferevent = type { i32, i32, %struct.event_base*, i32* }

@bufferevent_ops_socket = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_base_set(%struct.event_base* %0, %struct.bufferevent* %1) #0 {
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %3, align 8
  store %struct.bufferevent* %1, %struct.bufferevent** %4, align 8
  store i32 -1, i32* %5, align 4
  %6 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %7 = call i32 @BEV_LOCK(%struct.bufferevent* %6)
  %8 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %9 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, @bufferevent_ops_socket
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %29

13:                                               ; preds = %2
  %14 = load %struct.event_base*, %struct.event_base** %3, align 8
  %15 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %16 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %15, i32 0, i32 2
  store %struct.event_base* %14, %struct.event_base** %16, align 8
  %17 = load %struct.event_base*, %struct.event_base** %3, align 8
  %18 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %19 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %18, i32 0, i32 1
  %20 = call i32 @event_base_set(%struct.event_base* %17, i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %13
  br label %29

24:                                               ; preds = %13
  %25 = load %struct.event_base*, %struct.event_base** %3, align 8
  %26 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %27 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %26, i32 0, i32 0
  %28 = call i32 @event_base_set(%struct.event_base* %25, i32* %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %23, %12
  %30 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %31 = call i32 @BEV_UNLOCK(%struct.bufferevent* %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @event_base_set(%struct.event_base*, i32*) #1

declare dso_local i32 @BEV_UNLOCK(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
