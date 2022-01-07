; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_ant_swcom_sel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_eeprom.c_ar9300_ant_swcom_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.ath_hal_private = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }

@AH_FALSE = common dso_local global i32 0, align 4
@AR_PHY_SWITCH_COM = common dso_local global i32 0, align 4
@AR_PHY_SWITCH_COM_2 = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AR_SWITCH_TABLE_COM2_ALL = common dso_local global i32 0, align 4
@AR_SWITCH_TABLE_COM_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_ant_swcom_sel(%struct.ath_hal* %0, i32 %1, i8** %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.TYPE_7__*, align 8
  %11 = alloca %struct.ath_hal_private*, align 8
  %12 = alloca %struct.ieee80211_channel*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8** %2, i8*** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %14 = call %struct.TYPE_8__* @AH9300(%struct.ath_hal* %13)
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %10, align 8
  %16 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %17 = call %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal* %16)
  store %struct.ath_hal_private* %17, %struct.ath_hal_private** %11, align 8
  %18 = load %struct.ath_hal_private*, %struct.ath_hal_private** %11, align 8
  %19 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %18, i32 0, i32 0
  %20 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %19, align 8
  store %struct.ieee80211_channel* %20, %struct.ieee80211_channel** %12, align 8
  %21 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %22 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %26 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24, %4
  %29 = load i32, i32* @AH_FALSE, align 4
  store i32 %29, i32* %5, align 4
  br label %86

30:                                               ; preds = %24
  %31 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %32 = icmp ne %struct.ieee80211_channel* %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @AH_FALSE, align 4
  store i32 %34, i32* %5, align 4
  br label %86

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %83 [
    i32 0, label %37
    i32 1, label %46
  ]

37:                                               ; preds = %35
  %38 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %39 = load i32, i32* @AR_PHY_SWITCH_COM, align 4
  %40 = call i8* @OS_REG_READ_FIELD(%struct.ath_hal* %38, i32 %39, i32 65535)
  %41 = load i8**, i8*** %8, align 8
  store i8* %40, i8** %41, align 8
  %42 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %43 = load i32, i32* @AR_PHY_SWITCH_COM_2, align 4
  %44 = call i8* @OS_REG_READ_FIELD(%struct.ath_hal* %42, i32 %43, i32 16777215)
  %45 = load i8**, i8*** %9, align 8
  store i8* %44, i8** %45, align 8
  br label %84

46:                                               ; preds = %35
  %47 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %48 = load i32, i32* @AR_PHY_SWITCH_COM, align 4
  %49 = load i8**, i8*** %8, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %47, i32 %48, i32 65535, i8* %50)
  %52 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %53 = load i32, i32* @AR_PHY_SWITCH_COM_2, align 4
  %54 = load i8**, i8*** %9, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %52, i32 %53, i32 16777215, i8* %55)
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  %58 = call i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %46
  %61 = load i8**, i8*** %8, align 8
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load i8**, i8*** %9, align 8
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i8* %67, i8** %70, align 8
  br label %82

71:                                               ; preds = %46
  %72 = load i8**, i8*** %8, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i8* %73, i8** %76, align 8
  %77 = load i8**, i8*** %9, align 8
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  br label %82

82:                                               ; preds = %71, %60
  br label %84

83:                                               ; preds = %35
  br label %84

84:                                               ; preds = %83, %82, %37
  %85 = load i32, i32* @AH_TRUE, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %84, %33, %28
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.TYPE_8__* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i8* @OS_REG_READ_FIELD(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i8*) #1

declare dso_local i32 @IEEE80211_IS_CHAN_2GHZ(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
