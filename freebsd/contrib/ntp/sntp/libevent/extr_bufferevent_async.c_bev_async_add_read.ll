; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_bev_async_add_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_bev_async_add_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_async = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.bufferevent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent_async*)* @bev_async_add_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bev_async_add_read(%struct.bufferevent_async* %0) #0 {
  %2 = alloca %struct.bufferevent_async*, align 8
  %3 = alloca %struct.bufferevent*, align 8
  store %struct.bufferevent_async* %0, %struct.bufferevent_async** %2, align 8
  %4 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %5 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  store %struct.bufferevent* %6, %struct.bufferevent** %3, align 8
  %7 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %8 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.bufferevent_async*, %struct.bufferevent_async** %2, align 8
  %13 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %15 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @event_base_add_virtual_(i32 %16)
  br label %18

18:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @event_base_add_virtual_(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
