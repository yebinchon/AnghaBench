; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_tgec.c_TgecErrException.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_tgec.c_TgecErrException.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 (i32, i32)*, %struct.tgec_regs* }
%struct.tgec_regs = type { i32 }

@TGEC_IMASK_MDIO_SCAN_EVENT = common dso_local global i32 0, align 4
@TGEC_IMASK_MDIO_CMD_CMPL = common dso_local global i32 0, align 4
@TGEC_IMASK_REM_FAULT = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_REM_FAULT = common dso_local global i32 0, align 4
@TGEC_IMASK_LOC_FAULT = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_LOC_FAULT = common dso_local global i32 0, align 4
@TGEC_IMASK_TX_ECC_ER = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_1TX_ECC_ER = common dso_local global i32 0, align 4
@TGEC_IMASK_TX_FIFO_UNFL = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_TX_FIFO_UNFL = common dso_local global i32 0, align 4
@TGEC_IMASK_TX_FIFO_OVFL = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_TX_FIFO_OVFL = common dso_local global i32 0, align 4
@TGEC_IMASK_TX_ER = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_TX_ER = common dso_local global i32 0, align 4
@TGEC_IMASK_RX_FIFO_OVFL = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_RX_FIFO_OVFL = common dso_local global i32 0, align 4
@TGEC_IMASK_RX_ECC_ER = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_RX_ECC_ER = common dso_local global i32 0, align 4
@TGEC_IMASK_RX_JAB_FRM = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_RX_JAB_FRM = common dso_local global i32 0, align 4
@TGEC_IMASK_RX_OVRSZ_FRM = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_RX_OVRSZ_FRM = common dso_local global i32 0, align 4
@TGEC_IMASK_RX_RUNT_FRM = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_RX_RUNT_FRM = common dso_local global i32 0, align 4
@TGEC_IMASK_RX_FRAG_FRM = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_RX_FRAG_FRM = common dso_local global i32 0, align 4
@TGEC_IMASK_RX_LEN_ER = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_RX_LEN_ER = common dso_local global i32 0, align 4
@TGEC_IMASK_RX_CRC_ER = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_RX_CRC_ER = common dso_local global i32 0, align 4
@TGEC_IMASK_RX_ALIGN_ER = common dso_local global i32 0, align 4
@e_FM_MAC_EX_10G_RX_ALIGN_ER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @TgecErrException to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TgecErrException(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tgec_regs*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %3, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load %struct.tgec_regs*, %struct.tgec_regs** %9, align 8
  store %struct.tgec_regs* %10, %struct.tgec_regs** %5, align 8
  %11 = load %struct.tgec_regs*, %struct.tgec_regs** %5, align 8
  %12 = load i32, i32* @TGEC_IMASK_MDIO_SCAN_EVENT, align 4
  %13 = load i32, i32* @TGEC_IMASK_MDIO_CMD_CMPL, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = call i32 @fman_tgec_get_event(%struct.tgec_regs* %11, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.tgec_regs*, %struct.tgec_regs** %5, align 8
  %18 = call i32 @fman_tgec_get_interrupt_mask(%struct.tgec_regs* %17)
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.tgec_regs*, %struct.tgec_regs** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @fman_tgec_ack_event(%struct.tgec_regs* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @TGEC_IMASK_REM_FAULT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @e_FM_MAC_EX_10G_REM_FAULT, align 4
  %36 = call i32 %31(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @TGEC_IMASK_LOC_FAULT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @e_FM_MAC_EX_10G_LOC_FAULT, align 4
  %50 = call i32 %45(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @TGEC_IMASK_TX_ECC_ER, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32 (i32, i32)*, i32 (i32, i32)** %58, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @e_FM_MAC_EX_10G_1TX_ECC_ER, align 4
  %64 = call i32 %59(i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %51
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @TGEC_IMASK_TX_FIFO_UNFL, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %65
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32 (i32, i32)*, i32 (i32, i32)** %72, align 8
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @e_FM_MAC_EX_10G_TX_FIFO_UNFL, align 4
  %78 = call i32 %73(i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %70, %65
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @TGEC_IMASK_TX_FIFO_OVFL, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32 (i32, i32)*, i32 (i32, i32)** %86, align 8
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @e_FM_MAC_EX_10G_TX_FIFO_OVFL, align 4
  %92 = call i32 %87(i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %84, %79
  %94 = load i32, i32* %4, align 4
  %95 = load i32, i32* @TGEC_IMASK_TX_ER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %93
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32 (i32, i32)*, i32 (i32, i32)** %100, align 8
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @e_FM_MAC_EX_10G_TX_ER, align 4
  %106 = call i32 %101(i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %98, %93
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* @TGEC_IMASK_RX_FIFO_OVFL, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %107
  %113 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32 (i32, i32)*, i32 (i32, i32)** %114, align 8
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @e_FM_MAC_EX_10G_RX_FIFO_OVFL, align 4
  %120 = call i32 %115(i32 %118, i32 %119)
  br label %121

121:                                              ; preds = %112, %107
  %122 = load i32, i32* %4, align 4
  %123 = load i32, i32* @TGEC_IMASK_RX_ECC_ER, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %135

126:                                              ; preds = %121
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32 (i32, i32)*, i32 (i32, i32)** %128, align 8
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @e_FM_MAC_EX_10G_RX_ECC_ER, align 4
  %134 = call i32 %129(i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %126, %121
  %136 = load i32, i32* %4, align 4
  %137 = load i32, i32* @TGEC_IMASK_RX_JAB_FRM, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %135
  %141 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 1
  %143 = load i32 (i32, i32)*, i32 (i32, i32)** %142, align 8
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @e_FM_MAC_EX_10G_RX_JAB_FRM, align 4
  %148 = call i32 %143(i32 %146, i32 %147)
  br label %149

149:                                              ; preds = %140, %135
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @TGEC_IMASK_RX_OVRSZ_FRM, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %149
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 1
  %157 = load i32 (i32, i32)*, i32 (i32, i32)** %156, align 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @e_FM_MAC_EX_10G_RX_OVRSZ_FRM, align 4
  %162 = call i32 %157(i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %154, %149
  %164 = load i32, i32* %4, align 4
  %165 = load i32, i32* @TGEC_IMASK_RX_RUNT_FRM, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 1
  %171 = load i32 (i32, i32)*, i32 (i32, i32)** %170, align 8
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @e_FM_MAC_EX_10G_RX_RUNT_FRM, align 4
  %176 = call i32 %171(i32 %174, i32 %175)
  br label %177

177:                                              ; preds = %168, %163
  %178 = load i32, i32* %4, align 4
  %179 = load i32, i32* @TGEC_IMASK_RX_FRAG_FRM, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %191

182:                                              ; preds = %177
  %183 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 1
  %185 = load i32 (i32, i32)*, i32 (i32, i32)** %184, align 8
  %186 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @e_FM_MAC_EX_10G_RX_FRAG_FRM, align 4
  %190 = call i32 %185(i32 %188, i32 %189)
  br label %191

191:                                              ; preds = %182, %177
  %192 = load i32, i32* %4, align 4
  %193 = load i32, i32* @TGEC_IMASK_RX_LEN_ER, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %205

196:                                              ; preds = %191
  %197 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i32 (i32, i32)*, i32 (i32, i32)** %198, align 8
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @e_FM_MAC_EX_10G_RX_LEN_ER, align 4
  %204 = call i32 %199(i32 %202, i32 %203)
  br label %205

205:                                              ; preds = %196, %191
  %206 = load i32, i32* %4, align 4
  %207 = load i32, i32* @TGEC_IMASK_RX_CRC_ER, align 4
  %208 = and i32 %206, %207
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %205
  %211 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %211, i32 0, i32 1
  %213 = load i32 (i32, i32)*, i32 (i32, i32)** %212, align 8
  %214 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @e_FM_MAC_EX_10G_RX_CRC_ER, align 4
  %218 = call i32 %213(i32 %216, i32 %217)
  br label %219

219:                                              ; preds = %210, %205
  %220 = load i32, i32* %4, align 4
  %221 = load i32, i32* @TGEC_IMASK_RX_ALIGN_ER, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %219
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i32 0, i32 1
  %227 = load i32 (i32, i32)*, i32 (i32, i32)** %226, align 8
  %228 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @e_FM_MAC_EX_10G_RX_ALIGN_ER, align 4
  %232 = call i32 %227(i32 %230, i32 %231)
  br label %233

233:                                              ; preds = %224, %219
  ret void
}

declare dso_local i32 @fman_tgec_get_event(%struct.tgec_regs*, i32) #1

declare dso_local i32 @fman_tgec_get_interrupt_mask(%struct.tgec_regs*) #1

declare dso_local i32 @fman_tgec_ack_event(%struct.tgec_regs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
