; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_bitmap.c___VGLBitmapCopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_bitmap.c___VGLBitmapCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32* }

@VGLDisplay = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__VGLBitmapCopy(%struct.TYPE_6__* %0, i32 %1, i32 %2, %struct.TYPE_6__* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_6__* %3, %struct.TYPE_6__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 0, i32* %20, align 4
  %26 = load i32, i32* %17, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %8
  %29 = load i32, i32* %17, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %17, align 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @VGLDisplay, align 8
  %33 = icmp eq %struct.TYPE_6__* %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %16, align 4
  %38 = load i32, i32* %17, align 4
  %39 = call i64 @VGLMouseOverlap(i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %34, %28
  %42 = phi i1 [ false, %28 ], [ %40, %34 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %20, align 4
  %44 = load i32, i32* %20, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* %16, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = mul nsw i32 %47, %50
  %52 = call i32* @alloca(i32 %51)
  store i32* %52, i32** %18, align 8
  br label %53

53:                                               ; preds = %46, %41
  br label %54

54:                                               ; preds = %53, %8
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sgt i32 %55, %58
  br i1 %59, label %78, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %14, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %67, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %15, align 4
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp sgt i32 %73, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %72, %66, %60, %54
  store i32 -1, i32* %9, align 4
  br label %268

79:                                               ; preds = %72
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %89

82:                                               ; preds = %79
  %83 = load i32, i32* %16, align 4
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %14, align 4
  %88 = sub nsw i32 %87, %86
  store i32 %88, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %82, %79
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* %15, align 4
  %98 = sub nsw i32 %97, %96
  store i32 %98, i32* %15, align 4
  store i32 0, i32* %12, align 4
  br label %99

99:                                               ; preds = %92, %89
  %100 = load i32, i32* %14, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i32, i32* %16, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %103, %104
  store i32 %105, i32* %16, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* %11, align 4
  %108 = sub nsw i32 %107, %106
  store i32 %108, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %102, %99
  %110 = load i32, i32* %15, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %109
  %113 = load i32, i32* %17, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %17, align 4
  %116 = load i32, i32* %15, align 4
  %117 = load i32, i32* %12, align 4
  %118 = sub nsw i32 %117, %116
  store i32 %118, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %119

119:                                              ; preds = %112, %109
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %120, %121
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %11, align 4
  %132 = sub nsw i32 %130, %131
  store i32 %132, i32* %16, align 4
  br label %133

133:                                              ; preds = %127, %119
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* %17, align 4
  %136 = add nsw i32 %134, %135
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = icmp sgt i32 %136, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %133
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %12, align 4
  %146 = sub nsw i32 %144, %145
  store i32 %146, i32* %17, align 4
  br label %147

147:                                              ; preds = %141, %133
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %148, %149
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %150, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %147
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %14, align 4
  %160 = sub nsw i32 %158, %159
  store i32 %160, i32* %16, align 4
  br label %161

161:                                              ; preds = %155, %147
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %17, align 4
  %164 = add nsw i32 %162, %163
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = icmp sgt i32 %164, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %161
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sub nsw i32 %172, %173
  store i32 %174, i32* %17, align 4
  br label %175

175:                                              ; preds = %169, %161
  %176 = load i32, i32* %16, align 4
  %177 = icmp slt i32 %176, 0
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %17, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178, %175
  store i32 -1, i32* %9, align 4
  br label %268

182:                                              ; preds = %178
  %183 = load i32, i32* %12, align 4
  %184 = load i32, i32* %17, align 4
  %185 = add nsw i32 %183, %184
  store i32 %185, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 1, i32* %25, align 4
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 3
  %191 = load i32*, i32** %190, align 8
  %192 = icmp eq i32* %188, %191
  br i1 %192, label %193, label %202

193:                                              ; preds = %182
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %15, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load i32, i32* %12, align 4
  %199 = sub nsw i32 %198, 1
  store i32 %199, i32* %23, align 4
  %200 = load i32, i32* %17, align 4
  %201 = sub nsw i32 %200, 1
  store i32 %201, i32* %24, align 4
  store i32 -1, i32* %25, align 4
  br label %202

202:                                              ; preds = %197, %193, %182
  %203 = load i32, i32* %12, align 4
  %204 = load i32, i32* %24, align 4
  %205 = add nsw i32 %203, %204
  store i32 %205, i32* %21, align 4
  %206 = load i32, i32* %15, align 4
  %207 = load i32, i32* %24, align 4
  %208 = add nsw i32 %206, %207
  store i32 %208, i32* %22, align 4
  br label %209

209:                                              ; preds = %260, %202
  %210 = load i32, i32* %21, align 4
  %211 = load i32, i32* %23, align 4
  %212 = icmp ne i32 %210, %211
  br i1 %212, label %213, label %267

213:                                              ; preds = %209
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 3
  %216 = load i32*, i32** %215, align 8
  %217 = load i32, i32* %21, align 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = mul nsw i32 %217, %220
  %222 = load i32, i32* %11, align 4
  %223 = add nsw i32 %221, %222
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = mul nsw i32 %223, %226
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %216, i64 %228
  store i32* %229, i32** %19, align 8
  %230 = load i32, i32* %20, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %213
  %233 = load i32, i32* %14, align 4
  %234 = load i32, i32* %22, align 4
  %235 = load i32, i32* %16, align 4
  %236 = call i64 @VGLMouseOverlap(i32 %233, i32 %234, i32 %235, i32 1)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %253

238:                                              ; preds = %232
  %239 = load i32*, i32** %19, align 8
  %240 = load i32*, i32** %18, align 8
  %241 = load i32, i32* %16, align 4
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = mul nsw i32 %241, %244
  %246 = call i32 @bcopy(i32* %239, i32* %240, i32 %245)
  %247 = load i32*, i32** %18, align 8
  store i32* %247, i32** %19, align 8
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* %22, align 4
  %250 = load i32, i32* %16, align 4
  %251 = load i32*, i32** %19, align 8
  %252 = call i32 @VGLMouseMerge(i32 %248, i32 %249, i32 %250, i32* %251)
  br label %253

253:                                              ; preds = %238, %232, %213
  %254 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %255 = load i32, i32* %14, align 4
  %256 = load i32, i32* %22, align 4
  %257 = load i32, i32* %16, align 4
  %258 = load i32*, i32** %19, align 8
  %259 = call i32 @WriteVerticalLine(%struct.TYPE_6__* %254, i32 %255, i32 %256, i32 %257, i32* %258)
  br label %260

260:                                              ; preds = %253
  %261 = load i32, i32* %25, align 4
  %262 = load i32, i32* %21, align 4
  %263 = add nsw i32 %262, %261
  store i32 %263, i32* %21, align 4
  %264 = load i32, i32* %25, align 4
  %265 = load i32, i32* %22, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %22, align 4
  br label %209

267:                                              ; preds = %209
  store i32 0, i32* %9, align 4
  br label %268

268:                                              ; preds = %267, %181, %78
  %269 = load i32, i32* %9, align 4
  ret i32 %269
}

declare dso_local i64 @VGLMouseOverlap(i32, i32, i32, i32) #1

declare dso_local i32* @alloca(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @VGLMouseMerge(i32, i32, i32, i32*) #1

declare dso_local i32 @WriteVerticalLine(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
