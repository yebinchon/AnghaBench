; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer_iocp.c_pin_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer_iocp.c_pin_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer_overlapped = type { i32, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { %struct.evbuffer_chain* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer_overlapped*, i32)* @pin_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pin_release(%struct.evbuffer_overlapped* %0, i32 %1) #0 {
  %3 = alloca %struct.evbuffer_overlapped*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.evbuffer_chain*, align 8
  %7 = alloca %struct.evbuffer_chain*, align 8
  store %struct.evbuffer_overlapped* %0, %struct.evbuffer_overlapped** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %3, align 8
  %9 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %8, i32 0, i32 1
  %10 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %9, align 8
  store %struct.evbuffer_chain* %10, %struct.evbuffer_chain** %7, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.evbuffer_overlapped*, %struct.evbuffer_overlapped** %3, align 8
  %14 = getelementptr inbounds %struct.evbuffer_overlapped, %struct.evbuffer_overlapped* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %19 = call i32 @EVUTIL_ASSERT(%struct.evbuffer_chain* %18)
  %20 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %21 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %20, i32 0, i32 0
  %22 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %21, align 8
  store %struct.evbuffer_chain* %22, %struct.evbuffer_chain** %6, align 8
  %23 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %7, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @evbuffer_chain_unpin_(%struct.evbuffer_chain* %23, i32 %24)
  %26 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  store %struct.evbuffer_chain* %26, %struct.evbuffer_chain** %7, align 8
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %5, align 4
  br label %11

30:                                               ; preds = %11
  ret void
}

declare dso_local i32 @EVUTIL_ASSERT(%struct.evbuffer_chain*) #1

declare dso_local i32 @evbuffer_chain_unpin_(%struct.evbuffer_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
