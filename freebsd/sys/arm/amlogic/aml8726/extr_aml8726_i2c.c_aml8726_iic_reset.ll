; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_i2c.c_aml8726_iic_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_i2c.c_aml8726_iic_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_iic_softc = type { i32 }

@AML_I2C_CTRL_REG = common dso_local global i32 0, align 4
@AML_I2C_MANUAL_SDA_O = common dso_local global i32 0, align 4
@AML_I2C_MANUAL_SCL_O = common dso_local global i32 0, align 4
@AML_I2C_MANUAL_EN = common dso_local global i32 0, align 4
@IIC_ENOADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @aml8726_iic_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_iic_reset(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.aml8726_iic_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.aml8726_iic_softc* @device_get_softc(i32 %10)
  store %struct.aml8726_iic_softc* %11, %struct.aml8726_iic_softc** %9, align 8
  %12 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %9, align 8
  %13 = call i32 @AML_I2C_LOCK(%struct.aml8726_iic_softc* %12)
  %14 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %9, align 8
  %15 = load i32, i32* @AML_I2C_CTRL_REG, align 4
  %16 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %9, align 8
  %17 = load i32, i32* @AML_I2C_CTRL_REG, align 4
  %18 = call i32 @CSR_READ_4(%struct.aml8726_iic_softc* %16, i32 %17)
  %19 = load i32, i32* @AML_I2C_MANUAL_SDA_O, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @AML_I2C_MANUAL_SCL_O, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @AML_I2C_MANUAL_EN, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @CSR_WRITE_4(%struct.aml8726_iic_softc* %14, i32 %15, i32 %24)
  %26 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %9, align 8
  %27 = call i32 @AML_I2C_UNLOCK(%struct.aml8726_iic_softc* %26)
  %28 = call i32 @DELAY(i32 10)
  %29 = load i32, i32* @IIC_ENOADDR, align 4
  ret i32 %29
}

declare dso_local %struct.aml8726_iic_softc* @device_get_softc(i32) #1

declare dso_local i32 @AML_I2C_LOCK(%struct.aml8726_iic_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_iic_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_iic_softc*, i32) #1

declare dso_local i32 @AML_I2C_UNLOCK(%struct.aml8726_iic_softc*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
