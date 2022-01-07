; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse_dup_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libgnuregex/extr_regcomp.c_parse_dup_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i8 }

@OP_OPEN_DUP_NUM = common dso_local global i64 0, align 8
@CHARACTER = common dso_local global i64 0, align 8
@REG_BADBR = common dso_local global i32 0, align 4
@OP_CLOSE_DUP_NUM = common dso_local global i64 0, align 8
@RE_INVALID_INTERVAL_ORD = common dso_local global i32 0, align 4
@END_OF_RE = common dso_local global i64 0, align 8
@REG_EBRACE = common dso_local global i32 0, align 4
@OP_DUP_PLUS = common dso_local global i64 0, align 8
@OP_DUP_QUESTION = common dso_local global i64 0, align 8
@free_tree = common dso_local global i32 0, align 4
@CONCAT = common dso_local global i32 0, align 4
@SUBEXP = common dso_local global i64 0, align 8
@mark_opt_subexp = common dso_local global i32 0, align 4
@OP_DUP_ASTERISK = common dso_local global i32 0, align 4
@OP_ALT = common dso_local global i32 0, align 4
@REG_ESPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_21__* (%struct.TYPE_21__*, i32*, i32*, %struct.TYPE_20__*, i32, i32*)* @parse_dup_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_21__* @parse_dup_op(%struct.TYPE_21__* %0, i32* %1, i32* %2, %struct.TYPE_20__* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_21__*, align 8
  %15 = alloca %struct.TYPE_21__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_20__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %15, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @re_string_cur_idx(i32* %21)
  store i32 %22, i32* %19, align 4
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %24 = bitcast %struct.TYPE_20__* %20 to i8*
  %25 = bitcast %struct.TYPE_20__* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false)
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @OP_OPEN_DUP_NUM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %159

31:                                               ; preds = %6
  store i32 0, i32* %18, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %34 = load i32, i32* %12, align 4
  %35 = call i32 @fetch_number(i32* %32, %struct.TYPE_20__* %33, i32 %34)
  store i32 %35, i32* %17, align 4
  %36 = load i32, i32* %17, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %56

38:                                               ; preds = %31
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CHARACTER, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 8
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 44
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %17, align 4
  br label %55

52:                                               ; preds = %44, %38
  %53 = load i32, i32* @REG_BADBR, align 4
  %54 = load i32*, i32** %13, align 8
  store i32 %53, i32* %54, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %339

55:                                               ; preds = %51
  br label %56

56:                                               ; preds = %55, %31
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, -2
  %59 = zext i1 %58 to i32
  %60 = call i64 @BE(i32 %59, i32 1)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %93

62:                                               ; preds = %56
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @OP_CLOSE_DUP_NUM, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %17, align 4
  br label %91

70:                                               ; preds = %62
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @CHARACTER, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 8
  %81 = sext i8 %80 to i32
  %82 = icmp eq i32 %81, 44
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32*, i32** %9, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @fetch_number(i32* %84, %struct.TYPE_20__* %85, i32 %86)
  br label %89

88:                                               ; preds = %76, %70
  br label %89

89:                                               ; preds = %88, %83
  %90 = phi i32 [ %87, %83 ], [ -2, %88 ]
  br label %91

91:                                               ; preds = %89, %68
  %92 = phi i32 [ %69, %68 ], [ %90, %89 ]
  store i32 %92, i32* %18, align 4
  br label %93

93:                                               ; preds = %91, %56
  %94 = load i32, i32* %17, align 4
  %95 = icmp eq i32 %94, -2
  br i1 %95, label %99, label %96

96:                                               ; preds = %93
  %97 = load i32, i32* %18, align 4
  %98 = icmp eq i32 %97, -2
  br label %99

99:                                               ; preds = %96, %93
  %100 = phi i1 [ true, %93 ], [ %98, %96 ]
  %101 = zext i1 %100 to i32
  %102 = call i64 @BE(i32 %101, i32 0)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %99
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @RE_INVALID_INTERVAL_ORD, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i64 @BE(i32 %110, i32 0)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %104
  %114 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @END_OF_RE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* @REG_EBRACE, align 4
  %121 = load i32*, i32** %13, align 8
  store i32 %120, i32* %121, align 4
  br label %125

122:                                              ; preds = %113
  %123 = load i32, i32* @REG_BADBR, align 4
  %124 = load i32*, i32** %13, align 8
  store i32 %123, i32* %124, align 4
  br label %125

125:                                              ; preds = %122, %119
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %339

126:                                              ; preds = %104
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* %19, align 4
  %129 = call i32 @re_string_set_index(i32* %127, i32 %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %131 = bitcast %struct.TYPE_20__* %130 to i8*
  %132 = bitcast %struct.TYPE_20__* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %131, i8* align 8 %132, i64 16, i1 false)
  %133 = load i64, i64* @CHARACTER, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %136, %struct.TYPE_21__** %7, align 8
  br label %339

137:                                              ; preds = %99
  %138 = load i32, i32* %18, align 4
  %139 = icmp ne i32 %138, -1
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* %17, align 4
  %142 = load i32, i32* %18, align 4
  %143 = icmp sgt i32 %141, %142
  br i1 %143, label %150, label %144

