; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_iocp.c_event_iocp_notify_all.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_event_iocp.c_event_iocp_notify_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_iocp_port = type { i32, i32 }

@NOTIFICATION_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.event_iocp_port*)* @event_iocp_notify_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @event_iocp_notify_all(%struct.event_iocp_port* %0) #0 {
  %2 = alloca %struct.event_iocp_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.event_iocp_port* %0, %struct.event_iocp_port** %2, align 8
  store i32 1, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %22, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.event_iocp_port*, %struct.event_iocp_port** %2, align 8
  %9 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %25

12:                                               ; preds = %6
  %13 = load %struct.event_iocp_port*, %struct.event_iocp_port** %2, align 8
  %14 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @NOTIFICATION_KEY, align 4
  %17 = call i32 @PostQueuedCompletionStatus(i32 %15, i32 0, i32 %16, i32* null)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %12
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %6

25:                                               ; preds = %6
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 0, i32 -1
  ret i32 %29
}

declare dso_local i32 @PostQueuedCompletionStatus(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
