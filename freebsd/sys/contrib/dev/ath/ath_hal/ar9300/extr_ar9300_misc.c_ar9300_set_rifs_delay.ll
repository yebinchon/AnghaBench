; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_set_rifs_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_set_rifs_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i64, i32* }
%struct.TYPE_2__ = type { i32 }

@AH_TRUE = common dso_local global i64 0, align 8
@AR_PHY_SEARCH_START_DELAY = common dso_local global i32 0, align 4
@AR_PHY_RIFS_SRCH = common dso_local global i32 0, align 4
@AR_PHY_RIFS_INIT_DELAY = common dso_local global i32 0, align 4
@AH_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar9300_set_rifs_delay(%struct.ath_hal* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ath_hal*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ath_hal_9300*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %11 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %10)
  store %struct.ath_hal_9300* %11, %struct.ath_hal_9300** %6, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %13 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %14 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32* @ath_hal_checkchannel(%struct.ath_hal* %12, i32 %16)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i64 @IS_CHAN_2GHZ(i32* %18)
  store i64 %19, i64* %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %54

22:                                               ; preds = %2
  %23 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %24 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AH_TRUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i64, i64* @AH_TRUE, align 8
  store i64 %29, i64* %3, align 8
  br label %139

30:                                               ; preds = %22
  %31 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %32 = load i32, i32* @AR_PHY_SEARCH_START_DELAY, align 4
  %33 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %34 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @OS_REG_WRITE(%struct.ath_hal* %31, i32 %32, i32 %37)
  %39 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %40 = load i32, i32* @AR_PHY_RIFS_SRCH, align 4
  %41 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %42 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @OS_REG_WRITE(%struct.ath_hal* %39, i32 %40, i32 %45)
  %47 = load i64, i64* @AH_TRUE, align 8
  %48 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %49 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %51 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @OS_MEMZERO(i32* %52, i32 8)
  br label %137

54:                                               ; preds = %2
  %55 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %56 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AH_TRUE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %54
  %61 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %62 = load i32, i32* @AR_PHY_SEARCH_START_DELAY, align 4
  %63 = call i32 @OS_REG_READ(%struct.ath_hal* %61, i32 %62)
  %64 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %65 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %69 = load i32, i32* @AR_PHY_RIFS_SRCH, align 4
  %70 = call i32 @OS_REG_READ(%struct.ath_hal* %68, i32 %69)
  %71 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %72 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %70, i32* %74, align 4
  br label %75

75:                                               ; preds = %60, %54
  %76 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %77 = load i32, i32* @AR_PHY_RIFS_SRCH, align 4
  %78 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %79 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @AR_PHY_RIFS_INIT_DELAY, align 4
  %84 = xor i32 %83, -1
  %85 = and i32 %82, %84
  %86 = call i32 @OS_REG_WRITE(%struct.ath_hal* %76, i32 %77, i32 %85)
  %87 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %88 = load i32, i32* @AR_PHY_SEARCH_START_DELAY, align 4
  %89 = call i32 @OS_REG_READ(%struct.ath_hal* %87, i32 %88)
  %90 = and i32 -4096, %89
  store i32 %90, i32* %9, align 4
  %91 = load i64, i64* %8, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %113

93:                                               ; preds = %75
  %94 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %95 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %94)
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @IEEE80211_IS_CHAN_HT40(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %102 = load i32, i32* @AR_PHY_SEARCH_START_DELAY, align 4
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, 500
  %105 = call i32 @OS_REG_WRITE(%struct.ath_hal* %101, i32 %102, i32 %104)
  br label %112

106:                                              ; preds = %93
  %107 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %108 = load i32, i32* @AR_PHY_SEARCH_START_DELAY, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, 250
  %111 = call i32 @OS_REG_WRITE(%struct.ath_hal* %107, i32 %108, i32 %110)
  br label %112

112:                                              ; preds = %106, %100
  br label %133

113:                                              ; preds = %75
  %114 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %115 = call %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal* %114)
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @IEEE80211_IS_CHAN_HT40(i32 %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %122 = load i32, i32* @AR_PHY_SEARCH_START_DELAY, align 4
  %123 = load i32, i32* %9, align 4
  %124 = or i32 %123, 880
  %125 = call i32 @OS_REG_WRITE(%struct.ath_hal* %121, i32 %122, i32 %124)
  br label %132

126:                                              ; preds = %113
  %127 = load %struct.ath_hal*, %struct.ath_hal** %4, align 8
  %128 = load i32, i32* @AR_PHY_SEARCH_START_DELAY, align 4
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %129, 440
  %131 = call i32 @OS_REG_WRITE(%struct.ath_hal* %127, i32 %128, i32 %130)
  br label %132

132:                                              ; preds = %126, %120
  br label %133

133:                                              ; preds = %132, %112
  %134 = load i64, i64* @AH_FALSE, align 8
  %135 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %6, align 8
  %136 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %133, %30
  %138 = load i64, i64* @AH_TRUE, align 8
  store i64 %138, i64* %3, align 8
  br label %139

139:                                              ; preds = %137, %28
  %140 = load i64, i64* %3, align 8
  ret i64 %140
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local i32* @ath_hal_checkchannel(%struct.ath_hal*, i32) #1

declare dso_local %struct.TYPE_2__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @IS_CHAN_2GHZ(i32*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_MEMZERO(i32*, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i64 @IEEE80211_IS_CHAN_HT40(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
