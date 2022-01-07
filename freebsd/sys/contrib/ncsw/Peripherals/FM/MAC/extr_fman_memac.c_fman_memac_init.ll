; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac.c_fman_memac_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/MAC/extr_fman_memac.c_fman_memac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memac_regs = type { i32, i32, i32*, i32*, i32, i32 }
%struct.memac_cfg = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@CMD_CFG_WAN_MODE = common dso_local global i32 0, align 4
@CMD_CFG_PROMIS_EN = common dso_local global i32 0, align 4
@CMD_CFG_PAUSE_FWD = common dso_local global i32 0, align 4
@CMD_CFG_PAUSE_IGNORE = common dso_local global i32 0, align 4
@CMD_CFG_TX_ADDR_INS = common dso_local global i32 0, align 4
@CMD_CFG_LOOPBACK_EN = common dso_local global i32 0, align 4
@CMD_CFG_CNT_FRM_EN = common dso_local global i32 0, align 4
@CMD_CFG_SEND_IDLE = common dso_local global i32 0, align 4
@CMD_CFG_NO_LEN_CHK = common dso_local global i32 0, align 4
@CMD_CFG_SFD_ANY = common dso_local global i32 0, align 4
@CMD_CFG_TX_PAD_EN = common dso_local global i32 0, align 4
@CMD_CFG_MG = common dso_local global i32 0, align 4
@CMD_CFG_CRC_FWD = common dso_local global i32 0, align 4
@IF_MODE_XGMII = common dso_local global i32 0, align 4
@IF_MODE_GMII = common dso_local global i32 0, align 4
@E_ENET_IF_RGMII = common dso_local global i32 0, align 4
@IF_MODE_RGMII = common dso_local global i32 0, align 4
@IF_MODE_RGMII_AUTO = common dso_local global i32 0, align 4
@TX_FIFO_SECTIONS_TX_AVAIL_SLOW_10G = common dso_local global i32 0, align 4
@TX_FIFO_SECTIONS_TX_EMPTY_DEFAULT_10G = common dso_local global i32 0, align 4
@TX_FIFO_SECTIONS_TX_AVAIL_10G = common dso_local global i32 0, align 4
@TX_FIFO_SECTIONS_TX_AVAIL_1G = common dso_local global i32 0, align 4
@TX_FIFO_SECTIONS_TX_EMPTY_DEFAULT_1G = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_memac_init(%struct.memac_regs* %0, %struct.memac_cfg* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.memac_regs*, align 8
  %8 = alloca %struct.memac_cfg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.memac_regs* %0, %struct.memac_regs** %7, align 8
  store %struct.memac_cfg* %1, %struct.memac_cfg** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %15 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %14, i32 0, i32 13
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %6
  %19 = load i32, i32* @CMD_CFG_WAN_MODE, align 4
  %20 = load i32, i32* %13, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %13, align 4
  br label %22

22:                                               ; preds = %18, %6
  %23 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %24 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %23, i32 0, i32 12
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @CMD_CFG_PROMIS_EN, align 4
  %29 = load i32, i32* %13, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %33 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %32, i32 0, i32 11
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @CMD_CFG_PAUSE_FWD, align 4
  %38 = load i32, i32* %13, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %13, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %42 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %41, i32 0, i32 10
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @CMD_CFG_PAUSE_IGNORE, align 4
  %47 = load i32, i32* %13, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %51 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %50, i32 0, i32 9
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @CMD_CFG_TX_ADDR_INS, align 4
  %56 = load i32, i32* %13, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %60 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @CMD_CFG_LOOPBACK_EN, align 4
  %65 = load i32, i32* %13, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %13, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %69 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %68, i32 0, i32 8
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @CMD_CFG_CNT_FRM_EN, align 4
  %74 = load i32, i32* %13, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %78 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @CMD_CFG_SEND_IDLE, align 4
  %83 = load i32, i32* %13, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %13, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %87 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %86, i32 0, i32 6
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @CMD_CFG_NO_LEN_CHK, align 4
  %92 = load i32, i32* %13, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %13, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %96 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = load i32, i32* @CMD_CFG_SFD_ANY, align 4
  %101 = load i32, i32* %13, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %105 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %104, i32 0, i32 4
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* @CMD_CFG_TX_PAD_EN, align 4
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %108, %103
  %113 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %114 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @CMD_CFG_MG, align 4
  %119 = load i32, i32* %13, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %117, %112
  %122 = load i32, i32* @CMD_CFG_CRC_FWD, align 4
  %123 = load i32, i32* %13, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.memac_regs*, %struct.memac_regs** %7, align 8
  %127 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %126, i32 0, i32 5
  %128 = call i32 @iowrite32be(i32 %125, i32* %127)
  %129 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %130 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = trunc i64 %131 to i32
  %133 = load %struct.memac_regs*, %struct.memac_regs** %7, align 8
  %134 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %133, i32 0, i32 4
  %135 = call i32 @iowrite32be(i32 %132, i32* %134)
  %136 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %137 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = trunc i64 %138 to i32
  %140 = load %struct.memac_regs*, %struct.memac_regs** %7, align 8
  %141 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %140, i32 0, i32 3
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = call i32 @iowrite32be(i32 %139, i32* %143)
  %145 = load %struct.memac_regs*, %struct.memac_regs** %7, align 8
  %146 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = call i32 @iowrite32be(i32 0, i32* %148)
  store i32 0, i32* %13, align 4
  %150 = load i32, i32* %9, align 4
  switch i32 %150, label %155 [
    i32 128, label %151
    i32 129, label %151
  ]

151:                                              ; preds = %121, %121
  %152 = load i32, i32* @IF_MODE_XGMII, align 4
  %153 = load i32, i32* %13, align 4
  %154 = or i32 %153, %152
  store i32 %154, i32* %13, align 4
  br label %174

155:                                              ; preds = %121
  %156 = load i32, i32* @IF_MODE_GMII, align 4
  %157 = load i32, i32* %13, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @E_ENET_IF_RGMII, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %173

162:                                              ; preds = %155
  %163 = load %struct.memac_cfg*, %struct.memac_cfg** %8, align 8
  %164 = getelementptr inbounds %struct.memac_cfg, %struct.memac_cfg* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %173, label %167

167:                                              ; preds = %162
  %168 = load i32, i32* @IF_MODE_RGMII, align 4
  %169 = load i32, i32* @IF_MODE_RGMII_AUTO, align 4
  %170 = or i32 %168, %169
  %171 = load i32, i32* %13, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %13, align 4
  br label %173

173:                                              ; preds = %167, %162, %155
  br label %174

174:                                              ; preds = %173, %151
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.memac_regs*, %struct.memac_regs** %7, align 8
  %177 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %176, i32 0, i32 1
  %178 = call i32 @iowrite32be(i32 %175, i32* %177)
  store i32 0, i32* %13, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp eq i32 %179, 128
  br i1 %180, label %184, label %181

181:                                              ; preds = %174
  %182 = load i32, i32* %9, align 4
  %183 = icmp eq i32 %182, 129
  br i1 %183, label %184, label %200

184:                                              ; preds = %181, %174
  %185 = load i32, i32* %11, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %184
  %188 = load i32, i32* @TX_FIFO_SECTIONS_TX_AVAIL_SLOW_10G, align 4
  %189 = load i32, i32* @TX_FIFO_SECTIONS_TX_EMPTY_DEFAULT_10G, align 4
  %190 = or i32 %188, %189
  %191 = load i32, i32* %13, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %13, align 4
  br label %199

193:                                              ; preds = %184
  %194 = load i32, i32* @TX_FIFO_SECTIONS_TX_AVAIL_10G, align 4
  %195 = load i32, i32* @TX_FIFO_SECTIONS_TX_EMPTY_DEFAULT_10G, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* %13, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %13, align 4
  br label %199

199:                                              ; preds = %193, %187
  br label %206

200:                                              ; preds = %181
  %201 = load i32, i32* @TX_FIFO_SECTIONS_TX_AVAIL_1G, align 4
  %202 = load i32, i32* @TX_FIFO_SECTIONS_TX_EMPTY_DEFAULT_1G, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* %13, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %13, align 4
  br label %206

206:                                              ; preds = %200, %199
  %207 = load i32, i32* %13, align 4
  %208 = load %struct.memac_regs*, %struct.memac_regs** %7, align 8
  %209 = getelementptr inbounds %struct.memac_regs, %struct.memac_regs* %208, i32 0, i32 0
  %210 = call i32 @iowrite32be(i32 %207, i32* %209)
  %211 = load %struct.memac_regs*, %struct.memac_regs** %7, align 8
  %212 = call i32 @fman_memac_ack_event(%struct.memac_regs* %211, i32 -1)
  %213 = load %struct.memac_regs*, %struct.memac_regs** %7, align 8
  %214 = load i32, i32* %12, align 4
  %215 = load i32, i32* @TRUE, align 4
  %216 = call i32 @fman_memac_set_exception(%struct.memac_regs* %213, i32 %214, i32 %215)
  ret i32 0
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @fman_memac_ack_event(%struct.memac_regs*, i32) #1

declare dso_local i32 @fman_memac_set_exception(%struct.memac_regs*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
