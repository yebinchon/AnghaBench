; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_ReleaseManipHandler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_manip.c_ReleaseManipHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_13__, i64, %struct.TYPE_11__, i64, i32*, %struct.TYPE_10__, i32*, i32*, i64 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__, i64, i64, i64, i32*, i64, i64 }
%struct.TYPE_12__ = type { i32*, i32*, i32*, i32*, i64, i64, i64, i64 }
%struct.TYPE_11__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_15__ = type { i32 }

@HEADER_TYPE_CAPWAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_14__*, %struct.TYPE_15__*)* @ReleaseManipHandler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ReleaseManipHandler(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 8
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %30

9:                                                ; preds = %2
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 9
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %9
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @FM_MURAM_FreeMem(i32 %17, i32* %20)
  br label %27

22:                                               ; preds = %9
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @XX_Free(i32* %25)
  br label %27

27:                                               ; preds = %22, %14
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 8
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 7
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @FM_MURAM_FreeMem(i32 %38, i32* %41)
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 7
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @FM_MURAM_FreeMem(i32 %59, i32* %63)
  br label %65

65:                                               ; preds = %56, %50
  br label %302

66:                                               ; preds = %45
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %301

71:                                               ; preds = %66
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 5
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @FmPcdUnregisterReassmPort(%struct.TYPE_15__* %72, i32* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %71
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 7
  %90 = load i64, i64* %89, align 8
  %91 = call i32* @UINT_TO_PTR(i64 %90)
  %92 = call i32 @FM_MURAM_FreeMem(i32 %86, i32* %91)
  br label %93

93:                                               ; preds = %83, %71
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = call i32* @UINT_TO_PTR(i64 %103)
  %105 = call i32 @XX_FreeSmart(i32* %104)
  br label %106

106:                                              ; preds = %99, %93
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 5
  %110 = load i32*, i32** %109, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %112, label %121

112:                                              ; preds = %106
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 5
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @FM_MURAM_FreeMem(i32 %115, i32* %119)
  br label %121

121:                                              ; preds = %112, %106
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %137

127:                                              ; preds = %121
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 4
  %134 = load i64, i64* %133, align 8
  %135 = call i32* @UINT_TO_PTR(i64 %134)
  %136 = call i32 @FM_MURAM_FreeMem(i32 %130, i32* %135)
  br label %137

137:                                              ; preds = %127, %121
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %137
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 3
  %150 = load i64, i64* %149, align 8
  %151 = call i32* @UINT_TO_PTR(i64 %150)
  %152 = call i32 @FM_MURAM_FreeMem(i32 %146, i32* %151)
  br label %153

153:                                              ; preds = %143, %137
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %153
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = call i32* @UINT_TO_PTR(i64 %166)
  %168 = call i32 @FM_MURAM_FreeMem(i32 %162, i32* %167)
  br label %169

169:                                              ; preds = %159, %153
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @HEADER_TYPE_CAPWAP, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %300

177:                                              ; preds = %169
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 7
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %192

184:                                              ; preds = %177
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = call i32* @UINT_TO_PTR(i64 %189)
  %191 = call i32 @XX_FreeSmart(i32* %190)
  br label %192

192:                                              ; preds = %184, %177
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 6
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %207

199:                                              ; preds = %192
  %200 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = call i32* @UINT_TO_PTR(i64 %204)
  %206 = call i32 @XX_FreeSmart(i32* %205)
  br label %207

207:                                              ; preds = %199, %192
  %208 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %210, i32 0, i32 5
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %222

214:                                              ; preds = %207
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = call i32* @UINT_TO_PTR(i64 %219)
  %221 = call i32 @XX_FreeSmart(i32* %220)
  br label %222

222:                                              ; preds = %214, %207
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 4
  %227 = load i64, i64* %226, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %237

229:                                              ; preds = %222
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 4
  %234 = load i64, i64* %233, align 8
  %235 = call i32* @UINT_TO_PTR(i64 %234)
  %236 = call i32 @XX_FreeSmart(i32* %235)
  br label %237

237:                                              ; preds = %229, %222
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 3
  %242 = load i32*, i32** %241, align 8
  %243 = icmp ne i32* %242, null
  br i1 %243, label %244, label %254

244:                                              ; preds = %237
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 3
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @FM_MURAM_FreeMem(i32 %247, i32* %252)
  br label %254

254:                                              ; preds = %244, %237
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = icmp ne i32* %259, null
  br i1 %260, label %261, label %271

261:                                              ; preds = %254
  %262 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 2
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 @FM_MURAM_FreeMem(i32 %264, i32* %269)
  br label %271

271:                                              ; preds = %261, %254
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 1
  %276 = load i32*, i32** %275, align 8
  %277 = icmp ne i32* %276, null
  br i1 %277, label %278, label %285

278:                                              ; preds = %271
  %279 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %280 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = call i32 @XX_FreeSmart(i32* %283)
  br label %285

285:                                              ; preds = %278, %271
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = icmp ne i32* %290, null
  br i1 %291, label %292, label %299

292:                                              ; preds = %285
  %293 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 0
  %297 = load i32*, i32** %296, align 8
  %298 = call i32 @XX_FreeSmart(i32* %297)
  br label %299

299:                                              ; preds = %292, %285
  br label %300

300:                                              ; preds = %299, %176
  br label %301

301:                                              ; preds = %300, %66
  br label %302

302:                                              ; preds = %301, %65
  %303 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %307, label %315

307:                                              ; preds = %302
  %308 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = load i32*, i32** %312, align 8
  %314 = call i32 @FM_MURAM_FreeMem(i32 %310, i32* %313)
  br label %315

315:                                              ; preds = %307, %302
  ret void
}

declare dso_local i32 @FM_MURAM_FreeMem(i32, i32*) #1

declare dso_local i32 @XX_Free(i32*) #1

declare dso_local i32 @FmPcdUnregisterReassmPort(%struct.TYPE_15__*, i32*) #1

declare dso_local i32* @UINT_TO_PTR(i64) #1

declare dso_local i32 @XX_FreeSmart(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
