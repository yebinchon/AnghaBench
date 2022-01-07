; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_i2c.c_ti_i2c_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_i2c_clock_config = type { i32, i32, i32, i32, i32, i32 }
%struct.ti_i2c_softc = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [40 x i8] c"Unknown TI SoC, unable to reset the i2c\00", align 1
@I2C_REG_CON = common dso_local global i32 0, align 4
@I2C_REG_SYSC = common dso_local global i32 0, align 4
@I2C_REG_SYSC_SRST = common dso_local global i32 0, align 4
@I2C_CON_I2C_EN = common dso_local global i32 0, align 4
@I2C_REG_SYSS = common dso_local global i32 0, align 4
@I2C_SYSS_RDONE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@I2C_REG_PSC = common dso_local global i32 0, align 4
@I2C_SCLL_MASK = common dso_local global i32 0, align 4
@I2C_SCLH_MASK = common dso_local global i32 0, align 4
@I2C_REG_SCLL = common dso_local global i32 0, align 4
@I2C_REG_SCLH = common dso_local global i32 0, align 4
@I2C_BUF_TRSH_MASK = common dso_local global i32 0, align 4
@I2C_BUF_RXTRSH_SHIFT = common dso_local global i32 0, align 4
@I2C_REG_BUF = common dso_local global i32 0, align 4
@I2C_CON_MST = common dso_local global i32 0, align 4
@I2C_IE_XDR = common dso_local global i32 0, align 4
@I2C_IE_XRDY = common dso_local global i32 0, align 4
@I2C_IE_RDR = common dso_local global i32 0, align 4
@I2C_IE_RRDY = common dso_local global i32 0, align 4
@I2C_IE_ARDY = common dso_local global i32 0, align 4
@I2C_IE_NACK = common dso_local global i32 0, align 4
@I2C_IE_AL = common dso_local global i32 0, align 4
@I2C_REG_IRQENABLE_SET = common dso_local global i32 0, align 4
@I2C_CON_OPMODE_HS = common dso_local global i32 0, align 4
@I2C_HSSCLH_SHIFT = common dso_local global i32 0, align 4
@I2C_HSSCLL_SHIFT = common dso_local global i32 0, align 4
@ti_am335x_i2c_clock_configs = common dso_local global %struct.ti_i2c_clock_config* null, align 8
@ti_omap4_i2c_clock_configs = common dso_local global %struct.ti_i2c_clock_config* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_i2c_softc*, i32)* @ti_i2c_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_i2c_reset(%struct.ti_i2c_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_i2c_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ti_i2c_clock_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ti_i2c_softc* %0, %struct.ti_i2c_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = call i32 (...) @ti_chip()
  switch i32 %13, label %14 [
  ]

14:                                               ; preds = %2
  %15 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14
  %17 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %18 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 100000, i32* %8, align 4
  br label %28

22:                                               ; preds = %16
  %23 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @IICBUS_GET_FREQUENCY(i32* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %22, %21
  br label %29

29:                                               ; preds = %43, %28
  %30 = load %struct.ti_i2c_clock_config*, %struct.ti_i2c_clock_config** %7, align 8
  %31 = getelementptr inbounds %struct.ti_i2c_clock_config, %struct.ti_i2c_clock_config* %30, i64 1
  %32 = getelementptr inbounds %struct.ti_i2c_clock_config, %struct.ti_i2c_clock_config* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = load %struct.ti_i2c_clock_config*, %struct.ti_i2c_clock_config** %7, align 8
  %37 = getelementptr inbounds %struct.ti_i2c_clock_config, %struct.ti_i2c_clock_config* %36, i64 1
  %38 = getelementptr inbounds %struct.ti_i2c_clock_config, %struct.ti_i2c_clock_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35, %29
  br label %46

43:                                               ; preds = %35
  %44 = load %struct.ti_i2c_clock_config*, %struct.ti_i2c_clock_config** %7, align 8
  %45 = getelementptr inbounds %struct.ti_i2c_clock_config, %struct.ti_i2c_clock_config* %44, i32 1
  store %struct.ti_i2c_clock_config* %45, %struct.ti_i2c_clock_config** %7, align 8
  br label %29

46:                                               ; preds = %42
  %47 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %48 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %50 = load i32, i32* @I2C_REG_CON, align 4
  %51 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %49, i32 %50, i32 %53)
  %55 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %56 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @I2C_REG_SYSC, align 4
  %59 = load i32, i32* @I2C_REG_SYSC_SRST, align 4
  %60 = call i32 @bus_write_2(i32 %57, i32 %58, i32 %59)
  %61 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %62 = load i32, i32* @I2C_REG_CON, align 4
  %63 = load i32, i32* @I2C_CON_I2C_EN, align 4
  %64 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %61, i32 %62, i32 %63)
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %78, %46
  %66 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %67 = load i32, i32* @I2C_REG_SYSS, align 4
  %68 = call i32 @ti_i2c_read_2(%struct.ti_i2c_softc* %66, i32 %67)
  %69 = load i32, i32* @I2C_SYSS_RDONE, align 4
  %70 = and i32 %68, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %65
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  %75 = icmp sgt i32 %73, 100
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* @EBUSY, align 4
  store i32 %77, i32* %3, align 4
  br label %158

