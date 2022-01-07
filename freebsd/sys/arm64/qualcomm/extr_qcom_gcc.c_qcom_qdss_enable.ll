; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/qualcomm/extr_qcom_gcc.c_qcom_qdss_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/qualcomm/extr_qcom_gcc.c_qcom_qdss_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_gcc_softc = type { i32 }

@GCC_QDSS_BCR = common dso_local global i32 0, align 4
@GCC_QDSS_BCR_BLK_ARES = common dso_local global i32 0, align 4
@GCC_QDSS_CFG_AHB_CBCR = common dso_local global i32 0, align 4
@AHB_CBCR_CLK_ENABLE = common dso_local global i32 0, align 4
@GCC_QDSS_DAP_CBCR = common dso_local global i32 0, align 4
@DAP_CBCR_CLK_ENABLE = common dso_local global i32 0, align 4
@GCC_QDSS_ETR_USB_CBCR = common dso_local global i32 0, align 4
@ETR_USB_CBCR_CLK_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_gcc_softc*)* @qcom_qdss_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_qdss_enable(%struct.qcom_gcc_softc* %0) #0 {
  %2 = alloca %struct.qcom_gcc_softc*, align 8
  store %struct.qcom_gcc_softc* %0, %struct.qcom_gcc_softc** %2, align 8
  %3 = load %struct.qcom_gcc_softc*, %struct.qcom_gcc_softc** %2, align 8
  %4 = getelementptr inbounds %struct.qcom_gcc_softc, %struct.qcom_gcc_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @GCC_QDSS_BCR, align 4
  %7 = load i32, i32* @GCC_QDSS_BCR_BLK_ARES, align 4
  %8 = call i32 @bus_write_4(i32 %5, i32 %6, i32 %7)
  %9 = load %struct.qcom_gcc_softc*, %struct.qcom_gcc_softc** %2, align 8
  %10 = getelementptr inbounds %struct.qcom_gcc_softc, %struct.qcom_gcc_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GCC_QDSS_CFG_AHB_CBCR, align 4
  %13 = load i32, i32* @AHB_CBCR_CLK_ENABLE, align 4
  %14 = call i32 @bus_write_4(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.qcom_gcc_softc*, %struct.qcom_gcc_softc** %2, align 8
  %16 = getelementptr inbounds %struct.qcom_gcc_softc, %struct.qcom_gcc_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @GCC_QDSS_DAP_CBCR, align 4
  %19 = load i32, i32* @DAP_CBCR_CLK_ENABLE, align 4
  %20 = call i32 @bus_write_4(i32 %17, i32 %18, i32 %19)
  %21 = load %struct.qcom_gcc_softc*, %struct.qcom_gcc_softc** %2, align 8
  %22 = getelementptr inbounds %struct.qcom_gcc_softc, %struct.qcom_gcc_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @GCC_QDSS_ETR_USB_CBCR, align 4
  %25 = load i32, i32* @ETR_USB_CBCR_CLK_ENABLE, align 4
  %26 = call i32 @bus_write_4(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.qcom_gcc_softc*, %struct.qcom_gcc_softc** %2, align 8
  %28 = getelementptr inbounds %struct.qcom_gcc_softc, %struct.qcom_gcc_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GCC_QDSS_BCR, align 4
  %31 = call i32 @bus_write_4(i32 %29, i32 %30, i32 0)
  ret void
}

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
