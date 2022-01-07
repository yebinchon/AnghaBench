; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_canpromote.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/ifconfig/extr_ifieee80211.c_canpromote.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i64 }

@chaninfo = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @canpromote to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @canpromote(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_channel*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chaninfo, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %13, i64 %15
  store %struct.ieee80211_channel* %16, %struct.ieee80211_channel** %8, align 8
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %4, align 4
  br label %107

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chaninfo, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %26
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chaninfo, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %36, i64 %39
  %41 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %44 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %64

47:                                               ; preds = %33
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chaninfo, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %50, i64 %53
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %7, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %47
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  br label %107

64:                                               ; preds = %47, %33, %26
  store i64 0, i64* %9, align 8
  br label %65

65:                                               ; preds = %102, %64
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chaninfo, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp ult i64 %66, %70
  br i1 %71, label %72, label %105

72:                                               ; preds = %65
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @chaninfo, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %74, align 8
  %76 = load i64, i64* %9, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %75, i64 %76
  store %struct.ieee80211_channel* %77, %struct.ieee80211_channel** %10, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %78, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %72
  %83 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %84 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %87 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %82
  %91 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  %92 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* %7, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i64, i64* %9, align 8
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %4, align 4
  br label %107

101:                                              ; preds = %90, %82, %72
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %103, 1
  store i64 %104, i64* %9, align 8
  br label %65

105:                                              ; preds = %65
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %98, %61, %24
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
