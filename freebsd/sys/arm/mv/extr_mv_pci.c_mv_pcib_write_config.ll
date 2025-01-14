; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_write_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_write_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { i32, i32 }

@PCIE_REG_STATUS = common dso_local global i32 0, align 4
@PCIE_STATUS_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32)* @mv_pcib_write_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_pcib_write_config(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.mv_pcib_softc*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call %struct.mv_pcib_softc* @device_get_softc(i32 %16)
  store %struct.mv_pcib_softc* %17, %struct.mv_pcib_softc** %15, align 8
  %18 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %15, align 8
  %19 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %15, align 8
  %22 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCIE_REG_STATUS, align 4
  %25 = call i32 @bus_space_read_4(i32 %20, i32 %23, i32 %24)
  %26 = load i32, i32* @PCIE_STATUS_LINK_DOWN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %7
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i64 @mv_pcib_root_slot(i32 %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %7
  br label %46

37:                                               ; preds = %29
  %38 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %15, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @mv_pcib_hw_cfgwrite(%struct.mv_pcib_softc* %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %37, %36
  ret void
}

declare dso_local %struct.mv_pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i64 @mv_pcib_root_slot(i32, i32, i32, i32) #1

declare dso_local i32 @mv_pcib_hw_cfgwrite(%struct.mv_pcib_softc*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
