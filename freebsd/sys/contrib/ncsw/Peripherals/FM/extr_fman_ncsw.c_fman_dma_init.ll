; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_dma_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/extr_fman_ncsw.c_fman_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_dma_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fman_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@DMA_STATUS_BUS_ERR = common dso_local global i32 0, align 4
@DMA_STATUS_READ_ECC = common dso_local global i32 0, align 4
@DMA_STATUS_SYSTEM_WRITE_ECC = common dso_local global i32 0, align 4
@DMA_STATUS_FM_WRITE_ECC = common dso_local global i32 0, align 4
@DMA_MODE_CACHE_OR_SHIFT = common dso_local global i32 0, align 4
@DMA_MODE_AID_OR = common dso_local global i32 0, align 4
@FMAN_EX_DMA_BUS_ERROR = common dso_local global i32 0, align 4
@DMA_MODE_BER = common dso_local global i32 0, align 4
@FMAN_EX_DMA_SYSTEM_WRITE_ECC = common dso_local global i32 0, align 4
@FMAN_EX_DMA_READ_ECC = common dso_local global i32 0, align 4
@FMAN_EX_DMA_FM_WRITE_ECC = common dso_local global i32 0, align 4
@DMA_MODE_ECC = common dso_local global i32 0, align 4
@DMA_MODE_SBER = common dso_local global i32 0, align 4
@DMA_MODE_AXI_DBG_MASK = common dso_local global i32 0, align 4
@DMA_MODE_AXI_DBG_SHIFT = common dso_local global i32 0, align 4
@DMA_MODE_EMER_LVL_SHIFT = common dso_local global i32 0, align 4
@DMA_CAM_UNITS = common dso_local global i32 0, align 4
@DMA_MODE_CEN_SHIFT = common dso_local global i32 0, align 4
@DMA_MODE_SECURE_PROT = common dso_local global i32 0, align 4
@DMA_MODE_DBG_SHIFT = common dso_local global i32 0, align 4
@DMA_MODE_AID_MODE_SHIFT = common dso_local global i32 0, align 4
@DMA_MODE_EMER_READ = common dso_local global i32 0, align 4
@DMA_THRESH_COMMQ_SHIFT = common dso_local global i32 0, align 4
@DMA_THRESH_READ_INT_BUF_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_dma_init(%struct.fman_dma_regs* %0, %struct.fman_cfg* %1) #0 {
  %3 = alloca %struct.fman_dma_regs*, align 8
  %4 = alloca %struct.fman_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.fman_dma_regs* %0, %struct.fman_dma_regs** %3, align 8
  store %struct.fman_cfg* %1, %struct.fman_cfg** %4, align 8
  %6 = load i32, i32* @DMA_STATUS_BUS_ERR, align 4
  %7 = load i32, i32* @DMA_STATUS_READ_ECC, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @DMA_STATUS_SYSTEM_WRITE_ECC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @DMA_STATUS_FM_WRITE_ECC, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %3, align 8
  %14 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %13, i32 0, i32 7
  %15 = call i32 @ioread32be(i32* %14)
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %3, align 8
  %19 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %18, i32 0, i32 7
  %20 = call i32 @iowrite32be(i32 %17, i32* %19)
  store i32 0, i32* %5, align 4
  %21 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %22 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_MODE_CACHE_OR_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %29 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %28, i32 0, i32 23
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @DMA_MODE_AID_OR, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %2
  %37 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %38 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FMAN_EX_DMA_BUS_ERROR, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %36
  %44 = load i32, i32* @DMA_MODE_BER, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %36
  %48 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %49 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @FMAN_EX_DMA_SYSTEM_WRITE_ECC, align 4
  %52 = and i32 %50, %51
  %53 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %54 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @FMAN_EX_DMA_READ_ECC, align 4
  %57 = and i32 %55, %56
  %58 = or i32 %52, %57
  %59 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %60 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @FMAN_EX_DMA_FM_WRITE_ECC, align 4
  %63 = and i32 %61, %62
  %64 = or i32 %58, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %47
  %67 = load i32, i32* @DMA_MODE_ECC, align 4
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %47
  %71 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %72 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %71, i32 0, i32 22
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @DMA_MODE_SBER, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %81 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %79
  %85 = load i32, i32* @DMA_MODE_AXI_DBG_MASK, align 4
  %86 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %87 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, 1
  %90 = load i32, i32* @DMA_MODE_AXI_DBG_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = and i32 %85, %91
  %93 = load i32, i32* %5, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %84, %79
  %96 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %97 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %96, i32 0, i32 21
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %125