144:                                              ; preds = %140, %137
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @OP_CLOSE_DUP_NUM, align 8
  %149 = icmp ne i64 %147, %148
  br label %150

150:                                              ; preds = %144, %140
  %151 = phi i1 [ true, %140 ], [ %149, %144 ]
  %152 = zext i1 %151 to i32
  %153 = call i64 @BE(i32 %152, i32 0)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %150
  %156 = load i32, i32* @REG_BADBR, align 4
  %157 = load i32*, i32** %13, align 8
  store i32 %156, i32* %157, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %339

158:                                              ; preds = %150
  br label %174

159:                                              ; preds = %6
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @OP_DUP_PLUS, align 8
  %164 = icmp eq i64 %162, %163
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 1, i32 0
  store i32 %166, i32* %17, align 4
  %167 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @OP_DUP_QUESTION, align 8
  %171 = icmp eq i64 %169, %170
  %172 = zext i1 %171 to i64
  %173 = select i1 %171, i32 1, i32 -1
  store i32 %173, i32* %18, align 4
  br label %174

174:                                              ; preds = %159, %158
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = load i32, i32* %12, align 4
  %178 = call i32 @fetch_token(%struct.TYPE_20__* %175, i32* %176, i32 %177)
  %179 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %180 = icmp eq %struct.TYPE_21__* %179, null
  %181 = zext i1 %180 to i32
  %182 = call i64 @BE(i32 %181, i32 0)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %174
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %339

185:                                              ; preds = %174
  %186 = load i32, i32* %17, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load i32, i32* %18, align 4
  %190 = icmp eq i32 %189, 0
  br label %191

191:                                              ; preds = %188, %185
  %192 = phi i1 [ false, %185 ], [ %190, %188 ]
  %193 = zext i1 %192 to i32
  %194 = call i64 @BE(i32 %193, i32 0)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %198 = load i32, i32* @free_tree, align 4
  %199 = call i32 @postorder(%struct.TYPE_21__* %197, i32 %198, i8* null)
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %339

200:                                              ; preds = %191
  %201 = load i32, i32* %17, align 4
  %202 = icmp sgt i32 %201, 0
  %203 = zext i1 %202 to i32
  %204 = call i64 @BE(i32 %203, i32 0)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %247

206:                                              ; preds = %200
  %207 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  store %struct.TYPE_21__* %207, %struct.TYPE_21__** %14, align 8
  store i32 2, i32* %16, align 4
  br label %208

208:                                              ; preds = %233, %206
  %209 = load i32, i32* %16, align 4
  %210 = load i32, i32* %17, align 4
  %211 = icmp sle i32 %209, %210
  br i1 %211, label %212, label %236

212:                                              ; preds = %208
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %214 = load i32*, i32** %10, align 8
  %215 = call %struct.TYPE_21__* @duplicate_tree(%struct.TYPE_21__* %213, i32* %214)
  store %struct.TYPE_21__* %215, %struct.TYPE_21__** %8, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %218 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %219 = load i32, i32* @CONCAT, align 4
  %220 = call %struct.TYPE_21__* @create_tree(i32* %216, %struct.TYPE_21__* %217, %struct.TYPE_21__* %218, i32 %219)
  store %struct.TYPE_21__* %220, %struct.TYPE_21__** %14, align 8
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %222 = icmp eq %struct.TYPE_21__* %221, null
  br i1 %222, label %226, label %223

223:                                              ; preds = %212
  %224 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %225 = icmp eq %struct.TYPE_21__* %224, null
  br label %226

226:                                              ; preds = %223, %212
  %227 = phi i1 [ true, %212 ], [ %225, %223 ]
  %228 = zext i1 %227 to i32
  %229 = call i64 @BE(i32 %228, i32 0)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %232

231:                                              ; preds = %226
  br label %336

232:                                              ; preds = %226
  br label %233

233:                                              ; preds = %232
  %234 = load i32, i32* %16, align 4
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %16, align 4
  br label %208

236:                                              ; preds = %208
  %237 = load i32, i32* %17, align 4
  %238 = load i32, i32* %18, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %236
  %241 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %241, %struct.TYPE_21__** %7, align 8
  br label %339

242:                                              ; preds = %236
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %244 = load i32*, i32** %10, align 8
  %245 = call %struct.TYPE_21__* @duplicate_tree(%struct.TYPE_21__* %243, i32* %244)
  store %struct.TYPE_21__* %245, %struct.TYPE_21__** %8, align 8
  %246 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %246, %struct.TYPE_21__** %15, align 8
  br label %248

247:                                              ; preds = %200
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %15, align 8
  br label %248

248:                                              ; preds = %247, %242
  %249 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @SUBEXP, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %265

255:                                              ; preds = %248
  %256 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %257 = load i32, i32* @mark_opt_subexp, align 4
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %259, i32 0, i32 1
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = inttoptr i64 %262 to i8*
  %264 = call i32 @postorder(%struct.TYPE_21__* %256, i32 %257, i8* %263)
  br label %265

