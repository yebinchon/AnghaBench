; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_sentence.c_v_sentencef.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_sentence.c_v_sentencef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_11__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_13__ = type { i64, i64, i64, i32 }

@VC_C1SET = common dso_local global i32 0, align 4
@CS_EMP = common dso_local global i64 0, align 8
@CS_EOF = common dso_local global i64 0, align 8
@CS_EOL = common dso_local global i64 0, align 8
@DBG_FATAL = common dso_local global i32 0, align 4
@VM_LMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_sentencef(i32* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  store i64 %13, i64* %14, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i64 %18, i64* %19, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @cs_init(i32* %20, %struct.TYPE_13__* %7)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %288

24:                                               ; preds = %2
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = load i32, i32* @VC_C1SET, align 4
  %27 = call i64 @F_ISSET(%struct.TYPE_12__* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  br label %34

33:                                               ; preds = %24
  br label %34

34:                                               ; preds = %33, %29
  %35 = phi i32 [ %32, %29 ], [ 1, %33 ]
  store i32 %35, i32* %9, align 4
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CS_EMP, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %49, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %77

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @isblank(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %44, %34
  %50 = load i32*, i32** %4, align 8
  %51 = call i64 @cs_fblank(i32* %50, %struct.TYPE_13__* %7)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %288

54:                                               ; preds = %49
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %54
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %62, %64
  br i1 %65, label %74, label %66

66:                                               ; preds = %58
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66, %58
  br label %200

75:                                               ; preds = %66
  store i32 1, i32* %3, align 4
  br label %288

76:                                               ; preds = %54
  br label %77

77:                                               ; preds = %76, %44, %40
  store i32 1, i32* %6, align 4
  br label %78

78:                                               ; preds = %179, %145, %124, %77
  %79 = load i32*, i32** %4, align 8
  %80 = call i64 @cs_next(i32* %79, %struct.TYPE_13__* %7)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %288

83:                                               ; preds = %78
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @CS_EOF, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  br label %180

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @CS_EOL, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %125

94:                                               ; preds = %89
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 2
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %6, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %124

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %9, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %9, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %124

104:                                              ; preds = %100
  %105 = load i32*, i32** %4, align 8
  %106 = call i64 @cs_next(i32* %105, %struct.TYPE_13__* %7)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 1, i32* %3, align 4
  br label %288

109:                                              ; preds = %104
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @isblank(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load i32*, i32** %4, align 8
  %120 = call i64 @cs_fblank(i32* %119, %struct.TYPE_13__* %7)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %118
  store i32 1, i32* %3, align 4
  br label %288

123:                                              ; preds = %118, %113, %109
  br label %200

124:                                              ; preds = %100, %97
  store i32 1, i32* %6, align 4
  br label %78

125:                                              ; preds = %89
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @CS_EMP, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %125
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %9, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %200

135:                                              ; preds = %130
  %136 = load i32*, i32** %4, align 8
  %137 = call i64 @cs_fblank(i32* %136, %struct.TYPE_13__* %7)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %135
  store i32 1, i32* %3, align 4
  br label %288

140:                                              ; preds = %135
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %9, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %140
  br label %200

145:                                              ; preds = %140
  store i32 1, i32* %6, align 4
  br label %78

146:                                              ; preds = %125
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  switch i32 %148, label %178 [
    i32 46, label %149
    i32 63, label %149
    i32 33, label %149
    i32 41, label %150
    i32 93, label %150
    i32 34, label %150
    i32 39, label %150
    i32 9, label %155
    i32 32, label %160
  ]

149:                                              ; preds = %146, %146, %146
  store i32 2, i32* %6, align 4
  br label %179

150:                                              ; preds = %146, %146, %146, %146
  %151 = load i32, i32* %6, align 4
  %152 = icmp ne i32 %151, 2
  br i1 %152, label %153, label %154

153:                                              ; preds = %150
  store i32 1, i32* %6, align 4
  br label %154

154:                                              ; preds = %153, %150
  br label %179

155:                                              ; preds = %146
  %156 = load i32, i32* %6, align 4
  %157 = icmp eq i32 %156, 2
  br i1 %157, label %158, label %159

158:                                              ; preds = %155
  store i32 0, i32* %6, align 4
  br label %159

159:                                              ; preds = %158, %155
  br label %160

160:                                              ; preds = %146, %159
  %161 = load i32, i32* %6, align 4
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %164

163:                                              ; preds = %160
  store i32 0, i32* %6, align 4
  br label %179

164:                                              ; preds = %160
  %165 = load i32, i32* %6, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %164
  %168 = load i32, i32* %9, align 4
  %169 = add nsw i32 %168, -1
  store i32 %169, i32* %9, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %167
  %172 = load i32*, i32** %4, align 8
  %173 = call i64 @cs_fblank(i32* %172, %struct.TYPE_13__* %7)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store i32 1, i32* %3, align 4
  br label %288

176:                                              ; preds = %171
  br label %200

177:                                              ; preds = %167, %164
  br label %178

178:                                              ; preds = %146, %177
  store i32 1, i32* %6, align 4
  br label %179

179:                                              ; preds = %178, %163, %154, %149
  br label %78

180:                                              ; preds = %88
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp eq i64 %184, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %180
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp eq i64 %192, %194
  br i1 %195, label %196, label %199

196:                                              ; preds = %188
  %197 = load i32*, i32** %4, align 8
  %198 = call i32 @v_eof(i32* %197, i32* null)
  store i32 1, i32* %3, align 4
  br label %288

199:                                              ; preds = %188, %180
  br label %200

200:                                              ; preds = %199, %176, %144, %134, %123, %74
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i32 0, i32 0
  store i64 %202, i64* %205, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 1
  store i64 %207, i64* %210, align 8
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %212 = call i64 @ISMOTION(%struct.TYPE_12__* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %280

214:                                              ; preds = %200
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 1
  %218 = load i64, i64* %217, align 8
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %267

220:                                              ; preds = %214
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %220
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %230, label %267

230:                                              ; preds = %224, %220
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 3
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp slt i64 %234, %238
  br i1 %239, label %240, label %263

240:                                              ; preds = %230
  %241 = load i32*, i32** %4, align 8
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = add nsw i64 %245, -1
  store i64 %246, i64* %244, align 8
  %247 = load i32, i32* @DBG_FATAL, align 4
  %248 = call i64 @db_get(i32* %241, i64 %246, i32 %247, i32* null, i64* %8)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %240
  store i32 1, i32* %3, align 4
  br label %288

251:                                              ; preds = %240
  %252 = load i64, i64* %8, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %251
  %255 = load i64, i64* %8, align 8
  %256 = sub i64 %255, 1
  br label %258

257:                                              ; preds = %251
  br label %258

258:                                              ; preds = %257, %254
  %259 = phi i64 [ %256, %254 ], [ 0, %257 ]
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  store i64 %259, i64* %262, align 8
  br label %263

263:                                              ; preds = %258, %230
  %264 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %265 = load i32, i32* @VM_LMODE, align 4
  %266 = call i32 @F_SET(%struct.TYPE_12__* %264, i32 %265)
  br label %273

267:                                              ; preds = %224, %214
  %268 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %269, i32 0, i32 1
  %271 = load i64, i64* %270, align 8
  %272 = add nsw i64 %271, -1
  store i64 %272, i64* %270, align 8
  br label %273

273:                                              ; preds = %267, %263
  %274 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 2
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 3
  %278 = bitcast %struct.TYPE_11__* %275 to i8*
  %279 = bitcast %struct.TYPE_11__* %277 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %278, i8* align 8 %279, i64 16, i1 false)
  br label %287

280:                                              ; preds = %200
  %281 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 1
  %285 = bitcast %struct.TYPE_11__* %282 to i8*
  %286 = bitcast %struct.TYPE_11__* %284 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %285, i8* align 8 %286, i64 16, i1 false)
  br label %287

287:                                              ; preds = %280, %273
  store i32 0, i32* %3, align 4
  br label %288

288:                                              ; preds = %287, %250, %196, %175, %139, %122, %108, %82, %75, %53, %23
  %289 = load i32, i32* %3, align 4
  ret i32 %289
}

declare dso_local i64 @cs_init(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @isblank(i32) #1

declare dso_local i64 @cs_fblank(i32*, %struct.TYPE_13__*) #1

declare dso_local i64 @cs_next(i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @v_eof(i32*, i32*) #1

declare dso_local i64 @ISMOTION(%struct.TYPE_12__*) #1

declare dso_local i64 @db_get(i32*, i64, i32, i32*, i64*) #1

declare dso_local i32 @F_SET(%struct.TYPE_12__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
