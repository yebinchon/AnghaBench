; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_get80211wme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_get80211wme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211req = type { i32, i32, i32, i32 }

@name = common dso_local global i32 0, align 4
@SIOCG80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"cannot get WME parameter %d, ac %d%s\00", align 1
@IEEE80211_WMEPARAM_VAL = common dso_local global i32 0, align 4
@IEEE80211_WMEPARAM_BSS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" (BSS)\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @get80211wme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get80211wme(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211req, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = call i32 @memset(%struct.ieee80211req* %10, i32 0, i32 16)
  %12 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @name, align 4
  %15 = call i32 @strlcpy(i32 %13, i32 %14, i32 4)
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %8, align 4
  %19 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SIOCG80211, align 4
  %22 = call i64 @ioctl(i32 %20, i32 %21, %struct.ieee80211req* %10)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @IEEE80211_WMEPARAM_VAL, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @IEEE80211_WMEPARAM_BSS, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28, i8* %34)
  store i32 -1, i32* %5, align 4
  br label %40

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.ieee80211req, %struct.ieee80211req* %10, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %9, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %24
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @memset(%struct.ieee80211req*, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ieee80211req*) #1

declare dso_local i32 @warn(i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
