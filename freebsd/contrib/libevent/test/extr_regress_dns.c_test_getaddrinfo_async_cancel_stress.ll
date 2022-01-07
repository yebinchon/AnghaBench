; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_dns.c_test_getaddrinfo_async_cancel_stress.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_dns.c_test_getaddrinfo_async_cancel_stress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event_base = type { i32 }
%struct.evdns_base = type { i32 }
%struct.evdns_server_port = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_storage = type { %struct.TYPE_2__, i64, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@gaic_server_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @test_getaddrinfo_async_cancel_stress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_getaddrinfo_async_cancel_stress(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.event_base*, align 8
  %4 = alloca %struct.evdns_base*, align 8
  %5 = alloca %struct.evdns_server_port*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr_in, align 8
  %8 = alloca %struct.sockaddr_storage, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.evdns_base* null, %struct.evdns_base** %4, align 8
  store %struct.evdns_server_port* null, %struct.evdns_server_port** %5, align 8
  store i64 -1, i64* %6, align 8
  %11 = call %struct.event_base* (...) @event_base_new()
  store %struct.event_base* %11, %struct.event_base** %3, align 8
  %12 = load %struct.event_base*, %struct.event_base** %3, align 8
  %13 = call %struct.evdns_base* @evdns_base_new(%struct.event_base* %12, i32 0)
  store %struct.evdns_base* %13, %struct.evdns_base** %4, align 8
  %14 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr_storage*
  %15 = call i32 @memset(%struct.sockaddr_storage* %14, i32 0, i32 24)
  %16 = load i32, i32* @AF_INET, align 4
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = call i32 @htonl(i32 2130706433)
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %7, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i32, i32* @AF_INET, align 4
  %23 = load i32, i32* @SOCK_DGRAM, align 4
  %24 = call i64 @socket(i32 %22, i32 %23, i32 0)
  store i64 %24, i64* %6, align 8
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = call i32 @tt_abort_perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %26, %1
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @evutil_make_socket_nonblocking(i64 %29)
  %31 = load i64, i64* %6, align 8
  %32 = bitcast %struct.sockaddr_in* %7 to %struct.sockaddr*
  %33 = call i64 @bind(i64 %31, %struct.sockaddr* %32, i32 24)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 @tt_abort_perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %28
  %38 = load %struct.event_base*, %struct.event_base** %3, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* @gaic_server_cb, align 4
  %41 = load %struct.event_base*, %struct.event_base** %3, align 8
  %42 = call %struct.evdns_server_port* @evdns_add_server_port_with_base(%struct.event_base* %38, i64 %39, i32 0, i32 %40, %struct.event_base* %41)
  store %struct.evdns_server_port* %42, %struct.evdns_server_port** %5, align 8
  %43 = call i32 @memset(%struct.sockaddr_storage* %8, i32 0, i32 24)
  store i32 24, i32* %9, align 4
  %44 = load i64, i64* %6, align 8
  %45 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %46 = call i64 @getsockname(i64 %44, %struct.sockaddr* %45, i32* %9)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = call i32 @tt_abort_perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %37
  %51 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %52 = bitcast %struct.sockaddr_storage* %8 to %struct.sockaddr*
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @evdns_base_nameserver_sockaddr_add(%struct.evdns_base* %51, %struct.sockaddr* %52, i32 %53, i32 0)
  store i32 0, i32* %10, align 4
  br label %55

55:                                               ; preds = %62, %50
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 1000
  br i1 %57, label %58, label %65

58:                                               ; preds = %55
  %59 = load %struct.event_base*, %struct.event_base** %3, align 8
  %60 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %61 = call i32 @gaic_launch(%struct.event_base* %59, %struct.evdns_base* %60)
  br label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %55

65:                                               ; preds = %55
  %66 = load %struct.event_base*, %struct.event_base** %3, align 8
  %67 = call i32 @event_base_dispatch(%struct.event_base* %66)
  br label %68

68:                                               ; preds = %65
  %69 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %70 = icmp ne %struct.evdns_base* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.evdns_base*, %struct.evdns_base** %4, align 8
  %73 = call i32 @evdns_base_free(%struct.evdns_base* %72, i32 1)
  br label %74

74:                                               ; preds = %71, %68
  %75 = load %struct.evdns_server_port*, %struct.evdns_server_port** %5, align 8
  %76 = icmp ne %struct.evdns_server_port* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.evdns_server_port*, %struct.evdns_server_port** %5, align 8
  %79 = call i32 @evdns_close_server_port(%struct.evdns_server_port* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load %struct.event_base*, %struct.event_base** %3, align 8
  %82 = icmp ne %struct.event_base* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.event_base*, %struct.event_base** %3, align 8
  %85 = call i32 @event_base_free(%struct.event_base* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load i64, i64* %6, align 8
  %88 = icmp sge i64 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %86
  %90 = load i64, i64* %6, align 8
  %91 = call i32 @evutil_closesocket(i64 %90)
  br label %92

92:                                               ; preds = %89, %86
  ret void
}

declare dso_local %struct.event_base* @event_base_new(...) #1

declare dso_local %struct.evdns_base* @evdns_base_new(%struct.event_base*, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_storage*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @tt_abort_perror(i8*) #1

declare dso_local i32 @evutil_make_socket_nonblocking(i64) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local %struct.evdns_server_port* @evdns_add_server_port_with_base(%struct.event_base*, i64, i32, i32, %struct.event_base*) #1

declare dso_local i64 @getsockname(i64, %struct.sockaddr*, i32*) #1

declare dso_local i32 @evdns_base_nameserver_sockaddr_add(%struct.evdns_base*, %struct.sockaddr*, i32, i32) #1

declare dso_local i32 @gaic_launch(%struct.event_base*, %struct.evdns_base*) #1

declare dso_local i32 @event_base_dispatch(%struct.event_base*) #1

declare dso_local i32 @evdns_base_free(%struct.evdns_base*, i32) #1

declare dso_local i32 @evdns_close_server_port(%struct.evdns_server_port*) #1

declare dso_local i32 @event_base_free(%struct.event_base*) #1

declare dso_local i32 @evutil_closesocket(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
