; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_error_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@I2C_STATUS_REG = common dso_local global i32 0, align 4
@I2C_CONTROL_REG = common dso_local global i32 0, align 4
@I2CCR_MEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_softc*, i32)* @i2c_error_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_error_handler(%struct.i2c_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_softc* %0, %struct.i2c_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %20

7:                                                ; preds = %2
  %8 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %9 = load i32, i32* @I2C_STATUS_REG, align 4
  %10 = call i32 @i2c_write_reg(%struct.i2c_softc* %8, i32 %9, i32 0)
  %11 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %12 = load i32, i32* @I2C_CONTROL_REG, align 4
  %13 = load i32, i32* @I2CCR_MEN, align 4
  %14 = call i32 @i2c_write_reg(%struct.i2c_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %16 = call i32 @wait_for_busbusy(%struct.i2c_softc* %15, i32 0)
  %17 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %18 = load i32, i32* @I2C_CONTROL_REG, align 4
  %19 = call i32 @i2c_write_reg(%struct.i2c_softc* %17, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %7, %2
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

declare dso_local i32 @i2c_write_reg(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @wait_for_busbusy(%struct.i2c_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
