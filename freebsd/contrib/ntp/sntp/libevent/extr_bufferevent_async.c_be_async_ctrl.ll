; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_be_async_ctrl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_be_async_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32, i32, i32 }
%union.bufferevent_ctrl_data = type { i8* }
%struct.event_iocp_port = type { i32 }
%struct.bufferevent_async = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INVALID_SOCKET = common dso_local global i8* null, align 8
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent*, i32, %union.bufferevent_ctrl_data*)* @be_async_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_async_ctrl(%struct.bufferevent* %0, i32 %1, %union.bufferevent_ctrl_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.bufferevent_ctrl_data*, align 8
  %8 = alloca %struct.event_iocp_port*, align 8
  %9 = alloca %struct.bufferevent_async*, align 8
  %10 = alloca i8*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.bufferevent_ctrl_data* %2, %union.bufferevent_ctrl_data** %7, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %89 [
    i32 130, label %12
    i32 128, label %19
    i32 131, label %59
    i32 129, label %88
  ]

12:                                               ; preds = %3
  %13 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %14 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @evbuffer_overlapped_get_fd_(i32 %15)
  %17 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %18 = bitcast %union.bufferevent_ctrl_data* %17 to i8**
  store i8* %16, i8** %18, align 8
  store i32 0, i32* %4, align 4
  br label %90

19:                                               ; preds = %3
  %20 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %21 = bitcast %union.bufferevent_ctrl_data* %20 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %24 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @evbuffer_overlapped_get_fd_(i32 %25)
  %27 = icmp eq i8* %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %90

29:                                               ; preds = %19
  %30 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %31 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.event_iocp_port* @event_base_get_iocp_(i32 %32)
  store %struct.event_iocp_port* %33, %struct.event_iocp_port** %8, align 8
  %34 = icmp ne %struct.event_iocp_port* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %90

36:                                               ; preds = %29
  %37 = load %struct.event_iocp_port*, %struct.event_iocp_port** %8, align 8
  %38 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %39 = bitcast %union.bufferevent_ctrl_data* %38 to i8**
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @event_iocp_port_associate_(%struct.event_iocp_port* %37, i8* %40, i32 1)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %90

44:                                               ; preds = %36
  %45 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %46 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %49 = bitcast %union.bufferevent_ctrl_data* %48 to i8**
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @evbuffer_overlapped_set_fd_(i32 %47, i8* %50)
  %52 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %53 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %union.bufferevent_ctrl_data*, %union.bufferevent_ctrl_data** %7, align 8
  %56 = bitcast %union.bufferevent_ctrl_data* %55 to i8**
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @evbuffer_overlapped_set_fd_(i32 %54, i8* %57)
  store i32 0, i32* %4, align 4
  br label %90

59:                                               ; preds = %3
  %60 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %61 = call %struct.bufferevent_async* @upcast(%struct.bufferevent* %60)
  store %struct.bufferevent_async* %61, %struct.bufferevent_async** %9, align 8
  %62 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %63 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @evbuffer_overlapped_get_fd_(i32 %64)
  store i8* %65, i8** %10, align 8
  %66 = load i8*, i8** %10, align 8
  %67 = load i8*, i8** @INVALID_SOCKET, align 8
  %68 = icmp ne i8* %66, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %59
  %70 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %71 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = load i8*, i8** %10, align 8
  %79 = call i32 @closesocket(i8* %78)
  %80 = load %struct.bufferevent*, %struct.bufferevent** %5, align 8
  %81 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** @INVALID_SOCKET, align 8
  %84 = call i32 @evbuffer_overlapped_set_fd_(i32 %82, i8* %83)
  br label %85

85:                                               ; preds = %77, %69, %59
  %86 = load %struct.bufferevent_async*, %struct.bufferevent_async** %9, align 8
  %87 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %86, i32 0, i32 0
  store i32 0, i32* %87, align 4
  store i32 0, i32* %4, align 4
  br label %90

88:                                               ; preds = %3
  br label %89

89:                                               ; preds = %3, %88
  store i32 -1, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %85, %44, %43, %35, %28, %12
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i8* @evbuffer_overlapped_get_fd_(i32) #1

declare dso_local %struct.event_iocp_port* @event_base_get_iocp_(i32) #1

declare dso_local i32 @event_iocp_port_associate_(%struct.event_iocp_port*, i8*, i32) #1

declare dso_local i32 @evbuffer_overlapped_set_fd_(i32, i8*) #1

declare dso_local %struct.bufferevent_async* @upcast(%struct.bufferevent*) #1

declare dso_local i32 @closesocket(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
