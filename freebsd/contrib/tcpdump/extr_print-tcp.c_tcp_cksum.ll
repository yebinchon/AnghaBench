; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-tcp.c_tcp_cksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-tcp.c_tcp_cksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip = type { i32 }
%struct.tcphdr = type { i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ip*, %struct.tcphdr*, i32)* @tcp_cksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_cksum(i32* %0, %struct.ip* %1, %struct.tcphdr* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ip*, align 8
  %7 = alloca %struct.tcphdr*, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.ip* %1, %struct.ip** %6, align 8
  store %struct.tcphdr* %2, %struct.tcphdr** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32*, i32** %5, align 8
  %10 = load %struct.ip*, %struct.ip** %6, align 8
  %11 = load %struct.tcphdr*, %struct.tcphdr** %7, align 8
  %12 = bitcast %struct.tcphdr* %11 to i32*
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @IPPROTO_TCP, align 4
  %16 = call i32 @nextproto4_cksum(i32* %9, %struct.ip* %10, i32* %12, i32 %13, i32 %14, i32 %15)
  ret i32 %16
}

declare dso_local i32 @nextproto4_cksum(i32*, %struct.ip*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
