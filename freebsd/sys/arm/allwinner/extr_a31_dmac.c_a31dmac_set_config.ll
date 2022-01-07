; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a31_dmac.c_a31dmac_set_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a31_dmac.c_a31dmac_set_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_dma_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.a31dmac_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8* }

@DMA_DATA_WIDTH_8BIT = common dso_local global i32 0, align 4
@DMA_DATA_WIDTH_16BIT = common dso_local global i32 0, align 4
@DMA_DATA_WIDTH_32BIT = common dso_local global i32 0, align 4
@DMA_DATA_WIDTH_64BIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DMA_BST_LEN_1 = common dso_local global i32 0, align 4
@DMA_BST_LEN_4 = common dso_local global i32 0, align 4
@DMA_BST_LEN_8 = common dso_local global i32 0, align 4
@DMA_BST_LEN_16 = common dso_local global i32 0, align 4
@DMA_ADDR_MODE_IO = common dso_local global i32 0, align 4
@DMA_ADDR_MODE_LINEAR = common dso_local global i32 0, align 4
@DMA_DEST_DATA_WIDTH_SHIFT = common dso_local global i32 0, align 4
@DMA_DEST_BST_LEN_SHIFT = common dso_local global i32 0, align 4
@DMA_DEST_ADDR_MODE_SHIFT = common dso_local global i32 0, align 4
@DMA_DEST_DRQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@DMA_SRC_DATA_WIDTH_SHIFT = common dso_local global i32 0, align 4
@DMA_SRC_BST_LEN_SHIFT = common dso_local global i32 0, align 4
@DMA_SRC_ADDR_MODE_SHIFT = common dso_local global i32 0, align 4
@DMA_SRC_DRQ_TYPE_SHIFT = common dso_local global i32 0, align 4
@WAIT_CYC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, %struct.sunxi_dma_config*)* @a31dmac_set_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a31dmac_set_config(i32 %0, i8* %1, %struct.sunxi_dma_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sunxi_dma_config*, align 8
  %8 = alloca %struct.a31dmac_channel*, align 8
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
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store %struct.sunxi_dma_config* %2, %struct.sunxi_dma_config** %7, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = bitcast i8* %19 to %struct.a31dmac_channel*
  store %struct.a31dmac_channel* %20, %struct.a31dmac_channel** %8, align 8
  %21 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %22 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %32 [
    i32 8, label %24
    i32 16, label %26
    i32 32, label %28
    i32 64, label %30
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* @DMA_DATA_WIDTH_8BIT, align 4
  store i32 %25, i32* %11, align 4
  br label %34

26:                                               ; preds = %3
  %27 = load i32, i32* @DMA_DATA_WIDTH_16BIT, align 4
  store i32 %27, i32* %11, align 4
  br label %34

28:                                               ; preds = %3
  %29 = load i32, i32* @DMA_DATA_WIDTH_32BIT, align 4
  store i32 %29, i32* %11, align 4
  br label %34

30:                                               ; preds = %3
  %31 = load i32, i32* @DMA_DATA_WIDTH_64BIT, align 4
  store i32 %31, i32* %11, align 4
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %159

34:                                               ; preds = %30, %28, %26, %24
  %35 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %36 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %46 [
    i32 1, label %38
    i32 4, label %40
    i32 8, label %42
    i32 16, label %44
  ]

38:                                               ; preds = %34
  %39 = load i32, i32* @DMA_BST_LEN_1, align 4
  store i32 %39, i32* %12, align 4
  br label %48

40:                                               ; preds = %34
  %41 = load i32, i32* @DMA_BST_LEN_4, align 4
  store i32 %41, i32* %12, align 4
  br label %48

42:                                               ; preds = %34
  %43 = load i32, i32* @DMA_BST_LEN_8, align 4
  store i32 %43, i32* %12, align 4
  br label %48

44:                                               ; preds = %34
  %45 = load i32, i32* @DMA_BST_LEN_16, align 4
  store i32 %45, i32* %12, align 4
  br label %48

46:                                               ; preds = %34
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %4, align 4
  br label %159

48:                                               ; preds = %44, %42, %40, %38
  %49 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %50 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %60 [
    i32 8, label %52
    i32 16, label %54
    i32 32, label %56
    i32 64, label %58
  ]

52:                                               ; preds = %48
  %53 = load i32, i32* @DMA_DATA_WIDTH_8BIT, align 4
  store i32 %53, i32* %15, align 4
  br label %62

54:                                               ; preds = %48
  %55 = load i32, i32* @DMA_DATA_WIDTH_16BIT, align 4
  store i32 %55, i32* %15, align 4
  br label %62

56:                                               ; preds = %48
  %57 = load i32, i32* @DMA_DATA_WIDTH_32BIT, align 4
  store i32 %57, i32* %15, align 4
  br label %62

58:                                               ; preds = %48
  %59 = load i32, i32* @DMA_DATA_WIDTH_64BIT, align 4
  store i32 %59, i32* %15, align 4
  br label %60

60:                                               ; preds = %48, %58
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %4, align 4
  br label %159

62:                                               ; preds = %56, %54, %52
  %63 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %64 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %74 [
    i32 1, label %66
    i32 4, label %68
    i32 8, label %70
    i32 16, label %72
  ]

66:                                               ; preds = %62
  %67 = load i32, i32* @DMA_BST_LEN_1, align 4
  store i32 %67, i32* %16, align 4
  br label %76

68:                                               ; preds = %62
  %69 = load i32, i32* @DMA_BST_LEN_4, align 4
  store i32 %69, i32* %16, align 4
  br label %76

70:                                               ; preds = %62
  %71 = load i32, i32* @DMA_BST_LEN_8, align 4
  store i32 %71, i32* %16, align 4
  br label %76

72:                                               ; preds = %62
  %73 = load i32, i32* @DMA_BST_LEN_16, align 4
  store i32 %73, i32* %16, align 4
  br label %76

74:                                               ; preds = %62
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %4, align 4
  br label %159

76:                                               ; preds = %72, %70, %68, %66
  %77 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %78 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %77, i32 0, i32 9
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @DMA_ADDR_MODE_IO, align 4
  br label %85

83:                                               ; preds = %76
  %84 = load i32, i32* @DMA_ADDR_MODE_LINEAR, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  store i32 %86, i32* %14, align 4
  %87 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %88 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %87, i32 0, i32 8
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @DMA_ADDR_MODE_IO, align 4
  br label %95

93:                                               ; preds = %85
  %94 = load i32, i32* @DMA_ADDR_MODE_LINEAR, align 4
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi i32 [ %92, %91 ], [ %94, %93 ]
  store i32 %96, i32* %18, align 4
  %97 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %98 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %13, align 4
  %100 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %101 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %100, i32 0, i32 5
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %17, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %17, align 4
  %105 = icmp ne i32 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* @EINVAL, align 4
  store i32 %107, i32* %4, align 4
  br label %159

108:                                              ; preds = %95
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @DMA_DEST_DATA_WIDTH_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* @DMA_DEST_BST_LEN_SHIFT, align 4
  %114 = shl i32 %112, %113
  %115 = or i32 %111, %114
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @DMA_DEST_ADDR_MODE_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = or i32 %115, %118
  %120 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %121 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @DMA_DEST_DRQ_TYPE_SHIFT, align 4
  %124 = shl i32 %122, %123
  %125 = or i32 %119, %124
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @DMA_SRC_DATA_WIDTH_SHIFT, align 4
  %128 = shl i32 %126, %127
  %129 = or i32 %125, %128
  %130 = load i32, i32* %16, align 4
  %131 = load i32, i32* @DMA_SRC_BST_LEN_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = or i32 %129, %132
  %134 = load i32, i32* %18, align 4
  %135 = load i32, i32* @DMA_SRC_ADDR_MODE_SHIFT, align 4
  %136 = shl i32 %134, %135
  %137 = or i32 %133, %136
  %138 = load %struct.sunxi_dma_config*, %struct.sunxi_dma_config** %7, align 8
  %139 = getelementptr inbounds %struct.sunxi_dma_config, %struct.sunxi_dma_config* %138, i32 0, i32 7
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @DMA_SRC_DRQ_TYPE_SHIFT, align 4
  %142 = shl i32 %140, %141
  %143 = or i32 %137, %142
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @WAIT_CYC_SHIFT, align 4
  %146 = shl i32 %144, %145
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %9, align 4
  %148 = call i8* @htole32(i32 %147)
  %149 = load %struct.a31dmac_channel*, %struct.a31dmac_channel** %8, align 8
  %150 = getelementptr inbounds %struct.a31dmac_channel, %struct.a31dmac_channel* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 1
  store i8* %148, i8** %152, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i8* @htole32(i32 %153)
  %155 = load %struct.a31dmac_channel*, %struct.a31dmac_channel** %8, align 8
  %156 = getelementptr inbounds %struct.a31dmac_channel, %struct.a31dmac_channel* %155, i32 0, i32 0
  %157 = load %struct.TYPE_2__*, %struct.TYPE_2__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  store i8* %154, i8** %158, align 8
  store i32 0, i32* %4, align 4
  br label %159

159:                                              ; preds = %108, %106, %74, %60, %46, %32
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i8* @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
