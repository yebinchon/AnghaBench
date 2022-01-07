; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netfilter-linux.c_nfqueue_send_verdict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libpcap/extr_pcap-netfilter-linux.c_nfqueue_send_verdict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfqnl_msg_verdict_hdr = type { i8*, i8* }
%struct.my_nfattr = type { i32, i32, %struct.nfqnl_msg_verdict_hdr* }

@NFQA_VERDICT_HDR = common dso_local global i32 0, align 4
@NFNL_SUBSYS_QUEUE = common dso_local global i32 0, align 4
@NFQNL_MSG_VERDICT = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32, i32)* @nfqueue_send_verdict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfqueue_send_verdict(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfqnl_msg_verdict_hdr, align 8
  %10 = alloca %struct.my_nfattr, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i8* @htonl(i32 %11)
  %13 = getelementptr inbounds %struct.nfqnl_msg_verdict_hdr, %struct.nfqnl_msg_verdict_hdr* %9, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i8* @htonl(i32 %14)
  %16 = getelementptr inbounds %struct.nfqnl_msg_verdict_hdr, %struct.nfqnl_msg_verdict_hdr* %9, i32 0, i32 0
  store i8* %15, i8** %16, align 8
  %17 = getelementptr inbounds %struct.my_nfattr, %struct.my_nfattr* %10, i32 0, i32 2
  store %struct.nfqnl_msg_verdict_hdr* %9, %struct.nfqnl_msg_verdict_hdr** %17, align 8
  %18 = load i32, i32* @NFQA_VERDICT_HDR, align 4
  %19 = getelementptr inbounds %struct.my_nfattr, %struct.my_nfattr* %10, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.my_nfattr, %struct.my_nfattr* %10, i32 0, i32 0
  store i32 16, i32* %20, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @NFNL_SUBSYS_QUEUE, align 4
  %23 = shl i32 %22, 8
  %24 = load i32, i32* @NFQNL_MSG_VERDICT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AF_UNSPEC, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @netfilter_send_config_msg(i32* %21, i32 %25, i32 0, i32 %26, i32 %27, %struct.my_nfattr* %10)
  ret i32 %28
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @netfilter_send_config_msg(i32*, i32, i32, i32, i32, %struct.my_nfattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
