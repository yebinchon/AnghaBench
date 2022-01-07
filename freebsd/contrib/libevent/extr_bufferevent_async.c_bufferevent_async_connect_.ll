; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_async.c_bufferevent_async_connect_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_async.c_bufferevent_async_connect_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.sockaddr = type { i64 }
%struct.bufferevent_async = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.win32_extension_fns = type { i64 (i64, %struct.sockaddr.0*, i32, i32*, i32, i32*, i32*)* }
%struct.sockaddr.0 = type opaque
%struct.sockaddr_in = type { %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i64 }

@AF_INET = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@in6addr_any = common dso_local global i32 0, align 4
@WSAEINVAL = common dso_local global i64 0, align 8
@ERROR_IO_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_async_connect_(%struct.bufferevent* %0, i64 %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bufferevent*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.bufferevent_async*, align 8
  %12 = alloca %struct.sockaddr_storage, align 4
  %13 = alloca %struct.win32_extension_fns*, align 8
  %14 = alloca %struct.sockaddr_in*, align 8
  %15 = alloca %struct.sockaddr_in6*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %17 = call %struct.bufferevent_async* @upcast(%struct.bufferevent* %16)
  store %struct.bufferevent_async* %17, %struct.bufferevent_async** %11, align 8
  %18 = call %struct.win32_extension_fns* (...) @event_get_win32_extension_fns_()
  store %struct.win32_extension_fns* %18, %struct.win32_extension_fns** %13, align 8
  %19 = load %struct.win32_extension_fns*, %struct.win32_extension_fns** %13, align 8
  %20 = icmp ne %struct.win32_extension_fns* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.win32_extension_fns*, %struct.win32_extension_fns** %13, align 8
  %23 = getelementptr inbounds %struct.win32_extension_fns, %struct.win32_extension_fns* %22, i32 0, i32 0
  %24 = load i64 (i64, %struct.sockaddr.0*, i32, i32*, i32, i32*, i32*)*, i64 (i64, %struct.sockaddr.0*, i32, i32*, i32, i32*, i32*)** %23, align 8
  %25 = icmp ne i64 (i64, %struct.sockaddr.0*, i32, i32*, i32, i32*, i32*)* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i64, i64* %7, align 8
  %28 = icmp sge i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %31 = icmp ne %struct.sockaddr* %30, null
  br label %32

32:                                               ; preds = %29, %26, %21, %4
  %33 = phi i1 [ false, %26 ], [ false, %21 ], [ false, %4 ], [ %31, %29 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @EVUTIL_ASSERT(i32 %34)
  %36 = call i32 @memset(%struct.sockaddr_storage* %12, i32 0, i32 4)
  %37 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %38 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %32
  %43 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %43, %struct.sockaddr_in** %14, align 8
  %44 = load i64, i64* @AF_INET, align 8
  %45 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %46 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @INADDR_ANY, align 4
  %48 = load %struct.sockaddr_in*, %struct.sockaddr_in** %14, align 8
  %49 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  br label %67

51:                                               ; preds = %32
  %52 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %53 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @AF_INET6, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %58, %struct.sockaddr_in6** %15, align 8
  %59 = load i64, i64* @AF_INET6, align 8
  %60 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %61 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @in6addr_any, align 4
  %63 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %15, align 8
  %64 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %66

65:                                               ; preds = %51
  store i32 -1, i32* %5, align 4
  br label %109

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %42
  %68 = load i64, i64* %7, align 8
  %69 = bitcast %struct.sockaddr_storage* %12 to %struct.sockaddr*
  %70 = call i64 @bind(i64 %68, %struct.sockaddr* %69, i32 4)
  %71 = icmp slt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = call i64 (...) @WSAGetLastError()
  %74 = load i64, i64* @WSAEINVAL, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  store i32 -1, i32* %5, align 4
  br label %109

77:                                               ; preds = %72, %67
  %78 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %79 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @event_base_add_virtual_(i32 %80)
  %82 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %83 = call i32 @bufferevent_incref_(%struct.bufferevent* %82)
  %84 = load %struct.win32_extension_fns*, %struct.win32_extension_fns** %13, align 8
  %85 = getelementptr inbounds %struct.win32_extension_fns, %struct.win32_extension_fns* %84, i32 0, i32 0
  %86 = load i64 (i64, %struct.sockaddr.0*, i32, i32*, i32, i32*, i32*)*, i64 (i64, %struct.sockaddr.0*, i32, i32*, i32, i32*, i32*)** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %89 = bitcast %struct.sockaddr* %88 to %struct.sockaddr.0*
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.bufferevent_async*, %struct.bufferevent_async** %11, align 8
  %92 = getelementptr inbounds %struct.bufferevent_async, %struct.bufferevent_async* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i64 %86(i64 %87, %struct.sockaddr.0* %89, i32 %90, i32* null, i32 0, i32* null, i32* %93)
  store i64 %94, i64* %10, align 8
  %95 = load i64, i64* %10, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %77
  %98 = call i64 (...) @WSAGetLastError()
  %99 = load i64, i64* @ERROR_IO_PENDING, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %97, %77
  store i32 0, i32* %5, align 4
  br label %109

102:                                              ; preds = %97
  %103 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %104 = getelementptr inbounds %struct.bufferevent, %struct.bufferevent* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @event_base_del_virtual_(i32 %105)
  %107 = load %struct.bufferevent*, %struct.bufferevent** %6, align 8
  %108 = call i32 @bufferevent_decref_(%struct.bufferevent* %107)
  store i32 -1, i32* %5, align 4
  br label %109

109:                                              ; preds = %102, %101, %76, %65
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local %struct.bufferevent_async* @upcast(%struct.bufferevent*) #1

declare dso_local %struct.win32_extension_fns* @event_get_win32_extension_fns_(...) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i64 @WSAGetLastError(...) #1

declare dso_local i32 @event_base_add_virtual_(i32) #1

declare dso_local i32 @bufferevent_incref_(%struct.bufferevent*) #1

declare dso_local i32 @event_base_del_virtual_(i32) #1

declare dso_local i32 @bufferevent_decref_(%struct.bufferevent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
