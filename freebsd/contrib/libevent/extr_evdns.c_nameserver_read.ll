; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_nameserver_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_nameserver_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameserver = type { i32, i64, i32, i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"Address mismatch on received DNS packet.  Apparent source was %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nameserver*)* @nameserver_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nameserver_read(%struct.nameserver* %0) #0 {
  %2 = alloca %struct.nameserver*, align 8
  %3 = alloca %struct.sockaddr_storage, align 4
  %4 = alloca i32, align 4
  %5 = alloca [1500 x i32], align 16
  %6 = alloca [128 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nameserver* %0, %struct.nameserver** %2, align 8
  store i32 4, i32* %4, align 4
  %9 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %10 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ASSERT_LOCKED(i32 %11)
  br label %13

13:                                               ; preds = %50, %1
  %14 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %15 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %18 = bitcast i32* %17 to i8*
  %19 = bitcast %struct.sockaddr_storage* %3 to %struct.sockaddr*
  %20 = call i32 @recvfrom(i32 %16, i8* %18, i32 6000, i32 0, %struct.sockaddr* %19, i32* %4)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %13
  %24 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %25 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @evutil_socket_geterror(i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i64 @EVUTIL_ERR_RW_RETRIABLE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %59

32:                                               ; preds = %23
  %33 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @evutil_socket_error_to_string(i32 %34)
  %36 = call i32 @nameserver_failed(%struct.nameserver* %33, i32 %35)
  br label %59

37:                                               ; preds = %13
  %38 = bitcast %struct.sockaddr_storage* %3 to %struct.sockaddr*
  %39 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %40 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %39, i32 0, i32 2
  %41 = bitcast i32* %40 to %struct.sockaddr*
  %42 = call i64 @evutil_sockaddr_cmp(%struct.sockaddr* %38, %struct.sockaddr* %41, i32 0)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %46 = bitcast %struct.sockaddr_storage* %3 to %struct.sockaddr*
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %48 = call i32 @evutil_format_sockaddr_port_(%struct.sockaddr* %46, i8* %47, i32 128)
  %49 = call i32 @log(i32 %45, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %59

50:                                               ; preds = %37
  %51 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %52 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.nameserver*, %struct.nameserver** %2, align 8
  %54 = getelementptr inbounds %struct.nameserver, %struct.nameserver* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds [1500 x i32], [1500 x i32]* %5, i64 0, i64 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @reply_parse(i32 %55, i32* %56, i32 %57)
  br label %13

59:                                               ; preds = %44, %32, %31
  ret void
}

declare dso_local i32 @ASSERT_LOCKED(i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @evutil_socket_geterror(i32) #1

declare dso_local i64 @EVUTIL_ERR_RW_RETRIABLE(i32) #1

declare dso_local i32 @nameserver_failed(%struct.nameserver*, i32) #1

declare dso_local i32 @evutil_socket_error_to_string(i32) #1

declare dso_local i64 @evutil_sockaddr_cmp(%struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @log(i32, i8*, i32) #1

declare dso_local i32 @evutil_format_sockaddr_port_(%struct.sockaddr*, i8*, i32) #1

declare dso_local i32 @reply_parse(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
