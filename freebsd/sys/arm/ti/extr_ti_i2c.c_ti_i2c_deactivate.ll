; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_deactivate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_i2c_softc = type { i32, i32*, i32*, i32* }

@I2C_REG_IRQENABLE_CLR = common dso_local global i32 0, align 4
@I2C_REG_STATUS = common dso_local global i32 0, align 4
@I2C_REG_CON = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ti_i2c_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_i2c_deactivate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_i2c_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ti_i2c_softc* @device_get_softc(i32 %4)
  store %struct.ti_i2c_softc* %5, %struct.ti_i2c_softc** %3, align 8
  %6 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %7 = load i32, i32* @I2C_REG_IRQENABLE_CLR, align 4
  %8 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %6, i32 %7, i32 65535)
  %9 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %10 = load i32, i32* @I2C_REG_STATUS, align 4
  %11 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %9, i32 %10, i32 65535)
  %12 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %13 = load i32, i32* @I2C_REG_CON, align 4
  %14 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %12, i32 %13, i32 0)
  %15 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load i32, i32* %2, align 4
  %21 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %24, i32 0, i32 3
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @bus_teardown_intr(i32 %20, i32* %23, i32* %26)
  %28 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %29 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %28, i32 0, i32 3
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %19, %1
  %31 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* @SYS_RES_MEMORY, align 4
  %38 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @bus_release_resource(i32 %36, i32 %37, i32 0, i32* %40)
  %42 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %42, i32 0, i32 2
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %58

49:                                               ; preds = %44
  %50 = load i32, i32* %2, align 4
  %51 = load i32, i32* @SYS_RES_IRQ, align 4
  %52 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @bus_release_resource(i32 %50, i32 %51, i32 0, i32* %54)
  %56 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %56, i32 0, i32 1
  store i32* null, i32** %57, align 8
  br label %58

58:                                               ; preds = %49, %44
  %59 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %3, align 8
  %60 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @ti_prcm_clk_disable(i32 %61)
  ret void
}

declare dso_local %struct.ti_i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @ti_i2c_write_2(%struct.ti_i2c_softc*, i32, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @ti_prcm_clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
