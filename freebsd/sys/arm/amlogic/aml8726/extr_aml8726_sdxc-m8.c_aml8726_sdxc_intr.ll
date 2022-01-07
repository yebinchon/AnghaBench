; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_sdxc_softc = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@AML_SDXC_IRQ_STATUS_REG = common dso_local global i32 0, align 4
@AML_SDXC_SEND_REG = common dso_local global i32 0, align 4
@AML_SDXC_STATUS_REG = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_STATUS_TX_FIFO_EMPTY = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_STATUS_RX_FIFO_FULL = common dso_local global i32 0, align 4
@MMC_ERR_FIFO = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_ENABLE_A_PKG_CRC_ERR = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_ENABLE_RESP_CRC_ERR = common dso_local global i32 0, align 4
@MMC_ERR_BADCRC = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_ENABLE_A_PKG_TIMEOUT_ERR = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_ENABLE_RESP_TIMEOUT_ERR = common dso_local global i32 0, align 4
@MMC_ERR_TIMEOUT = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_STATUS_RESP_OK = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_STATUS_DMA_DONE = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_STATUS_TRANSFER_DONE_OK = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_STATUS_CLEAR = common dso_local global i32 0, align 4
@AML_SDXC_SEND_CMD_HAS_RESP = common dso_local global i32 0, align 4
@AML_SDXC_SEND_RESP_136 = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_REG = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_DMA_EN = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_RESP_INDEX_MASK = common dso_local global i32 0, align 4
@AML_SDXC_PDMA_RESP_INDEX_SHIFT = common dso_local global i32 0, align 4
@AML_SDXC_CMD_ARGUMENT_REG = common dso_local global i32 0, align 4
@AML_SDXC_STATUS_BUSY = common dso_local global i32 0, align 4
@MMC_ERR_FAILED = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@AML_SDXC_SEND_INDEX_MASK = common dso_local global i32 0, align 4
@MMC_STOP_TRANSMISSION = common dso_local global i32 0, align 4
@AML_SDXC_STATUS_DAT0 = common dso_local global i32 0, align 4
@AML_SDXC_BUSY_POLL_INTVL = common dso_local global i32 0, align 4
@aml8726_sdxc_busy_check = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aml8726_sdxc_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_sdxc_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.aml8726_sdxc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.aml8726_sdxc_softc*
  store %struct.aml8726_sdxc_softc* %13, %struct.aml8726_sdxc_softc** %3, align 8
  %14 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %15 = call i32 @AML_SDXC_LOCK(%struct.aml8726_sdxc_softc* %14)
  %16 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %17 = load i32, i32* @AML_SDXC_IRQ_STATUS_REG, align 4
  %18 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %20 = load i32, i32* @AML_SDXC_SEND_REG, align 4
  %21 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %23 = load i32, i32* @AML_SDXC_STATUS_REG, align 4
  %24 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %25, i32 0, i32 2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = icmp eq %struct.TYPE_3__* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  br label %69

30:                                               ; preds = %1
  %31 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @AML_SDXC_IRQ_STATUS_TX_FIFO_EMPTY, align 4
  %34 = load i32, i32* @AML_SDXC_IRQ_STATUS_RX_FIFO_FULL, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* @MMC_ERR_FIFO, align 4
  store i32 %39, i32* %9, align 4
  br label %84

40:                                               ; preds = %30
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @AML_SDXC_IRQ_ENABLE_A_PKG_CRC_ERR, align 4
  %43 = load i32, i32* @AML_SDXC_IRQ_ENABLE_RESP_CRC_ERR, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @MMC_ERR_BADCRC, align 4
  store i32 %48, i32* %9, align 4
  br label %83

49:                                               ; preds = %40
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @AML_SDXC_IRQ_ENABLE_A_PKG_TIMEOUT_ERR, align 4
  %52 = load i32, i32* @AML_SDXC_IRQ_ENABLE_RESP_TIMEOUT_ERR, align 4
  %53 = or i32 %51, %52
  %54 = and i32 %50, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @MMC_ERR_TIMEOUT, align 4
  store i32 %57, i32* %9, align 4
  br label %82

58:                                               ; preds = %49
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @AML_SDXC_IRQ_STATUS_RESP_OK, align 4
  %61 = load i32, i32* @AML_SDXC_IRQ_STATUS_DMA_DONE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @AML_SDXC_IRQ_STATUS_TRANSFER_DONE_OK, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %59, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %81

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %29
  %70 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %71 = load i32, i32* @AML_SDXC_IRQ_STATUS_REG, align 4
  %72 = load i32, i32* @AML_SDXC_IRQ_STATUS_CLEAR, align 4
  %73 = load i32, i32* %4, align 4
  %74 = and i32 %72, %73
  %75 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %70, i32 %71, i32 %74)
  %76 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %77 = load i32, i32* @AML_SDXC_IRQ_STATUS_REG, align 4
  %78 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %76, i32 %77)
  %79 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %80 = call i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc* %79)
  br label %220

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %56
  br label %83

83:                                               ; preds = %82, %47
  br label %84

