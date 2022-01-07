; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_aw_spi.c_aw_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.aw_spi_softc = type { i32, i32, i32 }

@CLK_SET_ROUND_DOWN = common dso_local global i32 0, align 4
@AW_SPI_MAX_CS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Invalid cs %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AW_SPI_GCR = common dso_local global i32 0, align 4
@AW_SPI_GCR_EN = common dso_local global i32 0, align 4
@AW_SPI_GCR_SRST = common dso_local global i32 0, align 4
@SPIBUS_CS_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @aw_spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca %struct.aw_spi_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.aw_spi_softc* @device_get_softc(i32 %14)
  store %struct.aw_spi_softc* %15, %struct.aw_spi_softc** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @spibus_get_cs(i32 %16, i32* %9)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @spibus_get_clock(i32 %18, i32* %11)
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @spibus_get_mode(i32 %20, i32* %10)
  %22 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %23 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 2, %25
  %27 = load i32, i32* @CLK_SET_ROUND_DOWN, align 4
  %28 = call i32 @clk_set_freq(i32 %24, i32 %26, i32 %27)
  %29 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %30 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %33 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %32, i32 0, i32 1
  %34 = call i32 @clk_get_freq(i32 %31, i32* %33)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @AW_SPI_MAX_CS, align 4
  %37 = icmp sge i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %3
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %149

43:                                               ; preds = %3
  %44 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %45 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %44, i32 0, i32 0
  %46 = call i32 @mtx_lock(i32* %45)
  %47 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %48 = load i32, i32* @AW_SPI_GCR, align 4
  %49 = call i32 @AW_SPI_READ_4(%struct.aw_spi_softc* %47, i32 %48)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @AW_SPI_GCR_EN, align 4
  %51 = load i32, i32* @AW_SPI_GCR_SRST, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %12, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %12, align 4
  %55 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %56 = load i32, i32* @AW_SPI_GCR, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc* %55, i32 %56, i32 %57)
  %59 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @aw_spi_setup_clock(%struct.aw_spi_softc* %59, i32 %60)
  %62 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @aw_spi_setup_mode(%struct.aw_spi_softc* %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %43
  %70 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @aw_spi_setup_cs(%struct.aw_spi_softc* %70, i32 %71, i32 0)
  br label %77

73:                                               ; preds = %43
  %74 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @aw_spi_setup_cs(%struct.aw_spi_softc* %74, i32 %75, i32 1)
  br label %77

77:                                               ; preds = %73, %69
  store i32 0, i32* %13, align 4
  %78 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %79 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %97

82:                                               ; preds = %77
  %83 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %84 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %85 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %88 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %91 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %94 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @aw_spi_xfer(%struct.aw_spi_softc* %83, i32 %86, i32 %89, i32 %92, i32 %95)
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %82, %77
  %98 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %99 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %120

102:                                              ; preds = %97
  %103 = load i32, i32* %13, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %120

105:                                              ; preds = %102
  %106 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %107 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %108 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %111 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %114 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %117 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @aw_spi_xfer(%struct.aw_spi_softc* %106, i32 %109, i32 %112, i32 %115, i32 %118)
  store i32 %119, i32* %13, align 4
  br label %120

120:                                              ; preds = %105, %102, %97
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @SPIBUS_CS_HIGH, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %120
  %126 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @aw_spi_setup_cs(%struct.aw_spi_softc* %126, i32 %127, i32 1)
  br label %133

129:                                              ; preds = %120
  %130 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 @aw_spi_setup_cs(%struct.aw_spi_softc* %130, i32 %131, i32 0)
  br label %133

133:                                              ; preds = %129, %125
  %134 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %135 = load i32, i32* @AW_SPI_GCR, align 4
  %136 = call i32 @AW_SPI_READ_4(%struct.aw_spi_softc* %134, i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* @AW_SPI_GCR_EN, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %12, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %12, align 4
  %141 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %142 = load i32, i32* @AW_SPI_GCR, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc* %141, i32 %142, i32 %143)
  %145 = load %struct.aw_spi_softc*, %struct.aw_spi_softc** %8, align 8
  %146 = getelementptr inbounds %struct.aw_spi_softc, %struct.aw_spi_softc* %145, i32 0, i32 0
  %147 = call i32 @mtx_unlock(i32* %146)
  %148 = load i32, i32* %13, align 4
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %133, %38
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.aw_spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @spibus_get_cs(i32, i32*) #1

declare dso_local i32 @spibus_get_clock(i32, i32*) #1

declare dso_local i32 @spibus_get_mode(i32, i32*) #1

declare dso_local i32 @clk_set_freq(i32, i32, i32) #1

declare dso_local i32 @clk_get_freq(i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @AW_SPI_READ_4(%struct.aw_spi_softc*, i32) #1

declare dso_local i32 @AW_SPI_WRITE_4(%struct.aw_spi_softc*, i32, i32) #1

declare dso_local i32 @aw_spi_setup_clock(%struct.aw_spi_softc*, i32) #1

declare dso_local i32 @aw_spi_setup_mode(%struct.aw_spi_softc*, i32) #1

declare dso_local i32 @aw_spi_setup_cs(%struct.aw_spi_softc*, i32, i32) #1

declare dso_local i32 @aw_spi_xfer(%struct.aw_spi_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
