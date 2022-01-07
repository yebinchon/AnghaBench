; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_property.c_properties_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_property.c_properties_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@PROPERTY_MAX_NAME = common dso_local global i32 0, align 4
@PROPERTY_MAX_VALUE = common dso_local global i32 0, align 4
@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"properties_read: value exceeds max length\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_4__* @properties_read(i32 %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %19 = load i32, i32* @PROPERTY_MAX_NAME, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %6, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %7, align 8
  %24 = load i32, i32* @PROPERTY_MAX_VALUE, align 4
  %25 = add nsw i32 %24, 1
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %8, align 8
  %28 = load i32, i32* @BUFSIZ, align 4
  %29 = mul nsw i32 %28, 4
  %30 = zext i32 %29 to i64
  %31 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %9, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %4, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %257, %167, %131, %84, %77, %71, %1
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 7
  br i1 %34, label %35, label %258

35:                                               ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = icmp ne i32 %36, 5
  br i1 %37, label %38, label %52

38:                                               ; preds = %35
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %13, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %15, align 4
  store i32 6, i32* %14, align 4
  br label %51

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i8, i8* %31, i64 %47
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  store i32 %50, i32* %16, align 4
  br label %51

51:                                               ; preds = %44, %42
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32, i32* %14, align 4
  switch i32 %53, label %257 [
    i32 6, label %54
    i32 0, label %72
    i32 1, label %110
    i32 2, label %115
    i32 3, label %149
    i32 4, label %201
    i32 5, label %233
    i32 7, label %256
  ]

