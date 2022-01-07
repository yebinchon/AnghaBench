; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_config_reg_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/cavium/extr_thunder_pcie_pem.c_thunder_pem_config_reg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thunder_pem_softc = type { i32, i32 }

@PEM_CFG_RD = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_READ = common dso_local global i32 0, align 4
@BUS_SPACE_BARRIER_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thunder_pem_softc*, i32)* @thunder_pem_config_reg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thunder_pem_config_reg_read(%struct.thunder_pem_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.thunder_pem_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.thunder_pem_softc* %0, %struct.thunder_pem_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %7 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %10 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @PEM_CFG_RD, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @PEM_CFG_RD_REG_ALIGN(i32 %13)
  %15 = call i32 @bus_space_write_8(i32 %8, i32 %11, i32 %12, i32 %14)
  %16 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %17 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %20 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PEM_CFG_RD, align 4
  %23 = load i32, i32* @BUS_SPACE_BARRIER_READ, align 4
  %24 = load i32, i32* @BUS_SPACE_BARRIER_WRITE, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @bus_space_barrier(i32 %18, i32 %21, i32 %22, i32 8, i32 %25)
  %27 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %28 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.thunder_pem_softc*, %struct.thunder_pem_softc** %3, align 8
  %31 = getelementptr inbounds %struct.thunder_pem_softc, %struct.thunder_pem_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PEM_CFG_RD, align 4
  %34 = call i32 @bus_space_read_8(i32 %29, i32 %32, i32 %33)
  %35 = call i32 @PEM_CFG_RD_REG_DATA(i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @bus_space_write_8(i32, i32, i32, i32) #1

declare dso_local i32 @PEM_CFG_RD_REG_ALIGN(i32) #1

declare dso_local i32 @bus_space_barrier(i32, i32, i32, i32, i32) #1

declare dso_local i32 @PEM_CFG_RD_REG_DATA(i32) #1

declare dso_local i32 @bus_space_read_8(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
