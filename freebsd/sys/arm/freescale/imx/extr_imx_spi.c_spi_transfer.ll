; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_command = type { i32, i32, i32, i32, i32, i32 }
%struct.spi_softc = type { i32, i32, i32, i32** }

@CS_MAX = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"Invalid chip select %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"spi_transfer, cs 0x%x clock %u mode %u\0A\00", align 1
@ECSPI_CTLREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.spi_command*)* @spi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_transfer(i32 %0, i32 %1, %struct.spi_command* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_command*, align 8
  %8 = alloca %struct.spi_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.spi_command* %2, %struct.spi_command** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.spi_softc* @device_get_softc(i32 %13)
  store %struct.spi_softc* %14, %struct.spi_softc** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @spibus_get_cs(i32 %15, i64* %9)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @spibus_get_clock(i32 %17, i64* %11)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @spibus_get_mode(i32 %19, i64* %10)
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @CS_MAX, align 8
  %23 = icmp ugt i64 %21, %22
  br i1 %23, label %32, label %24

24:                                               ; preds = %3
  %25 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %26 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %25, i32 0, i32 3
  %27 = load i32**, i32*** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i32*, i32** %27, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %48

32:                                               ; preds = %24, %3
  %33 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %34 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* @bootverbose, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37, %32
  %41 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %42 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %44)
  br label %46

46:                                               ; preds = %40, %37
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %4, align 4
  br label %128

48:                                               ; preds = %24
  %49 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %50 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %49, i32 0, i32 1
  %51 = call i32 @mtx_lock(i32* %50)
  %52 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %53 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @device_busy(i32 %54)
  %56 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %57 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp sge i32 %58, 1
  br i1 %59, label %60, label %68

60:                                               ; preds = %48
  %61 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %62 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %10, align 8
  %67 = call i32 (i32, i8*, i64, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %65, i64 %66)
  br label %68

68:                                               ; preds = %60, %48
  %69 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @spi_hw_setup(%struct.spi_softc* %69, i64 %70, i64 %71, i64 %72)
  %74 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %75 = load i64, i64* %9, align 8
  %76 = call i32 @spi_set_chipsel(%struct.spi_softc* %74, i64 %75, i32 1)
  store i32 0, i32* %12, align 4
  %77 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %78 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %68
  %82 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %83 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %84 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %87 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %90 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @spi_xfer_buf(%struct.spi_softc* %82, i32 %85, i32 %88, i32 %91)
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %81, %68
  %94 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %95 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %113

98:                                               ; preds = %93
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %98
  %102 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %103 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %104 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %107 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.spi_command*, %struct.spi_command** %7, align 8
  %110 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @spi_xfer_buf(%struct.spi_softc* %102, i32 %105, i32 %108, i32 %111)
  store i32 %112, i32* %12, align 4
  br label %113

113:                                              ; preds = %101, %98, %93
  %114 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %115 = load i64, i64* %9, align 8
  %116 = call i32 @spi_set_chipsel(%struct.spi_softc* %114, i64 %115, i32 0)
  %117 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %118 = load i32, i32* @ECSPI_CTLREG, align 4
  %119 = call i32 @WR4(%struct.spi_softc* %117, i32 %118, i32 0)
  %120 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %121 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @device_unbusy(i32 %122)
  %124 = load %struct.spi_softc*, %struct.spi_softc** %8, align 8
  %125 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %124, i32 0, i32 1
  %126 = call i32 @mtx_unlock(i32* %125)
  %127 = load i32, i32* %12, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %113, %46
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local %struct.spi_softc* @device_get_softc(i32) #1

declare dso_local i32 @spibus_get_cs(i32, i64*) #1

declare dso_local i32 @spibus_get_clock(i32, i64*) #1

declare dso_local i32 @spibus_get_mode(i32, i64*) #1

declare dso_local i32 @device_printf(i32, i8*, i64, ...) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_busy(i32) #1

declare dso_local i32 @spi_hw_setup(%struct.spi_softc*, i64, i64, i64) #1

declare dso_local i32 @spi_set_chipsel(%struct.spi_softc*, i64, i32) #1

declare dso_local i32 @spi_xfer_buf(%struct.spi_softc*, i32, i32, i32) #1

declare dso_local i32 @WR4(%struct.spi_softc*, i32, i32) #1

declare dso_local i32 @device_unbusy(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
