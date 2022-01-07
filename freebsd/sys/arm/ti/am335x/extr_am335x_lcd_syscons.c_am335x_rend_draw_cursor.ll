; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd_syscons.c_am335x_rend_draw_cursor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/am335x/extr_am335x_lcd_syscons.c_am335x_rend_draw_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.video_adapter_softc = type { i64, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32, i32, i32, i32)* @am335x_rend_draw_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am335x_rend_draw_cursor(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.video_adapter_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %11, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %25 = bitcast %struct.TYPE_10__* %24 to %struct.video_adapter_softc*
  store %struct.video_adapter_softc* %25, %struct.video_adapter_softc** %12, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sle i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %5
  br label %167

32:                                               ; preds = %5
  %33 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %34 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %167

38:                                               ; preds = %32
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %43, %47
  %49 = icmp sge i32 %39, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %38
  br label %167

51:                                               ; preds = %38
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 %52, %56
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = mul nsw i32 %57, %61
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = srem i32 %63, %67
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %68, %72
  store i32 %73, i32* %14, align 4
  %74 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %75 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i32*
  %78 = load i32, i32* %13, align 4
  %79 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %80 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %78, %81
  %83 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %84 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = mul nsw i32 %82, %85
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %77, i64 %87
  %89 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %90 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %91, 8
  %93 = load i32, i32* %14, align 4
  %94 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %95 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = mul nsw i32 %92, %97
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %88, i64 %99
  store i32* %100, i32** %15, align 8
  %101 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %102 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = sdiv i32 %103, 8
  store i32 %104, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %105

105:                                              ; preds = %164, %51
  %106 = load i32, i32* %16, align 4
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp slt i32 %106, %110
  br i1 %111, label %112, label %167

112:                                              ; preds = %105
  store i32 0, i32* %17, align 4
  br label %113

113:                                              ; preds = %154, %112
  %114 = load i32, i32* %17, align 4
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp slt i32 %114, %118
  br i1 %119, label %120, label %157

120:                                              ; preds = %113
  %121 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %122 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  switch i32 %123, label %152 [
    i32 32, label %124
    i32 24, label %124
    i32 16, label %134
  ]

124:                                              ; preds = %120, %120
  %125 = load i32*, i32** %15, align 8
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %17, align 4
  %128 = mul nsw i32 %126, %127
  %129 = add nsw i32 %128, 2
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %125, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = xor i32 %132, 255
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %120, %124
  %135 = load i32*, i32** %15, align 8
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %17, align 4
  %138 = mul nsw i32 %136, %137
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %135, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = xor i32 %142, 255
  store i32 %143, i32* %141, align 4
  %144 = load i32*, i32** %15, align 8
  %145 = load i32, i32* %18, align 4
  %146 = load i32, i32* %17, align 4
  %147 = mul nsw i32 %145, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %144, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = xor i32 %150, 255
  store i32 %151, i32* %149, align 4
  br label %153

152:                                              ; preds = %120
  br label %153

153:                                              ; preds = %152, %134
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %17, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %17, align 4
  br label %113

157:                                              ; preds = %113
  %158 = load %struct.video_adapter_softc*, %struct.video_adapter_softc** %12, align 8
  %159 = getelementptr inbounds %struct.video_adapter_softc, %struct.video_adapter_softc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** %15, align 8
  %162 = sext i32 %160 to i64
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  store i32* %163, i32** %15, align 8
  br label %164

164:                                              ; preds = %157
  %165 = load i32, i32* %16, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %16, align 4
  br label %105

167:                                              ; preds = %31, %37, %50, %105
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
