; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_parse_fdt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_pcie.c_tegra_pcib_parse_fdt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcib_softc = type { i64, %struct.tegra_pcib_port**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tegra_pcib_port = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"avddio-pex-supply\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Cannot get 'avddio-pex' regulator\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"dvddio-pex-supply\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Cannot get 'dvddio-pex' regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"avdd-pex-pll-supply\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Cannot get 'avdd-pex-pll' regulator\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"hvdd-pex-supply\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Cannot get 'hvdd-pex' regulator\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"hvdd-pex-pll-e-supply\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Cannot get 'hvdd-pex-pll-e' regulator\0A\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"vddio-pex-ctl-supply\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"Cannot get 'vddio-pex-ctl' regulator\0A\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"avdd-pll-erefe-supply\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"Cannot get 'avdd-pll-erefe' regulator\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"pex\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"Cannot get 'pex' reset\0A\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"afi\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"Cannot get 'afi' reset\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"pcie_x\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"Cannot get 'pcie_x' reset\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Cannot get 'pex' clock\0A\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"Cannot get 'afi' clock\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"pll_e\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Cannot get 'pll_e' clock\0A\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"cml\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"Cannot get 'cml' clock\0A\00", align 1
@.str.26 = private unnamed_addr constant [29 x i8] c"Cannot parse PCIe port node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcib_softc*, i64)* @tegra_pcib_parse_fdt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcib_parse_fdt_resources(%struct.tegra_pcib_softc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_pcib_softc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.tegra_pcib_port*, align 8
  %8 = alloca i32, align 4
  store %struct.tegra_pcib_softc* %0, %struct.tegra_pcib_softc** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %10 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %13 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %12, i32 0, i32 16
  %14 = call i32 @regulator_get_by_ofw_property(i32 %11, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %3, align 4
  br label %252

23:                                               ; preds = %2
  %24 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %27, i32 0, i32 15
  %29 = call i32 @regulator_get_by_ofw_property(i32 %26, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32* %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %34 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %3, align 4
  br label %252

38:                                               ; preds = %23
  %39 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %42, i32 0, i32 14
  %44 = call i32 @regulator_get_by_ofw_property(i32 %41, i32 0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32* %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %38
  %48 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %3, align 4
  br label %252

53:                                               ; preds = %38
  %54 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %55 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %58 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %57, i32 0, i32 13
  %59 = call i32 @regulator_get_by_ofw_property(i32 %56, i32 0, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %64 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %67 = load i32, i32* @ENXIO, align 4
  store i32 %67, i32* %3, align 4
  br label %252

68:                                               ; preds = %53
  %69 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %70 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %73 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %72, i32 0, i32 12
  %74 = call i32 @regulator_get_by_ofw_property(i32 %71, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %68
  %78 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %79 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %3, align 4
  br label %252

83:                                               ; preds = %68
  %84 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %85 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %88 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %87, i32 0, i32 11
  %89 = call i32 @regulator_get_by_ofw_property(i32 %86, i32 0, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32* %88)
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %8, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %83
  %93 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %94 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @device_printf(i32 %95, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  %97 = load i32, i32* @ENXIO, align 4
  store i32 %97, i32* %3, align 4
  br label %252

98:                                               ; preds = %83
  %99 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %100 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %103 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %102, i32 0, i32 10
  %104 = call i32 @regulator_get_by_ofw_property(i32 %101, i32 0, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i32* %103)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %109 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @device_printf(i32 %110, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i64 0, i64 0))
  %112 = load i32, i32* @ENXIO, align 4
  store i32 %112, i32* %3, align 4
  br label %252

113:                                              ; preds = %98
  %114 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %115 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %118 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %117, i32 0, i32 9
  %119 = call i32 @hwreset_get_by_ofw_name(i32 %116, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %118)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %128

122:                                              ; preds = %113
  %123 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %124 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @device_printf(i32 %125, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %127 = load i32, i32* @ENXIO, align 4
  store i32 %127, i32* %3, align 4
  br label %252

128:                                              ; preds = %113
  %129 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %130 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %133 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %132, i32 0, i32 8
  %134 = call i32 @hwreset_get_by_ofw_name(i32 %131, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %128
  %138 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %139 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @device_printf(i32 %140, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %142 = load i32, i32* @ENXIO, align 4
  store i32 %142, i32* %3, align 4
  br label %252

143:                                              ; preds = %128
  %144 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %145 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %148 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %147, i32 0, i32 7
  %149 = call i32 @hwreset_get_by_ofw_name(i32 %146, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32* %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* %8, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %143
  %153 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %154 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @device_printf(i32 %155, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.19, i64 0, i64 0))
  %157 = load i32, i32* @ENXIO, align 4
  store i32 %157, i32* %3, align 4
  br label %252

158:                                              ; preds = %143
  %159 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %160 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %163 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %162, i32 0, i32 6
  %164 = call i32 @clk_get_by_ofw_name(i32 %161, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0), i32* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %158
  %168 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %169 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @device_printf(i32 %170, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %172 = load i32, i32* @ENXIO, align 4
  store i32 %172, i32* %3, align 4
  br label %252

173:                                              ; preds = %158
  %174 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %175 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %178 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %177, i32 0, i32 5
  %179 = call i32 @clk_get_by_ofw_name(i32 %176, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.16, i64 0, i64 0), i32* %178)
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* %8, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %173
  %183 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %184 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @device_printf(i32 %185, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.21, i64 0, i64 0))
  %187 = load i32, i32* @ENXIO, align 4
  store i32 %187, i32* %3, align 4
  br label %252

188:                                              ; preds = %173
  %189 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %190 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %193 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %192, i32 0, i32 4
  %194 = call i32 @clk_get_by_ofw_name(i32 %191, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32* %193)
  store i32 %194, i32* %8, align 4
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %188
  %198 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %199 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @device_printf(i32 %200, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  %202 = load i32, i32* @ENXIO, align 4
  store i32 %202, i32* %3, align 4
  br label %252

203:                                              ; preds = %188
  %204 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %205 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %208 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %207, i32 0, i32 3
  %209 = call i32 @clk_get_by_ofw_name(i32 %206, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i32* %208)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %203
  %213 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %214 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = call i32 @device_printf(i32 %215, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0))
  %217 = load i32, i32* @ENXIO, align 4
  store i32 %217, i32* %3, align 4
  br label %252

218:                                              ; preds = %203
  %219 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %220 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %219, i32 0, i32 0
  store i64 0, i64* %220, align 8
  %221 = load i64, i64* %5, align 8
  %222 = call i64 @OF_child(i64 %221)
  store i64 %222, i64* %6, align 8
  br label %223

223:                                              ; preds = %248, %218
  %224 = load i64, i64* %6, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %251

226:                                              ; preds = %223
  %227 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %228 = load i64, i64* %6, align 8
  %229 = call %struct.tegra_pcib_port* @tegra_pcib_parse_port(%struct.tegra_pcib_softc* %227, i64 %228)
  store %struct.tegra_pcib_port* %229, %struct.tegra_pcib_port** %7, align 8
  %230 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %7, align 8
  %231 = icmp eq %struct.tegra_pcib_port* %230, null
  br i1 %231, label %232, label %238

232:                                              ; preds = %226
  %233 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %234 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = call i32 @device_printf(i32 %235, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.26, i64 0, i64 0))
  %237 = load i32, i32* @ENXIO, align 4
  store i32 %237, i32* %3, align 4
  br label %252

238:                                              ; preds = %226
  %239 = load %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %7, align 8
  %240 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %241 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %240, i32 0, i32 1
  %242 = load %struct.tegra_pcib_port**, %struct.tegra_pcib_port*** %241, align 8
  %243 = load %struct.tegra_pcib_softc*, %struct.tegra_pcib_softc** %4, align 8
  %244 = getelementptr inbounds %struct.tegra_pcib_softc, %struct.tegra_pcib_softc* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %245, 1
  store i64 %246, i64* %244, align 8
  %247 = getelementptr inbounds %struct.tegra_pcib_port*, %struct.tegra_pcib_port** %242, i64 %245
  store %struct.tegra_pcib_port* %239, %struct.tegra_pcib_port** %247, align 8
  br label %248

248:                                              ; preds = %238
  %249 = load i64, i64* %6, align 8
  %250 = call i64 @OF_peer(i64 %249)
  store i64 %250, i64* %6, align 8
  br label %223

251:                                              ; preds = %223
  store i32 0, i32* %3, align 4
  br label %252

252:                                              ; preds = %251, %232, %212, %197, %182, %167, %152, %137, %122, %107, %92, %77, %62, %47, %32, %17
  %253 = load i32, i32* %3, align 4
  ret i32 %253
}

declare dso_local i32 @regulator_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.tegra_pcib_port* @tegra_pcib_parse_port(%struct.tegra_pcib_softc*, i64) #1

declare dso_local i64 @OF_peer(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
