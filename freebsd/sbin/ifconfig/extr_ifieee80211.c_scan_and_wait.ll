; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_scan_and_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_scan_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_scan_req = type { i32, i32, %struct.ieee80211_scan_req*, i64, i32, i32, i32 }
%struct.ieee80211req = type { i32, i32, %struct.ieee80211req*, i64, i32, i32, i32 }
%struct.if_announcemsghdr = type { i64 }
%struct.rt_msghdr = type { i64, i64 }

@PF_ROUTE = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"socket(PF_ROUTE,SOCK_RAW)\00", align 1
@name = common dso_local global i32 0, align 4
@IEEE80211_IOC_SCAN_REQ = common dso_local global i32 0, align 4
@IEEE80211_IOC_SCAN_ACTIVE = common dso_local global i32 0, align 4
@IEEE80211_IOC_SCAN_BGSCAN = common dso_local global i32 0, align 4
@IEEE80211_IOC_SCAN_NOPICK = common dso_local global i32 0, align 4
@IEEE80211_IOC_SCAN_ONCE = common dso_local global i32 0, align 4
@IEEE80211_IOC_SCAN_FOREVER = common dso_local global i32 0, align 4
@SIOCS80211 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"read(PF_ROUTE)\00", align 1
@RTM_VERSION = common dso_local global i64 0, align 8
@RTM_IEEE80211 = common dso_local global i64 0, align 8
@RTM_IEEE80211_SCAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @scan_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_and_wait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_scan_req, align 8
  %4 = alloca %struct.ieee80211req, align 8
  %5 = alloca i32, align 4
  %6 = alloca [2048 x i8], align 16
  %7 = alloca %struct.if_announcemsghdr*, align 8
  %8 = alloca %struct.rt_msghdr*, align 8
  store i32 %0, i32* %2, align 4
  %9 = load i32, i32* @PF_ROUTE, align 4
  %10 = load i32, i32* @SOCK_RAW, align 4
  %11 = call i32 @socket(i32 %9, i32 %10, i32 0)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = call i32 @perror(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %82

16:                                               ; preds = %1
  %17 = call i32 @memset(%struct.ieee80211req* %4, i32 0, i32 40)
  %18 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %4, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @name, align 4
  %21 = call i32 @strlcpy(i32 %19, i32 %20, i32 4)
  %22 = load i32, i32* @IEEE80211_IOC_SCAN_REQ, align 4
  %23 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %4, i32 0, i32 5
  store i32 %22, i32* %23, align 4
  %24 = bitcast %struct.ieee80211_scan_req* %3 to %struct.ieee80211req*
  %25 = call i32 @memset(%struct.ieee80211req* %24, i32 0, i32 40)
  %26 = load i32, i32* @IEEE80211_IOC_SCAN_ACTIVE, align 4
  %27 = load i32, i32* @IEEE80211_IOC_SCAN_BGSCAN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IEEE80211_IOC_SCAN_NOPICK, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @IEEE80211_IOC_SCAN_ONCE, align 4
  %32 = or i32 %30, %31
  %33 = getelementptr inbounds %struct.ieee80211_scan_req, %struct.ieee80211_scan_req* %3, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @IEEE80211_IOC_SCAN_FOREVER, align 4
  %35 = getelementptr inbounds %struct.ieee80211_scan_req, %struct.ieee80211_scan_req* %3, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.ieee80211_scan_req, %struct.ieee80211_scan_req* %3, i32 0, i32 3
  store i64 0, i64* %36, align 8
  %37 = bitcast %struct.ieee80211_scan_req* %3 to %struct.ieee80211req*
  %38 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %4, i32 0, i32 2
  store %struct.ieee80211req* %37, %struct.ieee80211req** %38, align 8
  %39 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %4, i32 0, i32 1
  store i32 40, i32* %39, align 4
  %40 = load i32, i32* %2, align 4
  %41 = load i32, i32* @SIOCS80211, align 4
  %42 = call i64 @ioctl(i32 %40, i32 %41, %struct.ieee80211req* %4)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %76, %44
  %46 = load i32, i32* %5, align 4
  %47 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %48 = call i64 @read(i32 %46, i8* %47, i32 2048)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %78

52:                                               ; preds = %45
  %53 = getelementptr inbounds [2048 x i8], [2048 x i8]* %6, i64 0, i64 0
  %54 = bitcast i8* %53 to %struct.rt_msghdr*
  store %struct.rt_msghdr* %54, %struct.rt_msghdr** %8, align 8
  %55 = load %struct.rt_msghdr*, %struct.rt_msghdr** %8, align 8
  %56 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RTM_VERSION, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %78

61:                                               ; preds = %52
  %62 = load %struct.rt_msghdr*, %struct.rt_msghdr** %8, align 8
  %63 = bitcast %struct.rt_msghdr* %62 to %struct.if_announcemsghdr*
  store %struct.if_announcemsghdr* %63, %struct.if_announcemsghdr** %7, align 8
  br label %64

64:                                               ; preds = %61
  %65 = load %struct.rt_msghdr*, %struct.rt_msghdr** %8, align 8
  %66 = getelementptr inbounds %struct.rt_msghdr, %struct.rt_msghdr* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RTM_IEEE80211, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %76, label %70

70:                                               ; preds = %64
  %71 = load %struct.if_announcemsghdr*, %struct.if_announcemsghdr** %7, align 8
  %72 = getelementptr inbounds %struct.if_announcemsghdr, %struct.if_announcemsghdr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @RTM_IEEE80211_SCAN, align 8
  %75 = icmp ne i64 %73, %74
  br label %76

76:                                               ; preds = %70, %64
  %77 = phi i1 [ true, %64 ], [ %75, %70 ]
  br i1 %77, label %45, label %78

78:                                               ; preds = %76, %60, %50
  br label %79

79:                                               ; preds = %78, %16
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @close(i32 %80)
  br label %82

82:                                               ; preds = %79, %14
  ret void
}

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @memset(%struct.ieee80211req*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211req*) #1

declare dso_local i64 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