265:                                              ; preds = %255, %248
  %266 = load i32*, i32** %10, align 8
  %267 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %268 = load i32, i32* %18, align 4
  %269 = icmp eq i32 %268, -1
  br i1 %269, label %270, label %272

270:                                              ; preds = %265
  %271 = load i32, i32* @OP_DUP_ASTERISK, align 4
  br label %274

272:                                              ; preds = %265
  %273 = load i32, i32* @OP_ALT, align 4
  br label %274

274:                                              ; preds = %272, %270
  %275 = phi i32 [ %271, %270 ], [ %273, %272 ]
  %276 = call %struct.TYPE_21__* @create_tree(i32* %266, %struct.TYPE_21__* %267, %struct.TYPE_21__* null, i32 %275)
  store %struct.TYPE_21__* %276, %struct.TYPE_21__** %14, align 8
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %278 = icmp eq %struct.TYPE_21__* %277, null
  %279 = zext i1 %278 to i32
  %280 = call i64 @BE(i32 %279, i32 0)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %274
  br label %336

283:                                              ; preds = %274
  %284 = load i32, i32* %17, align 4
  %285 = add nsw i32 %284, 2
  store i32 %285, i32* %16, align 4
  br label %286

286:                                              ; preds = %322, %283
  %287 = load i32, i32* %16, align 4
  %288 = load i32, i32* %18, align 4
  %289 = icmp sle i32 %287, %288
  br i1 %289, label %290, label %325

290:                                              ; preds = %286
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %292 = load i32*, i32** %10, align 8
  %293 = call %struct.TYPE_21__* @duplicate_tree(%struct.TYPE_21__* %291, i32* %292)
  store %struct.TYPE_21__* %293, %struct.TYPE_21__** %8, align 8
  %294 = load i32*, i32** %10, align 8
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %296 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %297 = load i32, i32* @CONCAT, align 4
  %298 = call %struct.TYPE_21__* @create_tree(i32* %294, %struct.TYPE_21__* %295, %struct.TYPE_21__* %296, i32 %297)
  store %struct.TYPE_21__* %298, %struct.TYPE_21__** %14, align 8
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %300 = icmp eq %struct.TYPE_21__* %299, null
  br i1 %300, label %304, label %301

301:                                              ; preds = %290
  %302 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %303 = icmp eq %struct.TYPE_21__* %302, null
  br label %304

304:                                              ; preds = %301, %290
  %305 = phi i1 [ true, %290 ], [ %303, %301 ]
  %306 = zext i1 %305 to i32
  %307 = call i64 @BE(i32 %306, i32 0)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %304
  br label %336

310:                                              ; preds = %304
  %311 = load i32*, i32** %10, align 8
  %312 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %313 = load i32, i32* @OP_ALT, align 4
  %314 = call %struct.TYPE_21__* @create_tree(i32* %311, %struct.TYPE_21__* %312, %struct.TYPE_21__* null, i32 %313)
  store %struct.TYPE_21__* %314, %struct.TYPE_21__** %14, align 8
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %316 = icmp eq %struct.TYPE_21__* %315, null
  %317 = zext i1 %316 to i32
  %318 = call i64 @BE(i32 %317, i32 0)
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %321

320:                                              ; preds = %310
  br label %336

321:                                              ; preds = %310
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %16, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %16, align 4
  br label %286

325:                                              ; preds = %286
  %326 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %327 = icmp ne %struct.TYPE_21__* %326, null
  br i1 %327, label %328, label %334

328:                                              ; preds = %325
  %329 = load i32*, i32** %10, align 8
  %330 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  %331 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %332 = load i32, i32* @CONCAT, align 4
  %333 = call %struct.TYPE_21__* @create_tree(i32* %329, %struct.TYPE_21__* %330, %struct.TYPE_21__* %331, i32 %332)
  store %struct.TYPE_21__* %333, %struct.TYPE_21__** %14, align 8
  br label %334

334:                                              ; preds = %328, %325
  %335 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  store %struct.TYPE_21__* %335, %struct.TYPE_21__** %7, align 8
  br label %339

336:                                              ; preds = %320, %309, %282, %231
  %337 = load i32, i32* @REG_ESPACE, align 4
  %338 = load i32*, i32** %13, align 8
  store i32 %337, i32* %338, align 4
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %7, align 8
  br label %339

339:                                              ; preds = %336, %334, %240, %196, %184, %155, %126, %125, %52
  %340 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  ret %struct.TYPE_21__* %340
}

declare dso_local i32 @re_string_cur_idx(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fetch_number(i32*, %struct.TYPE_20__*, i32) #1

declare dso_local i64 @BE(i32, i32) #1

declare dso_local i32 @re_string_set_index(i32*, i32) #1

declare dso_local i32 @fetch_token(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @postorder(%struct.TYPE_21__*, i32, i8*) #1

declare dso_local %struct.TYPE_21__* @duplicate_tree(%struct.TYPE_21__*, i32*) #1

declare dso_local %struct.TYPE_21__* @create_tree(i32*, %struct.TYPE_21__*, %struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
