; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_host_v6.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/pfctl/extr_pfctl_parser.c_host_v6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node_host = type { %struct.node_host*, i32*, i32, %struct.TYPE_6__, i8*, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.addrinfo = type { i64, i32, i32, i8* }
%struct.sockaddr_in6 = type { i32, i32 }

@AF_INET6 = common dso_local global i8* null, align 8
@SOCK_DGRAM = common dso_local global i32 0, align 4
@AI_NUMERICHOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"address: calloc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.node_host* @host_v6(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo, align 8
  %6 = alloca %struct.addrinfo*, align 8
  %7 = alloca %struct.node_host*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.node_host* null, %struct.node_host** %7, align 8
  %8 = call i32 @memset(%struct.addrinfo* %5, i32 0, i32 24)
  %9 = load i8*, i8** @AF_INET6, align 8
  %10 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 3
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* @SOCK_DGRAM, align 4
  %12 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 2
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @AI_NUMERICHOST, align 4
  %14 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %5, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @getaddrinfo(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %5, %struct.addrinfo** %6)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %59

18:                                               ; preds = %2
  %19 = call %struct.node_host* @calloc(i32 1, i32 40)
  store %struct.node_host* %19, %struct.node_host** %7, align 8
  %20 = load %struct.node_host*, %struct.node_host** %7, align 8
  %21 = icmp eq %struct.node_host* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %18
  %25 = load %struct.node_host*, %struct.node_host** %7, align 8
  %26 = getelementptr inbounds %struct.node_host, %struct.node_host* %25, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = load i8*, i8** @AF_INET6, align 8
  %28 = load %struct.node_host*, %struct.node_host** %7, align 8
  %29 = getelementptr inbounds %struct.node_host, %struct.node_host* %28, i32 0, i32 4
  store i8* %27, i8** %29, align 8
  %30 = load %struct.node_host*, %struct.node_host** %7, align 8
  %31 = getelementptr inbounds %struct.node_host, %struct.node_host* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %36 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.sockaddr_in6*
  %39 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %38, i32 0, i32 1
  %40 = call i32 @memcpy(i32* %34, i32* %39, i32 4)
  %41 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %42 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.sockaddr_in6*
  %45 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.node_host*, %struct.node_host** %7, align 8
  %48 = getelementptr inbounds %struct.node_host, %struct.node_host* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load %struct.node_host*, %struct.node_host** %7, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @set_ipmask(%struct.node_host* %49, i32 %50)
  %52 = load %struct.addrinfo*, %struct.addrinfo** %6, align 8
  %53 = call i32 @freeaddrinfo(%struct.addrinfo* %52)
  %54 = load %struct.node_host*, %struct.node_host** %7, align 8
  %55 = getelementptr inbounds %struct.node_host, %struct.node_host* %54, i32 0, i32 1
  store i32* null, i32** %55, align 8
  %56 = load %struct.node_host*, %struct.node_host** %7, align 8
  %57 = load %struct.node_host*, %struct.node_host** %7, align 8
  %58 = getelementptr inbounds %struct.node_host, %struct.node_host* %57, i32 0, i32 0
  store %struct.node_host* %56, %struct.node_host** %58, align 8
  br label %59

59:                                               ; preds = %24, %2
  %60 = load %struct.node_host*, %struct.node_host** %7, align 8
  ret %struct.node_host* %60
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local %struct.node_host* @calloc(i32, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @set_ipmask(%struct.node_host*, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
