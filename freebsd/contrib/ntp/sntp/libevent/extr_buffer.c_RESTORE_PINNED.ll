; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_RESTORE_PINNED.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_RESTORE_PINNED.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, %struct.evbuffer_chain*, %struct.evbuffer_chain**, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer*, %struct.evbuffer_chain*, %struct.evbuffer_chain*)* @RESTORE_PINNED to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RESTORE_PINNED(%struct.evbuffer* %0, %struct.evbuffer_chain* %1, %struct.evbuffer_chain* %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer_chain*, align 8
  %6 = alloca %struct.evbuffer_chain*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store %struct.evbuffer_chain* %1, %struct.evbuffer_chain** %5, align 8
  store %struct.evbuffer_chain* %2, %struct.evbuffer_chain** %6, align 8
  %7 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %8 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %7)
  %9 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %10 = icmp ne %struct.evbuffer_chain* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %13 = call i32 @ZERO_CHAIN(%struct.evbuffer* %12)
  br label %27

14:                                               ; preds = %3
  %15 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %5, align 8
  %16 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %17 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %16, i32 0, i32 1
  store %struct.evbuffer_chain* %15, %struct.evbuffer_chain** %17, align 8
  %18 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %6, align 8
  %19 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %20 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %19, i32 0, i32 3
  store %struct.evbuffer_chain* %18, %struct.evbuffer_chain** %20, align 8
  %21 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %22 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %21, i32 0, i32 1
  %23 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %24 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %23, i32 0, i32 2
  store %struct.evbuffer_chain** %22, %struct.evbuffer_chain*** %24, align 8
  %25 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %26 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  br label %27

27:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer*) #1

declare dso_local i32 @ZERO_CHAIN(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
