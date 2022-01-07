; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_spi.c_spi_txrx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_spi.c_spi_txrx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_softc = type { i32 }

@PUSHR_CONT = common dso_local global i32 0, align 4
@PUSHR_PCS_S = common dso_local global i32 0, align 4
@PUSHR_CTCNT = common dso_local global i32 0, align 4
@SPI_FIFO_SIZE = common dso_local global i32 0, align 4
@PUSHR_EOQ = common dso_local global i32 0, align 4
@SPI_PUSHR = common dso_local global i32 0, align 4
@SPI_SR = common dso_local global i32 0, align 4
@SR_EOQF = common dso_local global i32 0, align 4
@SR_TCF = common dso_local global i32 0, align 4
@SR_RFDF = common dso_local global i32 0, align 4
@SPI_POPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_softc*, i32*, i32*, i32, i32)* @spi_txrx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_txrx(%struct.spi_softc* %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.spi_softc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.spi_softc* %0, %struct.spi_softc** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %106, %5
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %109

19:                                               ; preds = %15
  %20 = load i32, i32* %13, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %13, align 4
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @PUSHR_CONT, align 4
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @PUSHR_PCS_S, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %12, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %19
  %38 = load i32, i32* @PUSHR_CTCNT, align 4
  %39 = load i32, i32* %12, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %37, %19
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @SPI_FIFO_SIZE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46, %41
  %51 = load i32, i32* @PUSHR_EOQ, align 4
  %52 = load i32, i32* %12, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %50, %46
  %55 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %56 = load i32, i32* @SPI_PUSHR, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @WRITE4(%struct.spi_softc* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %9, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @SPI_FIFO_SIZE, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %63, %54
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %75, %67
  %69 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %70 = load i32, i32* @SPI_SR, align 4
  %71 = call i32 @READ4(%struct.spi_softc* %69, i32 %70)
  %72 = load i32, i32* @SR_EOQF, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %68

76:                                               ; preds = %68
  %77 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %78 = load i32, i32* @SPI_SR, align 4
  %79 = call i32 @READ4(%struct.spi_softc* %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* @SR_TCF, align 4
  %81 = load i32, i32* @SR_EOQF, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %11, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %11, align 4
  %85 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %86 = load i32, i32* @SPI_SR, align 4
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @WRITE4(%struct.spi_softc* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %76, %63
  br label %90

90:                                               ; preds = %97, %89
  %91 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %92 = load i32, i32* @SPI_SR, align 4
  %93 = call i32 @READ4(%struct.spi_softc* %91, i32 %92)
  %94 = load i32, i32* @SR_RFDF, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  br label %90

98:                                               ; preds = %90
  %99 = load %struct.spi_softc*, %struct.spi_softc** %6, align 8
  %100 = load i32, i32* @SPI_POPR, align 4
  %101 = call i32 @READ1(%struct.spi_softc* %99, i32 %100)
  %102 = load i32*, i32** %8, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %98
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %14, align 4
  br label %15

109:                                              ; preds = %15
  ret i32 0
}

declare dso_local i32 @WRITE4(%struct.spi_softc*, i32, i32) #1

declare dso_local i32 @READ4(%struct.spi_softc*, i32) #1

declare dso_local i32 @READ1(%struct.spi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
