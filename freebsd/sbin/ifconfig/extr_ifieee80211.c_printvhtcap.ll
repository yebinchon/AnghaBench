; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printvhtcap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_printvhtcap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_ie_vhtcap = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"<cap 0x%08x\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c" rx_mcs_map 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c" rx_highest %d\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c" tx_mcs_map 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c" tx_highest %d\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c">\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64, i32)* @printvhtcap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printvhtcap(i8* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_ie_vhtcap*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i64, i64* @verbose, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %4
  %16 = load i32*, i32** %6, align 8
  %17 = bitcast i32* %16 to %struct.ieee80211_ie_vhtcap*
  store %struct.ieee80211_ie_vhtcap* %17, %struct.ieee80211_ie_vhtcap** %9, align 8
  %18 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %9, align 8
  %19 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %18, i32 0, i32 1
  %20 = call i32 @LE_READ_4(i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  %26 = call i32 @LE_READ_2(i32* %25)
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = call i32 @LE_READ_2(i32* %30)
  %32 = and i32 %31, 8191
  %33 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %32)
  %34 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = call i32 @LE_READ_2(i32* %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %37)
  %39 = load %struct.ieee80211_ie_vhtcap*, %struct.ieee80211_ie_vhtcap** %9, align 8
  %40 = getelementptr inbounds %struct.ieee80211_ie_vhtcap, %struct.ieee80211_ie_vhtcap* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @LE_READ_2(i32* %41)
  %43 = and i32 %42, 8191
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %46

46:                                               ; preds = %15, %4
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @LE_READ_4(i32*) #1

declare dso_local i32 @LE_READ_2(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
