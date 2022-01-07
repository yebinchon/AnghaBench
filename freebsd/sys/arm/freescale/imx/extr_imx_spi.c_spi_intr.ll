; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_spi.c_spi_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_softc = type { i32, i32, i64, i64, i64, i32, i32, i32 }

@ECSPI_STATREG = common dso_local global i32 0, align 4
@SREG_RO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"rxoverflow rxidx %u txidx %u\0A\00", align 1
@SREG_RR = common dso_local global i32 0, align 4
@SREG_TDR = common dso_local global i32 0, align 4
@SREG_TC = common dso_local global i32 0, align 4
@SREG_TE = common dso_local global i32 0, align 4
@INTREG_TEEN = common dso_local global i32 0, align 4
@INTREG_TCEN = common dso_local global i32 0, align 4
@INTREG_RREN = common dso_local global i32 0, align 4
@ECSPI_INTREG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"spi_intr, sreg 0x%08x intreg was 0x%08x now 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @spi_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.spi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.spi_softc*
  store %struct.spi_softc* %7, %struct.spi_softc** %3, align 8
  %8 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %9 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %8, i32 0, i32 5
  %10 = call i32 @mtx_lock(i32* %9)
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.spi_softc*
  store %struct.spi_softc* %12, %struct.spi_softc** %3, align 8
  %13 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %14 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %17 = load i32, i32* @ECSPI_STATREG, align 4
  %18 = call i32 @RD4(%struct.spi_softc* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %20 = load i32, i32* @ECSPI_STATREG, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @WR4(%struct.spi_softc* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SREG_RO, align 4
  %25 = and i32 %23, %24
  %26 = call i64 @__predict_false(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %56

28:                                               ; preds = %1
  %29 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %33, %28
  %37 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %38 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %41 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %46)
  br label %48

48:                                               ; preds = %36, %33
  %49 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %50 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %52 = call i32 @wakeup(%struct.spi_softc* %51)
  %53 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %54 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %53, i32 0, i32 5
  %55 = call i32 @mtx_unlock(i32* %54)
  br label %156

56:                                               ; preds = %1
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @SREG_RR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %63 = call i32 @spi_empty_rxfifo(%struct.spi_softc* %62)
  br label %64

64:                                               ; preds = %61, %56
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @SREG_TDR, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %71 = call i32 @spi_fill_txfifo(%struct.spi_softc* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %74 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %77 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %75, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %72
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @SREG_TC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %87 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %92 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %91, i32 0, i32 0
  store i32 0, i32* %92, align 8
  %93 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %94 = call i32 @wakeup(%struct.spi_softc* %93)
  br label %120

95:                                               ; preds = %85, %80
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @SREG_TE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %119

100:                                              ; preds = %95
  %101 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %102 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @INTREG_TEEN, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  %107 = xor i32 %106, -1
  %108 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %109 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, %107
  store i32 %111, i32* %109, align 8
  %112 = load i32, i32* @INTREG_TCEN, align 4
  %113 = load i32, i32* @INTREG_RREN, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %116 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %100, %95
  br label %120

120:                                              ; preds = %119, %90
  br label %121

121:                                              ; preds = %120, %72
  %122 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %123 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %129 = load i32, i32* @ECSPI_INTREG, align 4
  %130 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %131 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @WR4(%struct.spi_softc* %128, i32 %129, i32 %132)
  %134 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %135 = load i32, i32* @ECSPI_INTREG, align 4
  %136 = call i32 @RD4(%struct.spi_softc* %134, i32 %135)
  br label %137

137:                                              ; preds = %127, %121
  %138 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %139 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sge i32 %140, 3
  br i1 %141, label %142, label %152

142:                                              ; preds = %137
  %143 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %144 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %143, i32 0, i32 6
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %149 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %145, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %146, i32 %147, i32 %150)
  br label %152

152:                                              ; preds = %142, %137
  %153 = load %struct.spi_softc*, %struct.spi_softc** %3, align 8
  %154 = getelementptr inbounds %struct.spi_softc, %struct.spi_softc* %153, i32 0, i32 5
  %155 = call i32 @mtx_unlock(i32* %154)
  br label %156

156:                                              ; preds = %152, %48
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @RD4(%struct.spi_softc*, i32) #1

declare dso_local i32 @WR4(%struct.spi_softc*, i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @wakeup(%struct.spi_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @spi_empty_rxfifo(%struct.spi_softc*) #1

declare dso_local i32 @spi_fill_txfifo(%struct.spi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
