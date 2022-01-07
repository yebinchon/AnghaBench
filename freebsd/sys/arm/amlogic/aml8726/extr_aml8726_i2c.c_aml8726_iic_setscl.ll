; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_i2c.c_aml8726_iic_setscl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_i2c.c_aml8726_iic_setscl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_iic_softc = type { i32 }

@AML_I2C_CTRL_REG = common dso_local global i32 0, align 4
@AML_I2C_MANUAL_SCL_O = common dso_local global i32 0, align 4
@AML_I2C_MANUAL_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @aml8726_iic_setscl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_iic_setscl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.aml8726_iic_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.aml8726_iic_softc* @device_get_softc(i32 %6)
  store %struct.aml8726_iic_softc* %7, %struct.aml8726_iic_softc** %5, align 8
  %8 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %5, align 8
  %9 = call i32 @AML_I2C_LOCK(%struct.aml8726_iic_softc* %8)
  %10 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %5, align 8
  %11 = load i32, i32* @AML_I2C_CTRL_REG, align 4
  %12 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %5, align 8
  %13 = load i32, i32* @AML_I2C_CTRL_REG, align 4
  %14 = call i32 @CSR_READ_4(%struct.aml8726_iic_softc* %12, i32 %13)
  %15 = load i32, i32* @AML_I2C_MANUAL_SCL_O, align 4
  %16 = xor i32 %15, -1
  %17 = and i32 %14, %16
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @AML_I2C_MANUAL_SCL_O, align 4
  br label %23

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi i32 [ %21, %20 ], [ 0, %22 ]
  %25 = or i32 %17, %24
  %26 = load i32, i32* @AML_I2C_MANUAL_EN, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @CSR_WRITE_4(%struct.aml8726_iic_softc* %10, i32 %11, i32 %27)
  %29 = load %struct.aml8726_iic_softc*, %struct.aml8726_iic_softc** %5, align 8
  %30 = call i32 @AML_I2C_UNLOCK(%struct.aml8726_iic_softc* %29)
  ret void
}

declare dso_local %struct.aml8726_iic_softc* @device_get_softc(i32) #1

declare dso_local i32 @AML_I2C_LOCK(%struct.aml8726_iic_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_iic_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_iic_softc*, i32) #1

declare dso_local i32 @AML_I2C_UNLOCK(%struct.aml8726_iic_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
