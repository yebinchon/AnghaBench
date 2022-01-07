; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3_fb_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3_fb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipu3sc_softc = type { i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8* }

@ipu3sc_softc = common dso_local global %struct.ipu3sc_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"clock gate status is %d\0A\00", align 1
@IMX51CLK_IPU_HSP_CLK_ROOT = common dso_local global i32 0, align 4
@SC_AUTODETECT_KBD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to attach syscons\0A\00", align 1
@fdtbus_bs_tag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@IPU_CM_SIZE = common dso_local global i32 0, align 4
@IPU_DMFC_SIZE = common dso_local global i32 0, align 4
@IPU_DI0_SIZE = common dso_local global i32 0, align 4
@IPU_DP_SIZE = common dso_local global i32 0, align 4
@IPU_DC_SIZE = common dso_local global i32 0, align 4
@IPU_IDMAC_SIZE = common dso_local global i32 0, align 4
@IPU_CPMEM_SIZE = common dso_local global i32 0, align 4
@IPU_DCTMPL_SIZE = common dso_local global i32 0, align 4
@IPU_DI1_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"failed to map registers (errno=%d)\0A\00", align 1
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
  %13 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** @ipu3sc_softc, align 8
  %14 = icmp ne %struct.ipu3sc_softc* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %2, align 4
  br label %250

