; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/net/extr_t_pktinfo.c_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/net/extr_t_pktinfo.c_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@INADDR_LOOPBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"bind\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"getsockname\00", align 1
@IPPROTO_IP = common dso_local global i32 0, align 4
@IP_PKTINFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"setsockopt\00", align 1
@IP_RECVPKTINFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in*)* @server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server(%struct.sockaddr_in* %0) #0 {
  %2 = alloca %struct.sockaddr_in*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %2, align 8
  store i32 24, i32* %5, align 4
  %6 = load i32, i32* @AF_INET, align 4
  %7 = load i32, i32* @SOCK_DGRAM, align 4
  %8 = load i32, i32* @IPPROTO_UDP, align 4
  %9 = call i32 @socket(i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @ERR(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @memset(%struct.sockaddr_in* %14, i32 0, i32 %15)
  %17 = load i32, i32* @AF_INET, align 4
  %18 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %19 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 2
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* @INADDR_LOOPBACK, align 4
  %26 = call i32 @htonl(i32 %25)
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %32 = bitcast %struct.sockaddr_in* %31 to %struct.sockaddr*
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @bind(i32 %30, %struct.sockaddr* %32, i32 %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %13
  %37 = call i32 @ERR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %13
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %2, align 8
  %41 = bitcast %struct.sockaddr_in* %40 to %struct.sockaddr*
  %42 = call i32 @getsockname(i32 %39, %struct.sockaddr* %41, i32* %5)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = call i32 @ERR(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %38
  store i32 1, i32* %4, align 4
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @IPPROTO_IP, align 4
  %49 = load i32, i32* @IP_PKTINFO, align 4
  %50 = call i32 @setsockopt(i32 %47, i32 %48, i32 %49, i32* %4, i32 4)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 @ERR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %52, %46
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @IPPROTO_IP, align 4
  %57 = load i32, i32* @IP_RECVPKTINFO, align 4
  %58 = call i32 @setsockopt(i32 %55, i32 %56, i32 %57, i32* %4, i32 4)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = call i32 @ERR(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %54
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
