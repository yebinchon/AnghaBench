; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_pair.c_be_pair_outbuf_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_pair.c_be_pair_outbuf_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_cb_info = type { i64, i64 }
%struct.bufferevent_pair = type { %struct.bufferevent_pair* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer*, %struct.evbuffer_cb_info*, i8*)* @be_pair_outbuf_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_pair_outbuf_cb(%struct.evbuffer* %0, %struct.evbuffer_cb_info* %1, i8* %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer_cb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent_pair*, align 8
  %8 = alloca %struct.bufferevent_pair*, align 8
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store %struct.evbuffer_cb_info* %1, %struct.evbuffer_cb_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.bufferevent_pair*
  store %struct.bufferevent_pair* %10, %struct.bufferevent_pair** %7, align 8
  %11 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %7, align 8
  %12 = getelementptr inbounds %struct.bufferevent_pair, %struct.bufferevent_pair* %11, i32 0, i32 0
  %13 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %12, align 8
  store %struct.bufferevent_pair* %13, %struct.bufferevent_pair** %8, align 8
  %14 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %7, align 8
  %15 = call i32 @downcast(%struct.bufferevent_pair* %14)
  %16 = call i32 @incref_and_lock(i32 %15)
  %17 = load %struct.evbuffer_cb_info*, %struct.evbuffer_cb_info** %5, align 8
  %18 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.evbuffer_cb_info*, %struct.evbuffer_cb_info** %5, align 8
  %21 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %3
  %25 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %26 = icmp ne %struct.bufferevent_pair* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %7, align 8
  %29 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %30 = call i64 @be_pair_wants_to_talk(%struct.bufferevent_pair* %28, %struct.bufferevent_pair* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %7, align 8
  %34 = call i32 @downcast(%struct.bufferevent_pair* %33)
  %35 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %8, align 8
  %36 = call i32 @downcast(%struct.bufferevent_pair* %35)
  %37 = call i32 @be_pair_transfer(i32 %34, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %32, %27
  br label %39

39:                                               ; preds = %38, %24, %3
  %40 = load %struct.bufferevent_pair*, %struct.bufferevent_pair** %7, align 8
  %41 = call i32 @downcast(%struct.bufferevent_pair* %40)
  %42 = call i32 @decref_and_unlock(i32 %41)
  ret void
}

declare dso_local i32 @incref_and_lock(i32) #1

declare dso_local i32 @downcast(%struct.bufferevent_pair*) #1

declare dso_local i64 @be_pair_wants_to_talk(%struct.bufferevent_pair*, %struct.bufferevent_pair*) #1

declare dso_local i32 @be_pair_transfer(i32, i32, i32) #1

declare dso_local i32 @decref_and_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
