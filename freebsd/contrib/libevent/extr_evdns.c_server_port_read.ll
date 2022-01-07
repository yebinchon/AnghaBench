; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_server_port_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_server_port_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_server_port = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Error %s (%d) while reading request.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evdns_server_port*)* @server_port_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @server_port_read(%struct.evdns_server_port* %0) #0 {
  %2 = alloca %struct.evdns_server_port*, align 8
  %3 = alloca [1500 x i32], align 16
  %4 = alloca %struct.sockaddr_storage, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.evdns_server_port* %0, %struct.evdns_server_port** %2, align 8
  %8 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %9 = call i32 @ASSERT_LOCKED(%struct.evdns_server_port* %8)
  br label %10

10:                                               ; preds = %35, %1
  store i32 4, i32* %5, align 4
  %11 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %12 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds [1500 x i32], [1500 x i32]* %3, i64 0, i64 0
  %15 = bitcast i32* %14 to i8*
  %16 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %17 = call i32 @recvfrom(i32 %13, i8* %15, i32 6000, i32 0, %struct.sockaddr* %16, i32* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %10
  %21 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %22 = getelementptr inbounds %struct.evdns_server_port, %struct.evdns_server_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @evutil_socket_geterror(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @EVUTIL_ERR_RW_RETRIABLE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %42

29:                                               ; preds = %20
  %30 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @evutil_socket_error_to_string(i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @log(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %42

35:                                               ; preds = %10
  %36 = getelementptr inbounds [1500 x i32], [1500 x i32]* %3, i64 0, i64 0
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.evdns_server_port*, %struct.evdns_server_port** %2, align 8
  %39 = bitcast %struct.sockaddr_storage* %4 to %struct.sockaddr*
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @request_parse(i32* %36, i32 %37, %struct.evdns_server_port* %38, %struct.sockaddr* %39, i32 %40)
  br label %10

42:                                               ; preds = %29, %28
  ret void
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_server_port*) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @evutil_socket_geterror(i32) #1

declare dso_local i64 @EVUTIL_ERR_RW_RETRIABLE(i32) #1

declare dso_local i32 @log(i32, i8*, i32, i32) #1

declare dso_local i32 @evutil_socket_error_to_string(i32) #1

declare dso_local i32 @request_parse(i32*, i32, %struct.evdns_server_port*, %struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
