; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_msi_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_msi_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@TEGRA_PCIB_MAX_MSI = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s,%u\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcib_softc*)* @tegra_pcib_msi_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcib_msi_attach(%struct.tegra_pcib_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcib_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.tegra_pcib_softc* %0, %struct.tegra_pcib_softc** %3, align 8
  %7 = load i32, i32* @TEGRA_PCIB_MAX_MSI, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 8, %8
  %10 = trunc i64 %9 to i32
  %11 = load i32, i32* @M_DEVBUF, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call %struct.TYPE_2__* @malloc(i32 %10, i32 %11, i32 %14)
  %16 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %16, i32 0, i32 1
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %17, align 8
  %18 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i8* @device_get_nameunit(i32 %20)
  store i8* %21, i8** %6, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %53, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @TEGRA_PCIB_MAX_MSI, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %22
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %27, i32* %34, align 4
  %35 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @intr_isrc_register(i32* %41, i32 %44, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %26
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %70

52:                                               ; preds = %26
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %22

56:                                               ; preds = %22
  %57 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %61 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @ofw_bus_get_node(i32 %62)
  %64 = call i32 @OF_xref_from_node(i32 %63)
  %65 = call i64 @intr_msi_register(i32 %59, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %56
  %68 = load i32, i32* @ENXIO, align 4
  store i32 %68, i32* %2, align 4
  br label %70

69:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %67, %50
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local %struct.TYPE_2__* @malloc(i32, i32, i32) #1

declare dso_local i8* @device_get_nameunit(i32) #1

declare dso_local i32 @intr_isrc_register(i32*, i32, i32, i8*, i8*, i32) #1

declare dso_local i64 @intr_msi_register(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
