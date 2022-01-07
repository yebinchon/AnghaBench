; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcbib_map_cfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcbib_map_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"Cannot map config space\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcib_softc*, i32, i32, i32, i32)* @tegra_pcbib_map_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcbib_map_cfg(%struct.tegra_pcib_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_pcib_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tegra_pcib_softc* %0, %struct.tegra_pcib_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %15 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @PCI_CFG_BUS(i32 %17)
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @PCI_CFG_DEV(i32 %19)
  %21 = or i32 %18, %20
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @PCI_CFG_FUN(i32 %22)
  %24 = or i32 %21, %23
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @PCI_CFG_EXT_REG(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %31 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %36 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %75

41:                                               ; preds = %34, %5
  %42 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %43 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %48 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %51 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bus_space_unmap(i32 %49, i32 %52, i32 2048)
  br label %54

54:                                               ; preds = %46, %41
  %55 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %56 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %60 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %59, i32 0, i32 3
  %61 = call i32 @bus_space_map(i32 %57, i32 %58, i32 2048, i32 0, i32* %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %54
  %65 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %66 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %73

69:                                               ; preds = %54
  %70 = load i32, i32* %12, align 4
  %71 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %7, align 8
  %72 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %64
  %74 = load i32, i32* %13, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %40
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local i32 @PCI_CFG_BUS(i32) #1

declare dso_local i32 @PCI_CFG_DEV(i32) #1

declare dso_local i32 @PCI_CFG_FUN(i32) #1

declare dso_local i32 @PCI_CFG_EXT_REG(i32) #1

declare dso_local i32 @bus_space_unmap(i32, i32, i32) #1

declare dso_local i32 @bus_space_map(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
