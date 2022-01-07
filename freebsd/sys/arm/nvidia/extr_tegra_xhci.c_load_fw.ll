; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_load_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_xhci.c_load_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_xhci_softc = type { i32, i32, i64, i32 }
%struct.firmware = type { i64 }
%struct.tegra_xusb_fw_hdr = type { i32, i32, i32, i32, i32 }
%struct.clocktime = type { i32, i32, i32, i32, i32, i32 }
%struct.timespec = type { i64, i32 }

@XUSB_CFG_ARU_RST = common dso_local global i32 0, align 4
@ARU_RST_RESET = common dso_local global i32 0, align 4
@XUSB_CSB_MEMPOOL_ILOAD_BASE_LO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"XUSB CPU is already loaded, CPUCTL: 0x%08X\0A\00", align 1
@XUSB_FALCON_CPUCTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Cannot read xusb firmware\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MEMATTR_UNCACHEABLE = common dso_local global i32 0, align 4
@FIRMWARE_UNLOAD = common dso_local global i32 0, align 4
@XUSB_CSB_MEMPOOL_ILOAD_ATTR = common dso_local global i32 0, align 4
@XUSB_CSB_MEMPOOL_ILOAD_BASE_HI = common dso_local global i32 0, align 4
@XUSB_CSB_MEMPOOL_APMAP = common dso_local global i32 0, align 4
@APMAP_BOOTPATH = common dso_local global i32 0, align 4
@XUSB_CSB_MEMPOOL_L2IMEMOP_TRIG = common dso_local global i32 0, align 4
@L2IMEMOP_INVALIDATE_ALL = common dso_local global i32 0, align 4
@XUSB_CSB_IMEM_BLOCK_SIZE = common dso_local global i32 0, align 4
@XUSB_CSB_MEMPOOL_L2IMEMOP_SIZE = common dso_local global i32 0, align 4
@L2IMEMOP_LOAD_LOCKED_RESULT = common dso_local global i32 0, align 4
@XUSB_FALCON_IMFILLCTL = common dso_local global i32 0, align 4
@XUSB_FALCON_IMFILLRNG1 = common dso_local global i32 0, align 4
@XUSB_FALCON_DMACTL = common dso_local global i32 0, align 4
@XUSB_CSB_MEMPOOL_L2IMEMOP_RESULT = common dso_local global i32 0, align 4
@L2IMEMOP_RESULT_VLD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Timedout while wating for DMA, state: 0x%08X\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@XUSB_FALCON_BOOTVEC = common dso_local global i32 0, align 4
@CPUCTL_STARTCPU = common dso_local global i32 0, align 4
@CPUCTL_STOPPED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"Timedout while wating for FALCON cpu, state: 0x%08X\0A\00", align 1
@.str.4 = private unnamed_addr constant [71 x i8] c" Falcon firmware version: %02X.%02X.%04X, (%d/%d/%d %d:%02d:%02d UTC)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_xhci_softc*)* @load_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_fw(%struct.tegra_xhci_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_xhci_softc*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.tegra_xusb_fw_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.clocktime, align 4
  %13 = alloca %struct.timespec, align 8
  %14 = alloca i32, align 4
  store %struct.tegra_xhci_softc* %0, %struct.tegra_xhci_softc** %3, align 8
  %15 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %16 = load i32, i32* @XUSB_CFG_ARU_RST, align 4
  %17 = load i32, i32* @ARU_RST_RESET, align 4
  %18 = call i32 @FPCI_WR4(%struct.tegra_xhci_softc* %15, i32 %16, i32 %17)
  %19 = call i32 @DELAY(i32 3000)
  %20 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %21 = load i32, i32* @XUSB_CSB_MEMPOOL_ILOAD_BASE_LO, align 4
  %22 = call i32 @CSB_RD4(%struct.tegra_xhci_softc* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %29 = load i32, i32* @XUSB_FALCON_CPUCTL, align 4
  %30 = call i32 @CSB_RD4(%struct.tegra_xhci_softc* %28, i32 %29)
  %31 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %2, align 4
  br label %245

32:                                               ; preds = %1
  %33 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.firmware* @firmware_get(i32 %35)
  store %struct.firmware* %36, %struct.firmware** %4, align 8
  %37 = load %struct.firmware*, %struct.firmware** %4, align 8
  %38 = icmp eq %struct.firmware* %37, null
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOENT, align 4
  store i32 %44, i32* %2, align 4
  br label %245

45:                                               ; preds = %32
  %46 = load %struct.firmware*, %struct.firmware** %4, align 8
  %47 = getelementptr inbounds %struct.firmware, %struct.firmware* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.tegra_xusb_fw_hdr*
  store %struct.tegra_xusb_fw_hdr* %49, %struct.tegra_xusb_fw_hdr** %5, align 8
  %50 = load %struct.tegra_xusb_fw_hdr*, %struct.tegra_xusb_fw_hdr** %5, align 8
  %51 = getelementptr inbounds %struct.tegra_xusb_fw_hdr, %struct.tegra_xusb_fw_hdr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @M_WAITOK, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = load i32, i32* @VM_MEMATTR_UNCACHEABLE, align 4
  %57 = call i64 @kmem_alloc_contig(i32 %53, i32 %54, i32 0, i64 -1, i32 %55, i32 0, i32 %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = call i32 @vtophys(i64 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i64, i64* %8, align 8
  %61 = inttoptr i64 %60 to %struct.tegra_xusb_fw_hdr*
  store %struct.tegra_xusb_fw_hdr* %61, %struct.tegra_xusb_fw_hdr** %5, align 8
  %62 = load i64, i64* %8, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.firmware*, %struct.firmware** %4, align 8
  %65 = getelementptr inbounds %struct.firmware, %struct.firmware* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @memcpy(i8* %63, i64 %66, i32 %67)
  %69 = load %struct.firmware*, %struct.firmware** %4, align 8
  %70 = load i32, i32* @FIRMWARE_UNLOAD, align 4
  %71 = call i32 @firmware_put(%struct.firmware* %69, i32 %70)
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %74 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %77 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, 20
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %7, align 4
  %82 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %83 = load i32, i32* @XUSB_CSB_MEMPOOL_ILOAD_ATTR, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %82, i32 %83, i32 %84)
  %86 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %87 = load i32, i32* @XUSB_CSB_MEMPOOL_ILOAD_BASE_LO, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %86, i32 %87, i32 %88)
  %90 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %91 = load i32, i32* @XUSB_CSB_MEMPOOL_ILOAD_BASE_HI, align 4
  %92 = load i32, i32* %7, align 4
  %93 = ashr i32 %92, 32
  %94 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %90, i32 %91, i32 %93)
  %95 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %96 = load i32, i32* @XUSB_CSB_MEMPOOL_APMAP, align 4
  %97 = load i32, i32* @APMAP_BOOTPATH, align 4
  %98 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %95, i32 %96, i32 %97)
  %99 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %100 = load i32, i32* @XUSB_CSB_MEMPOOL_L2IMEMOP_TRIG, align 4
  %101 = load i32, i32* @L2IMEMOP_INVALIDATE_ALL, align 4
  %102 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %99, i32 %100, i32 %101)
  %103 = load %struct.tegra_xusb_fw_hdr*, %struct.tegra_xusb_fw_hdr** %5, align 8
  %104 = getelementptr inbounds %struct.tegra_xusb_fw_hdr, %struct.tegra_xusb_fw_hdr* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @XUSB_CSB_IMEM_BLOCK_SIZE, align 4
  %107 = call i32 @howmany(i32 %105, i32 %106)
  store i32 %107, i32* %10, align 4
  %108 = load %struct.tegra_xusb_fw_hdr*, %struct.tegra_xusb_fw_hdr** %5, align 8
  %109 = getelementptr inbounds %struct.tegra_xusb_fw_hdr, %struct.tegra_xusb_fw_hdr* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @XUSB_CSB_IMEM_BLOCK_SIZE, align 4
  %112 = call i32 @howmany(i32 %110, i32 %111)
  store i32 %112, i32* %11, align 4
  %113 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %114 = load i32, i32* @XUSB_CSB_MEMPOOL_L2IMEMOP_SIZE, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @L2IMEMOP_SIZE_OFFSET(i32 %115)
  %117 = load i32, i32* %11, align 4
  %118 = call i32 @L2IMEMOP_SIZE_SIZE(i32 %117)
  %119 = or i32 %116, %118
  %120 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %113, i32 %114, i32 %119)
  %121 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %122 = load i32, i32* @XUSB_CSB_MEMPOOL_L2IMEMOP_TRIG, align 4
  %123 = load i32, i32* @L2IMEMOP_LOAD_LOCKED_RESULT, align 4
  %124 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %121, i32 %122, i32 %123)
  %125 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %126 = load i32, i32* @XUSB_FALCON_IMFILLCTL, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %125, i32 %126, i32 %127)
  %129 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %130 = load i32, i32* @XUSB_FALCON_IMFILLRNG1, align 4
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @IMFILLRNG1_TAG_LO(i32 %131)
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %133, %134
  %136 = call i32 @IMFILLRNG1_TAG_HI(i32 %135)
  %137 = or i32 %132, %136
  %138 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %129, i32 %130, i32 %137)
  %139 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %140 = load i32, i32* @XUSB_FALCON_DMACTL, align 4
  %141 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %139, i32 %140, i32 0)
  store i32 500, i32* %14, align 4
  br label %142

