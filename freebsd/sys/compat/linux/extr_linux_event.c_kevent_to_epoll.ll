; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_kevent_to_epoll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_event.c_kevent_to_epoll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent = type { i32, i32 }
%struct.epoll_event = type { i32 }

@EV_ERROR = common dso_local global i32 0, align 4
@LINUX_EPOLLERR = common dso_local global i32 0, align 4
@LINUX_EPOLLIN = common dso_local global i32 0, align 4
@EV_EOF = common dso_local global i32 0, align 4
@LINUX_EPOLLRDHUP = common dso_local global i32 0, align 4
@LINUX_EPOLLOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kevent*, %struct.epoll_event*)* @kevent_to_epoll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kevent_to_epoll(%struct.kevent* %0, %struct.epoll_event* %1) #0 {
  %3 = alloca %struct.kevent*, align 8
  %4 = alloca %struct.epoll_event*, align 8
  store %struct.kevent* %0, %struct.kevent** %3, align 8
  store %struct.epoll_event* %1, %struct.epoll_event** %4, align 8
  %5 = load %struct.kevent*, %struct.kevent** %3, align 8
  %6 = getelementptr inbounds %struct.kevent, %struct.kevent* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @EV_ERROR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @LINUX_EPOLLERR, align 4
  %13 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %14 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %40

15:                                               ; preds = %2
  %16 = load %struct.kevent*, %struct.kevent** %3, align 8
  %17 = getelementptr inbounds %struct.kevent, %struct.kevent* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %40 [
    i32 129, label %19
    i32 128, label %36
  ]

19:                                               ; preds = %15
  %20 = load i32, i32* @LINUX_EPOLLIN, align 4
  %21 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %22 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.kevent*, %struct.kevent** %3, align 8
  %24 = getelementptr inbounds %struct.kevent, %struct.kevent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EV_EOF, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %19
  %30 = load i32, i32* @LINUX_EPOLLRDHUP, align 4
  %31 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %32 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %19
  br label %40

36:                                               ; preds = %15
  %37 = load i32, i32* @LINUX_EPOLLOUT, align 4
  %38 = load %struct.epoll_event*, %struct.epoll_event** %4, align 8
  %39 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %11, %15, %36, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