54:                                               ; preds = %52
  %55 = load i32, i32* %3, align 4
  %56 = trunc i64 %30 to i32
  %57 = call i32 @read(i32 %55, i8* %31, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %61 = call i32 @properties_free(%struct.TYPE_4__* %60)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %18, align 4
  br label %268

62:                                               ; preds = %54
  %63 = load i32, i32* %13, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 7, i32* %14, align 4
  br label %71

66:                                               ; preds = %62
  %67 = load i32, i32* %15, align 4
  store i32 %67, i32* %14, align 4
  %68 = getelementptr inbounds i8, i8* %31, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = sext i8 %69 to i32
  store i32 %70, i32* %16, align 4
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %66, %65
  br label %32

72:                                               ; preds = %52
  %73 = load i32, i32* %16, align 4
  %74 = trunc i32 %73 to i8
  %75 = call i32 @isspace(i8 zeroext %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %32

78:                                               ; preds = %72
  %79 = load i32, i32* %16, align 4
  %80 = icmp eq i32 %79, 35
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %16, align 4
  %83 = icmp eq i32 %82, 59
  br i1 %83, label %84, label %85

84:                                               ; preds = %81, %78
  store i32 1, i32* %14, align 4
  br label %32

85:                                               ; preds = %81
  %86 = load i32, i32* %16, align 4
  %87 = trunc i32 %86 to i8
  %88 = call i32 @isalnum(i8 zeroext %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %85
  %91 = load i32, i32* %16, align 4
  %92 = icmp eq i32 %91, 95
  br i1 %92, label %93, label %106

93:                                               ; preds = %90, %85
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @PROPERTY_MAX_NAME, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  store i32 0, i32* %11, align 4
  store i32 1, i32* %14, align 4
  br label %105

98:                                               ; preds = %93
  %99 = load i32, i32* %16, align 4
  %100 = trunc i32 %99 to i8
  %101 = load i32, i32* %11, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %11, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i8, i8* %23, i64 %103
  store i8 %100, i8* %104, align 1
  store i32 2, i32* %14, align 4
  br label %105

105:                                              ; preds = %98, %97
  br label %107

106:                                              ; preds = %90
  store i32 1, i32* %14, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  br label %257

110:                                              ; preds = %52
  %111 = load i32, i32* %16, align 4
  %112 = icmp eq i32 %111, 10
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %113, %110
  br label %257

115:                                              ; preds = %52
  %116 = load i32, i32* %16, align 4
  %117 = icmp eq i32 %116, 10
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %16, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %115
  %122 = load i32, i32* %11, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %23, i64 %123
  store i8 0, i8* %124, align 1
  %125 = getelementptr inbounds i8, i8* %27, i64 0
  store i8 0, i8* %125, align 16
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 5, i32* %14, align 4
  br label %148

126:                                              ; preds = %118
  %127 = load i32, i32* %16, align 4
  %128 = trunc i32 %127 to i8
  %129 = call i32 @isspace(i8 zeroext %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %32

132:                                              ; preds = %126
  %133 = load i32, i32* %16, align 4
  %134 = icmp eq i32 %133, 61
  br i1 %134, label %135, label %139

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %23, i64 %137
  store i8 0, i8* %138, align 1
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 3, i32* %14, align 4
  br label %146

139:                                              ; preds = %132
  %140 = load i32, i32* %16, align 4
  %141 = trunc i32 %140 to i8
  %142 = load i32, i32* %11, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %11, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds i8, i8* %23, i64 %144
  store i8 %141, i8* %145, align 1
  br label %146

146:                                              ; preds = %139, %135
  br label %147

147:                                              ; preds = %146
  br label %148

148:                                              ; preds = %147, %121
  br label %257

149:                                              ; preds = %52
  %150 = load i32, i32* %12, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %159

152:                                              ; preds = %149
  %153 = load i32, i32* %16, align 4
  %154 = icmp eq i32 %153, 10
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i8, i8* %27, i64 %157
  store i8 0, i8* %158, align 1
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 5, i32* %14, align 4
  br label %200

159:                                              ; preds = %152, %149
  %160 = load i32, i32* %12, align 4
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* %16, align 4
  %164 = trunc i32 %163 to i8
  %165 = call i32 @isspace(i8 zeroext %164)
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %162
  br label %32

168:                                              ; preds = %162, %159
  %169 = load i32, i32* %16, align 4
  %170 = icmp eq i32 %169, 123
  br i1 %170, label %171, label %174

171:                                              ; preds = %168
  store i32 4, i32* %14, align 4
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %17, align 4
  br label %198

174:                                              ; preds = %168
  %175 = load i32, i32* %16, align 4
  %176 = icmp eq i32 %175, 10
  br i1 %176, label %180, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %177, %174
  %181 = load i32, i32* %12, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %27, i64 %182
  store i8 0, i8* %183, align 1
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 5, i32* %14, align 4
  br label %197

184:                                              ; preds = %177
  %185 = load i32, i32* %12, align 4
  %186 = load i32, i32* @PROPERTY_MAX_VALUE, align 4
  %187 = icmp sge i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  store i32 1, i32* %14, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %257

189:                                              ; preds = %184
  %190 = load i32, i32* %16, align 4
  %191 = trunc i32 %190 to i8
  %192 = load i32, i32* %12, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %12, align 4
  %194 = sext i32 %192 to i64
  %195 = getelementptr inbounds i8, i8* %27, i64 %194
  store i8 %191, i8* %195, align 1
  br label %196

196:                                              ; preds = %189
  br label %197

197:                                              ; preds = %196, %180
  br label %198

198:                                              ; preds = %197, %171
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199, %155
  br label %257

201:                                              ; preds = %52
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* @PROPERTY_MAX_VALUE, align 4
  %204 = icmp sge i32 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = call i32 @warn(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %14, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %232

207:                                              ; preds = %201
  %208 = load i32, i32* %16, align 4
  %209 = icmp eq i32 %208, 125
  br i1 %209, label %210, label %218

210:                                              ; preds = %207
  %211 = load i32, i32* %17, align 4
  %212 = add nsw i32 %211, -1
  store i32 %212, i32* %17, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %218, label %214

214:                                              ; preds = %210
  %215 = load i32, i32* %12, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i8, i8* %27, i64 %216
  store i8 0, i8* %217, align 1
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 5, i32* %14, align 4
  br label %231

218:                                              ; preds = %210, %207
  %219 = load i32, i32* %16, align 4
  %220 = trunc i32 %219 to i8
  %221 = load i32, i32* %12, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %12, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i8, i8* %27, i64 %223
  store i8 %220, i8* %224, align 1
  %225 = load i32, i32* %16, align 4
  %226 = icmp eq i32 %225, 123
  br i1 %226, label %227, label %230

227:                                              ; preds = %218
  %228 = load i32, i32* %17, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %17, align 4
  br label %230

230:                                              ; preds = %227, %218
  br label %231

231:                                              ; preds = %230, %214
  br label %232

232:                                              ; preds = %231, %205
  br label %257

233:                                              ; preds = %52
  %234 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %235 = icmp eq %struct.TYPE_4__* %234, null
  br i1 %235, label %236, label %242

236:                                              ; preds = %233
  %237 = call i8* @property_alloc(i8* %23, i8* %27)
  %238 = bitcast i8* %237 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %238, %struct.TYPE_4__** %5, align 8
  store %struct.TYPE_4__* %238, %struct.TYPE_4__** %4, align 8
  %239 = icmp eq %struct.TYPE_4__* %238, null
  br i1 %239, label %240, label %241

240:                                              ; preds = %236
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %18, align 4
  br label %268

241:                                              ; preds = %236
  br label %255

242:                                              ; preds = %233
  %243 = call i8* @property_alloc(i8* %23, i8* %27)
  %244 = bitcast i8* %243 to %struct.TYPE_4__*
  %245 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %245, i32 0, i32 0
  store %struct.TYPE_4__* %244, %struct.TYPE_4__** %246, align 8
  %247 = icmp eq %struct.TYPE_4__* %244, null
  br i1 %247, label %248, label %251

248:                                              ; preds = %242
  %249 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %250 = call i32 @properties_free(%struct.TYPE_4__* %249)
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %18, align 4
  br label %268

251:                                              ; preds = %242
  %252 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %253 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_4__*, %struct.TYPE_4__** %253, align 8
  store %struct.TYPE_4__* %254, %struct.TYPE_4__** %5, align 8
  br label %255

255:                                              ; preds = %251, %241
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %257

256:                                              ; preds = %52
  br label %257

257:                                              ; preds = %52, %256, %255, %232, %200, %188, %148, %114, %109
  br label %32

258:                                              ; preds = %32
  %259 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %260 = icmp eq %struct.TYPE_4__* %259, null
  br i1 %260, label %261, label %266

261:                                              ; preds = %258
  %262 = call i8* @property_alloc(i8* null, i8* null)
  %263 = bitcast i8* %262 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %263, %struct.TYPE_4__** %4, align 8
  %264 = icmp eq %struct.TYPE_4__* %263, null
  br i1 %264, label %265, label %266

265:                                              ; preds = %261
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %18, align 4
  br label %268

266:                                              ; preds = %261, %258
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  store %struct.TYPE_4__* %267, %struct.TYPE_4__** %2, align 8
  store i32 1, i32* %18, align 4
  br label %268

268:                                              ; preds = %266, %265, %248, %240, %59
  %269 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %269)
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  ret %struct.TYPE_4__* %270
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read(i32, i8*, i32) #2

declare dso_local i32 @properties_free(%struct.TYPE_4__*) #2

declare dso_local i32 @isspace(i8 zeroext) #2

declare dso_local i32 @isalnum(i8 zeroext) #2

declare dso_local i32 @warn(i8*) #2

declare dso_local i8* @property_alloc(i8*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
