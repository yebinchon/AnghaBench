; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i64, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"marvell,pcie-port\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"mrvl,pcie\00", align 1
@MV_TYPE_PCIE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [24 x i8] c"marvell,armada-370-pcie\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"mrvl,pci\00", align 1
@MV_TYPE_PCI = common dso_local global i8* null, align 8
@MV_WIN_PCI_TARGET = common dso_local global i32 0, align 4
@MV_WIN_PCI_MEM_ATTR = common dso_local global i32 0, align 4
@MV_WIN_PCI_IO_ATTR = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"could not map memory\0A\00", align 1
@PCIE_REG_CONTROL = common dso_local global i32 0, align 4
@PCIE_CONTROL_ROOT_CMPLX = common dso_local global i32 0, align 4
@MV_MODE_ROOT = common dso_local global i64 0, align 8
@MV_MODE_ENDPOINT = common dso_local global i64 0, align 8
@PCI_BUSMAX = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"pci\00", align 1
@PCIE_REG_STATUS = common dso_local global i32 0, align 4
@PCIE_STATUS_DEV_OFFS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"pci_ep\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"msi_mtx\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_pcib_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pcib_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_pcib_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call %struct.mv_pcib_softc* @device_get_softc(i32 %13)
  store %struct.mv_pcib_softc* %14, %struct.mv_pcib_softc** %4, align 8
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %17 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ofw_bus_get_node(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @OF_parent(i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @OF_getencprop(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %12, i32 4)
  %24 = icmp sle i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @OF_hasprop(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %263

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %36 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @ofw_bus_node_is_compatible(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load i8*, i8** @MV_TYPE_PCIE, align 8
  %42 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %42, i32 0, i32 18
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @MV_WIN_PCIE_TARGET(i32 %44)
  %46 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %47 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %46, i32 0, i32 17
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @MV_WIN_PCIE_MEM_ATTR(i32 %48)
  %50 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %51 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %50, i32 0, i32 16
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @MV_WIN_PCIE_IO_ATTR(i32 %52)
  %54 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %55 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %54, i32 0, i32 15
  store i32 %53, i32* %55, align 8
  br label %99

56:                                               ; preds = %33
  %57 = load i32, i32* %6, align 4
  %58 = call i64 @ofw_bus_node_is_compatible(i32 %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %56
  %61 = load i8*, i8** @MV_TYPE_PCIE, align 8
  %62 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %63 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %62, i32 0, i32 18
  store i8* %61, i8** %63, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @MV_WIN_PCIE_TARGET_ARMADA38X(i32 %64)
  %66 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %67 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %66, i32 0, i32 17
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @MV_WIN_PCIE_MEM_ATTR_ARMADA38X(i32 %68)
  %70 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %71 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %70, i32 0, i32 16
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @MV_WIN_PCIE_IO_ATTR_ARMADA38X(i32 %72)
  %74 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %75 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %74, i32 0, i32 15
  store i32 %73, i32* %75, align 8
  %76 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %77 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %76, i32 0, i32 2
  store i32 1, i32* %77, align 8
  br label %98

78:                                               ; preds = %56
  %79 = load i32, i32* %5, align 4
  %80 = call i64 @ofw_bus_node_is_compatible(i32 %79, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load i8*, i8** @MV_TYPE_PCI, align 8
  %84 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %85 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %84, i32 0, i32 18
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @MV_WIN_PCI_TARGET, align 4
  %87 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %88 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %87, i32 0, i32 17
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @MV_WIN_PCI_MEM_ATTR, align 4
  %90 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %91 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %90, i32 0, i32 16
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @MV_WIN_PCI_IO_ATTR, align 4
  %93 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %94 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %93, i32 0, i32 15
  store i32 %92, i32* %94, align 8
  br label %97

95:                                               ; preds = %78
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %2, align 4
  br label %263

97:                                               ; preds = %82
  br label %98

98:                                               ; preds = %97, %60
  br label %99

99:                                               ; preds = %98, %40
  %100 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %101 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %100, i32 0, i32 14
  store i64 0, i64* %101, align 8
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* @SYS_RES_MEMORY, align 4
  %104 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %105 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %104, i32 0, i32 14
  %106 = load i32, i32* @RF_ACTIVE, align 4
  %107 = call i32* @bus_alloc_resource_any(i32 %102, i32 %103, i64* %105, i32 %106)
  %108 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %109 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %108, i32 0, i32 13
  store i32* %107, i32** %109, align 8
  %110 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %111 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %110, i32 0, i32 13
  %112 = load i32*, i32** %111, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %99
  %115 = load i32, i32* %3, align 4
  %116 = call i32 @device_printf(i32 %115, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %117 = load i32, i32* @ENXIO, align 4
  store i32 %117, i32* %2, align 4
  br label %263

118:                                              ; preds = %99
  %119 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %120 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %119, i32 0, i32 13
  %121 = load i32*, i32** %120, align 8
  %122 = call i32 @rman_get_bustag(i32* %121)
  %123 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %124 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %123, i32 0, i32 10
  store i32 %122, i32* %124, align 8
  %125 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %126 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %125, i32 0, i32 13
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @rman_get_bushandle(i32* %127)
  %129 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %130 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %129, i32 0, i32 9
  store i32 %128, i32* %130, align 4
  %131 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %132 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %135 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %134, i32 0, i32 9
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @PCIE_REG_CONTROL, align 4
  %138 = call i32 @bus_space_read_4(i32 %133, i32 %136, i32 %137)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @PCIE_CONTROL_ROOT_CMPLX, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %118
  %144 = load i64, i64* @MV_MODE_ROOT, align 8
  br label %147

145:                                              ; preds = %118
  %146 = load i64, i64* @MV_MODE_ENDPOINT, align 8
  br label %147

147:                                              ; preds = %145, %143
  %148 = phi i64 [ %144, %143 ], [ %146, %145 ]
  %149 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %150 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %149, i32 0, i32 3
  store i64 %148, i64* %150, align 8
  %151 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %152 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @MV_MODE_ROOT, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %147
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %159 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %158, i32 0, i32 12
  %160 = call i32 @ofw_bus_setup_iinfo(i32 %157, i32* %159, i32 4)
  br label %161

161:                                              ; preds = %156, %147
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %164 = call i64 @mv_pcib_decode_win(i32 %162, %struct.mv_pcib_softc* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %161
  %167 = load i32, i32* @ENXIO, align 4
  store i32 %167, i32* %2, align 4
  br label %263

168:                                              ; preds = %161
  %169 = call i32 (...) @mv_pcib_hw_cfginit()
  %170 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %171 = load i32, i32* %12, align 4
  %172 = call i32 @mv_pcib_enable(%struct.mv_pcib_softc* %170, i32 %171)
  %173 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %174 = call i32 @mv_pcib_mem_init(%struct.mv_pcib_softc* %173)
  store i32 %174, i32* %9, align 4
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %179

177:                                              ; preds = %168
  %178 = load i32, i32* %9, align 4
  store i32 %178, i32* %2, align 4
  br label %263

179:                                              ; preds = %168
  store i32 0, i32* %10, align 4
  br label %180

180:                                              ; preds = %208, %179
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* @PCI_BUSMAX, align 4
  %183 = icmp slt i32 %181, %182
  br i1 %183, label %184, label %211

184:                                              ; preds = %180
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %204, %184
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %3, align 4
  %188 = call i32 @mv_pcib_maxslots(i32 %187)
  %189 = icmp slt i32 %186, %188
  br i1 %189, label %190, label %207

190:                                              ; preds = %185
  %191 = load i32, i32* %3, align 4
  %192 = load i32, i32* %10, align 4
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* %11, align 4
  %195 = and i32 %194, 7
  %196 = call i32 @mv_pcib_read_config(i32 %191, i32 %192, i32 %193, i32 %195, i32 0, i32 4)
  store i32 %196, i32* %8, align 4
  %197 = load i32, i32* %8, align 4
  %198 = icmp eq i32 %197, -1
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  br label %204

200:                                              ; preds = %190
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %203 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %202, i32 0, i32 4
  store i32 %201, i32* %203, align 8
  br label %207

204:                                              ; preds = %199
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %11, align 4
  br label %185

207:                                              ; preds = %200, %185
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %10, align 4
  br label %180

211:                                              ; preds = %180
  %212 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %213 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @MV_MODE_ROOT, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %233

217:                                              ; preds = %211
  %218 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %219 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %220 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %223 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %222, i32 0, i32 11
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @mv_pcib_maxslots(i32 %224)
  %226 = call i32 @mv_pcib_init(%struct.mv_pcib_softc* %218, i32 %221, i32 %225)
  store i32 %226, i32* %9, align 4
  %227 = load i32, i32* %9, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %217
  br label %255

230:                                              ; preds = %217
  %231 = load i32, i32* %3, align 4
  %232 = call i32 @device_add_child(i32 %231, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 -1)
  br label %248

233:                                              ; preds = %211
  %234 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %235 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %234, i32 0, i32 5
  store i32 1, i32* %235, align 4
  %236 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %237 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %236, i32 0, i32 10
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %240 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %239, i32 0, i32 9
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @PCIE_REG_STATUS, align 4
  %243 = load i32, i32* @PCIE_STATUS_DEV_OFFS, align 4
  %244 = shl i32 1, %243
  %245 = call i32 @bus_space_write_4(i32 %238, i32 %241, i32 %242, i32 %244)
  %246 = load i32, i32* %3, align 4
  %247 = call i32 @device_add_child(i32 %246, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 -1)
  br label %248

248:                                              ; preds = %233, %230
  %249 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %250 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %249, i32 0, i32 8
  %251 = load i32, i32* @MTX_DEF, align 4
  %252 = call i32 @mtx_init(i32* %250, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32* null, i32 %251)
  %253 = load i32, i32* %3, align 4
  %254 = call i32 @bus_generic_attach(i32 %253)
  store i32 %254, i32* %2, align 4
  br label %263

255:                                              ; preds = %229
  %256 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %257 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %256, i32 0, i32 7
  %258 = call i32 @rman_fini(i32* %257)
  %259 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %260 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %259, i32 0, i32 6
  %261 = call i32 @rman_fini(i32* %260)
  %262 = load i32, i32* %9, align 4
  store i32 %262, i32* %2, align 4
  br label %263

263:                                              ; preds = %255, %248, %177, %166, %114, %95, %30
  %264 = load i32, i32* %2, align 4
  ret i32 %264
}

declare dso_local %struct.mv_pcib_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @OF_parent(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @OF_hasprop(i32, i8*) #1

declare dso_local i64 @ofw_bus_node_is_compatible(i32, i8*) #1

declare dso_local i32 @MV_WIN_PCIE_TARGET(i32) #1

declare dso_local i32 @MV_WIN_PCIE_MEM_ATTR(i32) #1

declare dso_local i32 @MV_WIN_PCIE_IO_ATTR(i32) #1

declare dso_local i32 @MV_WIN_PCIE_TARGET_ARMADA38X(i32) #1

declare dso_local i32 @MV_WIN_PCIE_MEM_ATTR_ARMADA38X(i32) #1

declare dso_local i32 @MV_WIN_PCIE_IO_ATTR_ARMADA38X(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @ofw_bus_setup_iinfo(i32, i32*, i32) #1

declare dso_local i64 @mv_pcib_decode_win(i32, %struct.mv_pcib_softc*) #1

declare dso_local i32 @mv_pcib_hw_cfginit(...) #1

declare dso_local i32 @mv_pcib_enable(%struct.mv_pcib_softc*, i32) #1

declare dso_local i32 @mv_pcib_mem_init(%struct.mv_pcib_softc*) #1

declare dso_local i32 @mv_pcib_maxslots(i32) #1

declare dso_local i32 @mv_pcib_read_config(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mv_pcib_init(%struct.mv_pcib_softc*, i32, i32) #1

declare dso_local i32 @device_add_child(i32, i8*, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @bus_generic_attach(i32) #1

declare dso_local i32 @rman_fini(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