142:                                              ; preds = %155, %45
  %143 = load i32, i32* %14, align 4
  %144 = icmp sgt i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %147 = load i32, i32* @XUSB_CSB_MEMPOOL_L2IMEMOP_RESULT, align 4
  %148 = call i32 @CSB_RD4(%struct.tegra_xhci_softc* %146, i32 %147)
  %149 = load i32, i32* @L2IMEMOP_RESULT_VLD, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %145
  br label %158

153:                                              ; preds = %145
  %154 = call i32 @DELAY(i32 100)
  br label %155

155:                                              ; preds = %153
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, -1
  store i32 %157, i32* %14, align 4
  br label %142

158:                                              ; preds = %152, %142
  %159 = load i32, i32* %14, align 4
  %160 = icmp sle i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %163 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %166 = load i32, i32* @XUSB_CSB_MEMPOOL_L2IMEMOP_RESULT, align 4
  %167 = call i32 @CSB_RD4(%struct.tegra_xhci_softc* %165, i32 %166)
  %168 = call i32 (i32, i8*, ...) @device_printf(i32 %164, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %169, i32* %2, align 4
  br label %245

170:                                              ; preds = %158
  %171 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %172 = load i32, i32* @XUSB_FALCON_BOOTVEC, align 4
  %173 = load %struct.tegra_xusb_fw_hdr*, %struct.tegra_xusb_fw_hdr** %5, align 8
  %174 = getelementptr inbounds %struct.tegra_xusb_fw_hdr, %struct.tegra_xusb_fw_hdr* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %171, i32 %172, i32 %175)
  %177 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %178 = load i32, i32* @XUSB_FALCON_CPUCTL, align 4
  %179 = load i32, i32* @CPUCTL_STARTCPU, align 4
  %180 = call i32 @CSB_WR4(%struct.tegra_xhci_softc* %177, i32 %178, i32 %179)
  store i32 50, i32* %14, align 4
  br label %181

