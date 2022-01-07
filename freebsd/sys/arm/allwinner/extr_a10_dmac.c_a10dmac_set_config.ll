; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_set_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_dmac.c_a10dmac_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_dma_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.a10dmac_channel = type { i64 }

@AWIN_DMA_CTL_DATA_WIDTH_8 = common dso_local global i32 0, align 4
@AWIN_DMA_CTL_DATA_WIDTH_16 = common dso_local global i32 0, align 4
@AWIN_DMA_CTL_DATA_WIDTH_32 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AWIN_DMA_CTL_BURST_LEN_1 = common dso_local global i32 0, align 4
@AWIN_DMA_CTL_BURST_LEN_4 = common dso_local global i32 0, align 4
@AWIN_DMA_CTL_BURST_LEN_8 = common dso_local global i32 0, align 4
@AWIN_DMA_CTL_DST_DATA_WIDTH_SHIFT = common dso_local global i32 0, align 4
@AWIN_DMA_CTL_DST_BURST_LEN_SHIFT = common dso_local global i32 0, align 4
@AWIN_DMA_CTL_DST_DRQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@AWIN_DMA_CTL_SRC_DATA_WIDTH_SHIFT = common dso_local global i32 0, align 4
@AWIN_DMA_CTL_SRC_BURST_LEN_SHIFT = common dso_local global i32 0, align 4
@AWIN_DMA_CTL_SRC_DRQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@CH_NDMA = common dso_local global i64 0, align 8
@AWIN_NDMA_CTL_DST_ADDR_NOINCR = common dso_local global i32 0, align 4
@AWIN_NDMA_CTL_SRC_ADDR_NOINCR = common dso_local global i32 0, align 4
@AWIN_NDMA_CTL_REG = common dso_local global i32 0, align 4
@AWIN_DDMA_CTL_DMA_ADDR_IO = common dso_local global i32 0, align 4
@AWIN_DDMA_CTL_DMA_ADDR_LINEAR = common dso_local global i32 0, align 4
@AWIN_DDMA_CTL_DST_ADDR_MODE_SHIFT = common dso_local global i32 0, align 4
@AWIN_DDMA_CTL_SRC_ADDR_MODE_SHIFT = common dso_local global i32 0, align 4
@AWIN_DDMA_CTL_REG = common dso_local global i32 0, align 4
@AWIN_DDMA_PARA_REG = common dso_local global i32 0, align 4
@AWIN_DDMA_PARA_DST_DATA_BLK_SIZ_SHIFT = common dso_local global i32 0, align 4
@AWIN_DDMA_PARA_DST_WAIT_CYC_SHIFT = common dso_local global i32 0, align 4
@AWIN_DDMA_PARA_SRC_DATA_BLK_SIZ_SHIFT = common dso_local global i32 0, align 4
@AWIN_DDMA_PARA_SRC_WAIT_CYC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.sunxi_dma_config*)* @a10dmac_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10dmac_set_config(i32 %0, i8* %1, %struct.sunxi_dma_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sunxi_dma_config*, align 8
  %8 = alloca %struct.a10dmac_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.sunxi_dma_config* %2, %struct.sunxi_dma_config** %7, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to %struct.a10dmac_channel*
  store %struct.a10dmac_channel* %21, %struct.a10dmac_channel** %8, align 8
  %22 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %23 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %31 [
    i32 8, label %25
    i32 16, label %27
    i32 32, label %29
  ]

25:                                               ; preds = %3
  %26 = load i32, i32* @AWIN_DMA_CTL_DATA_WIDTH_8, align 4
  store i32 %26, i32* %10, align 4
  br label %33

27:                                               ; preds = %3
  %28 = load i32, i32* @AWIN_DMA_CTL_DATA_WIDTH_16, align 4
  store i32 %28, i32* %10, align 4
  br label %33

29:                                               ; preds = %3
  %30 = load i32, i32* @AWIN_DMA_CTL_DATA_WIDTH_32, align 4
  store i32 %30, i32* %10, align 4
  br label %33

31:                                               ; preds = %3
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %4, align 4
  br label %195

33:                                               ; preds = %29, %27, %25
  %34 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %35 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %43 [
    i32 1, label %37
    i32 4, label %39
    i32 8, label %41
  ]

37:                                               ; preds = %33
  %38 = load i32, i32* @AWIN_DMA_CTL_BURST_LEN_1, align 4
  store i32 %38, i32* %11, align 4
  br label %45

39:                                               ; preds = %33
  %40 = load i32, i32* @AWIN_DMA_CTL_BURST_LEN_4, align 4
  store i32 %40, i32* %11, align 4
  br label %45

41:                                               ; preds = %33
  %42 = load i32, i32* @AWIN_DMA_CTL_BURST_LEN_8, align 4
  store i32 %42, i32* %11, align 4
  br label %45

43:                                               ; preds = %33
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %195

45:                                               ; preds = %41, %39, %37
  %46 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %47 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %55 [
    i32 8, label %49
    i32 16, label %51
    i32 32, label %53
  ]

49:                                               ; preds = %45
  %50 = load i32, i32* @AWIN_DMA_CTL_DATA_WIDTH_8, align 4
  store i32 %50, i32* %15, align 4
  br label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @AWIN_DMA_CTL_DATA_WIDTH_16, align 4
  store i32 %52, i32* %15, align 4
  br label %57

53:                                               ; preds = %45
  %54 = load i32, i32* @AWIN_DMA_CTL_DATA_WIDTH_32, align 4
  store i32 %54, i32* %15, align 4
  br label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %4, align 4
  br label %195

57:                                               ; preds = %53, %51, %49
  %58 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %59 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  switch i32 %60, label %67 [
    i32 1, label %61
    i32 4, label %63
    i32 8, label %65
  ]

61:                                               ; preds = %57
  %62 = load i32, i32* @AWIN_DMA_CTL_BURST_LEN_1, align 4
  store i32 %62, i32* %16, align 4
  br label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @AWIN_DMA_CTL_BURST_LEN_4, align 4
  store i32 %64, i32* %16, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load i32, i32* @AWIN_DMA_CTL_BURST_LEN_8, align 4
  store i32 %66, i32* %16, align 4
  br label %69

67:                                               ; preds = %57
  %68 = load i32, i32* @EINVAL, align 4
  store i32 %68, i32* %4, align 4
  br label %195

69:                                               ; preds = %65, %63, %61
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* @AWIN_DMA_CTL_DST_DATA_WIDTH_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @AWIN_DMA_CTL_DST_BURST_LEN_SHIFT, align 4
  %75 = shl i32 %73, %74
  %76 = or i32 %72, %75
  %77 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %78 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @AWIN_DMA_CTL_DST_DRQ_TYPE_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %76, %81
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @AWIN_DMA_CTL_SRC_DATA_WIDTH_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %82, %85
  %87 = load i32, i32* %16, align 4
  %88 = load i32, i32* @AWIN_DMA_CTL_SRC_BURST_LEN_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = or i32 %86, %89
  %91 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %92 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @AWIN_DMA_CTL_SRC_DRQ_TYPE_SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = or i32 %90, %95
  store i32 %96, i32* %9, align 4
  %97 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %8, align 8
  %98 = getelementptr inbounds %struct.a10dmac_channel, %struct.a10dmac_channel* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @CH_NDMA, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %125

102:                                              ; preds = %69
  %103 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %104 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %103, i32 0, i32 11
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i32, i32* @AWIN_NDMA_CTL_DST_ADDR_NOINCR, align 4
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %107, %102
  %112 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %113 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %112, i32 0, i32 10
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @AWIN_NDMA_CTL_SRC_ADDR_NOINCR, align 4
  %118 = load i32, i32* %9, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %8, align 8
  %122 = load i32, i32* @AWIN_NDMA_CTL_REG, align 4
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @DMACH_WRITE(%struct.a10dmac_channel* %121, i32 %122, i32 %123)
  br label %194

125:                                              ; preds = %69
  %126 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %127 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %126, i32 0, i32 11
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %125
  %131 = load i32, i32* @AWIN_DDMA_CTL_DMA_ADDR_IO, align 4
  br label %134

132:                                              ; preds = %125
  %133 = load i32, i32* @AWIN_DDMA_CTL_DMA_ADDR_LINEAR, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  store i32 %135, i32* %14, align 4
  %136 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %137 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %136, i32 0, i32 10
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %134
  %141 = load i32, i32* @AWIN_DDMA_CTL_DMA_ADDR_IO, align 4
  br label %144

142:                                              ; preds = %134
  %143 = load i32, i32* @AWIN_DDMA_CTL_DMA_ADDR_LINEAR, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  store i32 %145, i32* %19, align 4
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* @AWIN_DDMA_CTL_DST_ADDR_MODE_SHIFT, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* %9, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %9, align 4
  %151 = load i32, i32* %19, align 4
  %152 = load i32, i32* @AWIN_DDMA_CTL_SRC_ADDR_MODE_SHIFT, align 4
  %153 = shl i32 %151, %152
  %154 = load i32, i32* %9, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %8, align 8
  %157 = load i32, i32* @AWIN_DDMA_CTL_REG, align 4
  %158 = load i32, i32* %9, align 4
  %159 = call i32 @DMACH_WRITE(%struct.a10dmac_channel* %156, i32 %157, i32 %158)
  %160 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %161 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %160, i32 0, i32 6
  %162 = load i32, i32* %161, align 8
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %12, align 4
  %164 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %165 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  %168 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %169 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = sub nsw i32 %170, 1
  store i32 %171, i32* %17, align 4
  %172 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %173 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = sub nsw i32 %174, 1
  store i32 %175, i32* %18, align 4
  %176 = load %struct.a10dmac_channel*, %struct.a10dmac_channel** %8, align 8
  %177 = load i32, i32* @AWIN_DDMA_PARA_REG, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* @AWIN_DDMA_PARA_DST_DATA_BLK_SIZ_SHIFT, align 4
  %180 = shl i32 %178, %179
  %181 = load i32, i32* %13, align 4
  %182 = load i32, i32* @AWIN_DDMA_PARA_DST_WAIT_CYC_SHIFT, align 4
  %183 = shl i32 %181, %182
  %184 = or i32 %180, %183
  %185 = load i32, i32* %17, align 4
  %186 = load i32, i32* @AWIN_DDMA_PARA_SRC_DATA_BLK_SIZ_SHIFT, align 4
  %187 = shl i32 %185, %186
  %188 = or i32 %184, %187
  %189 = load i32, i32* %18, align 4
  %190 = load i32, i32* @AWIN_DDMA_PARA_SRC_WAIT_CYC_SHIFT, align 4
  %191 = shl i32 %189, %190
  %192 = or i32 %188, %191
  %193 = call i32 @DMACH_WRITE(%struct.a10dmac_channel* %176, i32 %177, i32 %192)
  br label %194

194:                                              ; preds = %144, %120
  store i32 0, i32* %4, align 4
  br label %195

195:                                              ; preds = %194, %67, %55, %43, %31
  %196 = load i32, i32* %4, align 4
  ret i32 %196
}

declare dso_local i32 @DMACH_WRITE(%struct.a10dmac_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
