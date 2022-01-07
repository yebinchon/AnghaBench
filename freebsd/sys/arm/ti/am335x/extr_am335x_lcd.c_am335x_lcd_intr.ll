; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_lcd_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd.c_am335x_lcd_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.am335x_lcd_softc = type { i32, i32 }

@LCD_IRQSTATUS = common dso_local global i32 0, align 4
@IRQ_SYNC_LOST = common dso_local global i32 0, align 4
@LCD_RASTER_CTRL = common dso_local global i32 0, align 4
@RASTER_CTRL_LCDEN = common dso_local global i32 0, align 4
@IRQ_PL = common dso_local global i32 0, align 4
@IRQ_EOF0 = common dso_local global i32 0, align 4
@LCD_LCDDMA_FB0_BASE = common dso_local global i32 0, align 4
@LCD_LCDDMA_FB0_CEILING = common dso_local global i32 0, align 4
@IRQ_EOF1 = common dso_local global i32 0, align 4
@LCD_LCDDMA_FB1_BASE = common dso_local global i32 0, align 4
@LCD_LCDDMA_FB1_CEILING = common dso_local global i32 0, align 4
@IRQ_FUF = common dso_local global i32 0, align 4
@IRQ_ACB = common dso_local global i32 0, align 4
@LCD_END_OF_INT_IND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @am335x_lcd_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am335x_lcd_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.am335x_lcd_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.am335x_lcd_softc*
  store %struct.am335x_lcd_softc* %6, %struct.am335x_lcd_softc** %3, align 8
  %7 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %8 = load i32, i32* @LCD_IRQSTATUS, align 4
  %9 = call i32 @LCD_READ4(%struct.am335x_lcd_softc* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %11 = load i32, i32* @LCD_IRQSTATUS, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %10, i32 %11, i32 %12)
  %14 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %15 = load i32, i32* @LCD_IRQSTATUS, align 4
  %16 = call i32 @LCD_READ4(%struct.am335x_lcd_softc* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IRQ_SYNC_LOST, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %23 = load i32, i32* @LCD_RASTER_CTRL, align 4
  %24 = call i32 @LCD_READ4(%struct.am335x_lcd_softc* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @RASTER_CTRL_LCDEN, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %30 = load i32, i32* @LCD_RASTER_CTRL, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %29, i32 %30, i32 %31)
  %33 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %34 = load i32, i32* @LCD_RASTER_CTRL, align 4
  %35 = call i32 @LCD_READ4(%struct.am335x_lcd_softc* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @RASTER_CTRL_LCDEN, align 4
  %37 = load i32, i32* %4, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %4, align 4
  %39 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %40 = load i32, i32* @LCD_RASTER_CTRL, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %39, i32 %40, i32 %41)
  br label %137

43:                                               ; preds = %1
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @IRQ_PL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %50 = load i32, i32* @LCD_RASTER_CTRL, align 4
  %51 = call i32 @LCD_READ4(%struct.am335x_lcd_softc* %49, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* @RASTER_CTRL_LCDEN, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %4, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %4, align 4
  %56 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %57 = load i32, i32* @LCD_RASTER_CTRL, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %56, i32 %57, i32 %58)
  %60 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %61 = load i32, i32* @LCD_RASTER_CTRL, align 4
  %62 = call i32 @LCD_READ4(%struct.am335x_lcd_softc* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @RASTER_CTRL_LCDEN, align 4
  %64 = load i32, i32* %4, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %67 = load i32, i32* @LCD_RASTER_CTRL, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %66, i32 %67, i32 %68)
  br label %137

70:                                               ; preds = %43
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @IRQ_EOF0, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %77 = load i32, i32* @LCD_LCDDMA_FB0_BASE, align 4
  %78 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %79 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %76, i32 %77, i32 %80)
  %82 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %83 = load i32, i32* @LCD_LCDDMA_FB0_CEILING, align 4
  %84 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %85 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %88 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  %91 = sub nsw i32 %90, 1
  %92 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %82, i32 %83, i32 %91)
  %93 = load i32, i32* @IRQ_EOF0, align 4
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %4, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %75, %70
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @IRQ_EOF1, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %124

102:                                              ; preds = %97
  %103 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %104 = load i32, i32* @LCD_LCDDMA_FB1_BASE, align 4
  %105 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %106 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %103, i32 %104, i32 %107)
  %109 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %110 = load i32, i32* @LCD_LCDDMA_FB1_CEILING, align 4
  %111 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %112 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %115 = getelementptr inbounds %struct.am335x_lcd_softc, %struct.am335x_lcd_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = sub nsw i32 %117, 1
  %119 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %109, i32 %110, i32 %118)
  %120 = load i32, i32* @IRQ_EOF1, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %4, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %102, %97
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @IRQ_FUF, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %130

130:                                              ; preds = %129, %124
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* @IRQ_ACB, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %136

136:                                              ; preds = %135, %130
  br label %137

137:                                              ; preds = %136, %48, %21
  %138 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %139 = load i32, i32* @LCD_END_OF_INT_IND, align 4
  %140 = call i32 @LCD_WRITE4(%struct.am335x_lcd_softc* %138, i32 %139, i32 0)
  %141 = load %struct.am335x_lcd_softc*, %struct.am335x_lcd_softc** %3, align 8
  %142 = load i32, i32* @LCD_END_OF_INT_IND, align 4
  %143 = call i32 @LCD_READ4(%struct.am335x_lcd_softc* %141, i32 %142)
  store i32 %143, i32* %4, align 4
  ret void
}

declare dso_local i32 @LCD_READ4(%struct.am335x_lcd_softc*, i32) #1

declare dso_local i32 @LCD_WRITE4(%struct.am335x_lcd_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
