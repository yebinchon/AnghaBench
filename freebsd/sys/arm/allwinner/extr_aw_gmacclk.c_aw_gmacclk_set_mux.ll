; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gmacclk.c_aw_gmacclk_set_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gmacclk.c_aw_gmacclk_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_gmacclk_sc = type { i32 }

@GMAC_CLK_SRC_MII = common dso_local global i32 0, align 4
@GMAC_CLK_PIT_MII = common dso_local global i32 0, align 4
@EMAC_TXC_DIV_CFG_25MHZ = common dso_local global i32 0, align 4
@GMAC_CLK_SRC_RGMII = common dso_local global i32 0, align 4
@GMAC_CLK_PIT_RGMII = common dso_local global i32 0, align 4
@EMAC_TXC_DIV_CFG_125MHZ = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@GMAC_CLK_SRC = common dso_local global i32 0, align 4
@GMAC_CLK_PIT = common dso_local global i32 0, align 4
@GMAC_CLK_SRC_SHIFT = common dso_local global i32 0, align 4
@GMAC_CLK_PIT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @aw_gmacclk_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gmacclk_set_mux(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aw_gmacclk_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.clknode*, %struct.clknode** %4, align 8
  %13 = call %struct.aw_gmacclk_sc* @clknode_get_softc(%struct.clknode* %12)
  store %struct.aw_gmacclk_sc* %13, %struct.aw_gmacclk_sc** %6, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %23 [
    i32 129, label %15
    i32 128, label %19
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @GMAC_CLK_SRC_MII, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* @GMAC_CLK_PIT_MII, align 4
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* @EMAC_TXC_DIV_CFG_25MHZ, align 4
  store i32 %18, i32* %10, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @GMAC_CLK_SRC_RGMII, align 4
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* @GMAC_CLK_PIT_RGMII, align 4
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @EMAC_TXC_DIV_CFG_125MHZ, align 4
  store i32 %22, i32* %10, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @ENXIO, align 4
  store i32 %24, i32* %3, align 4
  br label %51

25:                                               ; preds = %19, %15
  %26 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %6, align 8
  %27 = call i32 @DEVICE_LOCK(%struct.aw_gmacclk_sc* %26)
  %28 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %6, align 8
  %29 = call i32 @GMACCLK_READ(%struct.aw_gmacclk_sc* %28, i32* %7)
  %30 = load i32, i32* @GMAC_CLK_SRC, align 4
  %31 = load i32, i32* @GMAC_CLK_PIT, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @GMAC_CLK_SRC_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @GMAC_CLK_PIT_SHIFT, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @GMACCLK_WRITE(%struct.aw_gmacclk_sc* %46, i32 %47)
  %49 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %6, align 8
  %50 = call i32 @DEVICE_UNLOCK(%struct.aw_gmacclk_sc* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %25, %23
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.aw_gmacclk_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.aw_gmacclk_sc*) #1

declare dso_local i32 @GMACCLK_READ(%struct.aw_gmacclk_sc*, i32*) #1

declare dso_local i32 @GMACCLK_WRITE(%struct.aw_gmacclk_sc*, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.aw_gmacclk_sc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
