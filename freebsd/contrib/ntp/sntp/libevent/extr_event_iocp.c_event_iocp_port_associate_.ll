; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event_iocp.c_event_iocp_port_associate_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event_iocp.c_event_iocp_port_associate_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_iocp_port = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_iocp_port_associate_(%struct.event_iocp_port* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.event_iocp_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.event_iocp_port* %0, %struct.event_iocp_port** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = trunc i64 %9 to i32
  %11 = load %struct.event_iocp_port*, %struct.event_iocp_port** %5, align 8
  %12 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.event_iocp_port*, %struct.event_iocp_port** %5, align 8
  %16 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CreateIoCompletionPort(i32 %10, i32 %13, i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @CreateIoCompletionPort(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
