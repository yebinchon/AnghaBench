; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_remoteact_getsock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_remoteact_getsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.activehosts = type { %struct.activehosts*, i32 }
%struct.addrinfo = type { %struct.addrinfo*, i64, i32, i32 }
%struct.sockaddr_storage = type { i32 }

@PF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"getaddrinfo() %s\00", align 1
@activeHosts = common dso_local global %struct.activehosts* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.activehosts* (i8*, i32*, i8*)* @rpcap_remoteact_getsock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.activehosts* @rpcap_remoteact_getsock(i8* %0, i32* %1, i8* %2) #0 {
  %4 = alloca %struct.activehosts*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.activehosts*, align 8
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca %struct.addrinfo*, align 8
  %11 = alloca %struct.addrinfo*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %10, align 8
  %13 = call i32 @memset(%struct.addrinfo* %9, i32 0, i32 24)
  %14 = load i32, i32* @PF_UNSPEC, align 4
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 3
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @SOCK_STREAM, align 4
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 2
  store i32 %16, i32* %17, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @getaddrinfo(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.addrinfo* %9, %struct.addrinfo** %10)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call i32 @gai_strerror(i32 %25)
  %27 = call i32 @pcap_snprintf(i8* %23, i32 %24, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load i32*, i32** %6, align 8
  store i32 1, i32* %28, align 4
  store %struct.activehosts* null, %struct.activehosts** %4, align 8
  br label %69

29:                                               ; preds = %3
  %30 = load %struct.activehosts*, %struct.activehosts** @activeHosts, align 8
  store %struct.activehosts* %30, %struct.activehosts** %8, align 8
  br label %31

31:                                               ; preds = %57, %29
  %32 = load %struct.activehosts*, %struct.activehosts** %8, align 8
  %33 = icmp ne %struct.activehosts* %32, null
  br i1 %33, label %34, label %61

34:                                               ; preds = %31
  %35 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  store %struct.addrinfo* %35, %struct.addrinfo** %11, align 8
  br label %36

36:                                               ; preds = %53, %34
  %37 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %38 = icmp ne %struct.addrinfo* %37, null
  br i1 %38, label %39, label %57

39:                                               ; preds = %36
  %40 = load %struct.activehosts*, %struct.activehosts** %8, align 8
  %41 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %40, i32 0, i32 1
  %42 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %43 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.sockaddr_storage*
  %46 = call i64 @sock_cmpaddr(i32* %41, %struct.sockaddr_storage* %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i32*, i32** %6, align 8
  store i32 0, i32* %49, align 4
  %50 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %51 = call i32 @freeaddrinfo(%struct.addrinfo* %50)
  %52 = load %struct.activehosts*, %struct.activehosts** %8, align 8
  store %struct.activehosts* %52, %struct.activehosts** %4, align 8
  br label %69

53:                                               ; preds = %39
  %54 = load %struct.addrinfo*, %struct.addrinfo** %11, align 8
  %55 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %54, i32 0, i32 0
  %56 = load %struct.addrinfo*, %struct.addrinfo** %55, align 8
  store %struct.addrinfo* %56, %struct.addrinfo** %11, align 8
  br label %36

57:                                               ; preds = %36
  %58 = load %struct.activehosts*, %struct.activehosts** %8, align 8
  %59 = getelementptr inbounds %struct.activehosts, %struct.activehosts* %58, i32 0, i32 0
  %60 = load %struct.activehosts*, %struct.activehosts** %59, align 8
  store %struct.activehosts* %60, %struct.activehosts** %8, align 8
  br label %31

61:                                               ; preds = %31
  %62 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %63 = icmp ne %struct.addrinfo* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.addrinfo*, %struct.addrinfo** %10, align 8
  %66 = call i32 @freeaddrinfo(%struct.addrinfo* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32*, i32** %6, align 8
  store i32 0, i32* %68, align 4
  store %struct.activehosts* null, %struct.activehosts** %4, align 8
  br label %69

69:                                               ; preds = %67, %48, %22
  %70 = load %struct.activehosts*, %struct.activehosts** %4, align 8
  ret %struct.activehosts* %70
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @pcap_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @gai_strerror(i32) #1

declare dso_local i64 @sock_cmpaddr(i32*, %struct.sockaddr_storage*) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
