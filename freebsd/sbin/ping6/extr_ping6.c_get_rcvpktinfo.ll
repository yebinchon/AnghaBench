; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_get_rcvpktinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_get_rcvpktinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_pktinfo = type { i32 }
%struct.msghdr = type { i32 }
%struct.cmsghdr = type { i64, i64, i64 }

@get_rcvpktinfo.pi = internal global %struct.in6_pktinfo zeroinitializer, align 4
@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IPV6_PKTINFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.in6_pktinfo* (%struct.msghdr*)* @get_rcvpktinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.in6_pktinfo* @get_rcvpktinfo(%struct.msghdr* %0) #0 {
  %2 = alloca %struct.in6_pktinfo*, align 8
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.cmsghdr*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  %5 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %6 = call i64 @CMSG_FIRSTHDR(%struct.msghdr* %5)
  %7 = inttoptr i64 %6 to %struct.cmsghdr*
  store %struct.cmsghdr* %7, %struct.cmsghdr** %4, align 8
  br label %8

8:                                                ; preds = %40, %1
  %9 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %10 = icmp ne %struct.cmsghdr* %9, null
  br i1 %10, label %11, label %45

11:                                               ; preds = %8
  %12 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %13 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  store %struct.in6_pktinfo* null, %struct.in6_pktinfo** %2, align 8
  br label %46

17:                                               ; preds = %11
  %18 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %19 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IPPROTO_IPV6, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %17
  %24 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %25 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPV6_PKTINFO, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %23
  %30 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %31 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @CMSG_LEN(i32 4)
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %37 = call i32 @CMSG_DATA(%struct.cmsghdr* %36)
  %38 = call i32 @memcpy(%struct.in6_pktinfo* @get_rcvpktinfo.pi, i32 %37, i32 4)
  store %struct.in6_pktinfo* @get_rcvpktinfo.pi, %struct.in6_pktinfo** %2, align 8
  br label %46

39:                                               ; preds = %29, %23, %17
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %42 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %43 = call i64 @CMSG_NXTHDR(%struct.msghdr* %41, %struct.cmsghdr* %42)
  %44 = inttoptr i64 %43 to %struct.cmsghdr*
  store %struct.cmsghdr* %44, %struct.cmsghdr** %4, align 8
  br label %8

45:                                               ; preds = %8
  store %struct.in6_pktinfo* null, %struct.in6_pktinfo** %2, align 8
  br label %46

46:                                               ; preds = %45, %35, %16
  %47 = load %struct.in6_pktinfo*, %struct.in6_pktinfo** %2, align 8
  ret %struct.in6_pktinfo* %47
}

declare dso_local i64 @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @CMSG_LEN(i32) #1

declare dso_local i32 @memcpy(%struct.in6_pktinfo*, i32, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i64 @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
