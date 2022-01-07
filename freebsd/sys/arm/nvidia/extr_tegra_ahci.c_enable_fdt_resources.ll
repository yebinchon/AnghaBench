; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ahci.c_enable_fdt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ahci.c_enable_fdt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_ahci_sc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Cannot enable  'hvdd' regulator\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Cannot enable  'vddio' regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot enable  'avdd' regulator\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Cannot enable  'target-5v' regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"Cannot enable  'sc->target-12v' regulator\0A\00", align 1
@TEGRA_POWERGATE_SAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"Cannot assert 'sata' reset\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Cannot assert 'sata oob' reset\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Cannot assert 'sata cold' reset\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Cannot enable 'SAX' powergate\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Cannot enable 'sata oob' clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Cannot enable 'cml' clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Cannot enable 'pll e' clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"Cannot unreset 'sata cold' reset\0A\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"Cannot unreset 'sata oob' reset\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"Cannot enable SATA phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_ahci_sc*)* @enable_fdt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_fdt_resources(%struct.tegra_ahci_sc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_ahci_sc*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_ahci_sc* %0, %struct.tegra_ahci_sc** %3, align 8
  %5 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %5, i32 0, i32 13
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @regulator_enable(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %214

17:                                               ; preds = %1
  %18 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %18, i32 0, i32 12
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @regulator_enable(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @device_printf(i32 %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %214

30:                                               ; preds = %17
  %31 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %31, i32 0, i32 11
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @regulator_enable(i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %214

43:                                               ; preds = %30
  %44 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @regulator_enable(i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %52 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @device_printf(i32 %53, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %214

56:                                               ; preds = %43
  %57 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @regulator_enable(i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @device_printf(i32 %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* %4, align 4
  store i32 %68, i32* %2, align 4
  br label %214

69:                                               ; preds = %56
  %70 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %71 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @clk_stop(i32 %72)
  %74 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %75 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @clk_stop(i32 %76)
  %78 = load i32, i32* @TEGRA_POWERGATE_SAX, align 4
  %79 = call i32 @tegra_powergate_power_off(i32 %78)
  %80 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %81 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @hwreset_assert(i32 %82)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %69
  %87 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %88 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %214

92:                                               ; preds = %69
  %93 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %94 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @hwreset_assert(i32 %95)
  store i32 %96, i32* %4, align 4
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %101 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @device_printf(i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %104 = load i32, i32* %4, align 4
  store i32 %104, i32* %2, align 4
  br label %214

105:                                              ; preds = %92
  %106 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %107 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @hwreset_assert(i32 %108)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %105
  %113 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %114 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %117 = load i32, i32* %4, align 4
  store i32 %117, i32* %2, align 4
  br label %214

118:                                              ; preds = %105
  %119 = load i32, i32* @TEGRA_POWERGATE_SAX, align 4
  %120 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %121 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %124 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @tegra_powergate_sequence_power_up(i32 %119, i32 %122, i32 %125)
  store i32 %126, i32* %4, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %118
  %130 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %131 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @device_printf(i32 %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %134 = load i32, i32* %4, align 4
  store i32 %134, i32* %2, align 4
  br label %214

135:                                              ; preds = %118
  %136 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %137 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @clk_enable(i32 %138)
  store i32 %139, i32* %4, align 4
  %140 = load i32, i32* %4, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %144 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @device_printf(i32 %145, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  br label %214

148:                                              ; preds = %135
  %149 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %150 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @clk_enable(i32 %151)
  store i32 %152, i32* %4, align 4
  %153 = load i32, i32* %4, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %148
  %156 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %157 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @device_printf(i32 %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0))
  %160 = load i32, i32* %4, align 4
  store i32 %160, i32* %2, align 4
  br label %214

161:                                              ; preds = %148
  %162 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %163 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @clk_enable(i32 %164)
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %174

168:                                              ; preds = %161
  %169 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %170 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @device_printf(i32 %171, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %173 = load i32, i32* %4, align 4
  store i32 %173, i32* %2, align 4
  br label %214

174:                                              ; preds = %161
  %175 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %176 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @hwreset_deassert(i32 %177)
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* %4, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %174
  %182 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %183 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @device_printf(i32 %184, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %186 = load i32, i32* %4, align 4
  store i32 %186, i32* %2, align 4
  br label %214

187:                                              ; preds = %174
  %188 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %189 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @hwreset_deassert(i32 %190)
  store i32 %191, i32* %4, align 4
  %192 = load i32, i32* %4, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %187
  %195 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %196 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @device_printf(i32 %197, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  %199 = load i32, i32* %4, align 4
  store i32 %199, i32* %2, align 4
  br label %214

200:                                              ; preds = %187
  %201 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %202 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @phy_enable(i32 %203)
  store i32 %204, i32* %4, align 4
  %205 = load i32, i32* %4, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %200
  %208 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %3, align 8
  %209 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @device_printf(i32 %210, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0))
  %212 = load i32, i32* %4, align 4
  store i32 %212, i32* %2, align 4
  br label %214

213:                                              ; preds = %200
  store i32 0, i32* %2, align 4
  br label %214

214:                                              ; preds = %213, %207, %194, %181, %168, %155, %142, %129, %112, %99, %86, %63, %50, %37, %24, %11
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @regulator_enable(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_stop(i32) #1

declare dso_local i32 @tegra_powergate_power_off(i32) #1

declare dso_local i32 @hwreset_assert(i32) #1

declare dso_local i32 @tegra_powergate_sequence_power_up(i32, i32, i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @phy_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
