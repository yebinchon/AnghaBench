; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_chain_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_chain_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer_chain = type { i32, i64, i32, i64 }

@EVBUFFER_IMMUTABLE = common dso_local global i32 0, align 4
@EVBUFFER_MEM_PINNED_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer_chain*)* @evbuffer_chain_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evbuffer_chain_align(%struct.evbuffer_chain* %0) #0 {
  %2 = alloca %struct.evbuffer_chain*, align 8
  store %struct.evbuffer_chain* %0, %struct.evbuffer_chain** %2, align 8
  %3 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %2, align 8
  %4 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @EVBUFFER_IMMUTABLE, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @EVUTIL_ASSERT(i32 %10)
  %12 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %2, align 8
  %13 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @EVBUFFER_MEM_PINNED_ANY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @EVUTIL_ASSERT(i32 %19)
  %21 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %2, align 8
  %22 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %2, align 8
  %25 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %2, align 8
  %28 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  %31 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %2, align 8
  %32 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @memmove(i64 %23, i64 %30, i32 %33)
  %35 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %2, align 8
  %36 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  ret void
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
