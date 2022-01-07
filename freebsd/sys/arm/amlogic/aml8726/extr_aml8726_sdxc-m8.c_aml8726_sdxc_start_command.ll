; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_start_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_sdxc_softc = type { i32, i32, %struct.TYPE_2__, %struct.mmc_command*, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.mmc_command = type { i32, i32, i32, i32, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32 }

@MMC_ERR_INVALID = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@AML_SDXC_SEND_CMD_HAS_RESP = common dso_local global i32 0, align 4
@AML_SDXC_SEND_RESP_136 = common dso_local global i32 0, align 4
@AML_SDXC_SEND_RESP_NO_CRC7_CHECK = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@MMC_STOP_TRANSMISSION = common dso_local global i32 0, align 4
@AML_SDXC_SEND_DATA_STOP = common dso_local global i32 0, align 4
@AML_SDXC_CNTRL_REG = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_ENABLE_STANDARD = common dso_local global i32 0, align 4
@AML_SDXC_CMD_TIMEOUT = common dso_local global i32 0, align 4
@AML_SDXC_CNTRL_PKG_LEN_MASK = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MMC_DATA_MULTI = common dso_local global i32 0, align 4
@MMC_SECTOR_SIZE = common dso_local global i32 0, align 4
@AML_SDXC_SEND_CMD_HAS_DATA = common dso_local global i32 0, align 4
@AML_SDXC_SEND_DATA_WRITE = common dso_local global i32 0, align 4
@AML_SDXC_SEND_REP_PKG_CNT_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_CNTRL_PKG_LEN_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_ENABLE_RESP_OK = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_ENABLE_DMA_DONE = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_ENABLE_TRANSFER_DONE_OK = common dso_local global i32 0, align 4
@aml8726_sdxc_mapmem = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@MMC_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@AML_SDXC_READ_TIMEOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@AML_SDXC_WRITE_TIMEOUT = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@AML_SDXC_MAX_TIMEOUT = common dso_local global i32 0, align 4
@aml8726_sdxc_timeout = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_ENABLE_REG = common dso_local global i32 0, align 4
@AML_SDXC_DMA_ADDR_REG = common dso_local global i32 0, align 4
@AML_SDXC_CMD_ARGUMENT_REG = common dso_local global i32 0, align 4
@AML_SDXC_SEND_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aml8726_sdxc_softc*, %struct.mmc_command*)* @aml8726_sdxc_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_sdxc_start_command(%struct.aml8726_sdxc_softc* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_sdxc_softc*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.mmc_data*, align 8
  store %struct.aml8726_sdxc_softc* %0, %struct.aml8726_sdxc_softc** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  %14 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %15 = call i32 @AML_SDXC_LOCK_ASSERT(%struct.aml8726_sdxc_softc* %14)
  %16 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sgt i32 %18, 63
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %21, i32* %3, align 4
  br label %308

22:                                               ; preds = %2
  %23 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %24 = call i32 @aml8726_sdxc_soft_reset(%struct.aml8726_sdxc_softc* %23)
  %25 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %10, align 4
  %28 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MMC_RSP_136, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %22
  %35 = load i32, i32* @AML_SDXC_SEND_CMD_HAS_RESP, align 4
  %36 = load i32, i32* %10, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @AML_SDXC_SEND_RESP_136, align 4
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @AML_SDXC_SEND_RESP_NO_CRC7_CHECK, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %56

44:                                               ; preds = %22
  %45 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %46 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @AML_SDXC_SEND_CMD_HAS_RESP, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51, %44
  br label %56

56:                                               ; preds = %55, %34
  %57 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %58 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MMC_RSP_CRC, align 4
  %61 = and i32 %59, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @AML_SDXC_SEND_RESP_NO_CRC7_CHECK, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %69 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MMC_STOP_TRANSMISSION, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @AML_SDXC_SEND_DATA_STOP, align 4
  %75 = load i32, i32* %10, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %79 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %78, i32 0, i32 4
  %80 = load %struct.mmc_data*, %struct.mmc_data** %79, align 8
  store %struct.mmc_data* %80, %struct.mmc_data** %13, align 8
  store i64 0, i64* %6, align 8
  %81 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %82 = load i32, i32* @AML_SDXC_CNTRL_REG, align 4
  %83 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %81, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* @AML_SDXC_IRQ_ENABLE_STANDARD, align 4
  store i32 %84, i32* %9, align 4
  %85 = load i32, i32* @AML_SDXC_CMD_TIMEOUT, align 4
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* @AML_SDXC_CNTRL_PKG_LEN_MASK, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %8, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %91 = icmp ne %struct.mmc_data* %90, null
  br i1 %91, label %92, label %252

92:                                               ; preds = %77
  %93 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %94 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %252

97:                                               ; preds = %92
  %98 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %99 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MMC_DATA_READ, align 4
  %102 = load i32, i32* @MMC_DATA_WRITE, align 4
  %103 = or i32 %101, %102
  %104 = and i32 %100, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %252

106:                                              ; preds = %97
  %107 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %108 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %7, align 4
  %110 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %111 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MMC_DATA_MULTI, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %127

116:                                              ; preds = %106
  %117 = load i32, i32* @MMC_SECTOR_SIZE, align 4
  store i32 %117, i32* %7, align 4
  %118 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %119 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %7, align 4
  %122 = srem i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %125, i32* %3, align 4
  br label %308

126:                                              ; preds = %116
  br label %127

127:                                              ; preds = %126, %106
  %128 = load i32, i32* %7, align 4
  %129 = icmp sgt i32 %128, 512
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %131, i32* %3, align 4
  br label %308

132:                                              ; preds = %127
  %133 = load i32, i32* @AML_SDXC_SEND_CMD_HAS_DATA, align 4
  %134 = load i32, i32* %10, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %10, align 4
  %136 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %137 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @MMC_DATA_WRITE, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %132
  %143 = load i32, i32* @AML_SDXC_SEND_DATA_WRITE, align 4
  br label %145

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144, %142
  %146 = phi i32 [ %143, %142 ], [ 0, %144 ]
  %147 = load i32, i32* %10, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %10, align 4
  %149 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %150 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %7, align 4
  %153 = sdiv i32 %151, %152
  %154 = sub nsw i32 %153, 1
  %155 = load i32, i32* @AML_SDXC_SEND_REP_PKG_CNT_SHIFT, align 4
  %156 = shl i32 %154, %155
  %157 = load i32, i32* %10, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %10, align 4
  %159 = load i32, i32* %7, align 4
  %160 = icmp slt i32 %159, 512
  br i1 %160, label %161, label %163

161:                                              ; preds = %145
  %162 = load i32, i32* %7, align 4
  br label %164

163:                                              ; preds = %145
  br label %164

164:                                              ; preds = %163, %161
  %165 = phi i32 [ %162, %161 ], [ 0, %163 ]
  %166 = load i32, i32* @AML_SDXC_CNTRL_PKG_LEN_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = load i32, i32* %8, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %8, align 4
  %170 = load i32, i32* @AML_SDXC_IRQ_ENABLE_RESP_OK, align 4
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %9, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %9, align 4
  %174 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %175 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %185, label %178

178:                                              ; preds = %164
  %179 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %180 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @MMC_DATA_WRITE, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %187

185:                                              ; preds = %178, %164
  %186 = load i32, i32* @AML_SDXC_IRQ_ENABLE_DMA_DONE, align 4
  br label %189

187:                                              ; preds = %178
  %188 = load i32, i32* @AML_SDXC_IRQ_ENABLE_TRANSFER_DONE_OK, align 4
  br label %189

189:                                              ; preds = %187, %185
  %190 = phi i32 [ %186, %185 ], [ %188, %187 ]
  %191 = load i32, i32* %9, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %9, align 4
  %193 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %194 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %197 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 8
  %199 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %200 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %203 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @aml8726_sdxc_mapmem, align 4
  %206 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %207 = call i32 @bus_dmamap_load(i32 %195, i32 %198, i32 %201, i32 %204, i32 %205, i64* %6, i32 %206)
  store i32 %207, i32* %12, align 4
  %208 = load i32, i32* %12, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %189
  %211 = load i32, i32* @MMC_ERR_NO_MEMORY, align 4
  store i32 %211, i32* %3, align 4
  br label %308

212:                                              ; preds = %189
  %213 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %214 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @MMC_DATA_READ, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %235

219:                                              ; preds = %212
  %220 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %221 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %224 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %227 = call i32 @bus_dmamap_sync(i32 %222, i32 %225, i32 %226)
  %228 = load i32, i32* @AML_SDXC_READ_TIMEOUT, align 4
  %229 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %230 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* %7, align 4
  %233 = sdiv i32 %231, %232
  %234 = mul nsw i32 %228, %233
  store i32 %234, i32* %11, align 4
  br label %251

235:                                              ; preds = %212
  %236 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %237 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %240 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %239, i32 0, i32 4
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %243 = call i32 @bus_dmamap_sync(i32 %238, i32 %241, i32 %242)
  %244 = load i32, i32* @AML_SDXC_WRITE_TIMEOUT, align 4
  %245 = load %struct.mmc_data*, %struct.mmc_data** %13, align 8
  %246 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %7, align 4
  %249 = sdiv i32 %247, %248
  %250 = mul nsw i32 %244, %249
  store i32 %250, i32* %11, align 4
  br label %251

251:                                              ; preds = %235, %219
  br label %252

252:                                              ; preds = %251, %97, %92, %77
  %253 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %254 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %255 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %254, i32 0, i32 3
  store %struct.mmc_command* %253, %struct.mmc_command** %255, align 8
  %256 = load i32, i32* @MMC_ERR_NONE, align 4
  %257 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %258 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %257, i32 0, i32 2
  store i32 %256, i32* %258, align 8
  %259 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %260 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %260, i32 0, i32 1
  store i64 0, i64* %261, align 8
  %262 = load i32, i32* @MMC_ERR_NONE, align 4
  %263 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %264 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %263, i32 0, i32 2
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 0
  store i32 %262, i32* %265, align 8
  %266 = load i32, i32* %11, align 4
  %267 = load i32, i32* @AML_SDXC_MAX_TIMEOUT, align 4
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %252
  %270 = load i32, i32* @AML_SDXC_MAX_TIMEOUT, align 4
  store i32 %270, i32* %11, align 4
  br label %271

271:                                              ; preds = %269, %252
  %272 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %273 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %272, i32 0, i32 1
  %274 = load i32, i32* %11, align 4
  %275 = call i32 @msecs_to_ticks(i32 %274)
  %276 = load i32, i32* @aml8726_sdxc_timeout, align 4
  %277 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %278 = call i32 @callout_reset(i32* %273, i32 %275, i32 %276, %struct.aml8726_sdxc_softc* %277)
  %279 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %280 = load i32, i32* @AML_SDXC_IRQ_ENABLE_REG, align 4
  %281 = load i32, i32* %9, align 4
  %282 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %279, i32 %280, i32 %281)
  %283 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %284 = load i32, i32* @AML_SDXC_CNTRL_REG, align 4
  %285 = load i32, i32* %8, align 4
  %286 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %283, i32 %284, i32 %285)
  %287 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %288 = load i32, i32* @AML_SDXC_DMA_ADDR_REG, align 4
  %289 = load i64, i64* %6, align 8
  %290 = trunc i64 %289 to i32
  %291 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %287, i32 %288, i32 %290)
  %292 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %293 = load i32, i32* @AML_SDXC_CMD_ARGUMENT_REG, align 4
  %294 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %295 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %292, i32 %293, i32 %296)
  %298 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %299 = call i32 @aml8726_sdxc_engage_dma(%struct.aml8726_sdxc_softc* %298)
  %300 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %301 = load i32, i32* @AML_SDXC_SEND_REG, align 4
  %302 = load i32, i32* %10, align 4
  %303 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %300, i32 %301, i32 %302)
  %304 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %4, align 8
  %305 = load i32, i32* @AML_SDXC_SEND_REG, align 4
  %306 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %304, i32 %305)
  %307 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %307, i32* %3, align 4
  br label %308

308:                                              ; preds = %271, %210, %130, %124, %20
  %309 = load i32, i32* %3, align 4
  ret i32 %309
}

declare dso_local i32 @AML_SDXC_LOCK_ASSERT(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @aml8726_sdxc_soft_reset(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_sdxc_softc*, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @msecs_to_ticks(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc*, i32, i32) #1

declare dso_local i32 @aml8726_sdxc_engage_dma(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