17:                                               ; preds = %1
  %18 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  store %struct.ipu3sc_softc* %18, %struct.ipu3sc_softc** @ipu3sc_softc, align 8
  %19 = load i64, i64* @bootverbose, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @IMX51CLK_IPU_HSP_CLK_ROOT, align 4
  %24 = call i32 @imx51_get_clk_gating(i32 %23)
  %25 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %21, %17
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %29 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @device_get_unit(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @device_get_flags(i32 %32)
  %34 = load i32, i32* @SC_AUTODETECT_KBD, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @sc_attach_unit(i32 %31, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %26
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %169

42:                                               ; preds = %26
  %43 = load i32, i32* %3, align 4
  %44 = call %struct.ipu3sc_softc* @device_get_softc(i32 %43)
  store %struct.ipu3sc_softc* %44, %struct.ipu3sc_softc** %4, align 8
  %45 = load i32, i32* @fdtbus_bs_tag, align 4
  store i32 %45, i32* %5, align 4
  %46 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %3, align 4
  %49 = call i32 @ofw_bus_get_node(i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @OF_getencprop(i32 %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64* %8, i32 8)
  %52 = icmp sle i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %42
  store i64 0, i64* %10, align 8
  br label %58

54:                                               ; preds = %42
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @IPU_CM_BASE(i64 0)
  %57 = sub i64 %55, %56
  store i64 %57, i64* %10, align 8
  br label %58

58:                                               ; preds = %54, %53
  %59 = load i32, i32* %5, align 4
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @IPU_CM_BASE(i64 %60)
  %62 = load i32, i32* @IPU_CM_SIZE, align 4
  %63 = call i32 @bus_space_map(i32 %59, i64 %61, i32 %62, i32 0, i8** %6)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %243

67:                                               ; preds = %58
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %70 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %69, i32 0, i32 11
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i64, i64* %10, align 8
  %73 = call i64 @IPU_DMFC_BASE(i64 %72)
  %74 = load i32, i32* @IPU_DMFC_SIZE, align 4
  %75 = call i32 @bus_space_map(i32 %71, i64 %73, i32 %74, i32 0, i8** %6)
  store i32 %75, i32* %9, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %234

79:                                               ; preds = %67
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %82 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i64, i64* %10, align 8
  %85 = call i64 @IPU_DI0_BASE(i64 %84)
  %86 = load i32, i32* @IPU_DI0_SIZE, align 4
  %87 = call i32 @bus_space_map(i32 %83, i64 %85, i32 %86, i32 0, i8** %6)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %225

91:                                               ; preds = %79
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %94 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %5, align 4
  %96 = load i64, i64* %10, align 8
  %97 = call i64 @IPU_DI1_BASE(i64 %96)
  %98 = load i32, i32* @IPU_DI0_SIZE, align 4
  %99 = call i32 @bus_space_map(i32 %95, i64 %97, i32 %98, i32 0, i8** %6)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %91
  br label %216

103:                                              ; preds = %91
  %104 = load i8*, i8** %6, align 8
  %105 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %106 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i64, i64* %10, align 8
  %109 = call i64 @IPU_DP_BASE(i64 %108)
  %110 = load i32, i32* @IPU_DP_SIZE, align 4
  %111 = call i32 @bus_space_map(i32 %107, i64 %109, i32 %110, i32 0, i8** %6)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %198

115:                                              ; preds = %103
  %116 = load i8*, i8** %6, align 8
  %117 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %118 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %117, i32 0, i32 6
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* %5, align 4
  %120 = load i64, i64* %10, align 8
  %121 = call i64 @IPU_DC_BASE(i64 %120)
  %122 = load i32, i32* @IPU_DC_SIZE, align 4
  %123 = call i32 @bus_space_map(i32 %119, i64 %121, i32 %122, i32 0, i8** %6)
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %207

127:                                              ; preds = %115
  %128 = load i8*, i8** %6, align 8
  %129 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %130 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load i64, i64* %10, align 8
  %133 = call i64 @IPU_IDMAC_BASE(i64 %132)
  %134 = load i32, i32* @IPU_IDMAC_SIZE, align 4
  %135 = call i32 @bus_space_map(i32 %131, i64 %133, i32 %134, i32 0, i8** %6)
  store i32 %135, i32* %9, align 4
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %127
  br label %189

139:                                              ; preds = %127
  %140 = load i8*, i8** %6, align 8
  %141 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %142 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %141, i32 0, i32 7
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* %5, align 4
  %144 = load i64, i64* %10, align 8
  %145 = call i64 @IPU_CPMEM_BASE(i64 %144)
  %146 = load i32, i32* @IPU_CPMEM_SIZE, align 4
  %147 = call i32 @bus_space_map(i32 %143, i64 %145, i32 %146, i32 0, i8** %6)
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %139
  br label %180

151:                                              ; preds = %139
  %152 = load i8*, i8** %6, align 8
  %153 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %154 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %153, i32 0, i32 8
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load i64, i64* %10, align 8
  %157 = call i64 @IPU_DCTMPL_BASE(i64 %156)
  %158 = load i32, i32* @IPU_DCTMPL_SIZE, align 4
  %159 = call i32 @bus_space_map(i32 %155, i64 %157, i32 %158, i32 0, i8** %6)
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* %9, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  br label %171

163:                                              ; preds = %151
  %164 = load i8*, i8** %6, align 8
  %165 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %166 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %165, i32 0, i32 10
  store i8* %164, i8** %166, align 8
  %167 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %168 = call i32 @ipu3_fb_init(%struct.ipu3sc_softc* %167)
  store i32 0, i32* %2, align 4
  br label %250

169:                                              ; preds = %39
  %170 = load i32, i32* @ENXIO, align 4
  store i32 %170, i32* %2, align 4
  br label %250

171:                                              ; preds = %162
  %172 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %173 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %176 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %175, i32 0, i32 8
  %177 = load i8*, i8** %176, align 8
  %178 = load i32, i32* @IPU_CPMEM_SIZE, align 4
  %179 = call i32 @bus_space_unmap(i32 %174, i8* %177, i32 %178)
  br label %180

180:                                              ; preds = %171, %150
  %181 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %182 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %185 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %184, i32 0, i32 7
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* @IPU_IDMAC_SIZE, align 4
  %188 = call i32 @bus_space_unmap(i32 %183, i8* %186, i32 %187)
  br label %189

189:                                              ; preds = %180, %138
  %190 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %191 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %194 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load i32, i32* @IPU_DC_SIZE, align 4
  %197 = call i32 @bus_space_unmap(i32 %192, i8* %195, i32 %196)
  br label %198

198:                                              ; preds = %189, %114
  %199 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %200 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %203 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %202, i32 0, i32 6
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* @IPU_DP_SIZE, align 4
  %206 = call i32 @bus_space_unmap(i32 %201, i8* %204, i32 %205)
  br label %207

207:                                              ; preds = %198, %126
  %208 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %209 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %212 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %211, i32 0, i32 5
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* @IPU_DI1_SIZE, align 4
  %215 = call i32 @bus_space_unmap(i32 %210, i8* %213, i32 %214)
  br label %216

216:                                              ; preds = %207, %102
  %217 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %218 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %221 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %220, i32 0, i32 4
  %222 = load i8*, i8** %221, align 8
  %223 = load i32, i32* @IPU_DI0_SIZE, align 4
  %224 = call i32 @bus_space_unmap(i32 %219, i8* %222, i32 %223)
  br label %225

225:                                              ; preds = %216, %90
  %226 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %227 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %230 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %229, i32 0, i32 3
  %231 = load i8*, i8** %230, align 8
  %232 = load i32, i32* @IPU_DMFC_SIZE, align 4
  %233 = call i32 @bus_space_unmap(i32 %228, i8* %231, i32 %232)
  br label %234

234:                                              ; preds = %225, %78
  %235 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %236 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %239 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %238, i32 0, i32 1
  %240 = load i8*, i8** %239, align 8
  %241 = load i32, i32* @IPU_CM_SIZE, align 4
  %242 = call i32 @bus_space_unmap(i32 %237, i8* %240, i32 %241)
  br label %243

243:                                              ; preds = %234, %66
  %244 = load %struct.ipu3sc_softc*, %struct.ipu3sc_softc** %4, align 8
  %245 = getelementptr inbounds %struct.ipu3sc_softc, %struct.ipu3sc_softc* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %9, align 4
  %248 = call i32 (i32, i8*, ...) @device_printf(i32 %246, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* %9, align 4
  store i32 %249, i32* %2, align 4
  br label %250

250:                                              ; preds = %243, %169, %163, %15
  %251 = load i32, i32* %2, align 4
  ret i32 %251
}

declare dso_local %struct.ipu3sc_softc* @device_get_softc(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @imx51_get_clk_gating(i32) #1

declare dso_local i32 @sc_attach_unit(i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @device_get_flags(i32) #1

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

declare dso_local i32 @bus_space_unmap(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
