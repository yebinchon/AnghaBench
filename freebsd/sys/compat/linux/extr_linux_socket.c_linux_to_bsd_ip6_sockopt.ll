; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_to_bsd_ip6_sockopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linux/extr_linux_socket.c_linux_to_bsd_ip6_sockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IPV6_NEXTHOP = common dso_local global i32 0, align 4
@IPV6_UNICAST_HOPS = common dso_local global i32 0, align 4
@IPV6_MULTICAST_IF = common dso_local global i32 0, align 4
@IPV6_MULTICAST_HOPS = common dso_local global i32 0, align 4
@IPV6_MULTICAST_LOOP = common dso_local global i32 0, align 4
@IPV6_JOIN_GROUP = common dso_local global i32 0, align 4
@IPV6_LEAVE_GROUP = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@IPV6_DONTFRAG = common dso_local global i32 0, align 4
@IPV6_CHECKSUM = common dso_local global i32 0, align 4
@IPV6_DSTOPTS = common dso_local global i32 0, align 4
@IPV6_HOPLIMIT = common dso_local global i32 0, align 4
@IPV6_HOPOPTS = common dso_local global i32 0, align 4
@IPV6_PATHMTU = common dso_local global i32 0, align 4
@IPV6_PKTINFO = common dso_local global i32 0, align 4
@IPV6_RECVDSTOPTS = common dso_local global i32 0, align 4
@IPV6_RECVHOPLIMIT = common dso_local global i32 0, align 4
@IPV6_RECVHOPOPTS = common dso_local global i32 0, align 4
@IPV6_RECVPATHMTU = common dso_local global i32 0, align 4
@IPV6_RECVPKTINFO = common dso_local global i32 0, align 4
@IPV6_RECVRTHDR = common dso_local global i32 0, align 4
@IPV6_RTHDR = common dso_local global i32 0, align 4
@IPV6_RTHDRDSTOPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @linux_to_bsd_ip6_sockopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @linux_to_bsd_ip6_sockopt(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %23 [
    i32 140, label %5
    i32 129, label %7
    i32 142, label %9
    i32 143, label %11
    i32 141, label %13
    i32 150, label %15
    i32 147, label %17
    i32 128, label %19
    i32 148, label %21
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @IPV6_NEXTHOP, align 4
  store i32 %6, i32* %2, align 4
  br label %24

7:                                                ; preds = %1
  %8 = load i32, i32* @IPV6_UNICAST_HOPS, align 4
  store i32 %8, i32* %2, align 4
  br label %24

9:                                                ; preds = %1
  %10 = load i32, i32* @IPV6_MULTICAST_IF, align 4
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load i32, i32* @IPV6_MULTICAST_HOPS, align 4
  store i32 %12, i32* %2, align 4
  br label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @IPV6_MULTICAST_LOOP, align 4
  store i32 %14, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load i32, i32* @IPV6_JOIN_GROUP, align 4
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %1
  %18 = load i32, i32* @IPV6_LEAVE_GROUP, align 4
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %1
  %20 = load i32, i32* @IPV6_V6ONLY, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %1
  %22 = load i32, i32* @IPV6_DONTFRAG, align 4
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %21, %19, %17, %15, %13, %11, %9, %7, %5
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