181:                                              ; preds = %193, %170
  %182 = load i32, i32* %14, align 4
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %184, label %196

184:                                              ; preds = %181
  %185 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %186 = load i32, i32* @XUSB_FALCON_CPUCTL, align 4
  %187 = call i32 @CSB_RD4(%struct.tegra_xhci_softc* %185, i32 %186)
  %188 = load i32, i32* @CPUCTL_STOPPED, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %196

191:                                              ; preds = %184
  %192 = call i32 @DELAY(i32 100)
  br label %193

193:                                              ; preds = %191
  %194 = load i32, i32* %14, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %14, align 4
  br label %181

196:                                              ; preds = %190, %181
  %197 = load i32, i32* %14, align 4
  %198 = icmp sle i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %201 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %204 = load i32, i32* @XUSB_FALCON_CPUCTL, align 4
  %205 = call i32 @CSB_RD4(%struct.tegra_xhci_softc* %203, i32 %204)
  %206 = call i32 (i32, i8*, ...) @device_printf(i32 %202, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %207, i32* %2, align 4
  br label %245

208:                                              ; preds = %196
  %209 = load %struct.tegra_xusb_fw_hdr*, %struct.tegra_xusb_fw_hdr** %5, align 8
  %210 = getelementptr inbounds %struct.tegra_xusb_fw_hdr, %struct.tegra_xusb_fw_hdr* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 1
  store i32 %211, i32* %212, align 8
  %213 = getelementptr inbounds %struct.timespec, %struct.timespec* %13, i32 0, i32 0
  store i64 0, i64* %213, align 8
  %214 = call i32 @clock_ts_to_ct(%struct.timespec* %13, %struct.clocktime* %12)
  %215 = load %struct.tegra_xhci_softc*, %struct.tegra_xhci_softc** %3, align 8
  %216 = getelementptr inbounds %struct.tegra_xhci_softc, %struct.tegra_xhci_softc* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.tegra_xusb_fw_hdr*, %struct.tegra_xusb_fw_hdr** %5, align 8
  %219 = getelementptr inbounds %struct.tegra_xusb_fw_hdr, %struct.tegra_xusb_fw_hdr* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = ashr i32 %220, 24
  %222 = and i32 %221, 255
  %223 = load %struct.tegra_xusb_fw_hdr*, %struct.tegra_xusb_fw_hdr** %5, align 8
  %224 = getelementptr inbounds %struct.tegra_xusb_fw_hdr, %struct.tegra_xusb_fw_hdr* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = ashr i32 %225, 15
  %227 = and i32 %226, 255
  %228 = load %struct.tegra_xusb_fw_hdr*, %struct.tegra_xusb_fw_hdr** %5, align 8
  %229 = getelementptr inbounds %struct.tegra_xusb_fw_hdr, %struct.tegra_xusb_fw_hdr* %228, i32 0, i32 3
  %230 = load i32, i32* %229, align 4
  %231 = and i32 %230, 65535
  %232 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %12, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %12, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %12, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %12, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %12, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.clocktime, %struct.clocktime* %12, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = call i32 (i32, i8*, ...) @device_printf(i32 %217, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.4, i64 0, i64 0), i32 %222, i32 %227, i32 %231, i32 %233, i32 %235, i32 %237, i32 %239, i32 %241, i32 %243)
  store i32 0, i32* %2, align 4
  br label %245

245:                                              ; preds = %208, %199, %161, %39, %24
  %246 = load i32, i32* %2, align 4
  ret i32 %246
}

declare dso_local i32 @FPCI_WR4(%struct.tegra_xhci_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSB_RD4(%struct.tegra_xhci_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local %struct.firmware* @firmware_get(i32) #1

declare dso_local i64 @kmem_alloc_contig(i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @vtophys(i64) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @firmware_put(%struct.firmware*, i32) #1

declare dso_local i32 @CSB_WR4(%struct.tegra_xhci_softc*, i32, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @L2IMEMOP_SIZE_OFFSET(i32) #1

declare dso_local i32 @L2IMEMOP_SIZE_SIZE(i32) #1

declare dso_local i32 @IMFILLRNG1_TAG_LO(i32) #1

declare dso_local i32 @IMFILLRNG1_TAG_HI(i32) #1

declare dso_local i32 @clock_ts_to_ct(%struct.timespec*, %struct.clocktime*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
