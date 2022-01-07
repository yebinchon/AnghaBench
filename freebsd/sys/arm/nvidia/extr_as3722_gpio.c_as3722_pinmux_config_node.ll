; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_pinmux_config_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_pinmux_config_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i32, %struct.TYPE_2__**, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.as3722_pincfg = type { i32*, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Unknown pin: %s\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Unknown function %s for pin %s\0A\00", align 1
@AS3722_GPIO_MODE_MASK = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_SHIFT = common dso_local global i32 0, align 4
@AS3722_MODE_PUSH_PULL = common dso_local global i32 0, align 4
@AS3722_MODE_INPUT = common dso_local global i32 0, align 4
@AS3722_GPIO_IOSF_MASK = common dso_local global i32 0, align 4
@AS3722_GPIO_IOSF_SHIFT = common dso_local global i32 0, align 4
@AS3722_GPIO0_CONTROL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.as3722_softc*, i8*, %struct.as3722_pincfg*)* @as3722_pinmux_config_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @as3722_pinmux_config_node(%struct.as3722_softc* %0, i8* %1, %struct.as3722_pincfg* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.as3722_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.as3722_pincfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.as3722_softc* %0, %struct.as3722_softc** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.as3722_pincfg* %2, %struct.as3722_pincfg** %7, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %33, %3
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %15 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %12
  %19 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %20 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i64 @strcmp(i32 %27, i8* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %18
  br label %36

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %12

36:                                               ; preds = %31, %12
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %39 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %44 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %4, align 4
  br label %171

49:                                               ; preds = %36
  %50 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %51 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %52, i64 %54
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  %59 = load %struct.as3722_pincfg*, %struct.as3722_pincfg** %7, align 8
  %60 = getelementptr inbounds %struct.as3722_pincfg, %struct.as3722_pincfg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %63 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %61, i32* %69, align 4
  %70 = load %struct.as3722_pincfg*, %struct.as3722_pincfg** %7, align 8
  %71 = getelementptr inbounds %struct.as3722_pincfg, %struct.as3722_pincfg* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %140

74:                                               ; preds = %49
  %75 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %76 = load %struct.as3722_pincfg*, %struct.as3722_pincfg** %7, align 8
  %77 = getelementptr inbounds %struct.as3722_pincfg, %struct.as3722_pincfg* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @as3722_pinmux_get_function(%struct.as3722_softc* %75, i32* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %101

82:                                               ; preds = %74
  %83 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %84 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.as3722_pincfg*, %struct.as3722_pincfg** %7, align 8
  %87 = getelementptr inbounds %struct.as3722_pincfg, %struct.as3722_pincfg* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = bitcast i32* %88 to i8*
  %90 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %91 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %92, i64 %94
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, i8*, ...) @device_printf(i32 %85, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %89, i32 %98)
  %100 = load i32, i32* @ENXIO, align 4
  store i32 %100, i32* %4, align 4
  br label %171

101:                                              ; preds = %74
  %102 = load i32, i32* %10, align 4
  switch i32 %102, label %127 [
    i32 137, label %103
    i32 129, label %103
    i32 136, label %103
    i32 134, label %103
    i32 139, label %103
    i32 132, label %103
    i32 135, label %103
    i32 138, label %115
    i32 133, label %115
    i32 130, label %115
    i32 128, label %115
    i32 131, label %115
  ]

103:                                              ; preds = %101, %101, %101, %101, %101, %101, %101
  %104 = load i32, i32* @AS3722_GPIO_MODE_MASK, align 4
  %105 = load i32, i32* @AS3722_GPIO_MODE_SHIFT, align 4
  %106 = shl i32 %104, %105
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %8, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %8, align 4
  %110 = load i32, i32* @AS3722_MODE_PUSH_PULL, align 4
  %111 = load i32, i32* @AS3722_GPIO_MODE_SHIFT, align 4
  %112 = shl i32 %110, %111
  %113 = load i32, i32* %8, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %8, align 4
  br label %128

115:                                              ; preds = %101, %101, %101, %101, %101
  %116 = load i32, i32* @AS3722_GPIO_MODE_MASK, align 4
  %117 = load i32, i32* @AS3722_GPIO_MODE_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* @AS3722_MODE_INPUT, align 4
  %123 = load i32, i32* @AS3722_GPIO_MODE_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = load i32, i32* %8, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %8, align 4
  br label %127

127:                                              ; preds = %101, %115
  br label %128

128:                                              ; preds = %127, %103
  %129 = load i32, i32* @AS3722_GPIO_IOSF_MASK, align 4
  %130 = load i32, i32* @AS3722_GPIO_IOSF_SHIFT, align 4
  %131 = shl i32 %129, %130
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* @AS3722_GPIO_IOSF_SHIFT, align 4
  %137 = shl i32 %135, %136
  %138 = load i32, i32* %8, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %8, align 4
  br label %140

140:                                              ; preds = %128, %49
  store i32 0, i32* %9, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %143 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %142, i32 0, i32 1
  %144 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %143, align 8
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %144, i64 %146
  %148 = load %struct.TYPE_2__*, %struct.TYPE_2__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp ne i32 %141, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %140
  %153 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %154 = load i64, i64* @AS3722_GPIO0_CONTROL, align 8
  %155 = load i32, i32* %11, align 4
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %154, %156
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @WR1(%struct.as3722_softc* %153, i64 %157, i32 %158)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load %struct.as3722_softc*, %struct.as3722_softc** %5, align 8
  %162 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %161, i32 0, i32 1
  %163 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %163, i64 %165
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 0
  store i32 %160, i32* %168, align 4
  br label %169

169:                                              ; preds = %152, %140
  %170 = load i32, i32* %9, align 4
  store i32 %170, i32* %4, align 4
  br label %171

171:                                              ; preds = %169, %82, %42
  %172 = load i32, i32* %4, align 4
  ret i32 %172
}

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*, i8*, ...) #1

declare dso_local i32 @as3722_pinmux_get_function(%struct.as3722_softc*, i32*) #1

declare dso_local i32 @WR1(%struct.as3722_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
