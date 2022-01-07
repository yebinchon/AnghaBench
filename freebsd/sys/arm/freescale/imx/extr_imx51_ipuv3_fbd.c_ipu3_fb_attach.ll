; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3_fbd.c_ipu3_fb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3_fbd.c_ipu3_fb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu3sc_softc = type { i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*, %struct.TYPE_2__, i32*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@ipu3sc_softc = common dso_local global %struct.ipu3sc_softc* null, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"clock gate status is %d\0A\00", align 1
@IMX51CLK_IPU_HSP_CLK_ROOT = common dso_local global i32 0, align 4
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@IPU_CM_SIZE = common dso_local global i32 0, align 4
@IPU_DMFC_SIZE = common dso_local global i32 0, align 4
@IPU_DI0_SIZE = common dso_local global i32 0, align 4
@IPU_DP_SIZE = common dso_local global i32 0, align 4
@IPU_DC_SIZE = common dso_local global i32 0, align 4
@IPU_IDMAC_SIZE = common dso_local global i32 0, align 4
@IPU_CPMEM_SIZE = common dso_local global i32 0, align 4
@IPU_DCTMPL_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"fbd\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Can't attach fbd device\0A\00", align 1
@IPU_DI1_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"failed to map registers (errno=%d)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@IMX51_INT_IPUV3 = common dso_local global i32 0, align 4
@IPL_BIO = common dso_local global i32 0, align 4
@ipuv3intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ipu3_fb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu3_fb_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipu3sc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ipu3sc_softc* @device_get_softc(i32 %11)
  store %struct.ipu3sc_softc* %12, %struct.ipu3sc_softc** %4, align 8
  %13 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  store %struct.ipu3sc_softc* %13, %struct.ipu3sc_softc** @ipu3sc_softc, align 8
  %14 = load i64, i64* @bootverbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @IMX51CLK_IPU_HSP_CLK_ROOT, align 4
  %19 = call i32 @imx51_get_clk_gating(i32 %18)
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %24 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call %struct.ipu3sc_softc* @device_get_softc(i32 %25)
  store %struct.ipu3sc_softc* %26, %struct.ipu3sc_softc** %4, align 8
  %27 = load i32, i32* @fdtbus_bs_tag, align 4
  store i32 %27, i32* %5, align 4
  %28 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @ofw_bus_get_node(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @OF_getencprop(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64* %8, i32 8)
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %21
  store i64 0, i64* %10, align 8
  br label %40

36:                                               ; preds = %21
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @IPU_CM_BASE(i64 0)
  %39 = sub i64 %37, %38
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %36, %35
  %41 = load i32, i32* %5, align 4
  %42 = load i64, i64* %10, align 8
  %43 = call i64 @IPU_CM_BASE(i64 %42)
  %44 = load i32, i32* @IPU_CM_SIZE, align 4
  %45 = call i32 @bus_space_map(i32 %41, i64 %43, i32 %44, i32 0, i8** %6)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %256

49:                                               ; preds = %40
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %52 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %51, i32 0, i32 13
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* %10, align 8
  %55 = call i64 @IPU_DMFC_BASE(i64 %54)
  %56 = load i32, i32* @IPU_DMFC_SIZE, align 4
  %57 = call i32 @bus_space_map(i32 %53, i64 %55, i32 %56, i32 0, i8** %6)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %247

61:                                               ; preds = %49
  %62 = load i8*, i8** %6, align 8
  %63 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %64 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @IPU_DI0_BASE(i64 %66)
  %68 = load i32, i32* @IPU_DI0_SIZE, align 4
  %69 = call i32 @bus_space_map(i32 %65, i64 %67, i32 %68, i32 0, i8** %6)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %61
  br label %238

73:                                               ; preds = %61
  %74 = load i8*, i8** %6, align 8
  %75 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %76 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %75, i32 0, i32 4
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @IPU_DI1_BASE(i64 %78)
  %80 = load i32, i32* @IPU_DI0_SIZE, align 4
  %81 = call i32 @bus_space_map(i32 %77, i64 %79, i32 %80, i32 0, i8** %6)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %73
  br label %229

85:                                               ; preds = %73
  %86 = load i8*, i8** %6, align 8
  %87 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %88 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* %5, align 4
  %90 = load i64, i64* %10, align 8
  %91 = call i64 @IPU_DP_BASE(i64 %90)
  %92 = load i32, i32* @IPU_DP_SIZE, align 4
  %93 = call i32 @bus_space_map(i32 %89, i64 %91, i32 %92, i32 0, i8** %6)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %85
  br label %211

97:                                               ; preds = %85
  %98 = load i8*, i8** %6, align 8
  %99 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %100 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %99, i32 0, i32 6
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %5, align 4
  %102 = load i64, i64* %10, align 8
  %103 = call i64 @IPU_DC_BASE(i64 %102)
  %104 = load i32, i32* @IPU_DC_SIZE, align 4
  %105 = call i32 @bus_space_map(i32 %101, i64 %103, i32 %104, i32 0, i8** %6)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  br label %220

109:                                              ; preds = %97
  %110 = load i8*, i8** %6, align 8
  %111 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %112 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %111, i32 0, i32 1
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* %5, align 4
  %114 = load i64, i64* %10, align 8
  %115 = call i64 @IPU_IDMAC_BASE(i64 %114)
  %116 = load i32, i32* @IPU_IDMAC_SIZE, align 4
  %117 = call i32 @bus_space_map(i32 %113, i64 %115, i32 %116, i32 0, i8** %6)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %109
  br label %202

121:                                              ; preds = %109
  %122 = load i8*, i8** %6, align 8
  %123 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %124 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %123, i32 0, i32 7
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* %5, align 4
  %126 = load i64, i64* %10, align 8
  %127 = call i64 @IPU_CPMEM_BASE(i64 %126)
  %128 = load i32, i32* @IPU_CPMEM_SIZE, align 4
  %129 = call i32 @bus_space_map(i32 %125, i64 %127, i32 %128, i32 0, i8** %6)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %121
  br label %193

133:                                              ; preds = %121
  %134 = load i8*, i8** %6, align 8
  %135 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %136 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %135, i32 0, i32 8
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* %5, align 4
  %138 = load i64, i64* %10, align 8
  %139 = call i64 @IPU_DCTMPL_BASE(i64 %138)
  %140 = load i32, i32* @IPU_DCTMPL_SIZE, align 4
  %141 = call i32 @bus_space_map(i32 %137, i64 %139, i32 %140, i32 0, i8** %6)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %133
  br label %184

145:                                              ; preds = %133
  %146 = load i8*, i8** %6, align 8
  %147 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %148 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %147, i32 0, i32 12
  store i8* %146, i8** %148, align 8
  %149 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %150 = call i32 @ipu3_fb_init(%struct.ipu3sc_softc* %149)
  %151 = load i32, i32* %3, align 4
  %152 = call i32 @device_get_nameunit(i32 %151)
  %153 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %154 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %153, i32 0, i32 10
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 3
  store i32 %152, i32* %155, align 4
  %156 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %157 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %156, i32 0, i32 10
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %161 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %160, i32 0, i32 10
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ipu3_fb_init_cmap(i32 %159, i32 %163)
  %165 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %166 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %165, i32 0, i32 10
  %167 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i32 0, i32 0
  store i32 16, i32* %167, align 8
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* %3, align 4
  %170 = call i32 @device_get_unit(i32 %169)
  %171 = call i32* @device_add_child(i32 %168, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  %172 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %173 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %172, i32 0, i32 9
  store i32* %171, i32** %173, align 8
  %174 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %175 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %174, i32 0, i32 9
  %176 = load i32*, i32** %175, align 8
  %177 = icmp eq i32* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %145
  %179 = load i32, i32* %3, align 4
  %180 = call i32 (i32, i8*, ...) @device_printf(i32 %179, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %181

181:                                              ; preds = %178, %145
  %182 = load i32, i32* %3, align 4
  %183 = call i32 @bus_generic_attach(i32 %182)
  store i32 %183, i32* %2, align 4
  br label %263

184:                                              ; preds = %144
  %185 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %186 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %189 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %188, i32 0, i32 8
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* @IPU_CPMEM_SIZE, align 4
  %192 = call i32 @bus_space_unmap(i32 %187, i8* %190, i32 %191)
  br label %193

193:                                              ; preds = %184, %132
  %194 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %195 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %198 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %197, i32 0, i32 7
  %199 = load i8*, i8** %198, align 8
  %200 = load i32, i32* @IPU_IDMAC_SIZE, align 4
  %201 = call i32 @bus_space_unmap(i32 %196, i8* %199, i32 %200)
  br label %202

202:                                              ; preds = %193, %120
  %203 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %204 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %207 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %206, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = load i32, i32* @IPU_DC_SIZE, align 4
  %210 = call i32 @bus_space_unmap(i32 %205, i8* %208, i32 %209)
  br label %211

211:                                              ; preds = %202, %96
  %212 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %213 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %216 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %215, i32 0, i32 6
  %217 = load i8*, i8** %216, align 8
  %218 = load i32, i32* @IPU_DP_SIZE, align 4
  %219 = call i32 @bus_space_unmap(i32 %214, i8* %217, i32 %218)
  br label %220

220:                                              ; preds = %211, %108
  %221 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %222 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %225 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %224, i32 0, i32 5
  %226 = load i8*, i8** %225, align 8
  %227 = load i32, i32* @IPU_DI1_SIZE, align 4
  %228 = call i32 @bus_space_unmap(i32 %223, i8* %226, i32 %227)
  br label %229

229:                                              ; preds = %220, %84
  %230 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %231 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %234 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %233, i32 0, i32 4
  %235 = load i8*, i8** %234, align 8
  %236 = load i32, i32* @IPU_DI0_SIZE, align 4
  %237 = call i32 @bus_space_unmap(i32 %232, i8* %235, i32 %236)
  br label %238

238:                                              ; preds = %229, %72
  %239 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %240 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %243 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %242, i32 0, i32 3
  %244 = load i8*, i8** %243, align 8
  %245 = load i32, i32* @IPU_DMFC_SIZE, align 4
  %246 = call i32 @bus_space_unmap(i32 %241, i8* %244, i32 %245)
  br label %247

247:                                              ; preds = %238, %60
  %248 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %249 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %252 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %251, i32 0, i32 1
  %253 = load i8*, i8** %252, align 8
  %254 = load i32, i32* @IPU_CM_SIZE, align 4
  %255 = call i32 @bus_space_unmap(i32 %250, i8* %253, i32 %254)
  br label %256

256:                                              ; preds = %247, %48
  %257 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %258 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = call i32 (i32, i8*, ...) @device_printf(i32 %259, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %260)
  %262 = load i32, i32* %9, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %256, %181
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.ipu3sc_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @imx51_get_clk_gating(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i64*, i32) #1

declare dso_local i64 @IPU_CM_BASE(i64) #1

declare dso_local i32 @bus_space_map(i32, i64, i32, i32, i8**) #1

declare dso_local i64 @IPU_DMFC_BASE(i64) #1

declare dso_local i64 @IPU_DI0_BASE(i64) #1

declare dso_local i64 @IPU_DI1_BASE(i64) #1

declare dso_local i64 @IPU_DP_BASE(i64) #1

declare dso_local i64 @IPU_DC_BASE(i64) #1

declare dso_local i64 @IPU_IDMAC_BASE(i64) #1

declare dso_local i64 @IPU_CPMEM_BASE(i64) #1

declare dso_local i64 @IPU_DCTMPL_BASE(i64) #1

declare dso_local i32 @ipu3_fb_init(%struct.ipu3sc_softc*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @ipu3_fb_init_cmap(i32, i32) #1

declare dso_local i32* @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @bus_space_unmap(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
