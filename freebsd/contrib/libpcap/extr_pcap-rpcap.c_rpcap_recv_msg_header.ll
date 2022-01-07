; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_recv_msg_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-rpcap.c_rpcap_recv_msg_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcap_header = type { i32 }

@SOCK_RECEIVEALL_YES = common dso_local global i32 0, align 4
@SOCK_EOF_IS_ERROR = common dso_local global i32 0, align 4
@PCAP_ERRBUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.rpcap_header*, i8*)* @rpcap_recv_msg_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpcap_recv_msg_header(i32 %0, %struct.rpcap_header* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpcap_header*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.rpcap_header* %1, %struct.rpcap_header** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.rpcap_header*, %struct.rpcap_header** %6, align 8
  %11 = bitcast %struct.rpcap_header* %10 to i8*
  %12 = load i32, i32* @SOCK_RECEIVEALL_YES, align 4
  %13 = load i32, i32* @SOCK_EOF_IS_ERROR, align 4
  %14 = or i32 %12, %13
  %15 = load i8*, i8** %7, align 8
  %16 = load i32, i32* @PCAP_ERRBUF_SIZE, align 4
  %17 = call i32 @sock_recv(i32 %9, i8* %11, i32 4, i32 %14, i8* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.rpcap_header*, %struct.rpcap_header** %6, align 8
  %23 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohl(i32 %24)
  %26 = load %struct.rpcap_header*, %struct.rpcap_header** %6, align 8
  %27 = getelementptr inbounds %struct.rpcap_header, %struct.rpcap_header* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %21, %20
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @sock_recv(i32, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
