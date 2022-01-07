; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_bufferevent_filtered_outbuf_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_filter.c_bufferevent_filtered_outbuf_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_cb_info = type { i64 }
%struct.bufferevent_filtered = type { i32 }
%struct.bufferevent = type { i32 }

@BEV_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer*, %struct.evbuffer_cb_info*, i8*)* @bufferevent_filtered_outbuf_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufferevent_filtered_outbuf_cb(%struct.evbuffer* %0, %struct.evbuffer_cb_info* %1, i8* %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer_cb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent_filtered*, align 8
  %8 = alloca %struct.bufferevent*, align 8
  %9 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store %struct.evbuffer_cb_info* %1, %struct.evbuffer_cb_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.bufferevent_filtered*
  store %struct.bufferevent_filtered* %11, %struct.bufferevent_filtered** %7, align 8
  %12 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %7, align 8
  %13 = call %struct.bufferevent* @downcast(%struct.bufferevent_filtered* %12)
  store %struct.bufferevent* %13, %struct.bufferevent** %8, align 8
  %14 = load %struct.evbuffer_cb_info*, %struct.evbuffer_cb_info** %5, align 8
  %15 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %19 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %20 = call i32 @bufferevent_incref_and_lock_(%struct.bufferevent* %19)
  %21 = load %struct.bufferevent_filtered*, %struct.bufferevent_filtered** %7, align 8
  %22 = load i32, i32* @BEV_NORMAL, align 4
  %23 = call i32 @be_filter_process_output(%struct.bufferevent_filtered* %21, i32 %22, i32* %9)
  %24 = load %struct.bufferevent*, %struct.bufferevent** %8, align 8
  %25 = call i32 @bufferevent_decref_and_unlock_(%struct.bufferevent* %24)
  br label %26

26:                                               ; preds = %18, %3
  ret void
}

declare dso_local %struct.bufferevent* @downcast(%struct.bufferevent_filtered*) #1

declare dso_local i32 @bufferevent_incref_and_lock_(%struct.bufferevent*) #1

declare dso_local i32 @be_filter_process_output(%struct.bufferevent_filtered*, i32, i32*) #1

declare dso_local i32 @bufferevent_decref_and_unlock_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
