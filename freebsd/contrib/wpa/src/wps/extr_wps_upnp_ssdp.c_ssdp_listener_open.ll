; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_ssdp_listener_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_ssdp_listener_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { i8* }
%struct.ip_mreq = type { %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEADDR = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@UPNP_MULTICAST_PORT = common dso_local global i32 0, align 4
@UPNP_MULTICAST_ADDRESS = common dso_local global i32 0, align 4
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_ADD_MEMBERSHIP = common dso_local global i32 0, align 4
@IP_MULTICAST_TTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssdp_listener_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_in, align 8
  %3 = alloca %struct.ip_mreq, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store i32 1, i32* %4, align 4
  store i8 4, i8* %5, align 1
  %7 = load i32, i32* @AF_INET, align 4
  %8 = load i32, i32* @SOCK_DGRAM, align 4
  %9 = call i32 @socket(i32 %7, i32 %8, i32 0)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %0
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @F_SETFL, align 4
  %15 = load i32, i32* @O_NONBLOCK, align 4
  %16 = call i64 @fcntl(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @SOL_SOCKET, align 4
  %21 = load i32, i32* @SO_REUSEADDR, align 4
  %22 = call i64 (i32, i32, i32, ...) @setsockopt(i32 %19, i32 %20, i32 %21, i32* %4, i64 4)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %18, %12, %0
  br label %67

25:                                               ; preds = %18
  %26 = call i32 @os_memset(%struct.sockaddr_in* %2, i32 0, i32 40)
  %27 = load i32, i32* @AF_INET, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 4
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* @INADDR_ANY, align 4
  %30 = call i8* @htonl(i32 %29)
  %31 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @UPNP_MULTICAST_PORT, align 4
  %34 = call i32 @htons(i32 %33)
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %2, i32 0, i32 2
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %6, align 4
  %37 = bitcast %struct.sockaddr_in* %2 to %struct.sockaddr*
  %38 = call i64 @bind(i32 %36, %struct.sockaddr* %37, i32 40)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %25
  br label %67

41:                                               ; preds = %25
  %42 = bitcast %struct.ip_mreq* %3 to %struct.sockaddr_in*
  %43 = call i32 @os_memset(%struct.sockaddr_in* %42, i32 0, i32 40)
  %44 = load i32, i32* @INADDR_ANY, align 4
  %45 = call i8* @htonl(i32 %44)
  %46 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %3, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @UPNP_MULTICAST_ADDRESS, align 4
  %49 = call i32 @inet_addr(i32 %48)
  %50 = getelementptr inbounds %struct.ip_mreq, %struct.ip_mreq* %3, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @IPPROTO_IP, align 4
  %54 = load i32, i32* @IP_ADD_MEMBERSHIP, align 4
  %55 = bitcast %struct.ip_mreq* %3 to i8*
  %56 = call i64 (i32, i32, i32, ...) @setsockopt(i32 %52, i32 %53, i32 %54, i8* %55, i64 40)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %41
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @IPPROTO_IP, align 4
  %61 = load i32, i32* @IP_MULTICAST_TTL, align 4
  %62 = call i64 (i32, i32, i32, ...) @setsockopt(i32 %59, i32 %60, i32 %61, i8* %5, i64 1)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58, %41
  br label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %1, align 4
  br label %74

67:                                               ; preds = %64, %40, %24
  %68 = load i32, i32* %6, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @close(i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  store i32 -1, i32* %1, align 4
  br label %74

74:                                               ; preds = %73, %65
  %75 = load i32, i32* %1, align 4
  ret i32 %75
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i64 @fcntl(i32, i32, i32) #1

declare dso_local i64 @setsockopt(i32, i32, i32, ...) #1

declare dso_local i32 @os_memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @inet_addr(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
