; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_sock.c_be_socket_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_sock.c_be_socket_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%union.bufferevent_ctrl_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)* @be_socket_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_socket_ctrl(%struct.bufferevent* %0, i32 %1, %union.bufferevent_ctrl_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.bufferevent_ctrl_data*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.bufferevent_ctrl_data* %2, %union.bufferevent_ctrl_data** %7, align 8
  %8 = load i32, i32* %6, align 4
  switch i32 %8, label %22 [
    i32 128, label %9
    i32 130, label %15
    i32 129, label %21
    i32 131, label %21
  ]

9:                                                ; preds = %3
  %10 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %11 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %12 = bitcast %union.bufferevent_ctrl_data* %11 to i32*
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @be_socket_setfd(%struct.bufferevent* %10, i32 %13)
  store i32 0, i32* %4, align 4
  br label %23

15:                                               ; preds = %3
  %16 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %17 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %16, i32 0, i32 0
  %18 = call i32 @event_get_fd(i32* %17)
  %19 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %20 = bitcast %union.bufferevent_ctrl_data* %19 to i32*
  store i32 %18, i32* %20, align 4
  store i32 0, i32* %4, align 4
  br label %23

21:                                               ; preds = %3, %3
  br label %22

22:                                               ; preds = %3, %21
  store i32 -1, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %15, %9
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @be_socket_setfd(%struct.bufferevent*, i32) #1

declare dso_local i32 @event_get_fd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
