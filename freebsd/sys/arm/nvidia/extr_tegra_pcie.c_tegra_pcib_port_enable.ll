; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_port_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { i32, %struct.tegra_pcib_port** }
%struct.tegra_pcib_port = type { i32, i32, i32 }

@AFI_PEX_CTRL_RST_L = common dso_local global i32 0, align 4
@AFI_PEX_CTRL_REFCLK_EN = common dso_local global i32 0, align 4
@AFI_PEX_CTRL_CLKREQ_EN = common dso_local global i32 0, align 4
@AFI_PEX_CTRL_OVERRIDE_EN = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c" port %d (%d lane%s): Link is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"down\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_pcib_softc*, i32)* @tegra_pcib_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_pcib_port_enable(%struct.tegra_pcib_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_pcib_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_pcib_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_pcib_softc* %0, %struct.tegra_pcib_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %8, i32 0, i32 1
  %10 = load %struct.tegra_pcib_port**, %struct.tegra_pcib_port*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %10, i64 %12
  %14 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %13, align 8
  store %struct.tegra_pcib_port* %14, %struct.tegra_pcib_port** %5, align 8
  %15 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %16 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %17 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @AFI_RD4(%struct.tegra_pcib_softc* %15, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* @AFI_PEX_CTRL_RST_L, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %6, align 4
  %24 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %25 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @AFI_WR4(%struct.tegra_pcib_softc* %24, i32 %27, i32 %28)
  %30 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %31 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %32 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @AFI_RD4(%struct.tegra_pcib_softc* %30, i32 %33)
  %35 = call i32 @DELAY(i32 10)
  %36 = load i32, i32* @AFI_PEX_CTRL_REFCLK_EN, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* @AFI_PEX_CTRL_CLKREQ_EN, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* @AFI_PEX_CTRL_OVERRIDE_EN, align 4
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %46 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %47 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @AFI_WR4(%struct.tegra_pcib_softc* %45, i32 %48, i32 %49)
  %51 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %52 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %53 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @AFI_RD4(%struct.tegra_pcib_softc* %51, i32 %54)
  %56 = call i32 @DELAY(i32 100)
  %57 = load i32, i32* @AFI_PEX_CTRL_RST_L, align 4
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %61 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %62 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @AFI_WR4(%struct.tegra_pcib_softc* %60, i32 %63, i32 %64)
  %66 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %67 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %68 = call i32 @tegra_pcib_wait_for_link(%struct.tegra_pcib_softc* %66, %struct.tegra_pcib_port* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i64, i64* @bootverbose, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %2
  %72 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %73 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %76 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %79 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %5, align 8
  %82 = getelementptr inbounds %struct.tegra_pcib_port, %struct.tegra_pcib_port* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %83, 1
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 0
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %91 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %80, i8* %86, i8* %90)
  br label %92

92:                                               ; preds = %71, %2
  ret void
}

declare dso_local i32 @AFI_RD4(%struct.tegra_pcib_softc*, i32) #1

declare dso_local i32 @AFI_WR4(%struct.tegra_pcib_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @tegra_pcib_wait_for_link(%struct.tegra_pcib_softc*, %struct.tegra_pcib_port*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
