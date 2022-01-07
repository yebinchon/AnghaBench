; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_deseraddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_deseraddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcap_sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.rpcap_sockaddr_in = type { i32, i32 }
%struct.sockaddr_in = type { i32, i32, i32, i32 }

@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"malloc() failed\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpcap_sockaddr*, %struct.sockaddr_storage**, i8*)* @rpcap_deseraddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcap_deseraddr(%struct.rpcap_sockaddr* %0, %struct.sockaddr_storage** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpcap_sockaddr*, align 8
  %6 = alloca %struct.sockaddr_storage**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.rpcap_sockaddr_in*, align 8
  %9 = alloca %struct.sockaddr_in*, align 8
  store %struct.rpcap_sockaddr* %0, %struct.rpcap_sockaddr** %5, align 8
  store %struct.sockaddr_storage** %1, %struct.sockaddr_storage*** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.rpcap_sockaddr*, %struct.rpcap_sockaddr** %5, align 8
  %11 = getelementptr inbounds %struct.rpcap_sockaddr, %struct.rpcap_sockaddr* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ntohs(i32 %12)
  switch i32 %13, label %50 [
    i32 130, label %14
    i32 132, label %14
    i32 131, label %14
  ]

14:                                               ; preds = %3, %3, %3
  %15 = call i64 @malloc(i32 16)
  %16 = inttoptr i64 %15 to %struct.sockaddr_storage*
  %17 = load %struct.sockaddr_storage**, %struct.sockaddr_storage*** %6, align 8
  store %struct.sockaddr_storage* %16, %struct.sockaddr_storage** %17, align 8
  %18 = load %struct.sockaddr_storage**, %struct.sockaddr_storage*** %6, align 8
  %19 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %18, align 8
  %20 = icmp eq %struct.sockaddr_storage* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %24 = load i32, i32* @errno, align 4
  %25 = call i32 @pcap_fmt_errmsg_for_errno(i8* %22, i32 %23, i32 %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %53

26:                                               ; preds = %14
  %27 = load %struct.rpcap_sockaddr*, %struct.rpcap_sockaddr** %5, align 8
  %28 = bitcast %struct.rpcap_sockaddr* %27 to %struct.rpcap_sockaddr_in*
  store %struct.rpcap_sockaddr_in* %28, %struct.rpcap_sockaddr_in** %8, align 8
  %29 = load %struct.sockaddr_storage**, %struct.sockaddr_storage*** %6, align 8
  %30 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %29, align 8
  %31 = bitcast %struct.sockaddr_storage* %30 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %31, %struct.sockaddr_in** %9, align 8
  %32 = load i32, i32* @AF_INET, align 4
  %33 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %34 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.rpcap_sockaddr_in*, %struct.rpcap_sockaddr_in** %8, align 8
  %36 = getelementptr inbounds %struct.rpcap_sockaddr_in, %struct.rpcap_sockaddr_in* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohs(i32 %37)
  %39 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %40 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %42 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %41, i32 0, i32 2
  %43 = load %struct.rpcap_sockaddr_in*, %struct.rpcap_sockaddr_in** %8, align 8
  %44 = getelementptr inbounds %struct.rpcap_sockaddr_in, %struct.rpcap_sockaddr_in* %43, i32 0, i32 0
  %45 = call i32 @memcpy(i32* %42, i32* %44, i32 4)
  %46 = load %struct.sockaddr_in*, %struct.sockaddr_in** %9, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memset(i32 %48, i32 0, i32 4)
  br label %52

50:                                               ; preds = %3
  %51 = load %struct.sockaddr_storage**, %struct.sockaddr_storage*** %6, align 8
  store %struct.sockaddr_storage* null, %struct.sockaddr_storage** %51, align 8
  br label %52

52:                                               ; preds = %50, %26
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %21
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @pcap_fmt_errmsg_for_errno(i8*, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
