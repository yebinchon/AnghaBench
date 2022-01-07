; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_chain_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_buffer.c_evbuffer_chain_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32, %struct.evbuffer_chain*, %struct.evbuffer_chain**, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer*, %struct.evbuffer_chain*)* @evbuffer_chain_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evbuffer_chain_insert(%struct.evbuffer* %0, %struct.evbuffer_chain* %1) #0 {
  %3 = alloca %struct.evbuffer*, align 8
  %4 = alloca %struct.evbuffer_chain*, align 8
  %5 = alloca %struct.evbuffer_chain**, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %3, align 8
  store %struct.evbuffer_chain* %1, %struct.evbuffer_chain** %4, align 8
  %6 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %7 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %6)
  %8 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %9 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %8, i32 0, i32 2
  %10 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %9, align 8
  %11 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %10, align 8
  %12 = icmp eq %struct.evbuffer_chain* %11, null
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %15 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %14, i32 0, i32 2
  %16 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %15, align 8
  %17 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %18 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %17, i32 0, i32 3
  %19 = icmp eq %struct.evbuffer_chain** %16, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @EVUTIL_ASSERT(i32 %20)
  %22 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %23 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %22, i32 0, i32 3
  %24 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %23, align 8
  %25 = icmp eq %struct.evbuffer_chain* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @EVUTIL_ASSERT(i32 %26)
  %28 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %29 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %30 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %29, i32 0, i32 1
  store %struct.evbuffer_chain* %28, %struct.evbuffer_chain** %30, align 8
  %31 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %32 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %31, i32 0, i32 3
  store %struct.evbuffer_chain* %28, %struct.evbuffer_chain** %32, align 8
  br label %50

33:                                               ; preds = %2
  %34 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %35 = call %struct.evbuffer_chain** @evbuffer_free_trailing_empty_chains(%struct.evbuffer* %34)
  store %struct.evbuffer_chain** %35, %struct.evbuffer_chain*** %5, align 8
  %36 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %37 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %5, align 8
  store %struct.evbuffer_chain* %36, %struct.evbuffer_chain** %37, align 8
  %38 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %39 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.evbuffer_chain**, %struct.evbuffer_chain*** %5, align 8
  %44 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %45 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %44, i32 0, i32 2
  store %struct.evbuffer_chain** %43, %struct.evbuffer_chain*** %45, align 8
  br label %46

46:                                               ; preds = %42, %33
  %47 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %48 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %49 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %48, i32 0, i32 1
  store %struct.evbuffer_chain* %47, %struct.evbuffer_chain** %49, align 8
  br label %50

50:                                               ; preds = %46, %13
  %51 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  %52 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.evbuffer*, %struct.evbuffer** %3, align 8
  %55 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %57, %53
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 8
  ret void
}

declare dso_local i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local %struct.evbuffer_chain** @evbuffer_free_trailing_empty_chains(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
