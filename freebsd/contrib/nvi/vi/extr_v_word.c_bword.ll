; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_word.c_bword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_word.c_bword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_15__, %struct.TYPE_12__, %struct.TYPE_12__ }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, i64, i64, i32 }

@VC_C1SET = common dso_local global i32 0, align 4
@BIGWORD = common dso_local global i32 0, align 4
@CS_SOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i32)* @bword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bword(i32* %0, %struct.TYPE_13__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %12 = load i32, i32* @VC_C1SET, align 4
  %13 = call i64 @F_ISSET(%struct.TYPE_13__* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  br label %20

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19, %15
  %21 = phi i32 [ %18, %15 ], [ 1, %19 ]
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  store i64 %30, i64* %31, align 8
  %32 = load i32*, i32** %5, align 8
  %33 = call i64 @cs_init(i32* %32, %struct.TYPE_14__* %9)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %20
  store i32 1, i32* %4, align 4
  br label %267

36:                                               ; preds = %20
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @ISBLANK(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %61, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  %47 = call i64 @cs_prev(i32* %46, %struct.TYPE_14__* %9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 1, i32* %4, align 4
  br label %267

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @ISBLANK(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %67

60:                                               ; preds = %54, %50
  br label %61

61:                                               ; preds = %60, %40, %36
  %62 = load i32*, i32** %5, align 8
  %63 = call i64 @cs_bblank(i32* %62, %struct.TYPE_14__* %9)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 1, i32* %4, align 4
  br label %267

66:                                               ; preds = %61
  br label %67

67:                                               ; preds = %66, %59
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @BIGWORD, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %125

71:                                               ; preds = %67
  br label %72

72:                                               ; preds = %123, %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %10, align 4
  %75 = icmp ne i32 %73, 0
  br i1 %75, label %76, label %124

76:                                               ; preds = %72
  br label %77

77:                                               ; preds = %98, %76
  %78 = load i32*, i32** %5, align 8
  %79 = call i64 @cs_prev(i32* %78, %struct.TYPE_14__* %9)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 1, i32* %4, align 4
  br label %267

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CS_SOF, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %219

88:                                               ; preds = %82
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @ISBLANK(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92, %88
  br label %99

98:                                               ; preds = %92
  br label %77

99:                                               ; preds = %97
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %99
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32*, i32** %5, align 8
  %108 = call i64 @cs_next(i32* %107, %struct.TYPE_14__* %9)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %106
  store i32 1, i32* %4, align 4
  br label %267

111:                                              ; preds = %106, %102
  br label %124

112:                                              ; preds = %99
  %113 = load i32*, i32** %5, align 8
  %114 = call i64 @cs_bblank(i32* %113, %struct.TYPE_14__* %9)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %112
  store i32 1, i32* %4, align 4
  br label %267

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @CS_SOF, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %123

122:                                              ; preds = %117
  br label %219

123:                                              ; preds = %117
  br label %72

124:                                              ; preds = %111, %72
  br label %218

125:                                              ; preds = %67
  br label %126

126:                                              ; preds = %216, %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, -1
  store i32 %128, i32* %10, align 4
  %129 = icmp ne i32 %127, 0
  br i1 %129, label %130, label %217

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = call i64 @inword(i32 %136)
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %134, %130
  %140 = phi i1 [ false, %130 ], [ %138, %134 ]
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 0, i32 1
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %181, %139
  %144 = load i32*, i32** %5, align 8
  %145 = call i64 @cs_prev(i32* %144, %struct.TYPE_14__* %9)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  store i32 1, i32* %4, align 4
  br label %267

148:                                              ; preds = %143
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @CS_SOF, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  br label %219

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %163, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @ISBLANK(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %158, %154
  br label %182

164:                                              ; preds = %158
  %165 = load i32, i32* %8, align 4
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @inword(i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  br label %182

173:                                              ; preds = %167
  br label %181

174:                                              ; preds = %164
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = call i64 @inword(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  br label %182

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %173
  br label %143

182:                                              ; preds = %179, %172, %163
  %183 = load i32, i32* %10, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %182
  %186 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = icmp eq i64 %187, 0
  br i1 %188, label %189, label %194

189:                                              ; preds = %185
  %190 = load i32*, i32** %5, align 8
  %191 = call i64 @cs_next(i32* %190, %struct.TYPE_14__* %9)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  store i32 1, i32* %4, align 4
  br label %267

194:                                              ; preds = %189, %185
  br label %217

195:                                              ; preds = %182
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %197 = load i64, i64* %196, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %204, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = call i64 @ISBLANK(i32 %201)
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %199, %195
  %205 = load i32*, i32** %5, align 8
  %206 = call i64 @cs_bblank(i32* %205, %struct.TYPE_14__* %9)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  store i32 1, i32* %4, align 4
  br label %267

209:                                              ; preds = %204
  br label %210

210:                                              ; preds = %209, %199
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @CS_SOF, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  br label %219

216:                                              ; preds = %210
  br label %126

217:                                              ; preds = %194, %126
  br label %218

218:                                              ; preds = %217, %124
  br label %219

219:                                              ; preds = %218, %215, %153, %122, %87
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp eq i64 %221, %225
  br i1 %226, label %227, label %240

227:                                              ; preds = %219
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  %234 = icmp eq i64 %229, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %227
  %236 = load i32*, i32** %5, align 8
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = call i32 @v_sof(i32* %236, %struct.TYPE_15__* %238)
  store i32 1, i32* %4, align 4
  br label %267

240:                                              ; preds = %227, %219
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 0
  store i64 %242, i64* %245, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 1
  store i64 %247, i64* %250, align 8
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 3
  %253 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 2
  %255 = bitcast %struct.TYPE_12__* %252 to i8*
  %256 = bitcast %struct.TYPE_12__* %254 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %255, i8* align 8 %256, i64 16, i1 false)
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %258 = call i64 @ISMOTION(%struct.TYPE_13__* %257)
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %240
  %261 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = add nsw i64 %264, -1
  store i64 %265, i64* %263, align 8
  br label %266

266:                                              ; preds = %260, %240
  store i32 0, i32* %4, align 4
  br label %267

267:                                              ; preds = %266, %235, %208, %193, %147, %116, %110, %81, %65, %49, %35
  %268 = load i32, i32* %4, align 4
  ret i32 %268
}

declare dso_local i64 @F_ISSET(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @cs_init(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @ISBLANK(i32) #1

declare dso_local i64 @cs_prev(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @cs_bblank(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @cs_next(i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @inword(i32) #1

declare dso_local i32 @v_sof(i32*, %struct.TYPE_15__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ISMOTION(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
