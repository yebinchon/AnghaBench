; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_SetupSgmiiInternalPhy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_memac.c_SetupSgmiiInternalPhy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@PHY_SGMII_IF_MODE_AN = common dso_local global i32 0, align 4
@PHY_SGMII_IF_MODE_SGMII = common dso_local global i32 0, align 4
@e_ENET_MODE_SGMII_2500 = common dso_local global i64 0, align 8
@PHY_SGMII_CR_PHY_RESET = common dso_local global i32 0, align 4
@PHY_SGMII_IF_SPEED_GIGABIT = common dso_local global i32 0, align 4
@e_ENET_SPEED_1000 = common dso_local global i32 0, align 4
@PHY_SGMII_DEV_ABILITY_SGMII = common dso_local global i32 0, align 4
@PHY_SGMII_CR_DEF_VAL = common dso_local global i32 0, align 4
@PHY_SGMII_CR_RESET_AN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @SetupSgmiiInternalPhy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SetupSgmiiInternalPhy(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @PHY_SGMII_IF_MODE_AN, align 4
  %11 = load i32, i32* @PHY_SGMII_IF_MODE_SGMII, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @e_ENET_MODE_SGMII_2500, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @PHY_SGMII_CR_PHY_RESET, align 4
  %20 = load i32, i32* @PHY_SGMII_IF_SPEED_GIGABIT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @PHY_SGMII_IF_MODE_SGMII, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ENET_INTERFACE_FROM_MODE(i64 %27)
  %29 = load i32, i32* @e_ENET_SPEED_1000, align 4
  %30 = call i64 @MAKE_ENET_MODE(i32 %28, i32 %29)
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @MEMAC_MII_WritePhyReg(%struct.TYPE_4__* %33, i32 %34, i32 20, i32 %35)
  %37 = load i32, i32* @PHY_SGMII_DEV_ABILITY_SGMII, align 4
  store i32 %37, i32* %5, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @MEMAC_MII_WritePhyReg(%struct.TYPE_4__* %38, i32 %39, i32 4, i32 %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @MEMAC_MII_WritePhyReg(%struct.TYPE_4__* %42, i32 %43, i32 19, i32 7)
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @MEMAC_MII_WritePhyReg(%struct.TYPE_4__* %45, i32 %46, i32 18, i32 41248)
  %48 = load i32, i32* @PHY_SGMII_CR_DEF_VAL, align 4
  %49 = load i32, i32* @PHY_SGMII_CR_RESET_AN, align 4
  %50 = or i32 %48, %49
  store i32 %50, i32* %5, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @MEMAC_MII_WritePhyReg(%struct.TYPE_4__* %51, i32 %52, i32 0, i32 %53)
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  ret void
}

declare dso_local i64 @MAKE_ENET_MODE(i32, i32) #1

declare dso_local i32 @ENET_INTERFACE_FROM_MODE(i64) #1

declare dso_local i32 @MEMAC_MII_WritePhyReg(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
