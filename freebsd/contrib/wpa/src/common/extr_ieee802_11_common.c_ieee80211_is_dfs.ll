; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_is_dfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_is_dfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_is_dfs(i32 %0, %struct.hostapd_hw_modes* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_hw_modes*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.hostapd_hw_modes* %1, %struct.hostapd_hw_modes** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %11 = icmp ne %struct.hostapd_hw_modes* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %12, %3
  %16 = load i32, i32* %5, align 4
  %17 = icmp sge i32 %16, 5260
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %5, align 4
  %20 = icmp sle i32 %19, 5320
  br i1 %20, label %29, label %21

21:                                               ; preds = %18, %15
  %22 = load i32, i32* %5, align 4
  %23 = icmp sge i32 %22, 5500
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = icmp sle i32 %25, 5700
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br label %29

29:                                               ; preds = %27, %18
  %30 = phi i1 [ true, %18 ], [ %28, %27 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %86

32:                                               ; preds = %12
  store i32 0, i32* %8, align 4
  br label %33

33:                                               ; preds = %82, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %33
  store i32 0, i32* %9, align 4
  br label %38

38:                                               ; preds = %78, %37
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %40, i64 %42
  %44 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %39, %45
  br i1 %46, label %47, label %81

47:                                               ; preds = %38
  %48 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %48, i64 %50
  %52 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %77

61:                                               ; preds = %47
  %62 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %62, i64 %64
  %66 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %86

77:                                               ; preds = %61, %47
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %9, align 4
  br label %38

81:                                               ; preds = %38
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %33

85:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %76, %29
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
