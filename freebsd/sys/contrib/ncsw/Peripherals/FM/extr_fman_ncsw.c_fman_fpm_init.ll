; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_fpm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_fpm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_fpm_regs = type { i32, i32, i32*, i32, i32, i32, i32 }
%struct.fman_cfg = type { i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@FPM_DISP_LIMIT_SHIFT = common dso_local global i32 0, align 4
@FPM_THR1_PRS_SHIFT = common dso_local global i32 0, align 4
@FPM_THR1_KG_SHIFT = common dso_local global i32 0, align 4
@FPM_THR1_PLCR_SHIFT = common dso_local global i32 0, align 4
@FPM_THR1_BMI_SHIFT = common dso_local global i32 0, align 4
@FPM_THR2_QMI_ENQ_SHIFT = common dso_local global i32 0, align 4
@FPM_THR2_QMI_DEQ_SHIFT = common dso_local global i32 0, align 4
@FPM_THR2_FM_CTL1_SHIFT = common dso_local global i32 0, align 4
@FPM_THR2_FM_CTL2_SHIFT = common dso_local global i32 0, align 4
@FPM_EV_MASK_STALL = common dso_local global i32 0, align 4
@FPM_EV_MASK_DOUBLE_ECC = common dso_local global i32 0, align 4
@FPM_EV_MASK_SINGLE_ECC = common dso_local global i32 0, align 4
@FMAN_EX_FPM_STALL_ON_TASKS = common dso_local global i32 0, align 4
@FPM_EV_MASK_STALL_EN = common dso_local global i32 0, align 4
@FMAN_EX_FPM_SINGLE_ECC = common dso_local global i32 0, align 4
@FPM_EV_MASK_SINGLE_ECC_EN = common dso_local global i32 0, align 4
@FMAN_EX_FPM_DOUBLE_ECC = common dso_local global i32 0, align 4
@FPM_EV_MASK_DOUBLE_ECC_EN = common dso_local global i32 0, align 4
@FPM_EV_MASK_CAT_ERR_SHIFT = common dso_local global i32 0, align 4
@FPM_EV_MASK_DMA_ERR_SHIFT = common dso_local global i32 0, align 4
@FPM_EV_MASK_EXTERNAL_HALT = common dso_local global i32 0, align 4
@FPM_EV_MASK_ECC_ERR_HALT = common dso_local global i32 0, align 4
@FPM_RAM_MURAM_ECC = common dso_local global i32 0, align 4
@FPM_RAM_IRAM_ECC = common dso_local global i32 0, align 4
@FPM_RAM_RAMS_ECC_EN_SRC_SEL = common dso_local global i32 0, align 4
@FPM_RAM_MURAM_TEST_ECC = common dso_local global i32 0, align 4
@FPM_RAM_IRAM_TEST_ECC = common dso_local global i32 0, align 4
@FMAN_EX_IRAM_ECC = common dso_local global i32 0, align 4
@FPM_IRAM_ECC_ERR_EX_EN = common dso_local global i32 0, align 4
@FMAN_EX_NURAM_ECC = common dso_local global i32 0, align 4
@FPM_MURAM_ECC_ERR_EX_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_fpm_init(%struct.fman_fpm_regs* %0, %struct.fman_cfg* %1) #0 {
  %3 = alloca %struct.fman_fpm_regs*, align 8
  %4 = alloca %struct.fman_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fman_fpm_regs* %0, %struct.fman_fpm_regs** %3, align 8
  store %struct.fman_cfg* %1, %struct.fman_cfg** %4, align 8
  %7 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @FPM_DISP_LIMIT_SHIFT, align 4
  %11 = shl i32 %9, %10
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %14 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %13, i32 0, i32 6
  %15 = call i32 @iowrite32be(i32 %12, i32* %14)
  %16 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %17 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %16, i32 0, i32 17
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = load i32, i32* @FPM_THR1_PRS_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %23 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %22, i32 0, i32 16
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @FPM_THR1_KG_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %21, %27
  %29 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %29, i32 0, i32 15
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @FPM_THR1_PLCR_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %28, %34
  %36 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %36, i32 0, i32 14
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @FPM_THR1_BMI_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = or i32 %35, %41
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %45 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %44, i32 0, i32 5
  %46 = call i32 @iowrite32be(i32 %43, i32* %45)
  %47 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %48 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %47, i32 0, i32 13
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @FPM_THR2_QMI_ENQ_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %54 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %53, i32 0, i32 12
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @FPM_THR2_QMI_DEQ_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %52, %58
  %60 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %61 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %60, i32 0, i32 11
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = load i32, i32* @FPM_THR2_FM_CTL1_SHIFT, align 4
  %65 = shl i32 %63, %64
  %66 = or i32 %59, %65
  %67 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %68 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %67, i32 0, i32 10
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load i32, i32* @FPM_THR2_FM_CTL2_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %66, %72
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %76 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %75, i32 0, i32 4
  %77 = call i32 @iowrite32be(i32 %74, i32* %76)
  store i32 0, i32* %5, align 4
  %78 = load i32, i32* @FPM_EV_MASK_STALL, align 4
  %79 = load i32, i32* @FPM_EV_MASK_DOUBLE_ECC, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @FPM_EV_MASK_SINGLE_ECC, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  %85 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %86 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @FMAN_EX_FPM_STALL_ON_TASKS, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %2
  %92 = load i32, i32* @FPM_EV_MASK_STALL_EN, align 4
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %91, %2
  %96 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %97 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @FMAN_EX_FPM_SINGLE_ECC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @FPM_EV_MASK_SINGLE_ECC_EN, align 4
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %95
  %107 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %108 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @FMAN_EX_FPM_DOUBLE_ECC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %106
  %114 = load i32, i32* @FPM_EV_MASK_DOUBLE_ECC_EN, align 4
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %5, align 4
  br label %117

117:                                              ; preds = %113, %106
  %118 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %119 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @FPM_EV_MASK_CAT_ERR_SHIFT, align 4
  %122 = shl i32 %120, %121
  %123 = load i32, i32* %5, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %5, align 4
  %125 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %126 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @FPM_EV_MASK_DMA_ERR_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %133 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %140, label %136

136:                                              ; preds = %117
  %137 = load i32, i32* @FPM_EV_MASK_EXTERNAL_HALT, align 4
  %138 = load i32, i32* %5, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %5, align 4
  br label %140

140:                                              ; preds = %136, %117
  %141 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %142 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %149, label %145

145:                                              ; preds = %140
  %146 = load i32, i32* @FPM_EV_MASK_ECC_ERR_HALT, align 4
  %147 = load i32, i32* %5, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %145, %140
  %150 = load i32, i32* %5, align 4
  %151 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %152 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %151, i32 0, i32 3
  %153 = call i32 @iowrite32be(i32 %150, i32* %152)
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %168, %149
  %155 = load i32, i32* %6, align 4
  %156 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %157 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %171

160:                                              ; preds = %154
  %161 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %162 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = call i32 @iowrite32be(i32 -1, i32* %166)
  br label %168

168:                                              ; preds = %160
  %169 = load i32, i32* %6, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %6, align 4
  br label %154

171:                                              ; preds = %154
  %172 = load i32, i32* @FPM_RAM_MURAM_ECC, align 4
  %173 = load i32, i32* @FPM_RAM_IRAM_ECC, align 4
  %174 = or i32 %172, %173
  store i32 %174, i32* %5, align 4
  %175 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %176 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %175, i32 0, i32 7
  %177 = load i64, i64* %176, align 8
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %171
  %180 = load i32, i32* @FPM_RAM_RAMS_ECC_EN_SRC_SEL, align 4
  %181 = load i32, i32* %5, align 4
  %182 = or i32 %181, %180
  store i32 %182, i32* %5, align 4
  br label %183

183:                                              ; preds = %179, %171
  %184 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %185 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %184, i32 0, i32 6
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %183
  %189 = load i32, i32* @FPM_RAM_MURAM_TEST_ECC, align 4
  %190 = load i32, i32* %5, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %5, align 4
  br label %192

192:                                              ; preds = %188, %183
  %193 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %194 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %193, i32 0, i32 5
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %192
  %198 = load i32, i32* @FPM_RAM_IRAM_TEST_ECC, align 4
  %199 = load i32, i32* %5, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %5, align 4
  br label %201

201:                                              ; preds = %197, %192
  %202 = load i32, i32* %5, align 4
  %203 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %204 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %203, i32 0, i32 1
  %205 = call i32 @iowrite32be(i32 %202, i32* %204)
  store i32 0, i32* %5, align 4
  %206 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %207 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @FMAN_EX_IRAM_ECC, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %201
  %213 = load i32, i32* @FPM_IRAM_ECC_ERR_EX_EN, align 4
  %214 = load i32, i32* %5, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %5, align 4
  %216 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %217 = call i32 @fman_enable_rams_ecc(%struct.fman_fpm_regs* %216)
  br label %218

218:                                              ; preds = %212, %201
  %219 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %220 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @FMAN_EX_NURAM_ECC, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %218
  %226 = load i32, i32* @FPM_MURAM_ECC_ERR_EX_EN, align 4
  %227 = load i32, i32* %5, align 4
  %228 = or i32 %227, %226
  store i32 %228, i32* %5, align 4
  %229 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %230 = call i32 @fman_enable_rams_ecc(%struct.fman_fpm_regs* %229)
  br label %231

231:                                              ; preds = %225, %218
  %232 = load i32, i32* %5, align 4
  %233 = load %struct.fman_fpm_regs*, %struct.fman_fpm_regs** %3, align 8
  %234 = getelementptr inbounds %struct.fman_fpm_regs, %struct.fman_fpm_regs* %233, i32 0, i32 0
  %235 = call i32 @iowrite32be(i32 %232, i32* %234)
  ret i32 0
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @fman_enable_rams_ecc(%struct.fman_fpm_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
