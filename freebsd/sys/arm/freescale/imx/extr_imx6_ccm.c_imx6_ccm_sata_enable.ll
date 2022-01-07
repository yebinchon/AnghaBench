; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_imx6_ccm_sata_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_ccm.c_imx6_ccm_sata_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ccm_sc = common dso_local global i32 0, align 4
@CCM_CCGR5 = common dso_local global i32 0, align 4
@CCGR5_SATA = common dso_local global i32 0, align 4
@CCM_ANALOG_PLL_ENET = common dso_local global i32 0, align 4
@CCM_ANALOG_PLL_ENET_POWERDOWN = common dso_local global i32 0, align 4
@CCM_ANALOG_PLL_ENET_LOCK = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@CCM_ANALOG_PLL_ENET_ENABLE = common dso_local global i32 0, align 4
@CCM_ANALOG_PLL_ENET_BYPASS = common dso_local global i32 0, align 4
@CCM_ANALOG_PLL_ENET_ENABLE_100M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx6_ccm_sata_enable() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @ccm_sc, align 4
  %5 = load i32, i32* @CCM_CCGR5, align 4
  %6 = load i32, i32* @ccm_sc, align 4
  %7 = load i32, i32* @CCM_CCGR5, align 4
  %8 = call i32 @RD4(i32 %6, i32 %7)
  %9 = load i32, i32* @CCGR5_SATA, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @WR4(i32 %4, i32 %5, i32 %10)
  %12 = load i32, i32* @ccm_sc, align 4
  %13 = load i32, i32* @CCM_ANALOG_PLL_ENET, align 4
  %14 = call i32 @RD4(i32 %12, i32 %13)
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @CCM_ANALOG_PLL_ENET_POWERDOWN, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %2, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* @ccm_sc, align 4
  %20 = load i32, i32* @CCM_ANALOG_PLL_ENET, align 4
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @WR4(i32 %19, i32 %20, i32 %21)
  store i32 100000, i32* %3, align 4
  br label %23

23:                                               ; preds = %35, %0
  %24 = load i32, i32* %3, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %23
  %27 = load i32, i32* @ccm_sc, align 4
  %28 = load i32, i32* @CCM_ANALOG_PLL_ENET, align 4
  %29 = call i32 @RD4(i32 %27, i32 %28)
  %30 = load i32, i32* @CCM_ANALOG_PLL_ENET_LOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %38

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %3, align 4
  br label %23

38:                                               ; preds = %33, %23
  %39 = load i32, i32* %3, align 4
  %40 = icmp sle i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %42, i32* %1, align 4
  br label %62

43:                                               ; preds = %38
  %44 = load i32, i32* @CCM_ANALOG_PLL_ENET_ENABLE, align 4
  %45 = load i32, i32* %2, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* @CCM_ANALOG_PLL_ENET_BYPASS, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %2, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* @ccm_sc, align 4
  %52 = load i32, i32* @CCM_ANALOG_PLL_ENET, align 4
  %53 = load i32, i32* %2, align 4
  %54 = call i32 @WR4(i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* @CCM_ANALOG_PLL_ENET_ENABLE_100M, align 4
  %56 = load i32, i32* %2, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %2, align 4
  %58 = load i32, i32* @ccm_sc, align 4
  %59 = load i32, i32* @CCM_ANALOG_PLL_ENET, align 4
  %60 = load i32, i32* %2, align 4
  %61 = call i32 @WR4(i32 %58, i32 %59, i32 %60)
  store i32 0, i32* %1, align 4
  br label %62

62:                                               ; preds = %43, %41
  %63 = load i32, i32* %1, align 4
  ret i32 %63
}

declare dso_local i32 @WR4(i32, i32, i32) #1

declare dso_local i32 @RD4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
