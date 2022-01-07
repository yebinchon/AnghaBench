; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_hw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"Cannot assert reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Cannot clear reset\0A\00", align 1
@I2C_INTERRUPT_MASK_REGISTER = common dso_local global i32 0, align 4
@I2C_INTERRUPT_STATUS_REGISTER = common dso_local global i32 0, align 4
@I2C_CNFG = common dso_local global i32 0, align 4
@I2C_CNFG_NEW_MASTER_FSM = common dso_local global i32 0, align 4
@I2C_CNFG_PACKET_MODE_EN = common dso_local global i32 0, align 4
@I2C_FIFO_CONTROL = common dso_local global i32 0, align 4
@I2C_CONFIG_LOAD = common dso_local global i32 0, align 4
@I2C_CONFIG_LOAD_MSTR_CONFIG_LOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"config load timeouted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_i2c_softc*)* @tegra_i2c_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_i2c_hw_init(%struct.tegra_i2c_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_i2c_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_i2c_softc* %0, %struct.tegra_i2c_softc** %3, align 8
  %6 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @hwreset_assert(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @device_printf(i32 %15, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %87

18:                                               ; preds = %1
  %19 = call i32 @DELAY(i32 10)
  %20 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @hwreset_deassert(i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %18
  %27 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %87

32:                                               ; preds = %18
  %33 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %34 = load i32, i32* @I2C_INTERRUPT_MASK_REGISTER, align 4
  %35 = call i32 @WR4(%struct.tegra_i2c_softc* %33, i32 %34, i32 0)
  %36 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %37 = load i32, i32* @I2C_INTERRUPT_STATUS_REGISTER, align 4
  %38 = call i32 @WR4(%struct.tegra_i2c_softc* %36, i32 %37, i32 -1)
  %39 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %40 = load i32, i32* @I2C_CNFG, align 4
  %41 = load i32, i32* @I2C_CNFG_NEW_MASTER_FSM, align 4
  %42 = load i32, i32* @I2C_CNFG_PACKET_MODE_EN, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @I2C_CNFG_DEBOUNCE_CNT(i32 2)
  %45 = or i32 %43, %44
  %46 = call i32 @WR4(%struct.tegra_i2c_softc* %39, i32 %40, i32 %45)
  %47 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %48 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %49 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @tegra_i2c_setup_clk(%struct.tegra_i2c_softc* %47, i32 %50)
  %52 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %53 = load i32, i32* @I2C_FIFO_CONTROL, align 4
  %54 = call i32 @I2C_FIFO_CONTROL_TX_FIFO_TRIG(i32 7)
  %55 = call i32 @I2C_FIFO_CONTROL_RX_FIFO_TRIG(i32 0)
  %56 = or i32 %54, %55
  %57 = call i32 @WR4(%struct.tegra_i2c_softc* %52, i32 %53, i32 %56)
  %58 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %59 = load i32, i32* @I2C_CONFIG_LOAD, align 4
  %60 = load i32, i32* @I2C_CONFIG_LOAD_MSTR_CONFIG_LOAD, align 4
  %61 = call i32 @WR4(%struct.tegra_i2c_softc* %58, i32 %59, i32 %60)
  store i32 1000, i32* %5, align 4
  br label %62

62:                                               ; preds = %73, %32
  %63 = load i32, i32* %5, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %62
  %66 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %67 = load i32, i32* @I2C_CONFIG_LOAD, align 4
  %68 = call i64 @RD4(%struct.tegra_i2c_softc* %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %76

71:                                               ; preds = %65
  %72 = call i32 @DELAY(i32 10)
  br label %73

73:                                               ; preds = %71
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %5, align 4
  br label %62

76:                                               ; preds = %70, %62
  %77 = load i32, i32* %5, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %81 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %76
  %85 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %3, align 8
  %86 = call i32 @tegra_i2c_bus_clear(%struct.tegra_i2c_softc* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %84, %26, %12
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @hwreset_assert(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @WR4(%struct.tegra_i2c_softc*, i32, i32) #1

declare dso_local i32 @I2C_CNFG_DEBOUNCE_CNT(i32) #1

declare dso_local i32 @tegra_i2c_setup_clk(%struct.tegra_i2c_softc*, i32) #1

declare dso_local i32 @I2C_FIFO_CONTROL_TX_FIFO_TRIG(i32) #1

declare dso_local i32 @I2C_FIFO_CONTROL_RX_FIFO_TRIG(i32) #1

declare dso_local i64 @RD4(%struct.tegra_i2c_softc*, i32) #1

declare dso_local i32 @tegra_i2c_bus_clear(%struct.tegra_i2c_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
