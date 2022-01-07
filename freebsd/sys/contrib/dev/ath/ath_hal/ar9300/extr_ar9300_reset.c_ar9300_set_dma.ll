; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_dma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_reset.c_ar9300_set_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }
%struct.ath_hal_9300 = type { i32 }
%struct.ath_hal_private = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@AR_TXCFG = common dso_local global i32 0, align 4
@AR_TXCFG_DMASZ_MASK = common dso_local global i32 0, align 4
@AR_TXCFG_DMASZ_128B = common dso_local global i32 0, align 4
@AR_RXCFG = common dso_local global i32 0, align 4
@AR_RXCFG_DMASZ_MASK = common dso_local global i32 0, align 4
@AR_RXCFG_DMASZ_128B = common dso_local global i32 0, align 4
@AR_RXFIFO_CFG = common dso_local global i32 0, align 4
@AR_SREV_REVISION_WASP_12 = common dso_local global i64 0, align 8
@AR_PCU_TXBUF_CTRL = common dso_local global i32 0, align 4
@AR_PCU_TXBUF_CTRL_USABLE_SIZE = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i64 0, align 8
@HAL_M_HOSTAP = common dso_local global i64 0, align 8
@AR_HP_Q_CONTROL = common dso_local global i32 0, align 4
@AR_HPQ_ENABLE = common dso_local global i32 0, align 4
@AR_HPQ_UAPSD = common dso_local global i32 0, align 4
@AR_HPQ_UAPSD_TRIGGER_EN = common dso_local global i32 0, align 4
@AR_RXBP_THRESH = common dso_local global i32 0, align 4
@AR_RXBP_THRESH_HP = common dso_local global i32 0, align 4
@AR_RXBP_THRESH_LP = common dso_local global i32 0, align 4
@AR_DATABUF = common dso_local global i32 0, align 4
@AR_AHB_MODE = common dso_local global i32 0, align 4
@AR_AHB_PREFETCH_RD_EN = common dso_local global i32 0, align 4
@AR_FTRIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hal*)* @ar9300_set_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_set_dma(%struct.ath_hal* %0) #0 {
  %2 = alloca %struct.ath_hal*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hal_9300*, align 8
  %5 = alloca %struct.ath_hal_private*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %2, align 8
  %7 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %8 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %7)
  store %struct.ath_hal_9300* %8, %struct.ath_hal_9300** %4, align 8
  %9 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %10 = call %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal* %9)
  store %struct.ath_hal_private* %10, %struct.ath_hal_private** %5, align 8
  %11 = load %struct.ath_hal_private*, %struct.ath_hal_private** %5, align 8
  %12 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %11, i32 0, i32 2
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %6, align 8
  %13 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %14 = load i32, i32* @AR_TXCFG, align 4
  %15 = call i32 @OS_REG_READ(%struct.ath_hal* %13, i32 %14)
  %16 = load i32, i32* @AR_TXCFG_DMASZ_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %20 = load i32, i32* @AR_TXCFG, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @AR_TXCFG_DMASZ_128B, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @OS_REG_WRITE(%struct.ath_hal* %19, i32 %20, i32 %23)
  %25 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %26 = load i32, i32* @AR_RXCFG, align 4
  %27 = call i32 @OS_REG_READ(%struct.ath_hal* %25, i32 %26)
  %28 = load i32, i32* @AR_RXCFG_DMASZ_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  store i32 %30, i32* %3, align 4
  %31 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %32 = load i32, i32* @AR_RXCFG, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @AR_RXCFG_DMASZ_128B, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @OS_REG_WRITE(%struct.ath_hal* %31, i32 %32, i32 %35)
  %37 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %38 = load i32, i32* @AR_RXFIFO_CFG, align 4
  %39 = call i32 @OS_REG_WRITE(%struct.ath_hal* %37, i32 %38, i32 512)
  %40 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %41 = call i64 @AR_SREV_WASP(%struct.ath_hal* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %1
  %44 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %45 = call %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal* %44)
  %46 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AR_SREV_REVISION_WASP_12, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %52 = load i32, i32* @AR_PCU_TXBUF_CTRL, align 4
  %53 = call i32 @OS_REG_WRITE(%struct.ath_hal* %51, i32 %52, i32 1280)
  br label %59

54:                                               ; preds = %43, %1
  %55 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %56 = load i32, i32* @AR_PCU_TXBUF_CTRL, align 4
  %57 = load i32, i32* @AR_PCU_TXBUF_CTRL_USABLE_SIZE, align 4
  %58 = call i32 @OS_REG_WRITE(%struct.ath_hal* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %50
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AH_TRUE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %82

65:                                               ; preds = %59
  %66 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %67 = call %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal* %66)
  %68 = getelementptr inbounds %struct.ath_hal_private, %struct.ath_hal_private* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HAL_M_HOSTAP, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %65
  %73 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %74 = load i32, i32* @AR_HP_Q_CONTROL, align 4
  %75 = load i32, i32* @AR_HPQ_ENABLE, align 4
  %76 = load i32, i32* @AR_HPQ_UAPSD, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @AR_HPQ_UAPSD_TRIGGER_EN, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @OS_REG_WRITE(%struct.ath_hal* %73, i32 %74, i32 %79)
  br label %81

81:                                               ; preds = %72, %65
  br label %83

82:                                               ; preds = %59
  br label %83

83:                                               ; preds = %82, %81
  %84 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %85 = call i32 @ar9300_reset_tx_status_ring(%struct.ath_hal* %84)
  %86 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %87 = load i32, i32* @AR_RXBP_THRESH, align 4
  %88 = load i32, i32* @AR_RXBP_THRESH_HP, align 4
  %89 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %86, i32 %87, i32 %88, i32 1)
  %90 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %91 = load i32, i32* @AR_RXBP_THRESH, align 4
  %92 = load i32, i32* @AR_RXBP_THRESH_LP, align 4
  %93 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %90, i32 %91, i32 %92, i32 1)
  %94 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %95 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %83
  %99 = load %struct.ath_hal*, %struct.ath_hal** %2, align 8
  %100 = load i32, i32* @AR_DATABUF, align 4
  %101 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %4, align 8
  %102 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @OS_REG_WRITE(%struct.ath_hal* %99, i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %98, %83
  ret void
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.ath_hal_private* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_reset_tx_status_ring(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
