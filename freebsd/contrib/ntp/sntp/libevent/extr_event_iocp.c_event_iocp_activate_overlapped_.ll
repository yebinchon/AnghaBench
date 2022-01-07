; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event_iocp.c_event_iocp_activate_overlapped_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event_iocp.c_event_iocp_activate_overlapped_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_iocp_port = type { i32 }
%struct.event_overlapped = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_iocp_activate_overlapped_(%struct.event_iocp_port* %0, %struct.event_overlapped* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.event_iocp_port*, align 8
  %6 = alloca %struct.event_overlapped*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.event_iocp_port* %0, %struct.event_iocp_port** %5, align 8
  store %struct.event_overlapped* %1, %struct.event_overlapped** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.event_iocp_port*, %struct.event_iocp_port** %5, align 8
  %11 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.event_overlapped*, %struct.event_overlapped** %6, align 8
  %16 = getelementptr inbounds %struct.event_overlapped, %struct.event_overlapped* %15, i32 0, i32 0
  %17 = call i64 @PostQueuedCompletionStatus(i32 %12, i32 %13, i32 %14, i32* %16)
  store i64 %17, i64* %9, align 8
  %18 = load i64, i64* %9, align 8
  %19 = icmp eq i64 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 -1, i32 0
  ret i32 %21
}

declare dso_local i64 @PostQueuedCompletionStatus(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
