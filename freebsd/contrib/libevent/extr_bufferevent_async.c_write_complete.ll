; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_async.c_write_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_async.c_write_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_overlapped = type { i32 }
%struct.bufferevent_async = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.bufferevent = type { i32 }

@BEV_EVENT_WRITING = common dso_local global i16 0, align 2
@EV_WRITE = common dso_local global i32 0, align 4
@BEV_EVENT_ERROR = common dso_local global i16 0, align 2
@BEV_EVENT_EOF = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.event_overlapped*, i32, i32, i32)* @write_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_complete(%struct.event_overlapped* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.event_overlapped*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bufferevent_async*, align 8
  %10 = alloca %struct.bufferevent*, align 8
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  store %struct.event_overlapped* %0, %struct.event_overlapped** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.event_overlapped*, %struct.event_overlapped** %5, align 8
  %14 = call %struct.bufferevent_async* @upcast_write(%struct.event_overlapped* %13)
  store %struct.bufferevent_async* %14, %struct.bufferevent_async** %9, align 8
  %15 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %16 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.bufferevent* %17, %struct.bufferevent** %10, align 8
  %18 = load i16, i16* @BEV_EVENT_WRITING, align 2
  store i16 %18, i16* %11, align 2
  %19 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %20 = call i32 @BEV_LOCK(%struct.bufferevent* %19)
  %21 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %22 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @EVUTIL_ASSERT(i32 %23)
  %25 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %26 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %12, align 4
  %30 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %31 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @evbuffer_commit_write_(i32 %32, i32 %33)
  %35 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %36 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %4
  %40 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %41 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %40, i32 0, i32 2
  %42 = load i32, i32* %12, align 4
  %43 = sub nsw i32 0, %42
  %44 = call i32 @bufferevent_decrement_write_buckets_(%struct.TYPE_2__* %41, i32 %43)
  br label %45

45:                                               ; preds = %39, %4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %50 = load %struct.event_overlapped*, %struct.event_overlapped** %5, align 8
  %51 = call i32 @bev_async_set_wsa_error(%struct.bufferevent* %49, %struct.event_overlapped* %50)
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %54 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %104

57:                                               ; preds = %52
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %57
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %65 = call i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent* %64)
  %66 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %67 = load i32, i32* @EV_WRITE, align 4
  %68 = call i32 @bufferevent_trigger_nolock_(%struct.bufferevent* %66, i32 %67, i32 0)
  %69 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %70 = call i32 @bev_async_consider_writing(%struct.bufferevent_async* %69)
  br label %103

71:                                               ; preds = %60, %57
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %71
  %75 = load i16, i16* @BEV_EVENT_ERROR, align 2
  %76 = sext i16 %75 to i32
  %77 = load i16, i16* %11, align 2
  %78 = sext i16 %77 to i32
  %79 = or i32 %78, %76
  %80 = trunc i32 %79 to i16
  store i16 %80, i16* %11, align 2
  %81 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %82 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %81, i32 0, i32 1
  store i64 0, i64* %82, align 8
  %83 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %84 = load i16, i16* %11, align 2
  %85 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %83, i16 signext %84, i32 0)
  br label %102

86:                                               ; preds = %71
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %101, label %89

89:                                               ; preds = %86
  %90 = load i16, i16* @BEV_EVENT_EOF, align 2
  %91 = sext i16 %90 to i32
  %92 = load i16, i16* %11, align 2
  %93 = sext i16 %92 to i32
  %94 = or i32 %93, %91
  %95 = trunc i32 %94 to i16
  store i16 %95, i16* %11, align 2
  %96 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %97 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %99 = load i16, i16* %11, align 2
  %100 = call i32 @bufferevent_run_eventcb_(%struct.bufferevent* %98, i16 signext %99, i32 0)
  br label %101

101:                                              ; preds = %89, %86
  br label %102

102:                                              ; preds = %101, %74
  br label %103

103:                                              ; preds = %102, %63
  br label %104

104:                                              ; preds = %103, %52
  %105 = load %struct.bufferevent*, %struct.bufferevent** %10, align 8
  %106 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %105)
  ret void
}

declare dso_local %struct.bufferevent_async* @upcast_write(%struct.event_overlapped*) #1

declare dso_local i32 @BEV_LOCK(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evbuffer_commit_write_(i32, i32) #1

declare dso_local i32 @bufferevent_decrement_write_buckets_(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @bev_async_set_wsa_error(%struct.bufferevent*, %struct.event_overlapped*) #1

declare dso_local i32 @BEV_RESET_GENERIC_WRITE_TIMEOUT(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_trigger_nolock_(%struct.bufferevent*, i32, i32) #1

declare dso_local i32 @bev_async_consider_writing(%struct.bufferevent_async*) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.bufferevent*, i16 signext, i32) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
