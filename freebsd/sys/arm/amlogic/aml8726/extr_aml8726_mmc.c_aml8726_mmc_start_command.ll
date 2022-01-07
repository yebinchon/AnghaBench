; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_start_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_mmc.c_aml8726_mmc_start_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_mmc_softc = type { i32, i32, i32, %struct.mmc_command*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.mmc_ios }
%struct.mmc_ios = type { i64 }
%struct.mmc_command = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.mmc_data* }
%struct.TYPE_4__ = type { %struct.mmc_command* }
%struct.mmc_data = type { i32, i32, i32 }

@MMC_ERR_INVALID = common dso_local global i32 0, align 4
@AML_MMC_CMD_START_BIT = common dso_local global i32 0, align 4
@AML_MMC_CMD_TRANS_BIT_HOST = common dso_local global i32 0, align 4
@AML_MMC_CMD_TIMEOUT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@AML_MMC_CMD_RESP_CRC7_FROM_8 = common dso_local global i32 0, align 4
@AML_MMC_CMD_RESP_BITS_SHIFT = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@AML_MMC_CMD_RESP_NO_CRC7 = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@AML_MMC_CMD_CHECK_DAT0_BUSY = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MMC_DATA_MULTI = common dso_local global i32 0, align 4
@MMC_SECTOR_SIZE = common dso_local global i32 0, align 4
@AML_MMC_CMD_REP_PKG_CNT_SHIFT = common dso_local global i32 0, align 4
@MMC_DATA_STREAM = common dso_local global i32 0, align 4
@AML_MMC_MULT_CONFIG_STREAM_EN = common dso_local global i32 0, align 4
@bus_width_4 = common dso_local global i64 0, align 8
@AML_MMC_EXTENSION_PKT_SIZE_SHIFT = common dso_local global i32 0, align 4
@aml8726_mmc_mapmem = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@MMC_ERR_NO_MEMORY = common dso_local global i32 0, align 4
@AML_MMC_CMD_RESP_HAS_DATA = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@AML_MMC_READ_TIMEOUT = common dso_local global i32 0, align 4
@AML_MMC_CMD_CMD_HAS_DATA = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@AML_MMC_WRITE_TIMEOUT = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@AML_MMC_MAX_TIMEOUT = common dso_local global i32 0, align 4
@aml8726_mmc_timeout = common dso_local global i32 0, align 4
@AML_MMC_CMD_ARGUMENT_REG = common dso_local global i32 0, align 4
@AML_MMC_MULT_CONFIG_REG = common dso_local global i32 0, align 4
@AML_MMC_EXTENSION_REG = common dso_local global i32 0, align 4
@AML_MMC_DMA_ADDR_REG = common dso_local global i32 0, align 4
@AML_MMC_CMD_SEND_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aml8726_mmc_softc*, %struct.mmc_command*)* @aml8726_mmc_start_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_mmc_start_command(%struct.aml8726_mmc_softc* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.aml8726_mmc_softc*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca %struct.mmc_ios*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.mmc_data*, align 8
  store %struct.aml8726_mmc_softc* %0, %struct.aml8726_mmc_softc** %4, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %5, align 8
  %17 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %18 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %17, i32 0, i32 6
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store %struct.mmc_ios* %19, %struct.mmc_ios** %6, align 8
  %20 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 63
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %25, i32* %3, align 4
  br label %320

26:                                               ; preds = %2
  %27 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %28 = call i32 @aml8726_mmc_soft_reset(%struct.aml8726_mmc_softc* %27, i32 1)
  %29 = load i32, i32* @AML_MMC_CMD_START_BIT, align 4
  %30 = load i32, i32* @AML_MMC_CMD_TRANS_BIT_HOST, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %33 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %31, %34
  store i32 %35, i32* %10, align 4
  store i64 0, i64* %7, align 8
  store i32 0, i32* %11, align 4
  %36 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %37 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* @AML_MMC_CMD_TIMEOUT, align 4
  store i32 %39, i32* %14, align 4
  %40 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %41 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %41, i32 0, i32 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.mmc_command*, %struct.mmc_command** %44, align 8
  %46 = icmp eq %struct.mmc_command* %40, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %26
  %48 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %49 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %54 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %14, align 4
  br label %56

56:                                               ; preds = %52, %47, %26
  %57 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %58 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %57, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %60 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MMC_RSP_136, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = load i32, i32* @AML_MMC_CMD_RESP_CRC7_FROM_8, align 4
  %67 = load i32, i32* %10, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* @AML_MMC_CMD_RESP_BITS_SHIFT, align 4
  %70 = shl i32 133, %69
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %86

73:                                               ; preds = %56
  %74 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %75 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %73
  %81 = load i32, i32* @AML_MMC_CMD_RESP_BITS_SHIFT, align 4
  %82 = shl i32 45, %81
  %83 = load i32, i32* %10, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %80, %73
  br label %86

86:                                               ; preds = %85, %65
  %87 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %88 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @MMC_RSP_CRC, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %86
  %94 = load i32, i32* @AML_MMC_CMD_RESP_NO_CRC7, align 4
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %93, %86
  %98 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %99 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @MMC_RSP_BUSY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @AML_MMC_CMD_CHECK_DAT0_BUSY, align 4
  %106 = load i32, i32* %10, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %104, %97
  %109 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %110 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %109, i32 0, i32 5
  %111 = load %struct.mmc_data*, %struct.mmc_data** %110, align 8
  store %struct.mmc_data* %111, %struct.mmc_data** %16, align 8
  %112 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %113 = icmp ne %struct.mmc_data* %112, null
  br i1 %113, label %114, label %273

114:                                              ; preds = %108
  %115 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %116 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %273

119:                                              ; preds = %114
  %120 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %121 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MMC_DATA_READ, align 4
  %124 = load i32, i32* @MMC_DATA_WRITE, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %273

128:                                              ; preds = %119
  %129 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %130 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %8, align 4
  %132 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %133 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @MMC_DATA_MULTI, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %128
  %139 = load i32, i32* @MMC_SECTOR_SIZE, align 4
  store i32 %139, i32* %8, align 4
  %140 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %141 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %8, align 4
  %144 = srem i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %138
  %147 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %147, i32* %3, align 4
  br label %320

148:                                              ; preds = %138
  br label %149

149:                                              ; preds = %148, %128
  %150 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %151 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %8, align 4
  %154 = sdiv i32 %152, %153
  %155 = sub nsw i32 %154, 1
  %156 = load i32, i32* @AML_MMC_CMD_REP_PKG_CNT_SHIFT, align 4
  %157 = shl i32 %155, %156
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %10, align 4
  %160 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %161 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @MMC_DATA_STREAM, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %149
  %167 = load i32, i32* @AML_MMC_MULT_CONFIG_STREAM_EN, align 4
  br label %169

168:                                              ; preds = %149
  br label %169

169:                                              ; preds = %168, %166
  %170 = phi i32 [ %167, %166 ], [ 0, %168 ]
  %171 = load i32, i32* %12, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %12, align 4
  %173 = load %struct.mmc_ios*, %struct.mmc_ios** %6, align 8
  %174 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @bus_width_4, align 8
  %177 = icmp eq i64 %175, %176
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 4, i32 1
  store i32 %179, i32* %9, align 4
  %180 = load i32, i32* %8, align 4
  %181 = mul nsw i32 %180, 8
  %182 = load i32, i32* %9, align 4
  %183 = mul nsw i32 16, %182
  %184 = add nsw i32 %181, %183
  %185 = load i32, i32* %9, align 4
  %186 = sub nsw i32 %184, %185
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp sgt i32 %187, 16383
  br i1 %188, label %189, label %191

189:                                              ; preds = %169
  %190 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %190, i32* %3, align 4
  br label %320

191:                                              ; preds = %169
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @AML_MMC_EXTENSION_PKT_SIZE_SHIFT, align 4
  %194 = shl i32 %192, %193
  %195 = load i32, i32* %11, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %11, align 4
  %197 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %198 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %197, i32 0, i32 5
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %201 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %200, i32 0, i32 4
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %204 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %207 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @aml8726_mmc_mapmem, align 4
  %210 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %211 = call i32 @bus_dmamap_load(i32 %199, i32 %202, i32 %205, i32 %208, i32 %209, i64* %7, i32 %210)
  store i32 %211, i32* %15, align 4
  %212 = load i32, i32* %15, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %191
  %215 = load i32, i32* @MMC_ERR_NO_MEMORY, align 4
  store i32 %215, i32* %3, align 4
  br label %320

216:                                              ; preds = %191
  %217 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %218 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @MMC_DATA_READ, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %242

223:                                              ; preds = %216
  %224 = load i32, i32* @AML_MMC_CMD_RESP_HAS_DATA, align 4
  %225 = load i32, i32* %10, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %10, align 4
  %227 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %228 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %227, i32 0, i32 5
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %231 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %230, i32 0, i32 4
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %234 = call i32 @bus_dmamap_sync(i32 %229, i32 %232, i32 %233)
  %235 = load i32, i32* @AML_MMC_READ_TIMEOUT, align 4
  %236 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %237 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %8, align 4
  %240 = sdiv i32 %238, %239
  %241 = mul nsw i32 %235, %240
  store i32 %241, i32* %14, align 4
  br label %261

242:                                              ; preds = %216
  %243 = load i32, i32* @AML_MMC_CMD_CMD_HAS_DATA, align 4
  %244 = load i32, i32* %10, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %10, align 4
  %246 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %247 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %246, i32 0, i32 5
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %250 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %253 = call i32 @bus_dmamap_sync(i32 %248, i32 %251, i32 %252)
  %254 = load i32, i32* @AML_MMC_WRITE_TIMEOUT, align 4
  %255 = load %struct.mmc_data*, %struct.mmc_data** %16, align 8
  %256 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* %8, align 4
  %259 = sdiv i32 %257, %258
  %260 = mul nsw i32 %254, %259
  store i32 %260, i32* %14, align 4
  br label %261

261:                                              ; preds = %242, %223
  %262 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %263 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %262, i32 0, i32 4
  %264 = load %struct.TYPE_4__*, %struct.TYPE_4__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %264, i32 0, i32 0
  %266 = load %struct.mmc_command*, %struct.mmc_command** %265, align 8
  %267 = icmp ne %struct.mmc_command* %266, null
  br i1 %267, label %268, label %272

268:                                              ; preds = %261
  %269 = load i32, i32* %14, align 4
  %270 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %271 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %268, %261
  br label %273

273:                                              ; preds = %272, %119, %114, %108
  %274 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %275 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %276 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %275, i32 0, i32 3
  store %struct.mmc_command* %274, %struct.mmc_command** %276, align 8
  %277 = load i32, i32* @MMC_ERR_NONE, align 4
  %278 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %279 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %278, i32 0, i32 2
  store i32 %277, i32* %279, align 8
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* @AML_MMC_MAX_TIMEOUT, align 4
  %282 = icmp sgt i32 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %273
  %284 = load i32, i32* @AML_MMC_MAX_TIMEOUT, align 4
  store i32 %284, i32* %14, align 4
  br label %285

285:                                              ; preds = %283, %273
  %286 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %287 = getelementptr inbounds %struct.aml8726_mmc_softc, %struct.aml8726_mmc_softc* %286, i32 0, i32 2
  %288 = load i32, i32* %14, align 4
  %289 = call i32 @MSECS_TO_TICKS(i32 %288)
  %290 = load i32, i32* @aml8726_mmc_timeout, align 4
  %291 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %292 = call i32 @callout_reset(i32* %287, i32 %289, i32 %290, %struct.aml8726_mmc_softc* %291)
  %293 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %294 = load i32, i32* @AML_MMC_CMD_ARGUMENT_REG, align 4
  %295 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %296 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = call i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc* %293, i32 %294, i32 %297)
  %299 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %300 = load i32, i32* @AML_MMC_MULT_CONFIG_REG, align 4
  %301 = load i32, i32* %12, align 4
  %302 = call i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc* %299, i32 %300, i32 %301)
  %303 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %304 = load i32, i32* @AML_MMC_EXTENSION_REG, align 4
  %305 = load i32, i32* %11, align 4
  %306 = call i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc* %303, i32 %304, i32 %305)
  %307 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %308 = load i32, i32* @AML_MMC_DMA_ADDR_REG, align 4
  %309 = load i64, i64* %7, align 8
  %310 = trunc i64 %309 to i32
  %311 = call i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc* %307, i32 %308, i32 %310)
  %312 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %313 = load i32, i32* @AML_MMC_CMD_SEND_REG, align 4
  %314 = load i32, i32* %10, align 4
  %315 = call i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc* %312, i32 %313, i32 %314)
  %316 = load %struct.aml8726_mmc_softc*, %struct.aml8726_mmc_softc** %4, align 8
  %317 = load i32, i32* @AML_MMC_CMD_SEND_REG, align 4
  %318 = call i32 @CSR_BARRIER(%struct.aml8726_mmc_softc* %316, i32 %317)
  %319 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %319, i32* %3, align 4
  br label %320

320:                                              ; preds = %285, %214, %189, %146, %24
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local i32 @aml8726_mmc_soft_reset(%struct.aml8726_mmc_softc*, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, i64*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.aml8726_mmc_softc*) #1

declare dso_local i32 @MSECS_TO_TICKS(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_mmc_softc*, i32, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_mmc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
