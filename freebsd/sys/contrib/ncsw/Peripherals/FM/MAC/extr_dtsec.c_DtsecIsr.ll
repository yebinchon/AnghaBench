; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_DtsecIsr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_dtsec.c_DtsecIsr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 (i32, i32)*, %struct.TYPE_7__, %struct.dtsec_regs* }
%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dtsec_regs = type { i32, i32, i32 }

@DTSEC_IMASK_MMRDEN = common dso_local global i32 0, align 4
@DTSEC_IMASK_MMWREN = common dso_local global i32 0, align 4
@DTSEC_IMASK_BREN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_BAB_RX = common dso_local global i32 0, align 4
@DTSEC_IMASK_RXCEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_RX_CTL = common dso_local global i32 0, align 4
@DTSEC_IMASK_MSROEN = common dso_local global i32 0, align 4
@DTSEC_IMASK_GTSCEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_GRATEFUL_TX_STP_COMPLET = common dso_local global i32 0, align 4
@DTSEC_IMASK_BTEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_BAB_TX = common dso_local global i32 0, align 4
@DTSEC_IMASK_TXCEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_TX_CTL = common dso_local global i32 0, align 4
@DTSEC_IMASK_TXEEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_TX_ERR = common dso_local global i32 0, align 4
@DTSEC_IMASK_LCEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_LATE_COL = common dso_local global i32 0, align 4
@DTSEC_IMASK_CRLEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_COL_RET_LMT = common dso_local global i32 0, align 4
@DTSEC_IMASK_XFUNEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_TX_FIFO_UNDRN = common dso_local global i32 0, align 4
@DTSEC_IMASK_MAGEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_MAG_PCKT = common dso_local global i32 0, align 4
@DTSEC_IMASK_GRSCEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_GRATEFUL_RX_STP_COMPLET = common dso_local global i32 0, align 4
@DTSEC_IMASK_TDPEEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_TX_DATA_ERR = common dso_local global i32 0, align 4
@DTSEC_IMASK_RDPEEN = common dso_local global i32 0, align 4
@e_FM_MAC_EX_1G_RX_DATA_ERR = common dso_local global i32 0, align 4
@DTSEC_IMASK_ABRTEN = common dso_local global i32 0, align 4
@DTSEC_IMASK_IFERREN = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@RCTRL_GRS = common dso_local global i32 0, align 4
@e_FM_MAC_1G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @DtsecIsr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DtsecIsr(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dtsec_regs*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %7, %struct.TYPE_8__** %3, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 3
  %10 = load %struct.dtsec_regs*, %struct.dtsec_regs** %9, align 8
  store %struct.dtsec_regs* %10, %struct.dtsec_regs** %5, align 8
  %11 = load %struct.dtsec_regs*, %struct.dtsec_regs** %5, align 8
  %12 = load i32, i32* @DTSEC_IMASK_MMRDEN, align 4
  %13 = load i32, i32* @DTSEC_IMASK_MMWREN, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = call i32 @fman_dtsec_get_event(%struct.dtsec_regs* %11, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.dtsec_regs*, %struct.dtsec_regs** %5, align 8
  %18 = call i32 @fman_dtsec_get_interrupt_mask(%struct.dtsec_regs* %17)
  %19 = load i32, i32* %4, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.dtsec_regs*, %struct.dtsec_regs** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @fman_dtsec_ack_event(%struct.dtsec_regs* %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @DTSEC_IMASK_BREN, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @e_FM_MAC_EX_1G_BAB_RX, align 4
  %36 = call i32 %31(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %28, %1
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @DTSEC_IMASK_RXCEN, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32 (i32, i32)*, i32 (i32, i32)** %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @e_FM_MAC_EX_1G_RX_CTL, align 4
  %50 = call i32 %45(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %37
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DTSEC_IMASK_MSROEN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %58 = call i32 @UpdateStatistics(%struct.TYPE_8__* %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @DTSEC_IMASK_GTSCEN, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @e_FM_MAC_EX_1G_GRATEFUL_TX_STP_COMPLET, align 4
  %72 = call i32 %67(i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %64, %59
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @DTSEC_IMASK_BTEN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32 (i32, i32)*, i32 (i32, i32)** %80, align 8
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @e_FM_MAC_EX_1G_BAB_TX, align 4
  %86 = call i32 %81(i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %78, %73
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @DTSEC_IMASK_TXCEN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %87
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32 (i32, i32)*, i32 (i32, i32)** %94, align 8
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @e_FM_MAC_EX_1G_TX_CTL, align 4
  %100 = call i32 %95(i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %92, %87
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* @DTSEC_IMASK_TXEEN, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %101
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32 (i32, i32)*, i32 (i32, i32)** %108, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @e_FM_MAC_EX_1G_TX_ERR, align 4
  %114 = call i32 %109(i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %106, %101
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @DTSEC_IMASK_LCEN, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %115
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  %123 = load i32 (i32, i32)*, i32 (i32, i32)** %122, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @e_FM_MAC_EX_1G_LATE_COL, align 4
  %128 = call i32 %123(i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %120, %115
  %130 = load i32, i32* %4, align 4
  %131 = load i32, i32* @DTSEC_IMASK_CRLEN, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32 (i32, i32)*, i32 (i32, i32)** %136, align 8
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @e_FM_MAC_EX_1G_COL_RET_LMT, align 4
  %142 = call i32 %137(i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %134, %129
  %144 = load i32, i32* %4, align 4
  %145 = load i32, i32* @DTSEC_IMASK_XFUNEN, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %143
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32 (i32, i32)*, i32 (i32, i32)** %150, align 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @e_FM_MAC_EX_1G_TX_FIFO_UNDRN, align 4
  %156 = call i32 %151(i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %148, %143
  %158 = load i32, i32* %4, align 4
  %159 = load i32, i32* @DTSEC_IMASK_MAGEN, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32 (i32, i32)*, i32 (i32, i32)** %164, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @e_FM_MAC_EX_1G_MAG_PCKT, align 4
  %170 = call i32 %165(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %162, %157
  %172 = load i32, i32* %4, align 4
  %173 = load i32, i32* @DTSEC_IMASK_GRSCEN, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %185

176:                                              ; preds = %171
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 1
  %179 = load i32 (i32, i32)*, i32 (i32, i32)** %178, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @e_FM_MAC_EX_1G_GRATEFUL_RX_STP_COMPLET, align 4
  %184 = call i32 %179(i32 %182, i32 %183)
  br label %185

185:                                              ; preds = %176, %171
  %186 = load i32, i32* %4, align 4
  %187 = load i32, i32* @DTSEC_IMASK_TDPEEN, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %185
  %191 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i32 (i32, i32)*, i32 (i32, i32)** %192, align 8
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* @e_FM_MAC_EX_1G_TX_DATA_ERR, align 4
  %198 = call i32 %193(i32 %196, i32 %197)
  br label %199

199:                                              ; preds = %190, %185
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @DTSEC_IMASK_RDPEEN, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %199
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32 (i32, i32)*, i32 (i32, i32)** %206, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @e_FM_MAC_EX_1G_RX_DATA_ERR, align 4
  %212 = call i32 %207(i32 %210, i32 %211)
  br label %213

213:                                              ; preds = %204, %199
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @DTSEC_IMASK_ABRTEN, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = call i32 @ASSERT_COND(i32 %219)
  %221 = load i32, i32* %4, align 4
  %222 = load i32, i32* @DTSEC_IMASK_IFERREN, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = zext i1 %225 to i32
  %227 = call i32 @ASSERT_COND(i32 %226)
  ret void
}

declare dso_local i32 @fman_dtsec_get_event(%struct.dtsec_regs*, i32) #1

declare dso_local i32 @fman_dtsec_get_interrupt_mask(%struct.dtsec_regs*) #1

declare dso_local i32 @fman_dtsec_ack_event(%struct.dtsec_regs*, i32) #1

declare dso_local i32 @UpdateStatistics(%struct.TYPE_8__*) #1

declare dso_local i32 @ASSERT_COND(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
