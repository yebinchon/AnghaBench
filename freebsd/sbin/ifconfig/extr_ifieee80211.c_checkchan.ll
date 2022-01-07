; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_checkchan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_checkchan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211req_chaninfo = type { i32, i32 }

@REQ_FLAGS = common dso_local global i32 0, align 4
@IEEE80211_CHAN_GSM = common dso_local global i32 0, align 4
@IEEE80211_CHAN_HALF = common dso_local global i32 0, align 4
@IEEE80211_CHAN_QUARTER = common dso_local global i32 0, align 4
@IEEE80211_CHAN_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_CHAN_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211req_chaninfo*, i32, i32)* @checkchan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @checkchan(%struct.ieee80211req_chaninfo* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211req_chaninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211req_chaninfo* %0, %struct.ieee80211req_chaninfo** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* @REQ_FLAGS, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %7, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %7, align 4
  %12 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32* @chanlookup(i32 %14, i32 %17, i32 %18, i32 %19)
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %89

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @IEEE80211_CHAN_GSM, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %89

29:                                               ; preds = %23
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @IEEE80211_CHAN_HALF, align 4
  %32 = load i32, i32* @IEEE80211_CHAN_QUARTER, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %89

37:                                               ; preds = %29
  %38 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %5, align 8
  %39 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @IEEE80211_CHAN_HALF, align 4
  %47 = load i32, i32* @IEEE80211_CHAN_QUARTER, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %45, %49
  %51 = call i32* @chanlookup(i32 %40, i32 %43, i32 %44, i32 %50)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %89

54:                                               ; preds = %37
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @IEEE80211_CHAN_HALF, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %5, align 8
  %61 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %5, align 8
  %64 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IEEE80211_CHAN_HALF, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %69 = load i32, i32* @IEEE80211_CHAN_5GHZ, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  %72 = or i32 %66, %71
  %73 = call i32 @chanfind(i32 %62, i32 %65, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %89

74:                                               ; preds = %54
  %75 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.ieee80211req_chaninfo*, %struct.ieee80211req_chaninfo** %5, align 8
  %79 = getelementptr inbounds %struct.ieee80211req_chaninfo, %struct.ieee80211req_chaninfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @IEEE80211_CHAN_QUARTER, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @IEEE80211_CHAN_2GHZ, align 4
  %84 = load i32, i32* @IEEE80211_CHAN_5GHZ, align 4
  %85 = or i32 %83, %84
  %86 = and i32 %82, %85
  %87 = or i32 %81, %86
  %88 = call i32 @chanfind(i32 %77, i32 %80, i32 %87)
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %74, %59, %53, %36, %28, %22
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32* @chanlookup(i32, i32, i32, i32) #1

declare dso_local i32 @chanfind(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
