; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_bufferevent_async_new_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_async.c_bufferevent_async_new_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i8*, i8* }
%struct.event_base = type { i32 }
%struct.bufferevent_async = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.bufferevent }
%struct.event_iocp_port = type { i32 }

@BEV_OPT_THREADSAFE = common dso_local global i32 0, align 4
@ERROR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@bufferevent_ops_async = common dso_local global i32 0, align 4
@be_async_inbuf_callback = common dso_local global i32 0, align 4
@be_async_outbuf_callback = common dso_local global i32 0, align 4
@connect_complete = common dso_local global i32 0, align 4
@read_complete = common dso_local global i32 0, align 4
@write_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bufferevent* @bufferevent_async_new_(%struct.event_base* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bufferevent_async*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca %struct.event_iocp_port*, align 8
  %11 = alloca i32, align 4
  store %struct.event_base* %0, %struct.event_base** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @BEV_OPT_THREADSAFE, align 4
  %13 = load i32, i32* %7, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %7, align 4
  %15 = load %struct.event_base*, %struct.event_base** %5, align 8
  %16 = call %struct.event_iocp_port* @event_base_get_iocp_(%struct.event_base* %15)
  store %struct.event_iocp_port* %16, %struct.event_iocp_port** %10, align 8
  %17 = icmp ne %struct.event_iocp_port* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %109

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.event_iocp_port*, %struct.event_iocp_port** %10, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @event_iocp_port_associate_(%struct.event_iocp_port* %23, i32 %24, i32 1)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = call i32 (...) @GetLastError()
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ERROR_INVALID_PARAMETER, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %109

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33, %22, %19
  %35 = call %struct.bufferevent_async* @mm_calloc(i32 1, i32 40)
  store %struct.bufferevent_async* %35, %struct.bufferevent_async** %8, align 8
  %36 = icmp ne %struct.bufferevent_async* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %109

38:                                               ; preds = %34
  %39 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %40 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.bufferevent* %41, %struct.bufferevent** %9, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i8* @evbuffer_overlapped_new_(i32 %42)
  %44 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %45 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = icmp ne i8* %43, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %49 = call i32 @mm_free(%struct.bufferevent_async* %48)
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %109

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = call i8* @evbuffer_overlapped_new_(i32 %51)
  %53 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %54 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = icmp ne i8* %52, null
  br i1 %55, label %63, label %56

56:                                               ; preds = %50
  %57 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %58 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @evbuffer_free(i8* %59)
  %61 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %62 = call i32 @mm_free(%struct.bufferevent_async* %61)
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %109

63:                                               ; preds = %50
  %64 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %65 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %64, i32 0, i32 1
  %66 = load %struct.event_base*, %struct.event_base** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @bufferevent_init_common_(%struct.TYPE_2__* %65, %struct.event_base* %66, i32* @bufferevent_ops_async, i32 %67)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %104

71:                                               ; preds = %63
  %72 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %73 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* @be_async_inbuf_callback, align 4
  %76 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %77 = call i32 @evbuffer_add_cb(i8* %74, i32 %75, %struct.bufferevent* %76)
  %78 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %79 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i32, i32* @be_async_outbuf_callback, align 4
  %82 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %83 = call i32 @evbuffer_add_cb(i8* %80, i32 %81, %struct.bufferevent* %82)
  %84 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %85 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %84, i32 0, i32 4
  %86 = load i32, i32* @connect_complete, align 4
  %87 = call i32 @event_overlapped_init_(i32* %85, i32 %86)
  %88 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %89 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %88, i32 0, i32 3
  %90 = load i32, i32* @read_complete, align 4
  %91 = call i32 @event_overlapped_init_(i32* %89, i32 %90)
  %92 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %93 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %92, i32 0, i32 2
  %94 = load i32, i32* @write_complete, align 4
  %95 = call i32 @event_overlapped_init_(i32* %93, i32 %94)
  %96 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %97 = call i32 @bufferevent_init_generic_timeout_cbs_(%struct.bufferevent* %96)
  %98 = load i32, i32* %6, align 4
  %99 = icmp sge i32 %98, 0
  %100 = zext i1 %99 to i32
  %101 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %102 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  store %struct.bufferevent* %103, %struct.bufferevent** %4, align 8
  br label %109

104:                                              ; preds = %70
  %105 = load %struct.bufferevent_async*, %struct.bufferevent_async** %8, align 8
  %106 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = call i32 @bufferevent_free(%struct.bufferevent* %107)
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  br label %109

109:                                              ; preds = %104, %71, %56, %47, %37, %32, %18
  %110 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  ret %struct.bufferevent* %110
}

declare dso_local %struct.event_iocp_port* @event_base_get_iocp_(%struct.event_base*) #1

declare dso_local i64 @event_iocp_port_associate_(%struct.event_iocp_port*, i32, i32) #1

declare dso_local i32 @GetLastError(...) #1

declare dso_local %struct.bufferevent_async* @mm_calloc(i32, i32) #1

declare dso_local i8* @evbuffer_overlapped_new_(i32) #1

declare dso_local i32 @mm_free(%struct.bufferevent_async*) #1

declare dso_local i32 @evbuffer_free(i8*) #1

declare dso_local i64 @bufferevent_init_common_(%struct.TYPE_2__*, %struct.event_base*, i32*, i32) #1

declare dso_local i32 @evbuffer_add_cb(i8*, i32, %struct.bufferevent*) #1

declare dso_local i32 @event_overlapped_init_(i32*, i32) #1

declare dso_local i32 @bufferevent_init_generic_timeout_cbs_(%struct.bufferevent*) #1

declare dso_local i32 @bufferevent_free(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
