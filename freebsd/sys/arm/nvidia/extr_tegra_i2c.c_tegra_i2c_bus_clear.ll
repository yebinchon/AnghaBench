; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_bus_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_i2c.c_tegra_i2c_bus_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_i2c_softc = type { i32 }

@I2C_BUS_CLEAR_CONFIG = common dso_local global i32 0, align 4
@I2C_BUS_CLEAR_CONFIG_BC_STOP_COND = common dso_local global i32 0, align 4
@I2C_BUS_CLEAR_CONFIG_BC_TERMINATE = common dso_local global i32 0, align 4
@I2C_CONFIG_LOAD = common dso_local global i32 0, align 4
@I2C_CONFIG_LOAD_MSTR_CONFIG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"config load timeouted\0A\00", align 1
@I2C_BUS_CLEAR_CONFIG_BC_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"bus clear timeouted\0A\00", align 1
@I2C_BUS_CLEAR_STATUS = common dso_local global i32 0, align 4
@I2C_BUS_CLEAR_STATUS_BC_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"bus clear failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_i2c_softc*)* @tegra_i2c_bus_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_i2c_bus_clear(%struct.tegra_i2c_softc* %0) #0 {
  %2 = alloca %struct.tegra_i2c_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_i2c_softc* %0, %struct.tegra_i2c_softc** %2, align 8
  %6 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %2, align 8
  %7 = load i32, i32* @I2C_BUS_CLEAR_CONFIG, align 4
  %8 = call i32 @I2C_BUS_CLEAR_CONFIG_BC_SCLK_THRESHOLD(i32 18)
  %9 = load i32, i32* @I2C_BUS_CLEAR_CONFIG_BC_STOP_COND, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @I2C_BUS_CLEAR_CONFIG_BC_TERMINATE, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @WR4(%struct.tegra_i2c_softc* %6, i32 %7, i32 %12)
  %14 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %2, align 8
  %15 = load i32, i32* @I2C_CONFIG_LOAD, align 4
  %16 = load i32, i32* @I2C_CONFIG_LOAD_MSTR_CONFIG_LOAD, align 4
  %17 = call i32 @WR4(%struct.tegra_i2c_softc* %14, i32 %15, i32 %16)
  store i32 1000, i32* %3, align 4
  br label %18

18:                                               ; preds = %29, %1
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %2, align 8
  %23 = load i32, i32* @I2C_CONFIG_LOAD, align 4
  %24 = call i32 @RD4(%struct.tegra_i2c_softc* %22, i32 %23)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %32

27:                                               ; preds = %21
  %28 = call i32 @DELAY(i32 10)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %3, align 4
  br label %18

32:                                               ; preds = %26, %18
  %33 = load i32, i32* %3, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %2, align 8
  %37 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %35, %32
  %41 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %2, align 8
  %42 = load i32, i32* @I2C_BUS_CLEAR_CONFIG, align 4
  %43 = call i32 @RD4(%struct.tegra_i2c_softc* %41, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* @I2C_BUS_CLEAR_CONFIG_BC_ENABLE, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %4, align 4
  %47 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %2, align 8
  %48 = load i32, i32* @I2C_BUS_CLEAR_CONFIG, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @WR4(%struct.tegra_i2c_softc* %47, i32 %48, i32 %49)
  store i32 1000, i32* %3, align 4
  br label %51

51:                                               ; preds = %64, %40
  %52 = load i32, i32* %3, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %2, align 8
  %56 = load i32, i32* @I2C_BUS_CLEAR_CONFIG, align 4
  %57 = call i32 @RD4(%struct.tegra_i2c_softc* %55, i32 %56)
  %58 = load i32, i32* @I2C_BUS_CLEAR_CONFIG_BC_ENABLE, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  br label %67

62:                                               ; preds = %54
  %63 = call i32 @DELAY(i32 10)
  br label %64

64:                                               ; preds = %62
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, -1
  store i32 %66, i32* %3, align 4
  br label %51

67:                                               ; preds = %61, %51
  %68 = load i32, i32* %3, align 4
  %69 = icmp sle i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %67
  %71 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %2, align 8
  %72 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %70, %67
  %76 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %2, align 8
  %77 = load i32, i32* @I2C_BUS_CLEAR_STATUS, align 4
  %78 = call i32 @RD4(%struct.tegra_i2c_softc* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @I2C_BUS_CLEAR_STATUS_BC_STATUS, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %75
  %84 = load %struct.tegra_i2c_softc*, %struct.tegra_i2c_softc** %2, align 8
  %85 = getelementptr inbounds %struct.tegra_i2c_softc, %struct.tegra_i2c_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @device_printf(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %75
  ret void
}

declare dso_local i32 @WR4(%struct.tegra_i2c_softc*, i32, i32) #1

declare dso_local i32 @I2C_BUS_CLEAR_CONFIG_BC_SCLK_THRESHOLD(i32) #1

declare dso_local i32 @RD4(%struct.tegra_i2c_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
