; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_be_async_destruct.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_be_async_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_async = type { i32, i32 }
%struct.bufferevent_private = type { i32 }

@INVALID_SOCKET = common dso_local global i64 0, align 8
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bufferevent*)* @be_async_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_async_destruct(%struct.bufferevent* %0) #0 {
  %2 = alloca %struct.bufferevent*, align 8
  %3 = alloca %struct.bufferevent_async*, align 8
  %4 = alloca %struct.bufferevent_private*, align 8
  %5 = alloca i64, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %2, align 8
  %6 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %7 = call %struct.bufferevent_async* @upcast(%struct.bufferevent* %6)
  store %struct.bufferevent_async* %7, %struct.bufferevent_async** %3, align 8
  %8 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %9 = call %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent* %8)
  store %struct.bufferevent_private* %9, %struct.bufferevent_private** %4, align 8
  %10 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %11 = call %struct.bufferevent_async* @upcast(%struct.bufferevent* %10)
  %12 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %1
  %16 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %17 = call %struct.bufferevent_async* @upcast(%struct.bufferevent* %16)
  %18 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %15, %1
  %23 = phi i1 [ false, %1 ], [ %21, %15 ]
  %24 = zext i1 %23 to i32
  %25 = call i32 @EVUTIL_ASSERT(i32 %24)
  %26 = load %struct.bufferevent_async*, %struct.bufferevent_async** %3, align 8
  %27 = call i32 @bev_async_del_read(%struct.bufferevent_async* %26)
  %28 = load %struct.bufferevent_async*, %struct.bufferevent_async** %3, align 8
  %29 = call i32 @bev_async_del_write(%struct.bufferevent_async* %28)
  %30 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %31 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @evbuffer_overlapped_get_fd_(i32 %32)
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @INVALID_SOCKET, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %22
  %38 = load %struct.bufferevent_private*, %struct.bufferevent_private** %4, align 8
  %39 = getelementptr inbounds %struct.bufferevent_private, %struct.bufferevent_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @evutil_closesocket(i64 %45)
  %47 = load %struct.bufferevent*, %struct.bufferevent** %2, align 8
  %48 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* @INVALID_SOCKET, align 8
  %51 = call i32 @evbuffer_overlapped_set_fd_(i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %44, %37, %22
  ret void
}

declare dso_local %struct.bufferevent_async* @upcast(%struct.bufferevent*) #1

declare dso_local %struct.bufferevent_private* @BEV_UPCAST(%struct.bufferevent*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @bev_async_del_read(%struct.bufferevent_async*) #1

declare dso_local i32 @bev_async_del_write(%struct.bufferevent_async*) #1

declare dso_local i64 @evbuffer_overlapped_get_fd_(i32) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i32 @evbuffer_overlapped_set_fd_(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