78:                                               ; preds = %72
  %79 = call i32 @DELAY(i32 100)
  br label %65

80:                                               ; preds = %65
  %81 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %82 = load i32, i32* @I2C_REG_CON, align 4
  %83 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %84 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %81, i32 %82, i32 %85)
  %87 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %88 = load i32, i32* @I2C_REG_PSC, align 4
  %89 = load %struct.ti_i2c_clock_config*, %struct.ti_i2c_clock_config** %7, align 8
  %90 = getelementptr inbounds %struct.ti_i2c_clock_config, %struct.ti_i2c_clock_config* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %87, i32 %88, i32 %91)
  %93 = load %struct.ti_i2c_clock_config*, %struct.ti_i2c_clock_config** %7, align 8
  %94 = getelementptr inbounds %struct.ti_i2c_clock_config, %struct.ti_i2c_clock_config* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @I2C_SCLL_MASK, align 4
  %97 = and i32 %95, %96
  store i32 %97, i32* %11, align 4
  %98 = load %struct.ti_i2c_clock_config*, %struct.ti_i2c_clock_config** %7, align 8
  %99 = getelementptr inbounds %struct.ti_i2c_clock_config, %struct.ti_i2c_clock_config* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @I2C_SCLH_MASK, align 4
  %102 = and i32 %100, %101
  store i32 %102, i32* %12, align 4
  %103 = call i32 (...) @ti_chip()
  switch i32 %103, label %104 [
  ]

104:                                              ; preds = %80
  %105 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %106 = load i32, i32* @I2C_REG_SCLL, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %105, i32 %106, i32 %107)
  %109 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %110 = load i32, i32* @I2C_REG_SCLH, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %109, i32 %110, i32 %111)
  %113 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %114 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  %117 = load i32, i32* @I2C_BUF_TRSH_MASK, align 4
  %118 = and i32 %116, %117
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @I2C_BUF_RXTRSH_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = or i32 %119, %122
  store i32 %123, i32* %10, align 4
  %124 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %125 = load i32, i32* @I2C_REG_BUF, align 4
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %124, i32 %125, i32 %126)
  %128 = load i32, i32* @I2C_CON_I2C_EN, align 4
  %129 = load i32, i32* @I2C_CON_MST, align 4
  %130 = or i32 %128, %129
  %131 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %132 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  %135 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %136 = load i32, i32* @I2C_REG_CON, align 4
  %137 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %138 = getelementptr inbounds %struct.ti_i2c_softc, %struct.ti_i2c_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %135, i32 %136, i32 %139)
  %141 = load i32, i32* @I2C_IE_XDR, align 4
  %142 = load i32, i32* @I2C_IE_XRDY, align 4
  %143 = or i32 %141, %142
  %144 = load i32, i32* @I2C_IE_RDR, align 4
  %145 = or i32 %143, %144
  %146 = load i32, i32* @I2C_IE_RRDY, align 4
  %147 = or i32 %145, %146
  %148 = load i32, i32* @I2C_IE_ARDY, align 4
  %149 = or i32 %147, %148
  %150 = load i32, i32* @I2C_IE_NACK, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* @I2C_IE_AL, align 4
  %153 = or i32 %151, %152
  store i32 %153, i32* %10, align 4
  %154 = load %struct.ti_i2c_softc*, %struct.ti_i2c_softc** %4, align 8
  %155 = load i32, i32* @I2C_REG_IRQENABLE_SET, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @ti_i2c_write_2(%struct.ti_i2c_softc* %154, i32 %155, i32 %156)
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %104, %76
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @ti_chip(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @IICBUS_GET_FREQUENCY(i32*, i32) #1

declare dso_local i32 @ti_i2c_write_2(%struct.ti_i2c_softc*, i32, i32) #1

declare dso_local i32 @bus_write_2(i32, i32, i32) #1

declare dso_local i32 @ti_i2c_read_2(%struct.ti_i2c_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
