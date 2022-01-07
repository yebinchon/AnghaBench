; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_debounce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_gpio.c_mv_gpio_debounce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_gpio_softc = type { i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mv_gpio_pindev = type { i32, i32 }

@DEBOUNCE_HI_LO_MS = common dso_local global i32 0, align 4
@DEBOUNCE_CHECK_MS = common dso_local global i32 0, align 4
@DEBOUNCE_LO_HI_MS = common dso_local global i32 0, align 4
@DEBOUNCE_CHECK_TICKS = common dso_local global i32 0, align 4
@MV_GPIO_IN_POL_LOW = common dso_local global i32 0, align 4
@MV_GPIO_IN_IRQ_DOUBLE_EDGE = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mv_gpio_debounce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_gpio_debounce(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mv_gpio_softc*, align 8
  %9 = alloca %struct.mv_gpio_pindev*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.mv_gpio_pindev*
  store %struct.mv_gpio_pindev* %11, %struct.mv_gpio_pindev** %9, align 8
  %12 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %9, align 8
  %13 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.mv_gpio_pindev*, %struct.mv_gpio_pindev** %9, align 8
  %16 = getelementptr inbounds %struct.mv_gpio_pindev, %struct.mv_gpio_pindev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i64 @device_get_softc(i32 %18)
  %20 = inttoptr i64 %19 to %struct.mv_gpio_softc*
  store %struct.mv_gpio_softc* %20, %struct.mv_gpio_softc** %8, align 8
  %21 = call i32 (...) @MV_GPIO_LOCK()
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @mv_gpio_value_get(i32 %22, i32 %23, i32 1)
  %25 = icmp ne i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @mv_gpio_debounced_state_get(i32 %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  store i32 %33, i32* %4, align 4
  %34 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %8, align 8
  %35 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  store i32* %39, i32** %7, align 8
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %67

43:                                               ; preds = %1
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, i32* @DEBOUNCE_HI_LO_MS, align 4
  %48 = load i32, i32* @DEBOUNCE_CHECK_MS, align 4
  %49 = sdiv i32 %47, %48
  %50 = load i32*, i32** %7, align 8
  store i32 %49, i32* %50, align 4
  br label %56

51:                                               ; preds = %43
  %52 = load i32, i32* @DEBOUNCE_LO_HI_MS, align 4
  %53 = load i32, i32* @DEBOUNCE_CHECK_MS, align 4
  %54 = sdiv i32 %52, %53
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %8, align 8
  %58 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DEBOUNCE_CHECK_TICKS, align 4
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @callout_reset(i32 %63, i32 %64, void (i8*)* @mv_gpio_debounce, i8* %65)
  br label %165

67:                                               ; preds = %1
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %67
  %76 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %8, align 8
  %77 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DEBOUNCE_CHECK_TICKS, align 4
  %84 = load i8*, i8** %2, align 8
  %85 = call i32 @callout_reset(i32 %82, i32 %83, void (i8*)* @mv_gpio_debounce, i8* %84)
  br label %164

86:                                               ; preds = %67
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* %3, align 4
  %90 = call i32 @mv_gpio_debounced_state_set(i32 %87, i32 %88, i32 %89)
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i32, i32* @DEBOUNCE_HI_LO_MS, align 4
  %95 = load i32, i32* @DEBOUNCE_CHECK_MS, align 4
  %96 = sdiv i32 %94, %95
  %97 = load i32*, i32** %7, align 8
  store i32 %96, i32* %97, align 4
  br label %103

98:                                               ; preds = %86
  %99 = load i32, i32* @DEBOUNCE_LO_HI_MS, align 4
  %100 = load i32, i32* @DEBOUNCE_CHECK_MS, align 4
  %101 = sdiv i32 %99, %100
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %8, align 8
  %105 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %104, i32 0, i32 2
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @MV_GPIO_IN_POL_LOW, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load i32, i32* %3, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %145, label %118

118:                                              ; preds = %115, %103
  %119 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %8, align 8
  %120 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MV_GPIO_IN_POL_LOW, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %118
  %131 = load i32, i32* %3, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %130, %118
  %134 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %8, align 8
  %135 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %134, i32 0, i32 2
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** %135, align 8
  %137 = load i32, i32* %5, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @MV_GPIO_IN_IRQ_DOUBLE_EDGE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %133, %130, %115
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %5, align 4
  %148 = call i32 @mv_gpio_intr_handler(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %133
  %150 = load i32, i32* %6, align 4
  %151 = load i32, i32* %5, align 4
  %152 = call i32 @mv_gpio_polarity(i32 %150, i32 %151, i32 0, i32 1)
  %153 = load i8*, i8** %2, align 8
  %154 = load i32, i32* @M_DEVBUF, align 4
  %155 = call i32 @free(i8* %153, i32 %154)
  %156 = load %struct.mv_gpio_softc*, %struct.mv_gpio_softc** %8, align 8
  %157 = getelementptr inbounds %struct.mv_gpio_softc, %struct.mv_gpio_softc* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @callout_deactivate(i32 %162)
  br label %164

164:                                              ; preds = %149, %75
  br label %165

165:                                              ; preds = %164, %56
  %166 = call i32 (...) @MV_GPIO_UNLOCK()
  ret void
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i32 @MV_GPIO_LOCK(...) #1

declare dso_local i64 @mv_gpio_value_get(i32, i32, i32) #1

declare dso_local i64 @mv_gpio_debounced_state_get(i32, i32) #1

declare dso_local i32 @callout_reset(i32, i32, void (i8*)*, i8*) #1

declare dso_local i32 @mv_gpio_debounced_state_set(i32, i32, i32) #1

declare dso_local i32 @mv_gpio_intr_handler(i32, i32) #1

declare dso_local i32 @mv_gpio_polarity(i32, i32, i32, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @callout_deactivate(i32) #1

declare dso_local i32 @MV_GPIO_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
