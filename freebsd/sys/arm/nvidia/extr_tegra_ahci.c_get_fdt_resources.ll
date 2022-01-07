; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ahci.c_get_fdt_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_ahci.c_get_fdt_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_ahci_sc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"hvdd-supply\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Cannot get 'hvdd' regulator\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"vddio-supply\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Cannot get 'vddio' regulator\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"avdd-supply\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Cannot get 'avdd' regulator\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"target-5v-supply\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Cannot get 'target-5v' regulator\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"target-12v-supply\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"Cannot get 'target-12v' regulator\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"sata\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Cannot get 'sata' reset\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"sata-oob\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Cannot get 'sata oob' reset\0A\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"sata-cold\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Cannot get 'sata cold' reset\0A\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"sata-0\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"Cannot get 'sata' phy\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"Cannot get 'sata' clock\0A\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"Cannot get 'sata oob' clock\0A\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"cml1\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"Cannot get 'cml1' clock\0A\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"pll_e\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"Cannot get 'pll_e' clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_ahci_sc*, i32)* @get_fdt_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_fdt_resources(%struct.tegra_ahci_sc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_ahci_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_ahci_sc* %0, %struct.tegra_ahci_sc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %10, i32 0, i32 13
  %12 = call i32 @regulator_get_by_ofw_property(i32 %9, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %3, align 4
  br label %202

21:                                               ; preds = %2
  %22 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %23 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %25, i32 0, i32 12
  %27 = call i32 @regulator_get_by_ofw_property(i32 %24, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %21
  %31 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32, i32* @ENXIO, align 4
  store i32 %35, i32* %3, align 4
  br label %202

36:                                               ; preds = %21
  %37 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %40, i32 0, i32 11
  %42 = call i32 @regulator_get_by_ofw_property(i32 %39, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %3, align 4
  br label %202

51:                                               ; preds = %36
  %52 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %53 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %56 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %55, i32 0, i32 10
  %57 = call i32 @regulator_get_by_ofw_property(i32 %54, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %51
  %61 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %62 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  %65 = load i32, i32* @ENXIO, align 4
  store i32 %65, i32* %3, align 4
  br label %202

66:                                               ; preds = %51
  %67 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %68 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %71 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %70, i32 0, i32 9
  %72 = call i32 @regulator_get_by_ofw_property(i32 %69, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32* %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %66
  %76 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %77 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %80 = load i32, i32* @ENXIO, align 4
  store i32 %80, i32* %3, align 4
  br label %202

81:                                               ; preds = %66
  %82 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %83 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %86 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %85, i32 0, i32 8
  %87 = call i32 @hwreset_get_by_ofw_name(i32 %84, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %86)
  store i32 %87, i32* %6, align 4
  %88 = load i32, i32* %6, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %92 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @device_printf(i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0))
  %95 = load i32, i32* @ENXIO, align 4
  store i32 %95, i32* %3, align 4
  br label %202

96:                                               ; preds = %81
  %97 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %98 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %101 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %100, i32 0, i32 7
  %102 = call i32 @hwreset_get_by_ofw_name(i32 %99, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %96
  %106 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %107 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @device_printf(i32 %108, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %3, align 4
  br label %202

111:                                              ; preds = %96
  %112 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %113 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %116 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %115, i32 0, i32 6
  %117 = call i32 @hwreset_get_by_ofw_name(i32 %114, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i32* %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %111
  %121 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %122 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @device_printf(i32 %123, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.15, i64 0, i64 0))
  %125 = load i32, i32* @ENXIO, align 4
  store i32 %125, i32* %3, align 4
  br label %202

126:                                              ; preds = %111
  %127 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %128 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %131 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %130, i32 0, i32 5
  %132 = call i32 @phy_get_by_ofw_name(i32 %129, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32* %131)
  store i32 %132, i32* %6, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %126
  %136 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %137 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @device_printf(i32 %138, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0))
  %140 = load i32, i32* @ENXIO, align 4
  store i32 %140, i32* %3, align 4
  br label %202

141:                                              ; preds = %126
  %142 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %143 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %146 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %145, i32 0, i32 4
  %147 = call i32 @clk_get_by_ofw_name(i32 %144, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %141
  %151 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %152 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @device_printf(i32 %153, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0))
  %155 = load i32, i32* @ENXIO, align 4
  store i32 %155, i32* %3, align 4
  br label %202

156:                                              ; preds = %141
  %157 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %158 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %161 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %160, i32 0, i32 3
  %162 = call i32 @clk_get_by_ofw_name(i32 %159, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32* %161)
  store i32 %162, i32* %6, align 4
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %156
  %166 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %167 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @device_printf(i32 %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  %170 = load i32, i32* @ENXIO, align 4
  store i32 %170, i32* %3, align 4
  br label %202

171:                                              ; preds = %156
  %172 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %173 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %176 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %175, i32 0, i32 2
  %177 = call i32 @clk_get_by_ofw_name(i32 %174, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32* %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %171
  %181 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %182 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @device_printf(i32 %183, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i64 0, i64 0))
  %185 = load i32, i32* @ENXIO, align 4
  store i32 %185, i32* %3, align 4
  br label %202

186:                                              ; preds = %171
  %187 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %188 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %191 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %190, i32 0, i32 1
  %192 = call i32 @clk_get_by_ofw_name(i32 %189, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32* %191)
  store i32 %192, i32* %6, align 4
  %193 = load i32, i32* %6, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %186
  %196 = load %struct.tegra_ahci_sc*, %struct.tegra_ahci_sc** %4, align 8
  %197 = getelementptr inbounds %struct.tegra_ahci_sc, %struct.tegra_ahci_sc* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @device_printf(i32 %198, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.23, i64 0, i64 0))
  %200 = load i32, i32* @ENXIO, align 4
  store i32 %200, i32* %3, align 4
  br label %202

201:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %201, %195, %180, %165, %150, %135, %120, %105, %90, %75, %60, %45, %30, %15
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @regulator_get_by_ofw_property(i32, i32, i8*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @hwreset_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @phy_get_by_ofw_name(i32, i32, i8*, i32*) #1

declare dso_local i32 @clk_get_by_ofw_name(i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