84:                                               ; preds = %83, %38
  %85 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %86 = call i32 @aml8726_sdxc_disengage_dma(%struct.aml8726_sdxc_softc* %85)
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @AML_SDXC_SEND_CMD_HAS_RESP, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %142

91:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* @AML_SDXC_SEND_RESP_136, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %91
  store i32 1, i32* %10, align 4
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 4
  store i32 %98, i32* %11, align 4
  br label %99

99:                                               ; preds = %96, %91
  %100 = load i32, i32* %10, align 4
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %138, %99
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %141

105:                                              ; preds = %101
  %106 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %107 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %108 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %106, i32 %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* @AML_SDXC_PDMA_DMA_EN, align 4
  %110 = load i32, i32* @AML_SDXC_PDMA_RESP_INDEX_MASK, align 4
  %111 = or i32 %109, %110
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @AML_SDXC_PDMA_RESP_INDEX_SHIFT, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* %5, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %5, align 4
  %120 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %121 = load i32, i32* @AML_SDXC_PDMA_REG, align 4
  %122 = load i32, i32* %5, align 4
  %123 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %120, i32 %121, i32 %122)
  %124 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %125 = load i32, i32* @AML_SDXC_CMD_ARGUMENT_REG, align 4
  %126 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %124, i32 %125)
  %127 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %128 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %127, i32 0, i32 2
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sub nsw i32 %132, 1
  %134 = load i32, i32* %8, align 4
  %135 = sub nsw i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  store i32 %126, i32* %137, align 4
  br label %138

138:                                              ; preds = %105
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %8, align 4
  br label %101

141:                                              ; preds = %101
  br label %142

142:                                              ; preds = %141, %84
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @AML_SDXC_STATUS_BUSY, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %173

147:                                              ; preds = %142
  %148 = load i32, i32* %4, align 4
  %149 = load i32, i32* @AML_SDXC_IRQ_STATUS_DMA_DONE, align 4
  %150 = load i32, i32* @AML_SDXC_IRQ_STATUS_TRANSFER_DONE_OK, align 4
  %151 = or i32 %149, %150
  %152 = and i32 %148, %151
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %173

154:                                              ; preds = %147
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @MMC_ERR_NONE, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i32, i32* @MMC_ERR_FAILED, align 4
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %158, %154
  %161 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %162 = call i32 @aml8726_sdxc_soft_reset(%struct.aml8726_sdxc_softc* %161)
  br label %163

163:                                              ; preds = %170, %160
  %164 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %165 = load i32, i32* @AML_SDXC_STATUS_REG, align 4
  %166 = call i32 @CSR_READ_4(%struct.aml8726_sdxc_softc* %164, i32 %165)
  %167 = load i32, i32* @AML_SDXC_STATUS_BUSY, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = call i32 (...) @cpu_spinwait()
  br label %163

172:                                              ; preds = %163
  br label %173

173:                                              ; preds = %172, %147, %142
  %174 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %175 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %174, i32 0, i32 2
  %176 = load %struct.TYPE_3__*, %struct.TYPE_3__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @MMC_RSP_BUSY, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %188, label %182

182:                                              ; preds = %173
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @AML_SDXC_SEND_INDEX_MASK, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* @MMC_STOP_TRANSMISSION, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %216

188:                                              ; preds = %182, %173
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* @AML_SDXC_STATUS_DAT0, align 4
  %191 = and i32 %189, %190
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %193, label %216

193:                                              ; preds = %188
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %196 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 0
  store i32 %194, i32* %197, align 4
  %198 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %199 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %198, i32 0, i32 0
  %200 = load i32, i32* @AML_SDXC_BUSY_POLL_INTVL, align 4
  %201 = call i32 @msecs_to_ticks(i32 %200)
  %202 = load i32, i32* @aml8726_sdxc_busy_check, align 4
  %203 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %204 = call i32 @callout_reset(i32* %199, i32 %201, i32 %202, %struct.aml8726_sdxc_softc* %203)
  %205 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %206 = load i32, i32* @AML_SDXC_IRQ_STATUS_REG, align 4
  %207 = load i32, i32* @AML_SDXC_IRQ_STATUS_CLEAR, align 4
  %208 = load i32, i32* %4, align 4
  %209 = and i32 %207, %208
  %210 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %205, i32 %206, i32 %209)
  %211 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %212 = load i32, i32* @AML_SDXC_IRQ_STATUS_REG, align 4
  %213 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %211, i32 %212)
  %214 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %215 = call i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc* %214)
  br label %220

216:                                              ; preds = %188, %182
  %217 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %218 = load i32, i32* %9, align 4
  %219 = call i32 @aml8726_sdxc_finish_command(%struct.aml8726_sdxc_softc* %217, i32 %218)
  br label %220

220:                                              ; preds = %216, %193, %69
  ret void
}

declare dso_local i32 @AML_SDXC_LOCK(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_sdxc_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc*, i32, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc*, i32) #1

declare dso_local i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @aml8726_sdxc_disengage_dma(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @aml8726_sdxc_soft_reset(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @msecs_to_ticks(i32) #1

declare dso_local i32 @aml8726_sdxc_finish_command(%struct.aml8726_sdxc_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
