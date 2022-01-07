; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_fc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_txt.c_txt_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i32 (%struct.TYPE_28__*)* }
%struct.TYPE_27__ = type { i32, i64, i64, i32, i32*, i32, i32, i32 }
%struct.stat = type { i32 }
%struct.TYPE_30__ = type { i64, i32* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_30__** }

@OOBLNO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_27__*, i32*)* @txt_fc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txt_fc(%struct.TYPE_28__* %0, %struct.TYPE_27__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.stat, align 4
  %9 = alloca %struct.TYPE_30__**, align 8
  %10 = alloca %struct.TYPE_29__, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i8* null, i8** %20, align 8
  store i32 1, i32* %22, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  %25 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %26 = load i32, i32* @OOBLNO, align 4
  %27 = load i32, i32* @OOBLNO, align 4
  %28 = call i32 @ex_cinit(%struct.TYPE_28__* %25, %struct.TYPE_29__* %10, i32 0, i32 0, i32 %26, i32 %27, i32 0)
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %3
  store i64 0, i64* %12, align 8
  %34 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %16, align 8
  br label %101

37:                                               ; preds = %3
  store i64 0, i64* %12, align 8
  %38 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @MAX(i32 %40, i32 %43)
  store i64 %44, i64* %14, align 8
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %14, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %23, align 8
  %50 = load i32*, i32** %23, align 8
  store i32* %50, i32** %16, align 8
  br label %51

51:                                               ; preds = %95, %37
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = icmp ult i64 %52, %56
  br i1 %57, label %58, label %100

58:                                               ; preds = %51
  %59 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %60 = load i32*, i32** %23, align 8
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @IS_ESCAPE(%struct.TYPE_28__* %59, %struct.TYPE_29__* %10, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %14, align 8
  %67 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sext i32 %69 to i64
  %71 = icmp eq i64 %66, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %100

73:                                               ; preds = %64
  %74 = load i32*, i32** %23, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %23, align 8
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 2
  store i64 %77, i64* %12, align 8
  br label %94

78:                                               ; preds = %58
  %79 = load i32*, i32** %23, align 8
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @cmdskip(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32*, i32** %23, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32* %85, i32** %16, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 0, i32* %22, align 4
  br label %89

89:                                               ; preds = %88, %83
  store i64 0, i64* %12, align 8
  br label %93

90:                                               ; preds = %78
  %91 = load i64, i64* %12, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %12, align 8
  br label %93

93:                                               ; preds = %90, %89
  br label %94

94:                                               ; preds = %93, %73
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* %14, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %14, align 8
  %98 = load i32*, i32** %23, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %23, align 8
  br label %51

100:                                              ; preds = %72, %51
  br label %101

101:                                              ; preds = %100, %33
  %102 = load i32, i32* %22, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %106 = load i32*, i32** %16, align 8
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @argv_flt_ex(%struct.TYPE_28__* %105, %struct.TYPE_29__* %10, i32* %106, i64 %107)
  br label %131

109:                                              ; preds = %101
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %111 = load i32*, i32** %16, align 8
  %112 = load i64, i64* %12, align 8
  %113 = call i32* @argv_uesc(%struct.TYPE_28__* %110, %struct.TYPE_29__* %10, i32* %111, i64 %112)
  store i32* %113, i32** %18, align 8
  %114 = icmp eq i32* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 1, i32* %4, align 4
  br label %495

116:                                              ; preds = %109
  %117 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %118 = load i32*, i32** %18, align 8
  %119 = load i32*, i32** %18, align 8
  %120 = call i64 @STRLEN(i32* %119)
  %121 = call i64 @argv_flt_path(%struct.TYPE_28__* %117, %struct.TYPE_29__* %10, i32* %118, i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %116
  %124 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = call i32 @FREE_SPACEW(%struct.TYPE_28__* %124, i32* %125, i32 0)
  store i32 0, i32* %4, align 4
  br label %495

127:                                              ; preds = %116
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %129 = load i32*, i32** %18, align 8
  %130 = call i32 @FREE_SPACEW(%struct.TYPE_28__* %128, i32* %129, i32 0)
  br label %131

131:                                              ; preds = %127, %104
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  store i32 %133, i32* %15, align 4
  %134 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %135 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %134, align 8
  store %struct.TYPE_30__** %135, %struct.TYPE_30__*** %9, align 8
  %136 = load i32, i32* %15, align 4
  switch i32 %136, label %153 [
    i32 0, label %137
    i32 1, label %145
  ]

137:                                              ; preds = %131
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %141, align 8
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %144 = call i32 %142(%struct.TYPE_28__* %143)
  store i32 0, i32* %4, align 4
  br label %495

145:                                              ; preds = %131
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %147 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %147, i64 0
  %149 = load %struct.TYPE_30__*, %struct.TYPE_30__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = call i64 @STRLEN(i32* %151)
  store i64 %152, i64* %13, align 8
  br label %228

153:                                              ; preds = %131
  %154 = load i32*, i32** %7, align 8
  store i32 1, i32* %154, align 4
  %155 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %156 = load i32, i32* %15, align 4
  %157 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %9, align 8
  %158 = call i32 @txt_fc_col(%struct.TYPE_28__* %155, i32 %156, %struct.TYPE_30__** %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %153
  store i32 1, i32* %4, align 4
  br label %495

161:                                              ; preds = %153
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %163 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %163, i64 0
  %165 = load %struct.TYPE_30__*, %struct.TYPE_30__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  store i64 %167, i64* %13, align 8
  br label %168

168:                                              ; preds = %225, %161
  %169 = load i32, i32* %15, align 4
  %170 = add nsw i32 %169, -1
  store i32 %170, i32* %15, align 4
  %171 = icmp sgt i32 %170, 0
  br i1 %171, label %172, label %227

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %174 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %173, align 8
  %175 = load i32, i32* %15, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %174, i64 %176
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %13, align 8
  %182 = icmp ult i64 %180, %181
  br i1 %182, label %183, label %192

183:                                              ; preds = %172
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %185 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %184, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %185, i64 %187
  %189 = load %struct.TYPE_30__*, %struct.TYPE_30__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  store i64 %191, i64* %13, align 8
  br label %192

192:                                              ; preds = %183, %172
  store i64 0, i64* %11, align 8
  br label %193

193:                                              ; preds = %222, %192
  %194 = load i64, i64* %11, align 8
  %195 = load i64, i64* %13, align 8
  %196 = icmp ult i64 %194, %195
  br i1 %196, label %197, label %219

197:                                              ; preds = %193
  %198 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %199 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %198, align 8
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %199, i64 %201
  %203 = load %struct.TYPE_30__*, %struct.TYPE_30__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* %11, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %210 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %210, i64 0
  %212 = load %struct.TYPE_30__*, %struct.TYPE_30__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* %11, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %208, %217
  br label %219

219:                                              ; preds = %197, %193
  %220 = phi i1 [ false, %193 ], [ %218, %197 ]
  br i1 %220, label %221, label %225

221:                                              ; preds = %219
  br label %222

222:                                              ; preds = %221
  %223 = load i64, i64* %11, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %11, align 8
  br label %193

225:                                              ; preds = %219
  %226 = load i64, i64* %11, align 8
  store i64 %226, i64* %13, align 8
  br label %168

227:                                              ; preds = %168
  br label %228

228:                                              ; preds = %227, %145
  %229 = load i32, i32* %22, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %238

231:                                              ; preds = %228
  %232 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %233 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %233, i64 0
  %235 = load %struct.TYPE_30__*, %struct.TYPE_30__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  store i32* %237, i32** %18, align 8
  br label %253

238:                                              ; preds = %228
  %239 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %241 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %241, i64 0
  %243 = load %struct.TYPE_30__*, %struct.TYPE_30__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %243, i32 0, i32 1
  %245 = load i32*, i32** %244, align 8
  %246 = load i64, i64* %13, align 8
  %247 = call i32* @argv_esc(%struct.TYPE_28__* %239, %struct.TYPE_29__* %10, i32* %245, i64 %246)
  store i32* %247, i32** %18, align 8
  %248 = icmp eq i32* %247, null
  br i1 %248, label %249, label %250

249:                                              ; preds = %238
  store i32 1, i32* %4, align 4
  br label %495

250:                                              ; preds = %238
  %251 = load i32*, i32** %18, align 8
  %252 = call i64 @STRLEN(i32* %251)
  store i64 %252, i64* %13, align 8
  br label %253

253:                                              ; preds = %250, %231
  %254 = load i32*, i32** %18, align 8
  store i32* %254, i32** %17, align 8
  br label %255

255:                                              ; preds = %269, %253
  %256 = load i64, i64* %12, align 8
  %257 = icmp ugt i64 %256, 0
  br i1 %257, label %258, label %261

258:                                              ; preds = %255
  %259 = load i64, i64* %13, align 8
  %260 = icmp ugt i64 %259, 0
  br label %261

261:                                              ; preds = %258, %255
  %262 = phi i1 [ false, %255 ], [ %260, %258 ]
  br i1 %262, label %263, label %274

263:                                              ; preds = %261
  %264 = load i32*, i32** %17, align 8
  %265 = getelementptr inbounds i32, i32* %264, i32 1
  store i32* %265, i32** %17, align 8
  %266 = load i32, i32* %264, align 4
  %267 = load i32*, i32** %16, align 8
  %268 = getelementptr inbounds i32, i32* %267, i32 1
  store i32* %268, i32** %16, align 8
  store i32 %266, i32* %267, align 4
  br label %269

269:                                              ; preds = %263
  %270 = load i64, i64* %12, align 8
  %271 = add i64 %270, -1
  store i64 %271, i64* %12, align 8
  %272 = load i64, i64* %13, align 8
  %273 = add i64 %272, -1
  store i64 %273, i64* %13, align 8
  br label %255

274:                                              ; preds = %261
  %275 = load i64, i64* %12, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %290

277:                                              ; preds = %274
  %278 = load i64, i64* %12, align 8
  %279 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = sext i32 %281 to i64
  %283 = sub i64 %282, %278
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %280, align 8
  %285 = load i64, i64* %12, align 8
  %286 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = add i64 %288, %285
  store i64 %289, i64* %287, align 8
  br label %290

290:                                              ; preds = %277, %274
  br label %291

291:                                              ; preds = %307, %290
  %292 = load i64, i64* %13, align 8
  %293 = icmp ugt i64 %292, 0
  br i1 %293, label %294, label %299

294:                                              ; preds = %291
  %295 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %296 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %295, i32 0, i32 1
  %297 = load i64, i64* %296, align 8
  %298 = icmp sgt i64 %297, 0
  br label %299

299:                                              ; preds = %294, %291
  %300 = phi i1 [ false, %291 ], [ %298, %294 ]
  br i1 %300, label %301, label %318

301:                                              ; preds = %299
  %302 = load i32*, i32** %17, align 8
  %303 = getelementptr inbounds i32, i32* %302, i32 1
  store i32* %303, i32** %17, align 8
  %304 = load i32, i32* %302, align 4
  %305 = load i32*, i32** %16, align 8
  %306 = getelementptr inbounds i32, i32* %305, i32 1
  store i32* %306, i32** %16, align 8
  store i32 %304, i32* %305, align 4
  br label %307

307:                                              ; preds = %301
  %308 = load i64, i64* %13, align 8
  %309 = add i64 %308, -1
  store i64 %309, i64* %13, align 8
  %310 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %310, i32 0, i32 1
  %312 = load i64, i64* %311, align 8
  %313 = add nsw i64 %312, -1
  store i64 %313, i64* %311, align 8
  %314 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %315, align 8
  br label %291

318:                                              ; preds = %299
  %319 = load i64, i64* %13, align 8
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %385

321:                                              ; preds = %318
  %322 = load i32*, i32** %16, align 8
  %323 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %323, i32 0, i32 4
  %325 = load i32*, i32** %324, align 8
  %326 = ptrtoint i32* %322 to i64
  %327 = ptrtoint i32* %325 to i64
  %328 = sub i64 %326, %327
  %329 = sdiv exact i64 %328, 4
  store i64 %329, i64* %14, align 8
  %330 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %331 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %332 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %331, i32 0, i32 4
  %333 = load i32*, i32** %332, align 8
  %334 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %334, i32 0, i32 5
  %336 = load i32, i32* %335, align 8
  %337 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %338 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* %13, align 8
  %341 = add i64 %339, %340
  %342 = call i32 @BINC_RETW(%struct.TYPE_28__* %330, i32* %333, i32 %336, i64 %341)
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 4
  %345 = load i32*, i32** %344, align 8
  %346 = load i64, i64* %14, align 8
  %347 = getelementptr inbounds i32, i32* %345, i64 %346
  store i32* %347, i32** %16, align 8
  %348 = load i64, i64* %13, align 8
  %349 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = add i64 %352, %348
  %354 = trunc i64 %353 to i32
  store i32 %354, i32* %350, align 8
  %355 = load i64, i64* %13, align 8
  %356 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %356, i32 0, i32 2
  %358 = load i64, i64* %357, align 8
  %359 = add i64 %358, %355
  store i64 %359, i64* %357, align 8
  %360 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %360, i32 0, i32 3
  %362 = load i32, i32* %361, align 8
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %373

364:                                              ; preds = %321
  %365 = load i32*, i32** %16, align 8
  %366 = load i64, i64* %13, align 8
  %367 = getelementptr inbounds i32, i32* %365, i64 %366
  %368 = load i32*, i32** %16, align 8
  %369 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @MEMMOVE(i32* %367, i32* %368, i32 %371)
  br label %373

373:                                              ; preds = %364, %321
  br label %374

374:                                              ; preds = %378, %373
  %375 = load i64, i64* %13, align 8
  %376 = add i64 %375, -1
  store i64 %376, i64* %13, align 8
  %377 = icmp ne i64 %375, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %374
  %379 = load i32*, i32** %17, align 8
  %380 = getelementptr inbounds i32, i32* %379, i32 1
  store i32* %380, i32** %17, align 8
  %381 = load i32, i32* %379, align 4
  %382 = load i32*, i32** %16, align 8
  %383 = getelementptr inbounds i32, i32* %382, i32 1
  store i32* %383, i32** %16, align 8
  store i32 %381, i32* %382, align 4
  br label %374

384:                                              ; preds = %374
  br label %385

385:                                              ; preds = %384, %318
  %386 = load i32, i32* %22, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %385
  %389 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %390 = load i32*, i32** %18, align 8
  %391 = call i32 @FREE_SPACEW(%struct.TYPE_28__* %389, i32* %390, i32 0)
  br label %392

392:                                              ; preds = %388, %385
  %393 = load i32, i32* %15, align 4
  %394 = icmp ne i32 %393, 1
  br i1 %394, label %398, label %395

395:                                              ; preds = %392
  %396 = load i32, i32* %22, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %399

398:                                              ; preds = %395, %392
  store i32 0, i32* %4, align 4
  br label %495

399:                                              ; preds = %395
  %400 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %401 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %402 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %401, align 8
  %403 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %402, i64 0
  %404 = load %struct.TYPE_30__*, %struct.TYPE_30__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %404, i32 0, i32 1
  %406 = load i32*, i32** %405, align 8
  %407 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %10, i32 0, i32 1
  %408 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_30__*, %struct.TYPE_30__** %408, i64 0
  %410 = load %struct.TYPE_30__*, %struct.TYPE_30__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = add i64 %412, 1
  %414 = trunc i64 %413 to i32
  %415 = load i8*, i8** %19, align 8
  %416 = load i64, i64* %21, align 8
  %417 = call i32 @INT2CHAR(%struct.TYPE_28__* %400, i32* %406, i32 %414, i8* %415, i64 %416)
  %418 = load i8*, i8** %19, align 8
  %419 = call i8* @expanduser(i8* %418)
  store i8* %419, i8** %20, align 8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %421, label %423

421:                                              ; preds = %399
  %422 = load i8*, i8** %20, align 8
  store i8* %422, i8** %19, align 8
  br label %423

423:                                              ; preds = %421, %399
  %424 = load i8*, i8** %19, align 8
  %425 = call i32 @stat(i8* %424, %struct.stat* %8)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %492, label %427

427:                                              ; preds = %423
  %428 = getelementptr inbounds %struct.stat, %struct.stat* %8, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = call i64 @S_ISDIR(i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %492

432:                                              ; preds = %427
  %433 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %434 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %437, label %480

437:                                              ; preds = %432
  %438 = load i32*, i32** %16, align 8
  %439 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %440 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %439, i32 0, i32 4
  %441 = load i32*, i32** %440, align 8
  %442 = ptrtoint i32* %438 to i64
  %443 = ptrtoint i32* %441 to i64
  %444 = sub i64 %442, %443
  %445 = sdiv exact i64 %444, 4
  store i64 %445, i64* %14, align 8
  %446 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %447 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %448 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %447, i32 0, i32 4
  %449 = load i32*, i32** %448, align 8
  %450 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %451 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %450, i32 0, i32 5
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %454 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %453, i32 0, i32 2
  %455 = load i64, i64* %454, align 8
  %456 = add nsw i64 %455, 1
  %457 = call i32 @BINC_RETW(%struct.TYPE_28__* %446, i32* %449, i32 %452, i64 %456)
  %458 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %459 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %458, i32 0, i32 4
  %460 = load i32*, i32** %459, align 8
  %461 = load i64, i64* %14, align 8
  %462 = getelementptr inbounds i32, i32* %460, i64 %461
  store i32* %462, i32** %16, align 8
  %463 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %464 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %463, i32 0, i32 3
  %465 = load i32, i32* %464, align 8
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %475

467:                                              ; preds = %437
  %468 = load i32*, i32** %16, align 8
  %469 = getelementptr inbounds i32, i32* %468, i64 1
  %470 = load i32*, i32** %16, align 8
  %471 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %472 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 8
  %474 = call i32 @MEMMOVE(i32* %469, i32* %470, i32 %473)
  br label %475

475:                                              ; preds = %467, %437
  %476 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %476, i32 0, i32 2
  %478 = load i64, i64* %477, align 8
  %479 = add nsw i64 %478, 1
  store i64 %479, i64* %477, align 8
  br label %485

480:                                              ; preds = %432
  %481 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %481, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = add nsw i64 %483, -1
  store i64 %484, i64* %482, align 8
  br label %485

485:                                              ; preds = %480, %475
  %486 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %487 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = add nsw i32 %488, 1
  store i32 %489, i32* %487, align 8
  %490 = load i32*, i32** %16, align 8
  %491 = getelementptr inbounds i32, i32* %490, i32 1
  store i32* %491, i32** %16, align 8
  store i32 47, i32* %490, align 4
  br label %492

492:                                              ; preds = %485, %427, %423
  %493 = load i8*, i8** %20, align 8
  %494 = call i32 @free(i8* %493)
  store i32 0, i32* %4, align 4
  br label %495

495:                                              ; preds = %492, %398, %249, %160, %137, %123, %115
  %496 = load i32, i32* %4, align 4
  ret i32 %496
}

declare dso_local i32 @ex_cinit(%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i64 @IS_ESCAPE(%struct.TYPE_28__*, %struct.TYPE_29__*, i32) #1

declare dso_local i64 @cmdskip(i32) #1

declare dso_local i32 @argv_flt_ex(%struct.TYPE_28__*, %struct.TYPE_29__*, i32*, i64) #1

declare dso_local i32* @argv_uesc(%struct.TYPE_28__*, %struct.TYPE_29__*, i32*, i64) #1

declare dso_local i64 @argv_flt_path(%struct.TYPE_28__*, %struct.TYPE_29__*, i32*, i64) #1

declare dso_local i64 @STRLEN(i32*) #1

declare dso_local i32 @FREE_SPACEW(%struct.TYPE_28__*, i32*, i32) #1

declare dso_local i32 @txt_fc_col(%struct.TYPE_28__*, i32, %struct.TYPE_30__**) #1

declare dso_local i32* @argv_esc(%struct.TYPE_28__*, %struct.TYPE_29__*, i32*, i64) #1

declare dso_local i32 @BINC_RETW(%struct.TYPE_28__*, i32*, i32, i64) #1

declare dso_local i32 @MEMMOVE(i32*, i32*, i32) #1

declare dso_local i32 @INT2CHAR(%struct.TYPE_28__*, i32*, i32, i8*, i64) #1

declare dso_local i8* @expanduser(i8*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
