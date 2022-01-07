; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_match.c_v_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_match.c_v_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64, i64, i32, i32 }
%struct.TYPE_15__ = type { i32* }

@M_BERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"184|No match character on this line\00", align 1
@CS_EOF = common dso_local global i64 0, align 8
@CS_SOF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"185|Matching character not found\00", align 1
@DBG_FATAL = common dso_local global i32 0, align 4
@VM_LMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_match(i32* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32 (i32*, %struct.TYPE_12__*)*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = call %struct.TYPE_15__* @VIP(i32* %19)
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %18, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @db_eget(i32* %23, i32 %27, i32** %16, i64* %9, i32* %12)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %45

34:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %317

35:                                               ; preds = %2
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %10, align 8
  br label %40

40:                                               ; preds = %79, %35
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* %9, align 8
  %43 = icmp uge i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* @M_BERR, align 4
  %48 = call i32 @msgq(i32* %46, i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %317

49:                                               ; preds = %40
  %50 = load i32*, i32** %16, align 8
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %14, align 4
  %54 = load i32*, i32** %18, align 8
  %55 = load i32, i32* %14, align 4
  %56 = call i32* @STRCHR(i32* %54, i32 %55)
  store i32* %56, i32** %17, align 8
  %57 = load i32*, i32** %17, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %49
  %60 = load i32*, i32** %17, align 8
  %61 = load i32*, i32** %18, align 8
  %62 = ptrtoint i32* %60 to i64
  %63 = ptrtoint i32* %61 to i64
  %64 = sub i64 %62, %63
  %65 = sdiv exact i64 %64, 4
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %11, align 4
  %67 = load i32*, i32** %18, align 8
  %68 = load i32, i32* %11, align 4
  %69 = xor i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  %73 = load i32, i32* %11, align 4
  %74 = and i32 %73, 1
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 (i32*, %struct.TYPE_12__*)* @cs_prev, i32 (i32*, %struct.TYPE_12__*)* @cs_next
  store i32 (i32*, %struct.TYPE_12__*)* %77, i32 (i32*, %struct.TYPE_12__*)** %15, align 8
  br label %82

78:                                               ; preds = %49
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %10, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %10, align 8
  br label %40

82:                                               ; preds = %59
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  store i32 %86, i32* %87, align 4
  %88 = load i64, i64* %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  store i64 %88, i64* %89, align 8
  %90 = load i32*, i32** %4, align 8
  %91 = call i64 @cs_init(i32* %90, %struct.TYPE_12__* %6)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %317

94:                                               ; preds = %82
  store i32 1, i32* %11, align 4
  br label %95

95:                                               ; preds = %136, %116, %94
  %96 = load i32 (i32*, %struct.TYPE_12__*)*, i32 (i32*, %struct.TYPE_12__*)** %15, align 8
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 %96(i32* %97, %struct.TYPE_12__* %6)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  store i32 1, i32* %3, align 4
  br label %317

101:                                              ; preds = %95
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %117

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @CS_EOF, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %115, label %110

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @CS_SOF, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %110, %105
  br label %137

116:                                              ; preds = %110
  br label %95

117:                                              ; preds = %101
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %14, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* %11, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %136

125:                                              ; preds = %117
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %11, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %130
  br label %137

135:                                              ; preds = %130, %125
  br label %136

136:                                              ; preds = %135, %122
  br label %95

137:                                              ; preds = %134, %115
  %138 = load i32, i32* %11, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32*, i32** %4, align 8
  %142 = load i32, i32* @M_BERR, align 4
  %143 = call i32 @msgq(i32* %141, i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %317

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  store i32 %146, i32* %149, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  store i64 %151, i64* %154, align 8
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %158, %162
  br i1 %163, label %184, label %164

164:                                              ; preds = %144
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp eq i32 %168, %172
  br i1 %173, label %174, label %201

174:                                              ; preds = %164
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ult i64 %178, %182
  br i1 %183, label %184, label %201

184:                                              ; preds = %174, %144
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %185, i32 0, i32 2
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %188 = call i64 @ISMOTION(%struct.TYPE_13__* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %184
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 0
  %193 = bitcast %struct.TYPE_14__* %186 to i8*
  %194 = bitcast %struct.TYPE_14__* %192 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %193, i8* align 8 %194, i64 16, i1 false)
  br label %200

195:                                              ; preds = %184
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = bitcast %struct.TYPE_14__* %186 to i8*
  %199 = bitcast %struct.TYPE_14__* %197 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %198, i8* align 8 %199, i64 16, i1 false)
  br label %200

200:                                              ; preds = %195, %190
  br label %208

201:                                              ; preds = %174, %164
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 2
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i32 0, i32 1
  %206 = bitcast %struct.TYPE_14__* %203 to i8*
  %207 = bitcast %struct.TYPE_14__* %205 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %206, i8* align 8 %207, i64 16, i1 false)
  br label %208

208:                                              ; preds = %201, %200
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %210 = call i64 @ISMOTION(%struct.TYPE_13__* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %208
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %216, %220
  br i1 %221, label %222, label %223

222:                                              ; preds = %212, %208
  store i32 0, i32* %3, align 4
  br label %317

223:                                              ; preds = %212
  %224 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %227, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %223
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  br label %239

236:                                              ; preds = %223
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  br label %239

239:                                              ; preds = %236, %233
  %240 = phi %struct.TYPE_14__* [ %235, %233 ], [ %238, %236 ]
  store %struct.TYPE_14__* %240, %struct.TYPE_14__** %7, align 8
  %241 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %261

245:                                              ; preds = %239
  store i64 0, i64* %8, align 8
  %246 = load i32*, i32** %4, align 8
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 8
  %250 = call i64 @nonblank(i32* %246, i32 %249, i64* %8)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %245
  store i32 1, i32* %3, align 4
  br label %317

253:                                              ; preds = %245
  %254 = load i64, i64* %8, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = icmp ult i64 %254, %257
  br i1 %258, label %259, label %260

259:                                              ; preds = %253
  store i32 0, i32* %3, align 4
  br label %317

260:                                              ; preds = %253
  br label %261

261:                                              ; preds = %260, %239
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = icmp slt i32 %265, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %261
  %272 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %272, i32 0, i32 1
  br label %277

274:                                              ; preds = %261
  %275 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 0
  br label %277

277:                                              ; preds = %274, %271
  %278 = phi %struct.TYPE_14__* [ %273, %271 ], [ %276, %274 ]
  store %struct.TYPE_14__* %278, %struct.TYPE_14__** %7, align 8
  %279 = load i32*, i32** %4, align 8
  %280 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @DBG_FATAL, align 4
  %284 = call i64 @db_get(i32* %279, i32 %282, i32 %283, i32** %16, i64* %9)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %277
  store i32 1, i32* %3, align 4
  br label %317

287:                                              ; preds = %277
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = add i64 %290, 1
  %292 = load i32*, i32** %16, align 8
  %293 = getelementptr inbounds i32, i32* %292, i64 %291
  store i32* %293, i32** %16, align 8
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* %9, align 8
  %298 = sub i64 %297, %296
  store i64 %298, i64* %9, align 8
  br label %299

299:                                              ; preds = %310, %287
  %300 = load i64, i64* %9, align 8
  %301 = add i64 %300, -1
  store i64 %301, i64* %9, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %299
  %304 = load i32*, i32** %16, align 8
  %305 = load i32, i32* %304, align 4
  %306 = call i32 @isblank(i32 %305) #4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %309, label %308

308:                                              ; preds = %303
  store i32 0, i32* %3, align 4
  br label %317

309:                                              ; preds = %303
  br label %310

310:                                              ; preds = %309
  %311 = load i32*, i32** %16, align 8
  %312 = getelementptr inbounds i32, i32* %311, i32 1
  store i32* %312, i32** %16, align 8
  br label %299

313:                                              ; preds = %299
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %315 = load i32, i32* @VM_LMODE, align 4
  %316 = call i32 @F_SET(%struct.TYPE_13__* %314, i32 %315)
  store i32 0, i32* %3, align 4
  br label %317

317:                                              ; preds = %313, %308, %286, %259, %252, %222, %140, %100, %93, %45, %34
  %318 = load i32, i32* %3, align 4
  ret i32 %318
}

declare dso_local %struct.TYPE_15__* @VIP(i32*) #1

declare dso_local i64 @db_eget(i32*, i32, i32**, i64*, i32*) #1

declare dso_local i32 @msgq(i32*, i32, i8*) #1

declare dso_local i32* @STRCHR(i32*, i32) #1

declare dso_local i32 @cs_prev(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @cs_next(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @cs_init(i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @ISMOTION(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @nonblank(i32*, i32, i64*) #1

declare dso_local i64 @db_get(i32*, i32, i32, i32**, i64*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isblank(i32) #3

declare dso_local i32 @F_SET(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
