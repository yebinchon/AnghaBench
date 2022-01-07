; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_testutils.c_regress_get_dnsserver.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_testutils.c_regress_get_dnsserver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_port = type { i32 }
%struct.event_base = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evdns_server_port* @regress_get_dnsserver(%struct.event_base* %0, i32* %1, i64* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evdns_server_port*, align 8
  %7 = alloca %struct.event_base*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.evdns_server_port*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sockaddr_in, align 4
  store %struct.event_base* %0, %struct.event_base** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store %struct.evdns_server_port* null, %struct.evdns_server_port** %12, align 8
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load i32, i32* @SOCK_DGRAM, align 4
  %17 = call i64 @socket(i32 %15, i32 %16, i32 0)
  store i64 %17, i64* %13, align 8
  %18 = load i64, i64* %13, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = call i32 @tt_abort_perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %5
  %23 = load i64, i64* %13, align 8
  %24 = call i32 @evutil_make_socket_nonblocking(i64 %23)
  %25 = call i32 @memset(%struct.sockaddr_in* %14, i32 0, i32 12)
  %26 = load i32, i32* @AF_INET, align 4
  %27 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @htons(i32 %29)
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 1
  store i32 %30, i32* %31, align 4
  %32 = call i32 @htonl(i32 2130706433)
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %14, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i64, i64* %13, align 8
  %36 = bitcast %struct.sockaddr_in* %14 to %struct.sockaddr*
  %37 = call i64 @bind(i64 %35, %struct.sockaddr* %36, i32 12)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %22
  %40 = load i64, i64* %13, align 8
  %41 = call i32 @evutil_closesocket(i64 %40)
  %42 = call i32 @tt_abort_perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %22
  %44 = load %struct.event_base*, %struct.event_base** %7, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i32, i32* %10, align 4
  %47 = load i8*, i8** %11, align 8
  %48 = call %struct.evdns_server_port* @evdns_add_server_port_with_base(%struct.event_base* %44, i64 %45, i32 0, i32 %46, i8* %47)
  store %struct.evdns_server_port* %48, %struct.evdns_server_port** %12, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %43
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @regress_get_socket_port(i64 %53)
  %55 = load i32*, i32** %8, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %52, %43
  %57 = load i64*, i64** %9, align 8
  %58 = icmp ne i64* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i64, i64* %13, align 8
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.evdns_server_port*, %struct.evdns_server_port** %12, align 8
  store %struct.evdns_server_port* %63, %struct.evdns_server_port** %6, align 8
  br label %65

64:                                               ; No predecessors!
  store %struct.evdns_server_port* null, %struct.evdns_server_port** %6, align 8
  br label %65

65:                                               ; preds = %64, %62
  %66 = load %struct.evdns_server_port*, %struct.evdns_server_port** %6, align 8
  ret %struct.evdns_server_port* %66
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @tt_abort_perror(i8*) #1

declare dso_local i32 @evutil_make_socket_nonblocking(i64) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i64 @bind(i64, %struct.sockaddr*, i32) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local %struct.evdns_server_port* @evdns_add_server_port_with_base(%struct.event_base*, i64, i32, i32, i8*) #1

declare dso_local i32 @regress_get_socket_port(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
