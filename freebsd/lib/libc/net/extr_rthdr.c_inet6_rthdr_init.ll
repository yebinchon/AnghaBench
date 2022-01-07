; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rthdr_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_rthdr.c_inet6_rthdr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmsghdr = type { i8*, i32, i32 }
%struct.ip6_rthdr = type { i32 }

@IPPROTO_IPV6 = common dso_local global i32 0, align 4
@IPV6_RTHDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cmsghdr* @inet6_rthdr_init(i8* %0, i32 %1) #0 {
  %3 = alloca %struct.cmsghdr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmsghdr*, align 8
  %7 = alloca %struct.ip6_rthdr*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.cmsghdr*
  store %struct.cmsghdr* %9, %struct.cmsghdr** %6, align 8
  %10 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %11 = call i64 @CMSG_DATA(%struct.cmsghdr* %10)
  %12 = inttoptr i64 %11 to %struct.ip6_rthdr*
  store %struct.ip6_rthdr* %12, %struct.ip6_rthdr** %7, align 8
  %13 = load i32, i32* @IPPROTO_IPV6, align 4
  %14 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %15 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IPV6_RTHDR, align 4
  %17 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %18 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %29 [
    i32 128, label %20
  ]

20:                                               ; preds = %2
  %21 = call i8* @CMSG_LEN(i32 4)
  %22 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %23 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %7, align 8
  %25 = call i32 @bzero(%struct.ip6_rthdr* %24, i32 4)
  %26 = load %struct.ip6_rthdr*, %struct.ip6_rthdr** %7, align 8
  %27 = getelementptr inbounds %struct.ip6_rthdr, %struct.ip6_rthdr* %26, i32 0, i32 0
  store i32 128, i32* %27, align 4
  %28 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  store %struct.cmsghdr* %28, %struct.cmsghdr** %3, align 8
  br label %30

29:                                               ; preds = %2
  store %struct.cmsghdr* null, %struct.cmsghdr** %3, align 8
  br label %30

30:                                               ; preds = %29, %20
  %31 = load %struct.cmsghdr*, %struct.cmsghdr** %3, align 8
  ret %struct.cmsghdr* %31
}

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i8* @CMSG_LEN(i32) #1

declare dso_local i32 @bzero(%struct.ip6_rthdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
