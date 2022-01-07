; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_gettxseq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_gettxseq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211req_sta_info = type { i32, i32* }

@IEEE80211_NODE_QOS = common dso_local global i32 0, align 4
@IEEE80211_TID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211req_sta_info*)* @gettxseq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gettxseq(%struct.ieee80211req_sta_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211req_sta_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211req_sta_info* %0, %struct.ieee80211req_sta_info** %3, align 8
  %6 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @IEEE80211_NODE_QOS, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %42, %18
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @IEEE80211_TID_SIZE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %25 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.ieee80211req_sta_info*, %struct.ieee80211req_sta_info** %3, align 8
  %35 = getelementptr inbounds %struct.ieee80211req_sta_info, %struct.ieee80211req_sta_info* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %33, %23
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %4, align 4
  br label %19

45:                                               ; preds = %19
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %12
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
