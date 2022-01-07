; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3fb_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx51_ipuv3.c_ipu3fb_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.video_adapter_softc = type { i32, i64, i32*, i32, i32, i32 }

@IPU3FB_FONT_HEIGHT = common dso_local global i32 0, align 4
@colors = common dso_local global i32* null, align 8
@colors_24 = common dso_local global i32* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32)* @ipu3fb_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipu3fb_putc(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.video_adapter_softc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %24 = bitcast %struct.TYPE_5__* %23 to %struct.video_adapter_softc*
  store %struct.video_adapter_softc* %24, %struct.video_adapter_softc** %10, align 8
  %25 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %26 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %13, align 4
  %28 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %29 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %186

33:                                               ; preds = %4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %34, %38
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %39, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = srem i32 %45, %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %50, %54
  store i32 %55, i32* %11, align 4
  %56 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %57 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @IPU3FB_FONT_HEIGHT, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %58, i64 %62
  store i32* %63, i32** %19, align 8
  %64 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %65 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %70 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %68, %71
  %73 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %74 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %72, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %67, i64 %77
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %82 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %80, %83
  %85 = mul nsw i32 %79, %84
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %78, i64 %86
  store i32* %87, i32** %18, align 8
  %88 = load i32, i32* %13, align 4
  %89 = icmp eq i32 %88, 2
  br i1 %89, label %90, label %104

90:                                               ; preds = %33
  %91 = load i32*, i32** @colors, align 8
  %92 = load i32, i32* %9, align 4
  %93 = ashr i32 %92, 4
  %94 = and i32 %93, 15
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* %21, align 4
  %98 = load i32*, i32** @colors, align 8
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, 15
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %20, align 4
  br label %124

104:                                              ; preds = %33
  %105 = load i32, i32* %13, align 4
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %107, label %121

107:                                              ; preds = %104
  %108 = load i32*, i32** @colors_24, align 8
  %109 = load i32, i32* %9, align 4
  %110 = ashr i32 %109, 4
  %111 = and i32 %110, 15
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %21, align 4
  %115 = load i32*, i32** @colors_24, align 8
  %116 = load i32, i32* %9, align 4
  %117 = and i32 %116, 15
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %20, align 4
  br label %123

121:                                              ; preds = %104
  %122 = load i32, i32* @ENXIO, align 4
  store i32 %122, i32* %5, align 4
  br label %186

123:                                              ; preds = %107
  br label %124

124:                                              ; preds = %123, %90
  store i32 0, i32* %15, align 4
  br label %125

125:                                              ; preds = %182, %124
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* @IPU3FB_FONT_HEIGHT, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %185

129:                                              ; preds = %125
  store i32 0, i32* %16, align 4
  store i32 7, i32* %17, align 4
  br label %130

130:                                              ; preds = %170, %129
  %131 = load i32, i32* %16, align 4
  %132 = icmp slt i32 %131, 8
  br i1 %132, label %133, label %175

133:                                              ; preds = %130
  %134 = load i32*, i32** %19, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %17, align 4
  %140 = shl i32 1, %139
  %141 = and i32 %138, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %133
  %144 = load i32, i32* %21, align 4
  store i32 %144, i32* %22, align 4
  br label %147

145:                                              ; preds = %133
  %146 = load i32, i32* %20, align 4
  store i32 %146, i32* %22, align 4
  br label %147

147:                                              ; preds = %145, %143
  store i32 0, i32* %14, align 4
  br label %148

148:                                              ; preds = %166, %147
  %149 = load i32, i32* %14, align 4
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = load i32, i32* %22, align 4
  %154 = load i32, i32* %14, align 4
  %155 = shl i32 %154, 3
  %156 = ashr i32 %153, %155
  %157 = and i32 %156, 255
  %158 = load i32*, i32** %18, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %16, align 4
  %161 = mul nsw i32 %159, %160
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %161, %162
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32, i32* %158, i64 %164
  store i32 %157, i32* %165, align 4
  br label %166

166:                                              ; preds = %152
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %14, align 4
  br label %148

169:                                              ; preds = %148
  br label %170

170:                                              ; preds = %169
  %171 = load i32, i32* %16, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %17, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %17, align 4
  br label %130

175:                                              ; preds = %130
  %176 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %10, align 8
  %177 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %18, align 8
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32* %181, i32** %18, align 8
  br label %182

182:                                              ; preds = %175
  %183 = load i32, i32* %15, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %15, align 4
  br label %125

185:                                              ; preds = %125
  store i32 0, i32* %5, align 4
  br label %186

186:                                              ; preds = %185, %121, %32
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