100:                                              ; preds = %95
  %101 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %102 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %107 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @DMA_MODE_EMER_LVL_SHIFT, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  %113 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %114 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %113, i32 0, i32 20
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %100
  %118 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %119 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %3, align 8
  %122 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %121, i32 0, i32 6
  %123 = call i32 @iowrite32be(i32 %120, i32* %122)
  br label %124

124:                                              ; preds = %117, %100
  br label %125

125:                                              ; preds = %124, %95
  %126 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %127 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @DMA_CAM_UNITS, align 4
  %130 = sdiv i32 %128, %129
  %131 = sub nsw i32 %130, 1
  %132 = load i32, i32* @DMA_MODE_CEN_SHIFT, align 4
  %133 = shl i32 %131, %132
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* @DMA_MODE_SECURE_PROT, align 4
  %137 = load i32, i32* %5, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %5, align 4
  %139 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %140 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DMA_MODE_DBG_SHIFT, align 4
  %143 = shl i32 %141, %142
  %144 = load i32, i32* %5, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %5, align 4
  %146 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %147 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %146, i32 0, i32 8
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @DMA_MODE_AID_MODE_SHIFT, align 4
  %150 = shl i32 %148, %149
  %151 = load i32, i32* %5, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %5, align 4
  %153 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %154 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %153, i32 0, i32 19
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %125
  %158 = load i32, i32* @DMA_MODE_EMER_READ, align 4
  %159 = load i32, i32* %5, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %157, %125
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %3, align 8
  %164 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %163, i32 0, i32 5
  %165 = call i32 @iowrite32be(i32 %162, i32* %164)
  %166 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %167 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %166, i32 0, i32 18
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  %170 = load i32, i32* @DMA_THRESH_COMMQ_SHIFT, align 4
  %171 = shl i32 %169, %170
  %172 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %173 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %172, i32 0, i32 17
  %174 = load i64, i64* %173, align 8
  %175 = trunc i64 %174 to i32
  %176 = load i32, i32* @DMA_THRESH_READ_INT_BUF_SHIFT, align 4
  %177 = shl i32 %175, %176
  %178 = or i32 %171, %177
  %179 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %180 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %179, i32 0, i32 16
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = or i32 %178, %182
  store i32 %183, i32* %5, align 4
  %184 = load i32, i32* %5, align 4
  %185 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %3, align 8
  %186 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %185, i32 0, i32 4
  %187 = call i32 @iowrite32be(i32 %184, i32* %186)
  %188 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %189 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %188, i32 0, i32 15
  %190 = load i64, i64* %189, align 8
  %191 = trunc i64 %190 to i32
  %192 = load i32, i32* @DMA_THRESH_COMMQ_SHIFT, align 4
  %193 = shl i32 %191, %192
  %194 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %195 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %194, i32 0, i32 14
  %196 = load i64, i64* %195, align 8
  %197 = trunc i64 %196 to i32
  %198 = load i32, i32* @DMA_THRESH_READ_INT_BUF_SHIFT, align 4
  %199 = shl i32 %197, %198
  %200 = or i32 %193, %199
  %201 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %202 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %201, i32 0, i32 13
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = or i32 %200, %204
  store i32 %205, i32* %5, align 4
  %206 = load i32, i32* %5, align 4
  %207 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %3, align 8
  %208 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %207, i32 0, i32 3
  %209 = call i32 @iowrite32be(i32 %206, i32* %208)
  %210 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %211 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %210, i32 0, i32 9
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %3, align 8
  %214 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %213, i32 0, i32 2
  %215 = call i32 @iowrite32be(i32 %212, i32* %214)
  %216 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %217 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %216, i32 0, i32 10
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %220 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %219, i32 0, i32 11
  %221 = load i32, i32* %220, align 4
  %222 = mul nsw i32 %218, %221
  %223 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %3, align 8
  %224 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %223, i32 0, i32 1
  %225 = call i32 @iowrite32be(i32 %222, i32* %224)
  %226 = load %struct.fman_cfg*, %struct.fman_cfg** %4, align 8
  %227 = getelementptr inbounds %struct.fman_cfg, %struct.fman_cfg* %226, i32 0, i32 12
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.fman_dma_regs*, %struct.fman_dma_regs** %3, align 8
  %230 = getelementptr inbounds %struct.fman_dma_regs, %struct.fman_dma_regs* %229, i32 0, i32 0
  %231 = call i32 @iowrite32be(i32 %228, i32* %230)
  ret i32 0
}

declare dso_local i32 @iowrite32be(i32, i32*) #1

declare dso_local i32 @ioread32be(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
