; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_getid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211req = type { i32, i64, i8*, i32, i32 }

@name = common dso_local global i32 0, align 4
@IEEE80211_IOC_SSID = common dso_local global i32 0, align 4
@IEEE80211_IOC_MESH_ID = common dso_local global i32 0, align 4
@SIOCG80211 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i64, i32*, i32)* @getid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getid(i32 %0, i32 %1, i8* %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ieee80211req, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = call i32 @memset(%struct.ieee80211req* %14, i32 0, i32 32)
  %16 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @name, align 4
  %19 = call i32 @strlcpy(i32 %17, i32 %18, i32 4)
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @IEEE80211_IOC_SSID, align 4
  br label %26

24:                                               ; preds = %6
  %25 = load i32, i32* @IEEE80211_IOC_MESH_ID, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  %28 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  %31 = load i8*, i8** %10, align 8
  %32 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 2
  store i8* %31, i8** %32, align 8
  %33 = load i64, i64* %11, align 8
  %34 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 1
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @SIOCG80211, align 4
  %37 = call i64 @ioctl(i32 %35, i32 %36, %struct.ieee80211req* %14)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %45

40:                                               ; preds = %26
  %41 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %14, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %12, align 8
  store i32 %43, i32* %44, align 4
  store i32 0, i32* %7, align 4
  br label %45

45:                                               ; preds = %40, %39
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @memset(%struct.ieee80211req*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
