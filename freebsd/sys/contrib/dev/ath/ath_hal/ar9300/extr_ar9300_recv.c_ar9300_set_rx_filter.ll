; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_recv.c_ar9300_set_rx_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_recv.c_ar9300_set_rx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_RX_4ADDRESS = common dso_local global i32 0, align 4
@AR_RX_CONTROL_WRAPPER = common dso_local global i32 0, align 4
@AR_RX_FILTER = common dso_local global i32 0, align 4
@AR_RX_UNCOM_BA_BAR = common dso_local global i32 0, align 4
@AR_RX_COMPR_BAR = common dso_local global i32 0, align 4
@HAL_RX_FILTER_PHYRADAR = common dso_local global i32 0, align 4
@AR_PHY_ERR_RADAR = common dso_local global i32 0, align 4
@HAL_RX_FILTER_PHYERR = common dso_local global i32 0, align 4
@AR_PHY_ERR_OFDM_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR_CCK_TIMING = common dso_local global i32 0, align 4
@AR_PHY_ERR = common dso_local global i32 0, align 4
@AR_RXCFG = common dso_local global i32 0, align 4
@AR_RXCFG_ZLFDMA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9300_set_rx_filter(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %7 = call i64 @AR_SREV_SCORPION(%struct.ath_hal* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %11 = call i64 @AR_SREV_HONEYBEE(%struct.ath_hal* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @AR_RX_4ADDRESS, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %13, %9
  %18 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %19 = call i64 @AR_SREV_JUPITER(%struct.ath_hal* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %23 = call i64 @AR_SREV_APHRODITE(%struct.ath_hal* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %17
  %26 = load i32, i32* @AR_RX_CONTROL_WRAPPER, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %31 = load i32, i32* @AR_RX_FILTER, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @AR_RX_UNCOM_BA_BAR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @AR_RX_COMPR_BAR, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @OS_REG_WRITE(%struct.ath_hal* %30, i32 %31, i32 %36)
  store i32 0, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @HAL_RX_FILTER_PHYRADAR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %29
  %43 = load i32, i32* @AR_PHY_ERR_RADAR, align 4
  %44 = load i32, i32* %5, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %42, %29
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @HAL_RX_FILTER_PHYERR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @AR_PHY_ERR_OFDM_TIMING, align 4
  %53 = load i32, i32* @AR_PHY_ERR_CCK_TIMING, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %59 = load i32, i32* @AR_PHY_ERR, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @OS_REG_WRITE(%struct.ath_hal* %58, i32 %59, i32 %60)
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %57
  %65 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %66 = load i32, i32* @AR_RXCFG, align 4
  %67 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %68 = load i32, i32* @AR_RXCFG, align 4
  %69 = call i32 @OS_REG_READ(%struct.ath_hal* %67, i32 %68)
  %70 = load i32, i32* @AR_RXCFG_ZLFDMA, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @OS_REG_WRITE(%struct.ath_hal* %65, i32 %66, i32 %71)
  br label %83

73:                                               ; preds = %57
  %74 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %75 = load i32, i32* @AR_RXCFG, align 4
  %76 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %77 = load i32, i32* @AR_RXCFG, align 4
  %78 = call i32 @OS_REG_READ(%struct.ath_hal* %76, i32 %77)
  %79 = load i32, i32* @AR_RXCFG_ZLFDMA, align 4
  %80 = xor i32 %79, -1
  %81 = and i32 %78, %80
  %82 = call i32 @OS_REG_WRITE(%struct.ath_hal* %74, i32 %75, i32 %81)
  br label %83

83:                                               ; preds = %73, %64
  ret void
}

declare dso_local i64 @AR_SREV_SCORPION(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_HONEYBEE(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_JUPITER(%struct.ath_hal*) #1

declare dso_local i64 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
