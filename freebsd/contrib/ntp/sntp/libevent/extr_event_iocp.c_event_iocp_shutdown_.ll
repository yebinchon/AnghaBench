; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event_iocp.c_event_iocp_shutdown_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_event_iocp.c_event_iocp_shutdown_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_iocp_port = type { i32, i32, i32, i32 }

@INFINITE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @event_iocp_shutdown_(%struct.event_iocp_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.event_iocp_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.event_iocp_port* %0, %struct.event_iocp_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @INFINITE, align 8
  store i64 %8, i64* %6, align 8
  %9 = load %struct.event_iocp_port*, %struct.event_iocp_port** %4, align 8
  %10 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %9, i32 0, i32 2
  %11 = call i32 @EnterCriticalSection(i32* %10)
  %12 = load %struct.event_iocp_port*, %struct.event_iocp_port** %4, align 8
  %13 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.event_iocp_port*, %struct.event_iocp_port** %4, align 8
  %15 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %14, i32 0, i32 2
  %16 = call i32 @LeaveCriticalSection(i32* %15)
  %17 = load %struct.event_iocp_port*, %struct.event_iocp_port** %4, align 8
  %18 = call i32 @event_iocp_notify_all(%struct.event_iocp_port* %17)
  %19 = load i64, i64* %5, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %21, %2
  %24 = load %struct.event_iocp_port*, %struct.event_iocp_port** %4, align 8
  %25 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @WaitForSingleObject(i32 %26, i64 %27)
  %29 = load %struct.event_iocp_port*, %struct.event_iocp_port** %4, align 8
  %30 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %29, i32 0, i32 2
  %31 = call i32 @EnterCriticalSection(i32* %30)
  %32 = load %struct.event_iocp_port*, %struct.event_iocp_port** %4, align 8
  %33 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load %struct.event_iocp_port*, %struct.event_iocp_port** %4, align 8
  %36 = getelementptr inbounds %struct.event_iocp_port, %struct.event_iocp_port* %35, i32 0, i32 2
  %37 = call i32 @LeaveCriticalSection(i32* %36)
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %23
  %41 = load %struct.event_iocp_port*, %struct.event_iocp_port** %4, align 8
  %42 = call i32 @event_iocp_port_unlock_and_free_(%struct.event_iocp_port* %41)
  store i32 0, i32* %3, align 4
  br label %44

43:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @EnterCriticalSection(i32*) #1

declare dso_local i32 @LeaveCriticalSection(i32*) #1

declare dso_local i32 @event_iocp_notify_all(%struct.event_iocp_port*) #1

declare dso_local i32 @WaitForSingleObject(i32, i64) #1

declare dso_local i32 @event_iocp_port_unlock_and_free_(%struct.event_iocp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
