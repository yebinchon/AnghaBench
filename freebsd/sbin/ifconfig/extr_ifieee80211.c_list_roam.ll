; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_roam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_list_roam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.ieee80211_roamparam* }
%struct.ieee80211_roamparam = type { i32, i32 }

@IEEE80211_MODE_11A = common dso_local global i32 0, align 4
@IEEE80211_MODE_MAX = common dso_local global i32 0, align 4
@roamparams = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IEEE80211_MODE_11NA = common dso_local global i32 0, align 4
@IEEE80211_MODE_11NG = common dso_local global i32 0, align 4
@IEEE80211_MODE_VHT_2GHZ = common dso_local global i32 0, align 4
@IEEE80211_MODE_VHT_5GHZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"roam:%-7.7s rssi %2u.5dBm  MCS %2u    \00", align 1
@modename = common dso_local global i32* null, align 8
@IEEE80211_RATE_MCS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"roam:%-7.7s rssi %4udBm  MCS %2u    \00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"roam:%-7.7s rssi %2u.5dBm rate %2u Mb/s\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"roam:%-7.7s rssi %4udBm rate %2u Mb/s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @list_roam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_roam(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_roamparam*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call i32 @getroam(i32 %5)
  %7 = load i32, i32* @IEEE80211_MODE_11A, align 4
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %122, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @IEEE80211_MODE_MAX, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %125

12:                                               ; preds = %8
  %13 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @roamparams, i32 0, i32 0), align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %13, i64 %15
  store %struct.ieee80211_roamparam* %16, %struct.ieee80211_roamparam** %3, align 8
  %17 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  %22 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %122

27:                                               ; preds = %21, %12
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IEEE80211_MODE_11NA, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @IEEE80211_MODE_11NG, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @IEEE80211_MODE_VHT_2GHZ, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @IEEE80211_MODE_VHT_5GHZ, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %84

43:                                               ; preds = %39, %35, %31, %27
  %44 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 1
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load i32*, i32** @modename, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sdiv i32 %57, 2
  %59 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %60 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %63 = xor i32 %62, -1
  %64 = and i32 %61, %63
  %65 = call i32 @LINE_CHECK(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %54, i32 %58, i32 %64)
  br label %83

66:                                               ; preds = %43
  %67 = load i32*, i32** @modename, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %73 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sdiv i32 %74, 2
  %76 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %77 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @IEEE80211_RATE_MCS, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = call i32 @LINE_CHECK(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %75, i32 %81)
  br label %83

83:                                               ; preds = %66, %49
  br label %121

84:                                               ; preds = %39
  %85 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 1
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %84
  %91 = load i32*, i32** @modename, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %97 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = sdiv i32 %98, 2
  %100 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %101 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = sdiv i32 %102, 2
  %104 = call i32 @LINE_CHECK(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %95, i32 %99, i32 %103)
  br label %120

105:                                              ; preds = %84
  %106 = load i32*, i32** @modename, align 8
  %107 = load i32, i32* %4, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %112 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = sdiv i32 %113, 2
  %115 = load %struct.ieee80211_roamparam*, %struct.ieee80211_roamparam** %3, align 8
  %116 = getelementptr inbounds %struct.ieee80211_roamparam, %struct.ieee80211_roamparam* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = sdiv i32 %117, 2
  %119 = call i32 @LINE_CHECK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %114, i32 %118)
  br label %120

120:                                              ; preds = %105, %90
  br label %121

121:                                              ; preds = %120, %83
  br label %122

122:                                              ; preds = %121, %26
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  br label %8

125:                                              ; preds = %8
  ret void
}

declare dso_local i32 @getroam(i32) #1

declare dso_local i32 @LINE_CHECK(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
