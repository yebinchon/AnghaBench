; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_recover_bus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_i2c.c_i2c_recover_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i64, i32 }
%struct.iicrb_pin_access = type { i32, i32, i32, i32, %struct.i2c_softc* }

@i2c_recover_getsda = common dso_local global i32 0, align 4
@i2c_recover_setsda = common dso_local global i32 0, align 4
@i2c_recover_getscl = common dso_local global i32 0, align 4
@i2c_recover_setscl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_softc*)* @i2c_recover_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_recover_bus(%struct.i2c_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_softc*, align 8
  %4 = alloca %struct.iicrb_pin_access, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_softc* %0, %struct.i2c_softc** %3, align 8
  %6 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %35

11:                                               ; preds = %1
  %12 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %13 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %16 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @fdt_pinctrl_configure(i32 %14, i64 %17)
  %19 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %20 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %4, i32 0, i32 4
  store %struct.i2c_softc* %19, %struct.i2c_softc** %20, align 8
  %21 = load i32, i32* @i2c_recover_getsda, align 4
  %22 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %4, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @i2c_recover_setsda, align 4
  %24 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %4, i32 0, i32 2
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* @i2c_recover_getscl, align 4
  %26 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %4, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @i2c_recover_setscl, align 4
  %28 = getelementptr inbounds %struct.iicrb_pin_access, %struct.iicrb_pin_access* %4, i32 0, i32 0
  store i32 %27, i32* %28, align 8
  %29 = call i32 @iic_recover_bus(%struct.iicrb_pin_access* %4)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.i2c_softc*, %struct.i2c_softc** %3, align 8
  %31 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @fdt_pinctrl_configure(i32 %32, i64 0)
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %11, %10
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @fdt_pinctrl_configure(i32, i64) #1

declare dso_local i32 @iic_recover_bus(%struct.iicrb_pin_access*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
