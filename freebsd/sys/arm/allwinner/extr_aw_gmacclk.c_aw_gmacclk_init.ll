; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gmacclk.c_aw_gmacclk_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_gmacclk.c_aw_gmacclk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_gmacclk_sc = type { i32 }

@GMAC_CLK_SRC = common dso_local global i32 0, align 4
@GMAC_CLK_SRC_SHIFT = common dso_local global i32 0, align 4
@CLK_IDX_MII = common dso_local global i32 0, align 4
@CLK_IDX_RGMII = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @aw_gmacclk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_gmacclk_init(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aw_gmacclk_sc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.clknode*, %struct.clknode** %4, align 8
  %10 = call %struct.aw_gmacclk_sc* @clknode_get_softc(%struct.clknode* %9)
  store %struct.aw_gmacclk_sc* %10, %struct.aw_gmacclk_sc** %6, align 8
  %11 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %6, align 8
  %12 = call i32 @DEVICE_LOCK(%struct.aw_gmacclk_sc* %11)
  %13 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %6, align 8
  %14 = call i32 @GMACCLK_READ(%struct.aw_gmacclk_sc* %13, i32* %7)
  %15 = load %struct.aw_gmacclk_sc*, %struct.aw_gmacclk_sc** %6, align 8
  %16 = call i32 @DEVICE_UNLOCK(%struct.aw_gmacclk_sc* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @GMAC_CLK_SRC, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @GMAC_CLK_SRC_SHIFT, align 4
  %21 = ashr i32 %19, %20
  switch i32 %21, label %26 [
    i32 129, label %22
    i32 128, label %24
  ]

22:                                               ; preds = %2
  %23 = load i32, i32* @CLK_IDX_MII, align 4
  store i32 %23, i32* %8, align 4
  br label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @CLK_IDX_RGMII, align 4
  store i32 %25, i32* %8, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %24, %22
  %29 = load %struct.clknode*, %struct.clknode** %4, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @clknode_init_parent_idx(%struct.clknode* %29, i32 %30)
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %26
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.aw_gmacclk_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.aw_gmacclk_sc*) #1

declare dso_local i32 @GMACCLK_READ(%struct.aw_gmacclk_sc*, i32*) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.aw_gmacclk_sc*) #1

declare dso_local i32 @clknode_init_parent_idx(%struct.clknode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
