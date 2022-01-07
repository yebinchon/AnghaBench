; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c_cvmx_interrupt_ciu_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c_cvmx_interrupt_ciu_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@cvmx_interrupt_ciu_en0_mirror = common dso_local global i64 0, align 8
@cvmx_interrupt_ciu_en1_mirror = common dso_local global i64 0, align 8
@cvmx_interrupt_ciu_61xx_timer_mirror = common dso_local global i64 0, align 8
@OCTEON_CN61XX = common dso_local global i32 0, align 4
@OCTEON_CN66XX_PASS1_2 = common dso_local global i32 0, align 4
@cvmx_ciu_en0_to_irq = common dso_local global i32* null, align 8
@cvmx_ciu_en1_to_irq = common dso_local global i32* null, align 8
@cvmx_ciu_61xx_timer_to_irq = common dso_local global i32* null, align 8
@CVMX_IRQ_WORKQ0 = common dso_local global i64 0, align 8
@CVMX_IRQ_GPIO0 = common dso_local global i64 0, align 8
@CVMX_IRQ_MBOX0 = common dso_local global i64 0, align 8
@CVMX_IRQ_UART0 = common dso_local global i64 0, align 8
@CVMX_IRQ_PCI_INT0 = common dso_local global i64 0, align 8
@CVMX_IRQ_PCI_MSI0 = common dso_local global i64 0, align 8
@CVMX_IRQ_TWSI0 = common dso_local global i64 0, align 8
@CVMX_IRQ_RML = common dso_local global i64 0, align 8
@CVMX_IRQ_TRACE0 = common dso_local global i64 0, align 8
@CVMX_IRQ_GMX_DRP0 = common dso_local global i64 0, align 8
@CVMX_IRQ_IPD_DRP = common dso_local global i64 0, align 8
@CVMX_IRQ_KEY_ZERO = common dso_local global i64 0, align 8
@CVMX_IRQ_TIMER0 = common dso_local global i64 0, align 8
@CVMX_IRQ_TIMER4 = common dso_local global i64 0, align 8
@CVMX_IRQ_USB0 = common dso_local global i64 0, align 8
@CVMX_IRQ_PCM = common dso_local global i64 0, align 8
@CVMX_IRQ_MPI = common dso_local global i64 0, align 8
@CVMX_IRQ_POWIQ = common dso_local global i64 0, align 8
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
@CVMX_IRQ_AGX0 = common dso_local global i64 0, align 8
@CVMX_IRQ_DPI_DMA = common dso_local global i64 0, align 8
@CVMX_IRQ_AGL = common dso_local global i64 0, align 8
@CVMX_IRQ_PTP = common dso_local global i64 0, align 8
@CVMX_IRQ_PEM0 = common dso_local global i64 0, align 8
@CVMX_IRQ_PEM1 = common dso_local global i64 0, align 8
@CVMX_IRQ_SRIO0 = common dso_local global i64 0, align 8
@CVMX_IRQ_SRIO1 = common dso_local global i64 0, align 8
@CVMX_IRQ_LMC0 = common dso_local global i64 0, align 8
@CVMX_IRQ_DFM = common dso_local global i64 0, align 8
@CVMX_IRQ_SRIO2 = common dso_local global i64 0, align 8
@CVMX_IRQ_RST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @cvmx_interrupt_ciu_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_interrupt_ciu_initialize(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = call i32 (...) @cvmx_get_core_num()
  store i32 %5, i32* %4, align 4
  store i64 0, i64* @cvmx_interrupt_ciu_en0_mirror, align 8
  store i64 0, i64* @cvmx_interrupt_ciu_en1_mirror, align 8
  store i64 0, i64* @cvmx_interrupt_ciu_61xx_timer_mirror, align 8
  %6 = load i32, i32* %4, align 4
  %7 = mul nsw i32 %6, 2
  %8 = call i32 @CVMX_CIU_INTX_EN0(i32 %7)
  %9 = load i64, i64* @cvmx_interrupt_ciu_en0_mirror, align 8
  %10 = call i32 @cvmx_write_csr(i32 %8, i64 %9)
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %11, 2
  %13 = add nsw i32 %12, 1
  %14 = call i32 @CVMX_CIU_INTX_EN0(i32 %13)
  %15 = load i64, i64* @cvmx_interrupt_ciu_en0_mirror, align 8
  %16 = call i32 @cvmx_write_csr(i32 %14, i64 %15)
  %17 = load i32, i32* %4, align 4
  %18 = mul nsw i32 %17, 2
  %19 = call i32 @CVMX_CIU_INTX_EN1(i32 %18)
  %20 = load i64, i64* @cvmx_interrupt_ciu_en1_mirror, align 8
  %21 = call i32 @cvmx_write_csr(i32 %19, i64 %20)
  %22 = load i32, i32* %4, align 4
  %23 = mul nsw i32 %22, 2
  %24 = add nsw i32 %23, 1
  %25 = call i32 @CVMX_CIU_INTX_EN1(i32 %24)
  %26 = load i64, i64* @cvmx_interrupt_ciu_en1_mirror, align 8
  %27 = call i32 @cvmx_write_csr(i32 %25, i64 %26)
  %28 = load i32, i32* @OCTEON_CN61XX, align 4
  %29 = call i64 @OCTEON_IS_MODEL(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @OCTEON_CN66XX_PASS1_2, align 4
  %33 = call i64 @OCTEON_IS_MODEL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31, %1
  %36 = call i32 (...) @cvmx_get_core_num()
  %37 = call i32 @CVMX_CIU_EN2_PPX_IP2(i32 %36)
  %38 = load i64, i64* @cvmx_interrupt_ciu_61xx_timer_mirror, align 8
  %39 = call i32 @cvmx_write_csr(i32 %37, i64 %38)
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @cvmx_coremask_first_core(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = call i64 (...) @is_core_being_hot_plugged()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %40
  br label %310

50:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %67, %50
  %52 = load i32, i32* %3, align 4
  %53 = icmp slt i32 %52, 64
  br i1 %53, label %54, label %70

54:                                               ; preds = %51
  %55 = load i32*, i32** @cvmx_ciu_en0_to_irq, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 255, i32* %58, align 4
  %59 = load i32*, i32** @cvmx_ciu_en1_to_irq, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 255, i32* %62, align 4
  %63 = load i32*, i32** @cvmx_ciu_61xx_timer_to_irq, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 255, i32* %66, align 4
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %3, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %51

70:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %81, %70
  %72 = load i32, i32* %3, align 4
  %73 = icmp slt i32 %72, 16
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i64, i64* @CVMX_IRQ_WORKQ0, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @__cvmx_interrupt_set_mapping(i64 %78, i32 0, i32 %79)
  br label %81

81:                                               ; preds = %74
  %82 = load i32, i32* %3, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %3, align 4
  br label %71

84:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %96, %84
  %86 = load i32, i32* %3, align 4
  %87 = icmp slt i32 %86, 16
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i64, i64* @CVMX_IRQ_GPIO0, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 16
  %95 = call i32 @__cvmx_interrupt_set_mapping(i64 %92, i32 0, i32 %94)
  br label %96

96:                                               ; preds = %88
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %85

99:                                               ; preds = %85
  store i32 0, i32* %3, align 4
  br label %100

100:                                              ; preds = %111, %99
  %101 = load i32, i32* %3, align 4
  %102 = icmp slt i32 %101, 2
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load i64, i64* @CVMX_IRQ_MBOX0, align 8
  %105 = load i32, i32* %3, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 32
  %110 = call i32 @__cvmx_interrupt_set_mapping(i64 %107, i32 0, i32 %109)
  br label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %3, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %3, align 4
  br label %100

114:                                              ; preds = %100
  %115 = load i64, i64* @CVMX_IRQ_UART0, align 8
  %116 = add nsw i64 %115, 0
  %117 = call i32 @__cvmx_interrupt_set_mapping(i64 %116, i32 0, i32 34)
  %118 = load i64, i64* @CVMX_IRQ_UART0, align 8
  %119 = add nsw i64 %118, 1
  %120 = call i32 @__cvmx_interrupt_set_mapping(i64 %119, i32 0, i32 35)
  %121 = load i64, i64* @CVMX_IRQ_UART0, align 8
  %122 = add nsw i64 %121, 2
  %123 = call i32 @__cvmx_interrupt_set_mapping(i64 %122, i32 1, i32 16)
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %135, %114
  %125 = load i32, i32* %3, align 4
  %126 = icmp slt i32 %125, 4
  br i1 %126, label %127, label %138

127:                                              ; preds = %124
  %128 = load i64, i64* @CVMX_IRQ_PCI_INT0, align 8
  %129 = load i32, i32* %3, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %128, %130
  %132 = load i32, i32* %3, align 4
  %133 = add nsw i32 %132, 36
  %134 = call i32 @__cvmx_interrupt_set_mapping(i64 %131, i32 0, i32 %133)
  br label %135

135:                                              ; preds = %127
  %136 = load i32, i32* %3, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %3, align 4
  br label %124

138:                                              ; preds = %124
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %150, %138
  %140 = load i32, i32* %3, align 4
  %141 = icmp slt i32 %140, 4
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load i64, i64* @CVMX_IRQ_PCI_MSI0, align 8
  %144 = load i32, i32* %3, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load i32, i32* %3, align 4
  %148 = add nsw i32 %147, 40
  %149 = call i32 @__cvmx_interrupt_set_mapping(i64 %146, i32 0, i32 %148)
  br label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %3, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %3, align 4
  br label %139

153:                                              ; preds = %139
  %154 = load i64, i64* @CVMX_IRQ_TWSI0, align 8
  %155 = add nsw i64 %154, 0
  %156 = call i32 @__cvmx_interrupt_set_mapping(i64 %155, i32 0, i32 45)
  %157 = load i64, i64* @CVMX_IRQ_TWSI0, align 8
  %158 = add nsw i64 %157, 1
  %159 = call i32 @__cvmx_interrupt_set_mapping(i64 %158, i32 0, i32 59)
  %160 = load i64, i64* @CVMX_IRQ_RML, align 8
  %161 = call i32 @__cvmx_interrupt_set_mapping(i64 %160, i32 0, i32 46)
  %162 = load i64, i64* @CVMX_IRQ_TRACE0, align 8
  %163 = call i32 @__cvmx_interrupt_set_mapping(i64 %162, i32 0, i32 47)
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %175, %153
  %165 = load i32, i32* %3, align 4
  %166 = icmp slt i32 %165, 2
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load i64, i64* @CVMX_IRQ_GMX_DRP0, align 8
  %169 = load i32, i32* %3, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %168, %170
  %172 = load i32, i32* %3, align 4
  %173 = add nsw i32 %172, 48
  %174 = call i32 @__cvmx_interrupt_set_mapping(i64 %171, i32 0, i32 %173)
  br label %175

175:                                              ; preds = %167
  %176 = load i32, i32* %3, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %3, align 4
  br label %164

178:                                              ; preds = %164
  %179 = load i64, i64* @CVMX_IRQ_IPD_DRP, align 8
  %180 = call i32 @__cvmx_interrupt_set_mapping(i64 %179, i32 0, i32 50)
  %181 = load i64, i64* @CVMX_IRQ_KEY_ZERO, align 8
  %182 = call i32 @__cvmx_interrupt_set_mapping(i64 %181, i32 0, i32 51)
  store i32 0, i32* %3, align 4
  br label %183

183:                                              ; preds = %194, %178
  %184 = load i32, i32* %3, align 4
  %185 = icmp slt i32 %184, 4
  br i1 %185, label %186, label %197

186:                                              ; preds = %183
  %187 = load i64, i64* @CVMX_IRQ_TIMER0, align 8
  %188 = load i32, i32* %3, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %187, %189
  %191 = load i32, i32* %3, align 4
  %192 = add nsw i32 %191, 52
  %193 = call i32 @__cvmx_interrupt_set_mapping(i64 %190, i32 0, i32 %192)
  br label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %3, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %3, align 4
  br label %183

197:                                              ; preds = %183
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %209, %197
  %199 = load i32, i32* %3, align 4
  %200 = icmp slt i32 %199, 6
  br i1 %200, label %201, label %212

201:                                              ; preds = %198
  %202 = load i64, i64* @CVMX_IRQ_TIMER4, align 8
  %203 = load i32, i32* %3, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %202, %204
  %206 = load i32, i32* %3, align 4
  %207 = add nsw i32 %206, 4
  %208 = call i32 @__cvmx_interrupt_set_mapping(i64 %205, i32 8, i32 %207)
  br label %209

209:                                              ; preds = %201
  %210 = load i32, i32* %3, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %3, align 4
  br label %198

212:                                              ; preds = %198
  %213 = load i64, i64* @CVMX_IRQ_USB0, align 8
  %214 = add nsw i64 %213, 0
  %215 = call i32 @__cvmx_interrupt_set_mapping(i64 %214, i32 0, i32 56)
  %216 = load i64, i64* @CVMX_IRQ_USB0, align 8
  %217 = add nsw i64 %216, 1
  %218 = call i32 @__cvmx_interrupt_set_mapping(i64 %217, i32 1, i32 17)
  %219 = load i64, i64* @CVMX_IRQ_PCM, align 8
  %220 = call i32 @__cvmx_interrupt_set_mapping(i64 %219, i32 0, i32 57)
  %221 = load i64, i64* @CVMX_IRQ_MPI, align 8
  %222 = call i32 @__cvmx_interrupt_set_mapping(i64 %221, i32 0, i32 58)
  %223 = load i64, i64* @CVMX_IRQ_POWIQ, align 8
  %224 = call i32 @__cvmx_interrupt_set_mapping(i64 %223, i32 0, i32 60)
  %225 = load i64, i64* @CVMX_IRQ_IPDPPTHR, align 8
  %226 = call i32 @__cvmx_interrupt_set_mapping(i64 %225, i32 0, i32 61)
  %227 = load i64, i64* @CVMX_IRQ_MII0, align 8
  %228 = add nsw i64 %227, 0
  %229 = call i32 @__cvmx_interrupt_set_mapping(i64 %228, i32 0, i32 62)
  %230 = load i64, i64* @CVMX_IRQ_MII0, align 8
  %231 = add nsw i64 %230, 1
  %232 = call i32 @__cvmx_interrupt_set_mapping(i64 %231, i32 1, i32 18)
  %233 = load i64, i64* @CVMX_IRQ_BOOTDMA, align 8
  %234 = call i32 @__cvmx_interrupt_set_mapping(i64 %233, i32 0, i32 63)
  store i32 0, i32* %3, align 4
  br label %235

235:                                              ; preds = %245, %212
  %236 = load i32, i32* %3, align 4
  %237 = icmp slt i32 %236, 16
  br i1 %237, label %238, label %248

238:                                              ; preds = %235
  %239 = load i64, i64* @CVMX_IRQ_WDOG0, align 8
  %240 = load i32, i32* %3, align 4
  %241 = sext i32 %240 to i64
  %242 = add nsw i64 %239, %241
  %243 = load i32, i32* %3, align 4
  %244 = call i32 @__cvmx_interrupt_set_mapping(i64 %242, i32 1, i32 %243)
  br label %245

245:                                              ; preds = %238
  %246 = load i32, i32* %3, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %3, align 4
  br label %235

248:                                              ; preds = %235
  %249 = load i64, i64* @CVMX_IRQ_NAND, align 8
  %250 = call i32 @__cvmx_interrupt_set_mapping(i64 %249, i32 1, i32 19)
  %251 = load i64, i64* @CVMX_IRQ_MIO, align 8
  %252 = call i32 @__cvmx_interrupt_set_mapping(i64 %251, i32 1, i32 20)
  %253 = load i64, i64* @CVMX_IRQ_IOB, align 8
  %254 = call i32 @__cvmx_interrupt_set_mapping(i64 %253, i32 1, i32 21)
  %255 = load i64, i64* @CVMX_IRQ_FPA, align 8
  %256 = call i32 @__cvmx_interrupt_set_mapping(i64 %255, i32 1, i32 22)
  %257 = load i64, i64* @CVMX_IRQ_POW, align 8
  %258 = call i32 @__cvmx_interrupt_set_mapping(i64 %257, i32 1, i32 23)
  %259 = load i64, i64* @CVMX_IRQ_L2C, align 8
  %260 = call i32 @__cvmx_interrupt_set_mapping(i64 %259, i32 1, i32 24)
  %261 = load i64, i64* @CVMX_IRQ_IPD, align 8
  %262 = call i32 @__cvmx_interrupt_set_mapping(i64 %261, i32 1, i32 25)
  %263 = load i64, i64* @CVMX_IRQ_PIP, align 8
  %264 = call i32 @__cvmx_interrupt_set_mapping(i64 %263, i32 1, i32 26)
  %265 = load i64, i64* @CVMX_IRQ_PKO, align 8
  %266 = call i32 @__cvmx_interrupt_set_mapping(i64 %265, i32 1, i32 27)
  %267 = load i64, i64* @CVMX_IRQ_ZIP, align 8
  %268 = call i32 @__cvmx_interrupt_set_mapping(i64 %267, i32 1, i32 28)
  %269 = load i64, i64* @CVMX_IRQ_TIM, align 8
  %270 = call i32 @__cvmx_interrupt_set_mapping(i64 %269, i32 1, i32 29)
  %271 = load i64, i64* @CVMX_IRQ_RAD, align 8
  %272 = call i32 @__cvmx_interrupt_set_mapping(i64 %271, i32 1, i32 30)
  %273 = load i64, i64* @CVMX_IRQ_KEY, align 8
  %274 = call i32 @__cvmx_interrupt_set_mapping(i64 %273, i32 1, i32 31)
  %275 = load i64, i64* @CVMX_IRQ_DFA, align 8
  %276 = call i32 @__cvmx_interrupt_set_mapping(i64 %275, i32 1, i32 32)
  %277 = load i64, i64* @CVMX_IRQ_USBCTL, align 8
  %278 = call i32 @__cvmx_interrupt_set_mapping(i64 %277, i32 1, i32 33)
  %279 = load i64, i64* @CVMX_IRQ_SLI, align 8
  %280 = call i32 @__cvmx_interrupt_set_mapping(i64 %279, i32 1, i32 34)
  %281 = load i64, i64* @CVMX_IRQ_DPI, align 8
  %282 = call i32 @__cvmx_interrupt_set_mapping(i64 %281, i32 1, i32 35)
  %283 = load i64, i64* @CVMX_IRQ_AGX0, align 8
  %284 = call i32 @__cvmx_interrupt_set_mapping(i64 %283, i32 1, i32 36)
  %285 = load i64, i64* @CVMX_IRQ_AGX0, align 8
  %286 = add nsw i64 %285, 1
  %287 = call i32 @__cvmx_interrupt_set_mapping(i64 %286, i32 1, i32 37)
  %288 = load i64, i64* @CVMX_IRQ_DPI_DMA, align 8
  %289 = call i32 @__cvmx_interrupt_set_mapping(i64 %288, i32 1, i32 40)
  %290 = load i64, i64* @CVMX_IRQ_AGL, align 8
  %291 = call i32 @__cvmx_interrupt_set_mapping(i64 %290, i32 1, i32 46)
  %292 = load i64, i64* @CVMX_IRQ_PTP, align 8
  %293 = call i32 @__cvmx_interrupt_set_mapping(i64 %292, i32 1, i32 47)
  %294 = load i64, i64* @CVMX_IRQ_PEM0, align 8
  %295 = call i32 @__cvmx_interrupt_set_mapping(i64 %294, i32 1, i32 48)
  %296 = load i64, i64* @CVMX_IRQ_PEM1, align 8
  %297 = call i32 @__cvmx_interrupt_set_mapping(i64 %296, i32 1, i32 49)
  %298 = load i64, i64* @CVMX_IRQ_SRIO0, align 8
  %299 = call i32 @__cvmx_interrupt_set_mapping(i64 %298, i32 1, i32 50)
  %300 = load i64, i64* @CVMX_IRQ_SRIO1, align 8
  %301 = call i32 @__cvmx_interrupt_set_mapping(i64 %300, i32 1, i32 51)
  %302 = load i64, i64* @CVMX_IRQ_LMC0, align 8
  %303 = call i32 @__cvmx_interrupt_set_mapping(i64 %302, i32 1, i32 52)
  %304 = load i64, i64* @CVMX_IRQ_DFM, align 8
  %305 = call i32 @__cvmx_interrupt_set_mapping(i64 %304, i32 1, i32 56)
  %306 = load i64, i64* @CVMX_IRQ_SRIO2, align 8
  %307 = call i32 @__cvmx_interrupt_set_mapping(i64 %306, i32 1, i32 60)
  %308 = load i64, i64* @CVMX_IRQ_RST, align 8
  %309 = call i32 @__cvmx_interrupt_set_mapping(i64 %308, i32 1, i32 63)
  br label %310

310:                                              ; preds = %248, %49
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @CVMX_CIU_INTX_EN0(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_EN1(i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @CVMX_CIU_EN2_PPX_IP2(i32) #1

declare dso_local i32 @cvmx_coremask_first_core(i32) #1

declare dso_local i64 @is_core_being_hot_plugged(...) #1

declare dso_local i32 @__cvmx_interrupt_set_mapping(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
