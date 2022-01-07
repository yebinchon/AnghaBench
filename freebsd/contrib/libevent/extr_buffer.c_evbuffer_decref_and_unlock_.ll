; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_decref_and_unlock_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_buffer.c_evbuffer_decref_and_unlock_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i64, i32, i64, i32, i32, i64, %struct.evbuffer_chain* }
%struct.evbuffer_chain = type { %struct.evbuffer_chain* }

@EVTHREAD_LOCKTYPE_RECURSIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evbuffer_decref_and_unlock_(%struct.evbuffer* %0) #0 {
  %2 = alloca %struct.evbuffer*, align 8
  %3 = alloca %struct.evbuffer_chain*, align 8
  %4 = alloca %struct.evbuffer_chain*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %2, align 8
  %5 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %6 = call i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer* %5)
  %7 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %8 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp sgt i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @EVUTIL_ASSERT(i32 %11)
  %13 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %14 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %20 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %19)
  br label %66

21:                                               ; preds = %1
  %22 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %23 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %22, i32 0, i32 6
  %24 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %23, align 8
  store %struct.evbuffer_chain* %24, %struct.evbuffer_chain** %3, align 8
  br label %25

25:                                               ; preds = %34, %21
  %26 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %3, align 8
  %27 = icmp ne %struct.evbuffer_chain* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %3, align 8
  %30 = getelementptr inbounds %struct.evbuffer_chain, %struct.evbuffer_chain* %29, i32 0, i32 0
  %31 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %30, align 8
  store %struct.evbuffer_chain* %31, %struct.evbuffer_chain** %4, align 8
  %32 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %3, align 8
  %33 = call i32 @evbuffer_chain_free(%struct.evbuffer_chain* %32)
  br label %34

34:                                               ; preds = %28
  %35 = load %struct.evbuffer_chain*, %struct.evbuffer_chain** %4, align 8
  store %struct.evbuffer_chain* %35, %struct.evbuffer_chain** %3, align 8
  br label %25

36:                                               ; preds = %25
  %37 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %38 = call i32 @evbuffer_remove_all_callbacks(%struct.evbuffer* %37)
  %39 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %40 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %45 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %48 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %47, i32 0, i32 3
  %49 = call i32 @event_deferred_cb_cancel_(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %43, %36
  %51 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %52 = call i32 @EVBUFFER_UNLOCK(%struct.evbuffer* %51)
  %53 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %54 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %59 = getelementptr inbounds %struct.evbuffer, %struct.evbuffer* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @EVTHREAD_LOCKTYPE_RECURSIVE, align 4
  %62 = call i32 @EVTHREAD_FREE_LOCK(i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %50
  %64 = load %struct.evbuffer*, %struct.evbuffer** %2, align 8
  %65 = call i32 @mm_free(%struct.evbuffer* %64)
  br label %66

66:                                               ; preds = %63, %18
  ret void
}

declare dso_local i32 @ASSERT_EVBUFFER_LOCKED(%struct.evbuffer*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @EVBUFFER_UNLOCK(%struct.evbuffer*) #1

declare dso_local i32 @evbuffer_chain_free(%struct.evbuffer_chain*) #1

declare dso_local i32 @evbuffer_remove_all_callbacks(%struct.evbuffer*) #1

declare dso_local i32 @event_deferred_cb_cancel_(i32, i32*) #1

declare dso_local i32 @EVTHREAD_FREE_LOCK(i32, i32) #1

declare dso_local i32 @mm_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
