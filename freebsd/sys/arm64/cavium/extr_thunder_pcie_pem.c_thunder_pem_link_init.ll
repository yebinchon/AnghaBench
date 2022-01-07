; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_link_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_link_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_pem_softc = type { i32, i32, i32, i32 }

@PEM_ON_REG = common dso_local global i32 0, align 4
@PEM_CFG_LINK_MASK = common dso_local global i32 0, align 4
@PEM_CFG_LINK_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"PEM%d is not ON\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@PEM_CTL_STATUS = common dso_local global i32 0, align 4
@PEM_LINK_ENABLE = common dso_local global i32 0, align 4
@PCIERC_CFG032 = common dso_local global i32 0, align 4
@PEM_LINK_DLLA = common dso_local global i32 0, align 4
@PEM_LINK_LT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"PCIe RC: Port %d Link Timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thunder_pem_softc*)* @thunder_pem_link_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_pem_link_init(%struct.thunder_pem_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.thunder_pem_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.thunder_pem_softc* %0, %struct.thunder_pem_softc** %3, align 8
  %5 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %6 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %9 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PEM_ON_REG, align 4
  %12 = call i32 @bus_space_read_8(i32 %7, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PEM_CFG_LINK_MASK, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @PEM_CFG_LINK_RDY, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %20 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %23 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %71

27:                                               ; preds = %1
  %28 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %29 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %32 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PEM_CTL_STATUS, align 4
  %35 = call i32 @bus_space_read_8(i32 %30, i32 %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @PEM_LINK_ENABLE, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %40 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %43 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PEM_CTL_STATUS, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @bus_space_write_8(i32 %41, i32 %44, i32 %45, i32 %46)
  %48 = call i32 @DELAY(i32 1000)
  %49 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %50 = load i32, i32* @PCIERC_CFG032, align 4
  %51 = call i32 @thunder_pem_config_reg_read(%struct.thunder_pem_softc* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @PEM_LINK_DLLA, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %27
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @PEM_LINK_LT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %56, %27
  %62 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %63 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %66 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @ENXIO, align 4
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %61, %18
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @bus_space_read_8(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @bus_space_write_8(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @thunder_pem_config_reg_read(%struct.thunder_pem_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
