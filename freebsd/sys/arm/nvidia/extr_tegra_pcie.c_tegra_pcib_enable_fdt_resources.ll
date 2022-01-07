; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_enable_fdt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_enable_fdt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Cannot assert 'pcie_x' reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Cannot assert  'afi' reset\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Cannot assert  'pex' reset\0A\00", align 1
@TEGRA_POWERGATE_PCX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot enable 'avddio_pex' regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Cannot enable 'dvddio_pex' regulator\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Cannot enable 'avdd-pex-pll' regulator\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"Cannot enable 'hvdd-pex-supply' regulator\0A\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"Cannot enable 'hvdd-pex-pll-e-supply' regulator\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"Cannot enable 'vddio-pex-ctl' regulator\0A\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Cannot enable 'avdd-pll-erefe-supply' regulator\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Cannot enable 'PCX' powergate\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"Cannot unreset 'afi' reset\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Cannot enable 'afi' clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"Cannot enable 'cml' clock\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"Cannot enable 'pll_e' clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcib_softc*)* @tegra_pcib_enable_fdt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcib_enable_fdt_resources(%struct.tegra_pcib_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcib_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_pcib_softc* %0, %struct.tegra_pcib_softc** %3, align 8
  %5 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %5, i32 0, i32 14
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @hwreset_assert(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %206

17:                                               ; preds = %1
  %18 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @hwreset_assert(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %206

30:                                               ; preds = %17
  %31 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @hwreset_assert(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %206

43:                                               ; preds = %30
  %44 = load i32, i32* @TEGRA_POWERGATE_PCX, align 4
  %45 = call i32 @tegra_powergate_power_off(i32 %44)
  %46 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %46, i32 0, i32 13
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regulator_enable(i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %43
  %53 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %54 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* %4, align 4
  store i32 %57, i32* %2, align 4
  br label %206

58:                                               ; preds = %43
  %59 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %60 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @regulator_enable(i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %67 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @device_printf(i32 %68, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %206

71:                                               ; preds = %58
  %72 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %73 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @regulator_enable(i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %80 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @device_printf(i32 %81, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* %4, align 4
  store i32 %83, i32* %2, align 4
  br label %206

84:                                               ; preds = %71
  %85 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %86 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @regulator_enable(i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %93 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @device_printf(i32 %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0))
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %206

97:                                               ; preds = %84
  %98 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %99 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %98, i32 0, i32 9
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @regulator_enable(i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %97
  %105 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %106 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @device_printf(i32 %107, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0))
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %2, align 4
  br label %206

110:                                              ; preds = %97
  %111 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %112 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @regulator_enable(i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %119 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @device_printf(i32 %120, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %122 = load i32, i32* %4, align 4
  store i32 %122, i32* %2, align 4
  br label %206

123:                                              ; preds = %110
  %124 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %125 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %124, i32 0, i32 7
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @regulator_enable(i32 %126)
  store i32 %127, i32* %4, align 4
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %123
  %131 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %132 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @device_printf(i32 %133, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0))
  %135 = load i32, i32* %4, align 4
  store i32 %135, i32* %2, align 4
  br label %206

136:                                              ; preds = %123
  %137 = load i32, i32* @TEGRA_POWERGATE_PCX, align 4
  %138 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %139 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %142 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @tegra_powergate_sequence_power_up(i32 %137, i32 %140, i32 %143)
  store i32 %144, i32* %4, align 4
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %136
  %148 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %149 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @device_printf(i32 %150, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %152 = load i32, i32* %4, align 4
  store i32 %152, i32* %2, align 4
  br label %206

153:                                              ; preds = %136
  %154 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %155 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @hwreset_deassert(i32 %156)
  store i32 %157, i32* %4, align 4
  %158 = load i32, i32* %4, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %162 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @device_printf(i32 %163, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %165 = load i32, i32* %4, align 4
  store i32 %165, i32* %2, align 4
  br label %206

166:                                              ; preds = %153
  %167 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %168 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @clk_enable(i32 %169)
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* %4, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %166
  %174 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %175 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @device_printf(i32 %176, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  %178 = load i32, i32* %4, align 4
  store i32 %178, i32* %2, align 4
  br label %206

179:                                              ; preds = %166
  %180 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %181 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @clk_enable(i32 %182)
  store i32 %183, i32* %4, align 4
  %184 = load i32, i32* %4, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %179
  %187 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %188 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @device_printf(i32 %189, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0))
  %191 = load i32, i32* %4, align 4
  store i32 %191, i32* %2, align 4
  br label %206

192:                                              ; preds = %179
  %193 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %194 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @clk_enable(i32 %195)
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* %4, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %3, align 8
  %201 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @device_printf(i32 %202, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %204 = load i32, i32* %4, align 4
  store i32 %204, i32* %2, align 4
  br label %206

205:                                              ; preds = %192
  store i32 0, i32* %2, align 4
  br label %206

206:                                              ; preds = %205, %199, %186, %173, %160, %147, %130, %117, %104, %91, %78, %65, %52, %37, %24, %11
  %207 = load i32, i32* %2, align 4
  ret i32 %207
}

declare dso_local i32 @hwreset_assert(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @tegra_powergate_power_off(i32) #1

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @tegra_powergate_sequence_power_up(i32, i32, i32) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @clk_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
