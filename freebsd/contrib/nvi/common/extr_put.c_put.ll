; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_put.c_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_put.c_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i32, i32, i32*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.TYPE_31__* }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_28__ = type { i64, i32* }

@M_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"053|The default buffer is empty\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"054|Buffer %s is empty\00", align 1
@L_ADDED = common dso_local global i64 0, align 8
@q = common dso_local global i32 0, align 4
@CB_LMODE = common dso_local global i32 0, align 4
@DBG_FATAL = common dso_local global i32 0, align 4
@L_CHANGED = common dso_local global i64 0, align 8
@_texth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @put(%struct.TYPE_29__* %0, %struct.TYPE_31__* %1, i32* %2, %struct.TYPE_30__* %3, %struct.TYPE_30__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca %struct.TYPE_31__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_30__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca %struct.TYPE_28__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.TYPE_29__* %0, %struct.TYPE_29__** %8, align 8
  store %struct.TYPE_31__* %1, %struct.TYPE_31__** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.TYPE_30__* %3, %struct.TYPE_30__** %11, align 8
  store %struct.TYPE_30__* %4, %struct.TYPE_30__** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %26 = icmp eq %struct.TYPE_31__* %25, null
  br i1 %26, label %27, label %61

27:                                               ; preds = %6
  %28 = load i32*, i32** %10, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %43

30:                                               ; preds = %27
  %31 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 3
  %33 = load %struct.TYPE_27__*, %struct.TYPE_27__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_31__*, %struct.TYPE_31__** %34, align 8
  store %struct.TYPE_31__* %35, %struct.TYPE_31__** %9, align 8
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %37 = icmp eq %struct.TYPE_31__* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %40 = load i32, i32* @M_ERR, align 4
  %41 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @msgq(%struct.TYPE_29__* %39, i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %471

42:                                               ; preds = %30
  br label %60

43:                                               ; preds = %27
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %48 = load i32, i32* %14, align 4
  %49 = call i32 @CBNAME(%struct.TYPE_29__* %46, %struct.TYPE_31__* %47, i32 %48)
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %51 = icmp eq %struct.TYPE_31__* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %43
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %54 = load i32, i32* @M_ERR, align 4
  %55 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @KEY_NAME(%struct.TYPE_29__* %55, i32 %56)
  %58 = call i32 (%struct.TYPE_29__*, i32, i8*, ...) @msgq(%struct.TYPE_29__* %53, i32 %54, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 1, i32* %7, align 4
  br label %471

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %42
  br label %61

61:                                               ; preds = %60, %6
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call %struct.TYPE_28__* @TAILQ_FIRST(i32 %64)
  store %struct.TYPE_28__* %65, %struct.TYPE_28__** %16, align 8
  %66 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %114

70:                                               ; preds = %61
  %71 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %72 = call i64 @db_last(%struct.TYPE_29__* %71, i32* %17)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70
  store i32 1, i32* %7, align 4
  br label %471

75:                                               ; preds = %70
  %76 = load i32, i32* %17, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %95, %78
  %80 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %81 = icmp ne %struct.TYPE_28__* %80, null
  br i1 %81, label %82, label %108

82:                                               ; preds = %79
  %83 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %84 = load i32, i32* %17, align 4
  %85 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %86 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i64 @db_append(%struct.TYPE_29__* %83, i32 1, i32 %84, i32* %87, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  br label %471

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %17, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %17, align 4
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @L_ADDED, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %106 = load i32, i32* @q, align 4
  %107 = call %struct.TYPE_28__* @TAILQ_NEXT(%struct.TYPE_28__* %105, i32 %106)
  store %struct.TYPE_28__* %107, %struct.TYPE_28__** %16, align 8
  br label %79

108:                                              ; preds = %79
  %109 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  %111 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %112 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  store i32 0, i32* %7, align 4
  br label %471

113:                                              ; preds = %75
  br label %114

114:                                              ; preds = %113, %61
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %116 = load i32, i32* @CB_LMODE, align 4
  %117 = call i64 @F_ISSET(%struct.TYPE_31__* %115, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %176

119:                                              ; preds = %114
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %119
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  br label %131

126:                                              ; preds = %119
  %127 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, 1
  br label %131

131:                                              ; preds = %126, %122
  %132 = phi i32 [ %125, %122 ], [ %130, %126 ]
  store i32 %132, i32* %17, align 4
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %153, %131
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %139 = icmp ne %struct.TYPE_28__* %138, null
  br i1 %139, label %140, label %166

140:                                              ; preds = %137
  %141 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %142 = load i32, i32* %17, align 4
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = call i64 @db_append(%struct.TYPE_29__* %141, i32 1, i32 %142, i32* %145, i64 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  store i32 1, i32* %7, align 4
  br label %471

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %17, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %17, align 4
  %156 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  %159 = load i64, i64* @L_ADDED, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %164 = load i32, i32* @q, align 4
  %165 = call %struct.TYPE_28__* @TAILQ_NEXT(%struct.TYPE_28__* %163, i32 %164)
  store %struct.TYPE_28__* %165, %struct.TYPE_28__** %16, align 8
  br label %137

166:                                              ; preds = %137
  %167 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %168 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %167, i32 0, i32 1
  store i32 0, i32* %168, align 4
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %174 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %173, i32 0, i32 1
  %175 = call i32 @nonblank(%struct.TYPE_29__* %169, i32 %172, i32* %174)
  store i32 0, i32* %7, align 4
  br label %471

176:                                              ; preds = %114
  %177 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %17, align 4
  %180 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %181 = load i32, i32* %17, align 4
  %182 = load i32, i32* @DBG_FATAL, align 4
  %183 = call i64 @db_get(%struct.TYPE_29__* %180, i32 %181, i32 %182, i32** %24, i64* %20)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %176
  store i32 1, i32* %7, align 4
  br label %471

186:                                              ; preds = %176
  %187 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %188 = load i32*, i32** %22, align 8
  %189 = load i64, i64* %18, align 8
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load i64, i64* %20, align 8
  %194 = add i64 %192, %193
  %195 = add i64 %194, 1
  %196 = call i32 @GET_SPACE_RETW(%struct.TYPE_29__* %187, i32* %188, i64 %189, i64 %195)
  %197 = load i32*, i32** %22, align 8
  store i32* %197, i32** %23, align 8
  %198 = load i64, i64* %20, align 8
  %199 = icmp ugt i64 %198, 0
  br i1 %199, label %200, label %222

200:                                              ; preds = %186
  %201 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 1, i32 0
  %208 = add nsw i32 %203, %207
  %209 = sext i32 %208 to i64
  store i64 %209, i64* %19, align 8
  %210 = icmp ugt i64 %209, 0
  br i1 %210, label %211, label %222

211:                                              ; preds = %200
  %212 = load i32*, i32** %22, align 8
  %213 = load i32*, i32** %24, align 8
  %214 = load i64, i64* %19, align 8
  %215 = call i32 @MEMCPY(i32* %212, i32* %213, i64 %214)
  %216 = load i64, i64* %19, align 8
  %217 = load i32*, i32** %24, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 %216
  store i32* %218, i32** %24, align 8
  %219 = load i64, i64* %19, align 8
  %220 = load i32*, i32** %23, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 %219
  store i32* %221, i32** %23, align 8
  br label %222

222:                                              ; preds = %211, %200, %186
  %223 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %224 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %241

227:                                              ; preds = %222
  %228 = load i32*, i32** %23, align 8
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %230 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @MEMCPY(i32* %228, i32* %231, i64 %234)
  %236 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %237 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = load i32*, i32** %23, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 %238
  store i32* %240, i32** %23, align 8
  br label %241

241:                                              ; preds = %227, %222
  %242 = load i64, i64* %20, align 8
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %241
  br label %257

245:                                              ; preds = %241
  %246 = load i64, i64* %20, align 8
  %247 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %248 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* %13, align 4
  %251 = icmp ne i32 %250, 0
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 1, i32 0
  %254 = add nsw i32 %249, %253
  %255 = sext i32 %254 to i64
  %256 = sub i64 %246, %255
  br label %257

257:                                              ; preds = %245, %244
  %258 = phi i64 [ 0, %244 ], [ %256, %245 ]
  store i64 %258, i64* %19, align 8
  %259 = load i32, i32* %17, align 4
  %260 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %261 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %260, i32 0, i32 0
  store i32 %259, i32* %261, align 4
  %262 = load i64, i64* %20, align 8
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %257
  br label %281

265:                                              ; preds = %257
  %266 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %267 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* %13, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %276

271:                                              ; preds = %265
  %272 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %273 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br label %276

276:                                              ; preds = %271, %265
  %277 = phi i1 [ false, %265 ], [ %275, %271 ]
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 1, i32 0
  %280 = add nsw i32 %268, %279
  br label %281

281:                                              ; preds = %276, %264
  %282 = phi i32 [ 0, %264 ], [ %280, %276 ]
  %283 = load %struct.TYPE_30__*, %struct.TYPE_30__** %12, align 8
  %284 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %283, i32 0, i32 1
  store i32 %282, i32* %284, align 4
  %285 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %286 = load i32, i32* @q, align 4
  %287 = call %struct.TYPE_28__* @TAILQ_NEXT(%struct.TYPE_28__* %285, i32 %286)
  %288 = icmp eq %struct.TYPE_28__* %287, null
  br i1 %288, label %289, label %332

289:                                              ; preds = %281
  %290 = load i64, i64* %19, align 8
  %291 = icmp ugt i64 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %289
  %293 = load i32*, i32** %23, align 8
  %294 = load i32*, i32** %24, align 8
  %295 = load i64, i64* %19, align 8
  %296 = call i32 @MEMCPY(i32* %293, i32* %294, i64 %295)
  %297 = load i64, i64* %19, align 8
  %298 = load i32*, i32** %23, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 %297
  store i32* %299, i32** %23, align 8
  br label %300

300:                                              ; preds = %292, %289
  %301 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %302 = load i32, i32* %17, align 4
  %303 = load i32*, i32** %22, align 8
  %304 = load i32*, i32** %23, align 8
  %305 = load i32*, i32** %22, align 8
  %306 = ptrtoint i32* %304 to i64
  %307 = ptrtoint i32* %305 to i64
  %308 = sub i64 %306, %307
  %309 = sdiv exact i64 %308, 4
  %310 = trunc i64 %309 to i32
  %311 = call i64 @db_set(%struct.TYPE_29__* %301, i32 %302, i32* %303, i32 %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %300
  br label %464

314:                                              ; preds = %300
  %315 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %17, align 4
  %319 = icmp ne i32 %317, %318
  br i1 %319, label %320, label %331

320:                                              ; preds = %314
  %321 = load i32, i32* %17, align 4
  %322 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %323 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %322, i32 0, i32 1
  store i32 %321, i32* %323, align 4
  %324 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %325 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %324, i32 0, i32 2
  %326 = load i32*, i32** %325, align 8
  %327 = load i64, i64* @L_CHANGED, align 8
  %328 = getelementptr inbounds i32, i32* %326, i64 %327
  %329 = load i32, i32* %328, align 4
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 4
  br label %331

331:                                              ; preds = %320, %314
  br label %462

332:                                              ; preds = %281
  %333 = load %struct.TYPE_31__*, %struct.TYPE_31__** %9, align 8
  %334 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @_texth, align 4
  %337 = call %struct.TYPE_28__* @TAILQ_LAST(i32 %335, i32 %336)
  store %struct.TYPE_28__* %337, %struct.TYPE_28__** %15, align 8
  %338 = load i32*, i32** %23, align 8
  %339 = load i32*, i32** %22, align 8
  %340 = ptrtoint i32* %338 to i64
  %341 = ptrtoint i32* %339 to i64
  %342 = sub i64 %340, %341
  %343 = sdiv exact i64 %342, 4
  store i64 %343, i64* %20, align 8
  %344 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %345 = load i32*, i32** %22, align 8
  %346 = load i64, i64* %18, align 8
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %348 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  %350 = load i64, i64* %19, align 8
  %351 = add i64 %349, %350
  %352 = call i32 @ADD_SPACE_RETW(%struct.TYPE_29__* %344, i32* %345, i64 %346, i64 %351)
  %353 = load i32*, i32** %22, align 8
  %354 = load i64, i64* %20, align 8
  %355 = getelementptr inbounds i32, i32* %353, i64 %354
  store i32* %355, i32** %23, align 8
  %356 = load i32*, i32** %23, align 8
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %358 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %357, i32 0, i32 1
  %359 = load i32*, i32** %358, align 8
  %360 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %361 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %360, i32 0, i32 0
  %362 = load i64, i64* %361, align 8
  %363 = call i32 @MEMCPY(i32* %356, i32* %359, i64 %362)
  %364 = load i64, i64* %19, align 8
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %375

366:                                              ; preds = %332
  %367 = load i32*, i32** %23, align 8
  %368 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %369 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = getelementptr inbounds i32, i32* %367, i64 %370
  %372 = load i32*, i32** %24, align 8
  %373 = load i64, i64* %19, align 8
  %374 = call i32 @MEMCPY(i32* %371, i32* %372, i64 %373)
  br label %375

375:                                              ; preds = %366, %332
  %376 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %377 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load i64, i64* %19, align 8
  %380 = add i64 %379, %378
  store i64 %380, i64* %19, align 8
  %381 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %382 = load i32, i32* %17, align 4
  %383 = load i32*, i32** %22, align 8
  %384 = load i32*, i32** %23, align 8
  %385 = load i32*, i32** %22, align 8
  %386 = ptrtoint i32* %384 to i64
  %387 = ptrtoint i32* %385 to i64
  %388 = sub i64 %386, %387
  %389 = sdiv exact i64 %388, 4
  %390 = trunc i64 %389 to i32
  %391 = call i64 @db_set(%struct.TYPE_29__* %381, i32 %382, i32* %383, i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %394

393:                                              ; preds = %375
  br label %464

394:                                              ; preds = %375
  %395 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i32, i32* %17, align 4
  %399 = icmp ne i32 %397, %398
  br i1 %399, label %400, label %411

400:                                              ; preds = %394
  %401 = load i32, i32* %17, align 4
  %402 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %402, i32 0, i32 1
  store i32 %401, i32* %403, align 4
  %404 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %405 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %404, i32 0, i32 2
  %406 = load i32*, i32** %405, align 8
  %407 = load i64, i64* @L_CHANGED, align 8
  %408 = getelementptr inbounds i32, i32* %406, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = add nsw i32 %409, 1
  store i32 %410, i32* %408, align 4
  br label %411

411:                                              ; preds = %400, %394
  %412 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %413 = load i32, i32* @q, align 4
  %414 = call %struct.TYPE_28__* @TAILQ_NEXT(%struct.TYPE_28__* %412, i32 %413)
  store %struct.TYPE_28__* %414, %struct.TYPE_28__** %16, align 8
  br label %415

415:                                              ; preds = %433, %411
  %416 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %417 = load i32, i32* @q, align 4
  %418 = call %struct.TYPE_28__* @TAILQ_NEXT(%struct.TYPE_28__* %416, i32 %417)
  %419 = icmp ne %struct.TYPE_28__* %418, null
  br i1 %419, label %420, label %446

420:                                              ; preds = %415
  %421 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %422 = load i32, i32* %17, align 4
  %423 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %424 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %423, i32 0, i32 1
  %425 = load i32*, i32** %424, align 8
  %426 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %427 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = call i64 @db_append(%struct.TYPE_29__* %421, i32 1, i32 %422, i32* %425, i64 %428)
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %420
  br label %464

432:                                              ; preds = %420
  br label %433

433:                                              ; preds = %432
  %434 = load i32, i32* %17, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %17, align 4
  %436 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %437 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %436, i32 0, i32 2
  %438 = load i32*, i32** %437, align 8
  %439 = load i64, i64* @L_ADDED, align 8
  %440 = getelementptr inbounds i32, i32* %438, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %440, align 4
  %443 = load %struct.TYPE_28__*, %struct.TYPE_28__** %16, align 8
  %444 = load i32, i32* @q, align 4
  %445 = call %struct.TYPE_28__* @TAILQ_NEXT(%struct.TYPE_28__* %443, i32 %444)
  store %struct.TYPE_28__* %445, %struct.TYPE_28__** %16, align 8
  br label %415

446:                                              ; preds = %415
  %447 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %448 = load i32, i32* %17, align 4
  %449 = load i32*, i32** %23, align 8
  %450 = load i64, i64* %19, align 8
  %451 = call i64 @db_append(%struct.TYPE_29__* %447, i32 1, i32 %448, i32* %449, i64 %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %454

453:                                              ; preds = %446
  br label %464

454:                                              ; preds = %446
  %455 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %456 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %455, i32 0, i32 2
  %457 = load i32*, i32** %456, align 8
  %458 = load i64, i64* @L_ADDED, align 8
  %459 = getelementptr inbounds i32, i32* %457, i64 %458
  %460 = load i32, i32* %459, align 4
  %461 = add nsw i32 %460, 1
  store i32 %461, i32* %459, align 4
  br label %462

462:                                              ; preds = %454, %331
  store i32 0, i32* %21, align 4
  br i1 false, label %463, label %465

463:                                              ; preds = %462
  br label %464

464:                                              ; preds = %463, %453, %431, %393, %313
  store i32 1, i32* %21, align 4
  br label %465

465:                                              ; preds = %464, %462
  %466 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %467 = load i32*, i32** %22, align 8
  %468 = load i64, i64* %18, align 8
  %469 = call i32 @FREE_SPACEW(%struct.TYPE_29__* %466, i32* %467, i64 %468)
  %470 = load i32, i32* %21, align 4
  store i32 %470, i32* %7, align 4
  br label %471

471:                                              ; preds = %465, %185, %166, %151, %108, %93, %74, %52, %38
  %472 = load i32, i32* %7, align 4
  ret i32 %472
}

declare dso_local i32 @msgq(%struct.TYPE_29__*, i32, i8*, ...) #1

declare dso_local i32 @CBNAME(%struct.TYPE_29__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @KEY_NAME(%struct.TYPE_29__*, i32) #1

declare dso_local %struct.TYPE_28__* @TAILQ_FIRST(i32) #1

declare dso_local i64 @db_last(%struct.TYPE_29__*, i32*) #1

declare dso_local i64 @db_append(%struct.TYPE_29__*, i32, i32, i32*, i64) #1

declare dso_local %struct.TYPE_28__* @TAILQ_NEXT(%struct.TYPE_28__*, i32) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @nonblank(%struct.TYPE_29__*, i32, i32*) #1

declare dso_local i64 @db_get(%struct.TYPE_29__*, i32, i32, i32**, i64*) #1

declare dso_local i32 @GET_SPACE_RETW(%struct.TYPE_29__*, i32*, i64, i64) #1

declare dso_local i32 @MEMCPY(i32*, i32*, i64) #1

declare dso_local i64 @db_set(%struct.TYPE_29__*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_28__* @TAILQ_LAST(i32, i32) #1

declare dso_local i32 @ADD_SPACE_RETW(%struct.TYPE_29__*, i32*, i64, i64) #1

declare dso_local i32 @FREE_SPACEW(%struct.TYPE_29__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
