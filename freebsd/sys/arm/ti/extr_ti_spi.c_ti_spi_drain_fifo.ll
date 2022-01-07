; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_drain_fifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_spi.c_ti_spi_drain_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_spi_softc = type { i32, i32, i64, i64, %struct.spi_command* }
%struct.spi_command = type { i64, i64, i64 }

@MCSPI_STAT_RXS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_spi_softc*)* @ti_spi_drain_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_spi_drain_fifo(%struct.ti_spi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_spi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  store %struct.ti_spi_softc* %0, %struct.ti_spi_softc** %3, align 8
  %9 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %9, i32 0, i32 4
  %11 = load %struct.spi_command*, %struct.spi_command** %10, align 8
  store %struct.spi_command* %11, %struct.spi_command** %6, align 8
  %12 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  %19 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %20 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @min(i64 %18, i32 %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %80, %1
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %4, align 4
  %26 = icmp sgt i32 %24, 0
  br i1 %26, label %27, label %90

27:                                               ; preds = %23
  %28 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %29 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  store i32* %31, i32** %8, align 8
  %32 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %33 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %38 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp uge i64 %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %27
  %42 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %43 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %8, align 8
  %46 = load %struct.spi_command*, %struct.spi_command** %6, align 8
  %47 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %7, align 8
  %50 = sub i64 %49, %48
  store i64 %50, i64* %7, align 8
  br label %51

51:                                               ; preds = %41, %27
  %52 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %80

56:                                               ; preds = %51
  store i32 1000, i32* %5, align 4
  br label %57

57:                                               ; preds = %73, %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %57
  %62 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %63 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %64 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MCSPI_STAT_CH(i32 %65)
  %67 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %62, i32 %66)
  %68 = load i32, i32* @MCSPI_STAT_RXS, align 4
  %69 = and i32 %67, %68
  %70 = icmp eq i32 %69, 0
  br label %71

71:                                               ; preds = %61, %57
  %72 = phi i1 [ false, %57 ], [ %70, %61 ]
  br i1 %72, label %73, label %75

73:                                               ; preds = %71
  %74 = call i32 @DELAY(i32 100)
  br label %57

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 -1, i32* %2, align 4
  br label %91

79:                                               ; preds = %75
  br label %80

80:                                               ; preds = %79, %51
  %81 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %82 = load %struct.ti_spi_softc*, %struct.ti_spi_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ti_spi_softc, %struct.ti_spi_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @MCSPI_RX_CH(i32 %84)
  %86 = call i32 @TI_SPI_READ(%struct.ti_spi_softc* %81, i32 %85)
  %87 = load i32*, i32** %8, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  store i32 %86, i32* %89, align 4
  br label %23

90:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %78
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @TI_SPI_READ(%struct.ti_spi_softc*, i32) #1

declare dso_local i32 @MCSPI_STAT_CH(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @MCSPI_RX_CH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
