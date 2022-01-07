; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_nl_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_getifaddrs.c_nl_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_nl = type { i32 }
%struct.sockaddr = type { i32 }

@PF_NETLINK = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@NETLINK_ROUTE = common dso_local global i32 0, align 4
@AF_NETLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @nl_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl_open() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sockaddr_nl, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @PF_NETLINK, align 4
  %5 = load i32, i32* @SOCK_RAW, align 4
  %6 = load i32, i32* @NETLINK_ROUTE, align 4
  %7 = call i32 @socket(i32 %4, i32 %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %24

11:                                               ; preds = %0
  %12 = call i32 @memset(%struct.sockaddr_nl* %2, i32 0, i32 4)
  %13 = load i32, i32* @AF_NETLINK, align 4
  %14 = getelementptr inbounds %struct.sockaddr_nl, %struct.sockaddr_nl* %2, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %3, align 4
  %16 = bitcast %struct.sockaddr_nl* %2 to %struct.sockaddr*
  %17 = call i64 @bind(i32 %15, %struct.sockaddr* %16, i32 4)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @nl_close(i32 %20)
  store i32 -1, i32* %1, align 4
  br label %24

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  store i32 %23, i32* %1, align 4
  br label %24

24:                                               ; preds = %22, %19, %10
  %25 = load i32, i32* %1, align 4
  ret i32 %25
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.sockaddr_nl*, i32, i32) #1

declare dso_local i64 @bind(i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @nl_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
