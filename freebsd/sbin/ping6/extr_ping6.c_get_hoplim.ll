; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_get_hoplim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ping6/extr_ping6.c_get_hoplim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.cmsghdr = type { i64, i64, i64 }

@IPPROTO_IPV6 = common dso_local global i64 0, align 8
@IPV6_HOPLIMIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msghdr*)* @get_hoplim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_hoplim(%struct.msghdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.cmsghdr*, align 8
  %5 = alloca i32, align 4
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  %6 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %7 = call i64 @CMSG_FIRSTHDR(%struct.msghdr* %6)
  %8 = inttoptr i64 %7 to %struct.cmsghdr*
  store %struct.cmsghdr* %8, %struct.cmsghdr** %4, align 8
  br label %9

9:                                                ; preds = %42, %1
  %10 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %11 = icmp ne %struct.cmsghdr* %10, null
  br i1 %11, label %12, label %47

12:                                               ; preds = %9
  %13 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %14 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %48

18:                                               ; preds = %12
  %19 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %20 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IPPROTO_IPV6, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %18
  %25 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %26 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPV6_HOPLIMIT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %32 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @CMSG_LEN(i32 4)
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %38 = call i32 @CMSG_DATA(%struct.cmsghdr* %37)
  %39 = call i32 @memcpy(i32* %5, i32 %38, i32 4)
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %2, align 4
  br label %48

41:                                               ; preds = %30, %24, %18
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %44 = load %struct.cmsghdr*, %struct.cmsghdr** %4, align 8
  %45 = call i64 @CMSG_NXTHDR(%struct.msghdr* %43, %struct.cmsghdr* %44)
  %46 = inttoptr i64 %45 to %struct.cmsghdr*
  store %struct.cmsghdr* %46, %struct.cmsghdr** %4, align 8
  br label %9

47:                                               ; preds = %9
  store i32 -1, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %36, %17
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i64 @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @CMSG_LEN(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i64 @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
