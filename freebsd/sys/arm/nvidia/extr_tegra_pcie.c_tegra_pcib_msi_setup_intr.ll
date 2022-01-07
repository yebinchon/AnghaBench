; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_msi_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_msi_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i64 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i64 }
%struct.tegra_pcib_softc = type { i32 }
%struct.tegra_pcib_irqsrc = type { i32 }

@INTR_MAP_DATA_MSI = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @tegra_pcib_msi_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcib_msi_setup_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intr_irqsrc*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.intr_map_data*, align 8
  %10 = alloca %struct.tegra_pcib_softc*, align 8
  %11 = alloca %struct.tegra_pcib_irqsrc*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.tegra_pcib_softc* @device_get_softc(i32 %12)
  store %struct.tegra_pcib_softc* %13, %struct.tegra_pcib_softc** %10, align 8
  %14 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %15 = bitcast %struct.intr_irqsrc* %14 to %struct.tegra_pcib_irqsrc*
  store %struct.tegra_pcib_irqsrc* %15, %struct.tegra_pcib_irqsrc** %11, align 8
  %16 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %17 = icmp eq %struct.intr_map_data* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %4
  %19 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %20 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INTR_MAP_DATA_MSI, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %4
  %25 = load i32, i32* @ENOTSUP, align 4
  store i32 %25, i32* %5, align 4
  br label %36

26:                                               ; preds = %18
  %27 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %28 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %34 = call i32 @tegra_pcib_msi_enable_intr(i32 %32, %struct.intr_irqsrc* %33)
  br label %35

35:                                               ; preds = %31, %26
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %24
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.tegra_pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @tegra_pcib_msi_enable_intr(i32, %struct.intr_irqsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
