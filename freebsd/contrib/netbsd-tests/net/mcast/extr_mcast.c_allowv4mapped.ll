; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_allowv4mapped.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/net/mcast/extr_mcast.c_allowv4mapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i64 }
%struct.sockaddr_in6 = type { i32 }

@AF_INET6 = common dso_local global i64 0, align 8
@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_V6ONLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.addrinfo*)* @allowv4mapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allowv4mapped(i32 %0, %struct.addrinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.addrinfo*, align 8
  %6 = alloca %struct.sockaddr_in6*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.addrinfo* %1, %struct.addrinfo** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %9 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AF_INET6, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.addrinfo*, %struct.addrinfo** %5, align 8
  %16 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = bitcast i8* %18 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %19, %struct.sockaddr_in6** %6, align 8
  %20 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %20, i32 0, i32 0
  %22 = call i32 @IN6_IS_ADDR_V4MAPPED(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %30

25:                                               ; preds = %14
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @IPPROTO_IPV6, align 4
  %28 = load i32, i32* @IPV6_V6ONLY, align 4
  %29 = call i32 @setsockopt(i32 %26, i32 %27, i32 %28, i32* %7, i32 4)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %24, %13
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @IN6_IS_ADDR_V4MAPPED(i32*) #1

declare dso_local i32 @setsockopt(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
