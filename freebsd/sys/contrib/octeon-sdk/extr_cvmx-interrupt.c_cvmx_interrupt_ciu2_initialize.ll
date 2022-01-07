; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c_cvmx_interrupt_ciu2_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c_cvmx_interrupt_ciu2_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cvmx_ciu2_wrkq_to_irq = common dso_local global i32* null, align 8
@cvmx_ciu2_wdog_to_irq = common dso_local global i32* null, align 8
@cvmx_ciu2_rml_to_irq = common dso_local global i32* null, align 8
@cvmx_ciu2_mio_to_irq = common dso_local global i32* null, align 8
@cvmx_ciu2_io_to_irq = common dso_local global i32* null, align 8
@cvmx_ciu2_mem_to_irq = common dso_local global i32* null, align 8
@cvmx_ciu2_eth_to_irq = common dso_local global i32* null, align 8
@cvmx_ciu2_gpio_to_irq = common dso_local global i32* null, align 8
@cvmx_ciu2_mbox_to_irq = common dso_local global i32* null, align 8
@CVMX_IRQ_WORKQ0 = common dso_local global i64 0, align 8
@CVMX_IRQ_GPIO0 = common dso_local global i64 0, align 8
@CVMX_IRQ_MBOX0 = common dso_local global i64 0, align 8
@CVMX_IRQ_UART0 = common dso_local global i64 0, align 8
@CVMX_IRQ_PCI_INT0 = common dso_local global i64 0, align 8
@CVMX_IRQ_PCI_MSI0 = common dso_local global i64 0, align 8
@CVMX_IRQ_TWSI0 = common dso_local global i64 0, align 8
@CVMX_IRQ_TRACE0 = common dso_local global i64 0, align 8
@CVMX_IRQ_GMX_DRP0 = common dso_local global i64 0, align 8
@CVMX_IRQ_IPD_DRP = common dso_local global i64 0, align 8
@CVMX_IRQ_TIMER0 = common dso_local global i64 0, align 8
@CVMX_IRQ_USB0 = common dso_local global i64 0, align 8
@CVMX_IRQ_IPDPPTHR = common dso_local global i64 0, align 8
@CVMX_IRQ_MII0 = common dso_local global i64 0, align 8
@CVMX_IRQ_BOOTDMA = common dso_local global i64 0, align 8
@CVMX_IRQ_WDOG0 = common dso_local global i64 0, align 8
@CVMX_IRQ_NAND = common dso_local global i64 0, align 8
@CVMX_IRQ_MIO = common dso_local global i64 0, align 8
@CVMX_IRQ_IOB = common dso_local global i64 0, align 8
@CVMX_IRQ_FPA = common dso_local global i64 0, align 8
@CVMX_IRQ_POW = common dso_local global i64 0, align 8
@CVMX_IRQ_L2C = common dso_local global i64 0, align 8
@CVMX_IRQ_IPD = common dso_local global i64 0, align 8
@CVMX_IRQ_PIP = common dso_local global i64 0, align 8
@CVMX_IRQ_PKO = common dso_local global i64 0, align 8
@CVMX_IRQ_ZIP = common dso_local global i64 0, align 8
@CVMX_IRQ_TIM = common dso_local global i64 0, align 8
@CVMX_IRQ_RAD = common dso_local global i64 0, align 8
@CVMX_IRQ_KEY = common dso_local global i64 0, align 8
@CVMX_IRQ_DFA = common dso_local global i64 0, align 8
@CVMX_IRQ_USBCTL = common dso_local global i64 0, align 8
@CVMX_IRQ_SLI = common dso_local global i64 0, align 8
@CVMX_IRQ_DPI = common dso_local global i64 0, align 8
@CVMX_IRQ_DPI_DMA = common dso_local global i64 0, align 8
@CVMX_IRQ_AGX0 = common dso_local global i64 0, align 8
@CVMX_IRQ_AGL = common dso_local global i64 0, align 8
@CVMX_IRQ_PTP = common dso_local global i64 0, align 8
@CVMX_IRQ_PEM0 = common dso_local global i64 0, align 8
@CVMX_IRQ_PEM1 = common dso_local global i64 0, align 8
@CVMX_IRQ_LMC0 = common dso_local global i64 0, align 8
@CVMX_IRQ_RST = common dso_local global i64 0, align 8
@CVMX_IRQ_ILK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @cvmx_interrupt_ciu2_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_interrupt_ciu2_initialize(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = call i32 (...) @cvmx_get_core_num()
  %5 = call i32 @CVMX_CIU2_EN_PPX_IP2_WRKQ(i32 %4)
  %6 = call i32 @cvmx_write_csr(i32 %5, i32 0)
  %7 = call i32 (...) @cvmx_get_core_num()
  %8 = call i32 @CVMX_CIU2_EN_PPX_IP3_WRKQ(i32 %7)
  %9 = call i32 @cvmx_write_csr(i32 %8, i32 0)
  %10 = call i32 (...) @cvmx_get_core_num()
  %11 = call i32 @CVMX_CIU2_EN_PPX_IP4_WRKQ(i32 %10)
  %12 = call i32 @cvmx_write_csr(i32 %11, i32 0)
  %13 = call i32 (...) @cvmx_get_core_num()
  %14 = call i32 @CVMX_CIU2_EN_PPX_IP2_WDOG(i32 %13)
  %15 = call i32 @cvmx_write_csr(i32 %14, i32 0)
  %16 = call i32 (...) @cvmx_get_core_num()
  %17 = call i32 @CVMX_CIU2_EN_PPX_IP3_WDOG(i32 %16)
  %18 = call i32 @cvmx_write_csr(i32 %17, i32 0)
  %19 = call i32 (...) @cvmx_get_core_num()
  %20 = call i32 @CVMX_CIU2_EN_PPX_IP4_WDOG(i32 %19)
  %21 = call i32 @cvmx_write_csr(i32 %20, i32 0)
  %22 = call i32 (...) @cvmx_get_core_num()
  %23 = call i32 @CVMX_CIU2_EN_PPX_IP2_RML(i32 %22)
  %24 = call i32 @cvmx_write_csr(i32 %23, i32 0)
  %25 = call i32 (...) @cvmx_get_core_num()
  %26 = call i32 @CVMX_CIU2_EN_PPX_IP3_RML(i32 %25)
  %27 = call i32 @cvmx_write_csr(i32 %26, i32 0)
  %28 = call i32 (...) @cvmx_get_core_num()
  %29 = call i32 @CVMX_CIU2_EN_PPX_IP4_RML(i32 %28)
  %30 = call i32 @cvmx_write_csr(i32 %29, i32 0)
  %31 = call i32 (...) @cvmx_get_core_num()
  %32 = call i32 @CVMX_CIU2_EN_PPX_IP2_MIO(i32 %31)
  %33 = call i32 @cvmx_write_csr(i32 %32, i32 0)
  %34 = call i32 (...) @cvmx_get_core_num()
  %35 = call i32 @CVMX_CIU2_EN_PPX_IP3_MIO(i32 %34)
  %36 = call i32 @cvmx_write_csr(i32 %35, i32 0)
  %37 = call i32 (...) @cvmx_get_core_num()
  %38 = call i32 @CVMX_CIU2_EN_PPX_IP4_MIO(i32 %37)
  %39 = call i32 @cvmx_write_csr(i32 %38, i32 0)
  %40 = call i32 (...) @cvmx_get_core_num()
  %41 = call i32 @CVMX_CIU2_EN_PPX_IP2_IO(i32 %40)
  %42 = call i32 @cvmx_write_csr(i32 %41, i32 0)
  %43 = call i32 (...) @cvmx_get_core_num()
  %44 = call i32 @CVMX_CIU2_EN_PPX_IP3_IO(i32 %43)
  %45 = call i32 @cvmx_write_csr(i32 %44, i32 0)
  %46 = call i32 (...) @cvmx_get_core_num()
  %47 = call i32 @CVMX_CIU2_EN_PPX_IP4_IO(i32 %46)
  %48 = call i32 @cvmx_write_csr(i32 %47, i32 0)
  %49 = call i32 (...) @cvmx_get_core_num()
  %50 = call i32 @CVMX_CIU2_EN_PPX_IP2_MEM(i32 %49)
  %51 = call i32 @cvmx_write_csr(i32 %50, i32 0)
  %52 = call i32 (...) @cvmx_get_core_num()
  %53 = call i32 @CVMX_CIU2_EN_PPX_IP3_MEM(i32 %52)
  %54 = call i32 @cvmx_write_csr(i32 %53, i32 0)
  %55 = call i32 (...) @cvmx_get_core_num()
  %56 = call i32 @CVMX_CIU2_EN_PPX_IP4_MEM(i32 %55)
  %57 = call i32 @cvmx_write_csr(i32 %56, i32 0)
  %58 = call i32 (...) @cvmx_get_core_num()
  %59 = call i32 @CVMX_CIU2_EN_PPX_IP2_PKT(i32 %58)
  %60 = call i32 @cvmx_write_csr(i32 %59, i32 0)
  %61 = call i32 (...) @cvmx_get_core_num()
  %62 = call i32 @CVMX_CIU2_EN_PPX_IP3_PKT(i32 %61)
  %63 = call i32 @cvmx_write_csr(i32 %62, i32 0)
  %64 = call i32 (...) @cvmx_get_core_num()
  %65 = call i32 @CVMX_CIU2_EN_PPX_IP4_PKT(i32 %64)
  %66 = call i32 @cvmx_write_csr(i32 %65, i32 0)
  %67 = call i32 (...) @cvmx_get_core_num()
  %68 = call i32 @CVMX_CIU2_EN_PPX_IP2_GPIO(i32 %67)
  %69 = call i32 @cvmx_write_csr(i32 %68, i32 0)
  %70 = call i32 (...) @cvmx_get_core_num()
  %71 = call i32 @CVMX_CIU2_EN_PPX_IP3_GPIO(i32 %70)
  %72 = call i32 @cvmx_write_csr(i32 %71, i32 0)
  %73 = call i32 (...) @cvmx_get_core_num()
  %74 = call i32 @CVMX_CIU2_EN_PPX_IP4_GPIO(i32 %73)
  %75 = call i32 @cvmx_write_csr(i32 %74, i32 0)
  %76 = call i32 (...) @cvmx_get_core_num()
  %77 = call i32 @CVMX_CIU2_EN_PPX_IP2_MBOX(i32 %76)
  %78 = call i32 @cvmx_write_csr(i32 %77, i32 0)
  %79 = call i32 (...) @cvmx_get_core_num()
  %80 = call i32 @CVMX_CIU2_EN_PPX_IP3_MBOX(i32 %79)
  %81 = call i32 @cvmx_write_csr(i32 %80, i32 0)
  %82 = call i32 (...) @cvmx_get_core_num()
  %83 = call i32 @CVMX_CIU2_EN_PPX_IP4_MBOX(i32 %82)
  %84 = call i32 @cvmx_write_csr(i32 %83, i32 0)
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @cvmx_coremask_first_core(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %1
  %91 = call i64 (...) @is_core_being_hot_plugged()
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90, %1
  br label %386

94:                                               ; preds = %90
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %135, %94
  %96 = load i32, i32* %3, align 4
  %97 = icmp slt i32 %96, 64
  br i1 %97, label %98, label %138

98:                                               ; preds = %95
  %99 = load i32*, i32** @cvmx_ciu2_wrkq_to_irq, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 255, i32* %102, align 4
  %103 = load i32*, i32** @cvmx_ciu2_wdog_to_irq, align 8
  %104 = load i32, i32* %3, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  store i32 255, i32* %106, align 4
  %107 = load i32*, i32** @cvmx_ciu2_rml_to_irq, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 255, i32* %110, align 4
  %111 = load i32*, i32** @cvmx_ciu2_mio_to_irq, align 8
  %112 = load i32, i32* %3, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 255, i32* %114, align 4
  %115 = load i32*, i32** @cvmx_ciu2_io_to_irq, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 255, i32* %118, align 4
  %119 = load i32*, i32** @cvmx_ciu2_mem_to_irq, align 8
  %120 = load i32, i32* %3, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 255, i32* %122, align 4
  %123 = load i32*, i32** @cvmx_ciu2_eth_to_irq, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  store i32 255, i32* %126, align 4
  %127 = load i32*, i32** @cvmx_ciu2_gpio_to_irq, align 8
  %128 = load i32, i32* %3, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 255, i32* %130, align 4
  %131 = load i32*, i32** @cvmx_ciu2_mbox_to_irq, align 8
  %132 = load i32, i32* %3, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  store i32 255, i32* %134, align 4
  br label %135

135:                                              ; preds = %98
  %136 = load i32, i32* %3, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %3, align 4
  br label %95

138:                                              ; preds = %95
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %149, %138
  %140 = load i32, i32* %3, align 4
  %141 = icmp slt i32 %140, 64
  br i1 %141, label %142, label %152

142:                                              ; preds = %139
  %143 = load i64, i64* @CVMX_IRQ_WORKQ0, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load i32, i32* %3, align 4
  %148 = call i32 @__cvmx_interrupt_set_mapping(i64 %146, i32 0, i32 %147)
  br label %149

149:                                              ; preds = %142
  %150 = load i32, i32* %3, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %3, align 4
  br label %139

152:                                              ; preds = %139
  store i32 0, i32* %3, align 4
  br label %153

153:                                              ; preds = %163, %152
  %154 = load i32, i32* %3, align 4
  %155 = icmp slt i32 %154, 16
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load i64, i64* @CVMX_IRQ_GPIO0, align 8
  %158 = load i32, i32* %3, align 4
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %157, %159
  %161 = load i32, i32* %3, align 4
  %162 = call i32 @__cvmx_interrupt_set_mapping(i64 %160, i32 7, i32 %161)
  br label %163

163:                                              ; preds = %156
  %164 = load i32, i32* %3, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %3, align 4
  br label %153

166:                                              ; preds = %153
  store i32 0, i32* %3, align 4
  br label %167

167:                                              ; preds = %177, %166
  %168 = load i32, i32* %3, align 4
  %169 = icmp slt i32 %168, 4
  br i1 %169, label %170, label %180

170:                                              ; preds = %167
  %171 = load i64, i64* @CVMX_IRQ_MBOX0, align 8
  %172 = load i32, i32* %3, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %171, %173
  %175 = load i32, i32* %3, align 4
  %176 = call i32 @__cvmx_interrupt_set_mapping(i64 %174, i32 60, i32 %175)
  br label %177

177:                                              ; preds = %170
  %178 = load i32, i32* %3, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %3, align 4
  br label %167

180:                                              ; preds = %167
  store i32 0, i32* %3, align 4
  br label %181

181:                                              ; preds = %192, %180
  %182 = load i32, i32* %3, align 4
  %183 = icmp slt i32 %182, 2
  br i1 %183, label %184, label %195

184:                                              ; preds = %181
  %185 = load i64, i64* @CVMX_IRQ_UART0, align 8
  %186 = load i32, i32* %3, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = load i32, i32* %3, align 4
  %190 = add nsw i32 36, %189
  %191 = call i32 @__cvmx_interrupt_set_mapping(i64 %188, i32 3, i32 %190)
  br label %192

192:                                              ; preds = %184
  %193 = load i32, i32* %3, align 4
  %194 = add nsw i32 %193, 1
  store i32 %194, i32* %3, align 4
  br label %181

195:                                              ; preds = %181
  store i32 0, i32* %3, align 4
  br label %196

196:                                              ; preds = %207, %195
  %197 = load i32, i32* %3, align 4
  %198 = icmp slt i32 %197, 4
  br i1 %198, label %199, label %210

199:                                              ; preds = %196
  %200 = load i64, i64* @CVMX_IRQ_PCI_INT0, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = add nsw i64 %200, %202
  %204 = load i32, i32* %3, align 4
  %205 = add nsw i32 16, %204
  %206 = call i32 @__cvmx_interrupt_set_mapping(i64 %203, i32 4, i32 %205)
  br label %207

207:                                              ; preds = %199
  %208 = load i32, i32* %3, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %3, align 4
  br label %196

210:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %211

211:                                              ; preds = %222, %210
  %212 = load i32, i32* %3, align 4
  %213 = icmp slt i32 %212, 4
  br i1 %213, label %214, label %225

214:                                              ; preds = %211
  %215 = load i64, i64* @CVMX_IRQ_PCI_MSI0, align 8
  %216 = load i32, i32* %3, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %215, %217
  %219 = load i32, i32* %3, align 4
  %220 = add nsw i32 8, %219
  %221 = call i32 @__cvmx_interrupt_set_mapping(i64 %218, i32 4, i32 %220)
  br label %222

222:                                              ; preds = %214
  %223 = load i32, i32* %3, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %3, align 4
  br label %211

225:                                              ; preds = %211
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %237, %225
  %227 = load i32, i32* %3, align 4
  %228 = icmp slt i32 %227, 2
  br i1 %228, label %229, label %240

229:                                              ; preds = %226
  %230 = load i64, i64* @CVMX_IRQ_TWSI0, align 8
  %231 = load i32, i32* %3, align 4
  %232 = sext i32 %231 to i64
  %233 = add nsw i64 %230, %232
  %234 = load i32, i32* %3, align 4
  %235 = add nsw i32 32, %234
  %236 = call i32 @__cvmx_interrupt_set_mapping(i64 %233, i32 3, i32 %235)
  br label %237

237:                                              ; preds = %229
  %238 = load i32, i32* %3, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %3, align 4
  br label %226

240:                                              ; preds = %226
  store i32 0, i32* %3, align 4
  br label %241

241:                                              ; preds = %252, %240
  %242 = load i32, i32* %3, align 4
  %243 = icmp slt i32 %242, 4
  br i1 %243, label %244, label %255

244:                                              ; preds = %241
  %245 = load i64, i64* @CVMX_IRQ_TRACE0, align 8
  %246 = load i32, i32* %3, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %245, %247
  %249 = load i32, i32* %3, align 4
  %250 = add nsw i32 52, %249
  %251 = call i32 @__cvmx_interrupt_set_mapping(i64 %248, i32 2, i32 %250)
  br label %252

252:                                              ; preds = %244
  %253 = load i32, i32* %3, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %3, align 4
  br label %241

255:                                              ; preds = %241
  store i32 0, i32* %3, align 4
  br label %256

256:                                              ; preds = %267, %255
  %257 = load i32, i32* %3, align 4
  %258 = icmp slt i32 %257, 5
  br i1 %258, label %259, label %270

259:                                              ; preds = %256
  %260 = load i64, i64* @CVMX_IRQ_GMX_DRP0, align 8
  %261 = load i32, i32* %3, align 4
  %262 = sext i32 %261 to i64
  %263 = add nsw i64 %260, %262
  %264 = load i32, i32* %3, align 4
  %265 = add nsw i32 8, %264
  %266 = call i32 @__cvmx_interrupt_set_mapping(i64 %263, i32 6, i32 %265)
  br label %267

267:                                              ; preds = %259
  %268 = load i32, i32* %3, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %3, align 4
  br label %256

270:                                              ; preds = %256
  %271 = load i64, i64* @CVMX_IRQ_IPD_DRP, align 8
  %272 = call i32 @__cvmx_interrupt_set_mapping(i64 %271, i32 3, i32 2)
  store i32 0, i32* %3, align 4
  br label %273

273:                                              ; preds = %284, %270
  %274 = load i32, i32* %3, align 4
  %275 = icmp slt i32 %274, 4
  br i1 %275, label %276, label %287

276:                                              ; preds = %273
  %277 = load i64, i64* @CVMX_IRQ_TIMER0, align 8
  %278 = load i32, i32* %3, align 4
  %279 = sext i32 %278 to i64
  %280 = add nsw i64 %277, %279
  %281 = load i32, i32* %3, align 4
  %282 = add nsw i32 8, %281
  %283 = call i32 @__cvmx_interrupt_set_mapping(i64 %280, i32 3, i32 %282)
  br label %284

284:                                              ; preds = %276
  %285 = load i32, i32* %3, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %3, align 4
  br label %273

287:                                              ; preds = %273
  %288 = load i64, i64* @CVMX_IRQ_USB0, align 8
  %289 = call i32 @__cvmx_interrupt_set_mapping(i64 %288, i32 3, i32 44)
  %290 = load i64, i64* @CVMX_IRQ_IPDPPTHR, align 8
  %291 = call i32 @__cvmx_interrupt_set_mapping(i64 %290, i32 3, i32 0)
  %292 = load i64, i64* @CVMX_IRQ_MII0, align 8
  %293 = call i32 @__cvmx_interrupt_set_mapping(i64 %292, i32 6, i32 40)
  %294 = load i64, i64* @CVMX_IRQ_BOOTDMA, align 8
  %295 = call i32 @__cvmx_interrupt_set_mapping(i64 %294, i32 3, i32 18)
  store i32 0, i32* %3, align 4
  br label %296

296:                                              ; preds = %306, %287
  %297 = load i32, i32* %3, align 4
  %298 = icmp slt i32 %297, 32
  br i1 %298, label %299, label %309

299:                                              ; preds = %296
  %300 = load i64, i64* @CVMX_IRQ_WDOG0, align 8
  %301 = load i32, i32* %3, align 4
  %302 = sext i32 %301 to i64
  %303 = add nsw i64 %300, %302
  %304 = load i32, i32* %3, align 4
  %305 = call i32 @__cvmx_interrupt_set_mapping(i64 %303, i32 1, i32 %304)
  br label %306

306:                                              ; preds = %299
  %307 = load i32, i32* %3, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %3, align 4
  br label %296

309:                                              ; preds = %296
  %310 = load i64, i64* @CVMX_IRQ_NAND, align 8
  %311 = call i32 @__cvmx_interrupt_set_mapping(i64 %310, i32 3, i32 16)
  %312 = load i64, i64* @CVMX_IRQ_MIO, align 8
  %313 = call i32 @__cvmx_interrupt_set_mapping(i64 %312, i32 3, i32 17)
  %314 = load i64, i64* @CVMX_IRQ_IOB, align 8
  %315 = call i32 @__cvmx_interrupt_set_mapping(i64 %314, i32 2, i32 0)
  %316 = load i64, i64* @CVMX_IRQ_FPA, align 8
  %317 = call i32 @__cvmx_interrupt_set_mapping(i64 %316, i32 2, i32 4)
  %318 = load i64, i64* @CVMX_IRQ_POW, align 8
  %319 = call i32 @__cvmx_interrupt_set_mapping(i64 %318, i32 2, i32 16)
  %320 = load i64, i64* @CVMX_IRQ_L2C, align 8
  %321 = call i32 @__cvmx_interrupt_set_mapping(i64 %320, i32 2, i32 48)
  %322 = load i64, i64* @CVMX_IRQ_IPD, align 8
  %323 = call i32 @__cvmx_interrupt_set_mapping(i64 %322, i32 2, i32 5)
  %324 = load i64, i64* @CVMX_IRQ_PIP, align 8
  %325 = call i32 @__cvmx_interrupt_set_mapping(i64 %324, i32 2, i32 6)
  %326 = load i64, i64* @CVMX_IRQ_PKO, align 8
  %327 = call i32 @__cvmx_interrupt_set_mapping(i64 %326, i32 2, i32 7)
  %328 = load i64, i64* @CVMX_IRQ_ZIP, align 8
  %329 = call i32 @__cvmx_interrupt_set_mapping(i64 %328, i32 2, i32 24)
  %330 = load i64, i64* @CVMX_IRQ_TIM, align 8
  %331 = call i32 @__cvmx_interrupt_set_mapping(i64 %330, i32 2, i32 28)
  %332 = load i64, i64* @CVMX_IRQ_RAD, align 8
  %333 = call i32 @__cvmx_interrupt_set_mapping(i64 %332, i32 2, i32 29)
  %334 = load i64, i64* @CVMX_IRQ_KEY, align 8
  %335 = call i32 @__cvmx_interrupt_set_mapping(i64 %334, i32 2, i32 30)
  %336 = load i64, i64* @CVMX_IRQ_DFA, align 8
  %337 = call i32 @__cvmx_interrupt_set_mapping(i64 %336, i32 2, i32 40)
  %338 = load i64, i64* @CVMX_IRQ_USBCTL, align 8
  %339 = call i32 @__cvmx_interrupt_set_mapping(i64 %338, i32 3, i32 40)
  %340 = load i64, i64* @CVMX_IRQ_SLI, align 8
  %341 = call i32 @__cvmx_interrupt_set_mapping(i64 %340, i32 2, i32 32)
  %342 = load i64, i64* @CVMX_IRQ_DPI, align 8
  %343 = call i32 @__cvmx_interrupt_set_mapping(i64 %342, i32 2, i32 33)
  %344 = load i64, i64* @CVMX_IRQ_DPI_DMA, align 8
  %345 = call i32 @__cvmx_interrupt_set_mapping(i64 %344, i32 2, i32 36)
  store i32 0, i32* %3, align 4
  br label %346

346:                                              ; preds = %356, %309
  %347 = load i32, i32* %3, align 4
  %348 = icmp slt i32 %347, 5
  br i1 %348, label %349, label %359

349:                                              ; preds = %346
  %350 = load i64, i64* @CVMX_IRQ_AGX0, align 8
  %351 = load i32, i32* %3, align 4
  %352 = sext i32 %351 to i64
  %353 = add nsw i64 %350, %352
  %354 = load i32, i32* %3, align 4
  %355 = call i32 @__cvmx_interrupt_set_mapping(i64 %353, i32 6, i32 %354)
  br label %356

356:                                              ; preds = %349
  %357 = load i32, i32* %3, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %3, align 4
  br label %346

359:                                              ; preds = %346
  %360 = load i64, i64* @CVMX_IRQ_AGL, align 8
  %361 = call i32 @__cvmx_interrupt_set_mapping(i64 %360, i32 6, i32 32)
  %362 = load i64, i64* @CVMX_IRQ_PTP, align 8
  %363 = call i32 @__cvmx_interrupt_set_mapping(i64 %362, i32 3, i32 48)
  %364 = load i64, i64* @CVMX_IRQ_PEM0, align 8
  %365 = call i32 @__cvmx_interrupt_set_mapping(i64 %364, i32 4, i32 32)
  %366 = load i64, i64* @CVMX_IRQ_PEM1, align 8
  %367 = call i32 @__cvmx_interrupt_set_mapping(i64 %366, i32 4, i32 32)
  store i32 0, i32* %3, align 4
  br label %368

368:                                              ; preds = %378, %359
  %369 = load i32, i32* %3, align 4
  %370 = icmp slt i32 %369, 4
  br i1 %370, label %371, label %381

371:                                              ; preds = %368
  %372 = load i64, i64* @CVMX_IRQ_LMC0, align 8
  %373 = load i32, i32* %3, align 4
  %374 = sext i32 %373 to i64
  %375 = add nsw i64 %372, %374
  %376 = load i32, i32* %3, align 4
  %377 = call i32 @__cvmx_interrupt_set_mapping(i64 %375, i32 5, i32 %376)
  br label %378

378:                                              ; preds = %371
  %379 = load i32, i32* %3, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %3, align 4
  br label %368

381:                                              ; preds = %368
  %382 = load i64, i64* @CVMX_IRQ_RST, align 8
  %383 = call i32 @__cvmx_interrupt_set_mapping(i64 %382, i32 3, i32 63)
  %384 = load i64, i64* @CVMX_IRQ_ILK, align 8
  %385 = call i32 @__cvmx_interrupt_set_mapping(i64 %384, i32 6, i32 48)
  br label %386

386:                                              ; preds = %381, %93
  ret void
}

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_WRKQ(i32) #1

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP3_WRKQ(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP4_WRKQ(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_WDOG(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP3_WDOG(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP4_WDOG(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_RML(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP3_RML(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP4_RML(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_MIO(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP3_MIO(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP4_MIO(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_IO(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP3_IO(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP4_IO(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_MEM(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP3_MEM(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP4_MEM(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_PKT(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP3_PKT(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP4_PKT(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_GPIO(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP3_GPIO(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP4_GPIO(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP2_MBOX(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP3_MBOX(i32) #1

declare dso_local i32 @CVMX_CIU2_EN_PPX_IP4_MBOX(i32) #1

declare dso_local i32 @cvmx_coremask_first_core(i32) #1

declare dso_local i64 @is_core_being_hot_plugged(...) #1

declare dso_local i32 @__cvmx_interrupt_set_mapping(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
