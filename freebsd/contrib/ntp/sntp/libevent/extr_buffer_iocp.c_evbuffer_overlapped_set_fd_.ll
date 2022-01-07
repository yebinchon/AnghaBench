; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer_iocp.c_evbuffer_overlapped_set_fd_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer_iocp.c_evbuffer_overlapped_set_fd_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_overlapped = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evbuffer_overlapped_set_fd_(%struct.evbuffer* %0, i32 %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evbuffer_overlapped*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %7 = call %struct.evbuffer_overlapped* @upcast_evbuffer(%struct.evbuffer* %6)
  store %struct.evbuffer_overlapped* %7, %struct.evbuffer_overlapped** %5, align 8
  %8 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %9 = call i32 @EVBUFFER_LOCK(%struct.evbuffer* %8)
  %10 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %5, align 8
  %11 = icmp ne %struct.evbuffer_overlapped* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %5, align 8
  %15 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %12, %2
  %17 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %18 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %17)
  ret void
}

declare dso_local %struct.evbuffer_overlapped* @upcast_evbuffer(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_LOCK(%struct.evbuffer*) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
