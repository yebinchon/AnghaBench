; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_port_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { i32, %struct.tegra_pcib_port** }
%struct.tegra_pcib_port = type { i32, i32, i32 }

@AFI_PEX_CTRL_RST_L = common dso_local global i64 0, align 8
@AFI_PEX_CTRL_CLKREQ_EN = common dso_local global i64 0, align 8
@AFI_PEX_CTRL_REFCLK_EN = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c" port %d (%d lane%s): Disabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcib_softc*, i64)* @tegra_pcib_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcib_port_disable(%struct.tegra_pcib_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.tegra_pcib_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.tegra_pcib_port*, align 8
  %6 = alloca i64, align 8
  store %struct.tegra_pcib_softc* %0, %struct.tegra_pcib_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %8 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %7, i32 0, i32 1
  %9 = load %struct.tegra_pcib_port**, %struct.tegra_pcib_port*** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %9, i64 %10
  %12 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %11, align 8
  store %struct.tegra_pcib_port* %12, %struct.tegra_pcib_port** %5, align 8
  %13 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %14 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @AFI_RD4(%struct.tegra_pcib_softc* %13, i32 %16)
  store i64 %17, i64* %6, align 8
  %18 = load i64, i64* @AFI_PEX_CTRL_RST_L, align 8
  %19 = xor i64 %18, -1
  %20 = load i64, i64* %6, align 8
  %21 = and i64 %20, %19
  store i64 %21, i64* %6, align 8
  %22 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %23 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %24 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @AFI_WR4(%struct.tegra_pcib_softc* %22, i32 %25, i64 %26)
  %28 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %29 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %30 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @AFI_RD4(%struct.tegra_pcib_softc* %28, i32 %31)
  %33 = call i32 @DELAY(i32 10)
  %34 = load i64, i64* @AFI_PEX_CTRL_CLKREQ_EN, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %6, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* @AFI_PEX_CTRL_REFCLK_EN, align 8
  %39 = xor i64 %38, -1
  %40 = load i64, i64* %6, align 8
  %41 = and i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %43 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %44 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @AFI_WR4(%struct.tegra_pcib_softc* %42, i32 %45, i64 %46)
  %48 = load i64, i64* @bootverbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %2
  %51 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %55 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %58 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %61 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 1
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %66 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i8* %65)
  br label %67

67:                                               ; preds = %50, %2
  ret void
}

declare dso_local i64 @AFI_RD4(%struct.tegra_pcib_softc*, i32) #1

declare dso_local i32 @AFI_WR4(%struct.tegra_pcib_softc*, i32, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
