; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_free_trailing_empty_chains.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_free_trailing_empty_chains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer_chain = type { i64, %struct.evbuffer_chain* }
%struct.evbuffer = type { %struct.evbuffer_chain** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evbuffer_chain** (%struct.evbuffer*)* @evbuffer_free_trailing_empty_chains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evbuffer_chain** @evbuffer_free_trailing_empty_chains(%struct.evbuffer* %0) #0 {
  %2 = alloca %struct.evbuffer*, align 8
  %3 = alloca %struct.evbuffer_chain**, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %2, align 8
  %4 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %5 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %4, i32 0, i32 0
  %6 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %5, align 8
  store %struct.evbuffer_chain** %6, %struct.evbuffer_chain*** %3, align 8
  br label %7

7:                                                ; preds = %26, %1
  %8 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %3, align 8
  %9 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %8, align 8
  %10 = icmp ne %struct.evbuffer_chain* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %3, align 8
  %13 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %12, align 8
  %14 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %3, align 8
  %19 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %18, align 8
  %20 = call i64 @CHAIN_PINNED(%struct.evbuffer_chain* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %11
  %23 = phi i1 [ true, %11 ], [ %21, %17 ]
  br label %24

24:                                               ; preds = %22, %7
  %25 = phi i1 [ false, %7 ], [ %23, %22 ]
  br i1 %25, label %26, label %30

26:                                               ; preds = %24
  %27 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %3, align 8
  %28 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %27, align 8
  %29 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %28, i32 0, i32 1
  store %struct.evbuffer_chain** %29, %struct.evbuffer_chain*** %3, align 8
  br label %7

30:                                               ; preds = %24
  %31 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %3, align 8
  %32 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %31, align 8
  %33 = icmp ne %struct.evbuffer_chain* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %3, align 8
  %36 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %35, align 8
  %37 = call i32 @evbuffer_chains_all_empty(%struct.evbuffer_chain* %36)
  %38 = call i32 @EVUTIL_ASSERT(i32 %37)
  %39 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %3, align 8
  %40 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %39, align 8
  %41 = call i32 @evbuffer_free_all_chains(%struct.evbuffer_chain* %40)
  %42 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %3, align 8
  store %struct.evbuffer_chain* null, %struct.evbuffer_chain** %42, align 8
  br label %43

43:                                               ; preds = %34, %30
  %44 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %3, align 8
  ret %struct.evbuffer_chain** %44
}

declare dso_local i64 @CHAIN_PINNED(%struct.evbuffer_chain*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evbuffer_chains_all_empty(%struct.evbuffer_chain*) #1

declare dso_local i32 @evbuffer_free_all_chains(%struct.evbuffer_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
