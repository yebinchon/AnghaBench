; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_paragraph.c_v_paragraphf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_paragraph.c_v_paragraphf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@VM_LMODE = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4
@INTEXT_CHECK = common dso_local global i32 0, align 4
@VM_RCM_MASK = common dso_local global i32 0, align 4
@VM_RCM_SETFNB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_paragraphf(i32* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %16 = call i64 @ISMOTION(%struct.TYPE_9__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %65

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = load i32, i32* @VM_LMODE, align 4
  %27 = call i32 @F_SET(%struct.TYPE_9__* %25, i32 %26)
  br label %64

28:                                               ; preds = %18
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 2
  %33 = bitcast %struct.TYPE_8__* %30 to i8*
  %34 = bitcast %struct.TYPE_8__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 16, i1 false)
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load i32*, i32** %4, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = call i64 @nonblank(i32* %38, i32 %42, i64* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %272

49:                                               ; preds = %28
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ule i64 %53, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %61 = load i32, i32* @VM_LMODE, align 4
  %62 = call i32 @F_SET(%struct.TYPE_9__* %60, i32 %61)
  br label %63

63:                                               ; preds = %59, %49
  br label %64

64:                                               ; preds = %63, %24
  br label %65

65:                                               ; preds = %64, %2
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %11, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @db_get(i32* %70, i32 %71, i32 0, i32** %13, i64* %8)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %65
  br label %173

75:                                               ; preds = %65
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = load i32, i32* @VC_C1SET, align 4
  %78 = call i64 @F_ISSET(%struct.TYPE_9__* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  br label %85

84:                                               ; preds = %75
  br label %85

85:                                               ; preds = %84, %80
  %86 = phi i32 [ %83, %80 ], [ 1, %84 ]
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = mul nsw i32 %87, 2
  store i32 %88, i32* %9, align 4
  %89 = load i64, i64* %8, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %85
  %92 = load i32*, i32** %13, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i64 @v_isempty(i32* %92, i64 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %85
  store i32 1, i32* %6, align 4
  br label %100

97:                                               ; preds = %91
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %97, %96
  br label %101

101:                                              ; preds = %172, %100
  %102 = load i32, i32* %11, align 4
  store i32 %102, i32* %10, align 4
  %103 = load i64, i64* %8, align 8
  store i64 %103, i64* %7, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %11, align 4
  %107 = call i64 @db_get(i32* %104, i32 %106, i32 0, i32** %13, i64* %8)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  br label %173

110:                                              ; preds = %101
  %111 = load i32, i32* %6, align 4
  switch i32 %111, label %170 [
    i32 0, label %112
    i32 1, label %114
  ]

112:                                              ; preds = %110
  %113 = load i32, i32* @INTEXT_CHECK, align 4
  br label %172

114:                                              ; preds = %110
  %115 = load i64, i64* %8, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %114
  %118 = load i32*, i32** %13, align 8
  %119 = load i64, i64* %8, align 8
  %120 = call i64 @v_isempty(i32* %118, i64 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %117, %114
  br label %172

123:                                              ; preds = %117
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, -1
  store i32 %125, i32* %9, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 0, i32* %6, align 4
  br label %172

128:                                              ; preds = %123
  br label %129

129:                                              ; preds = %128
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %131 = call i64 @ISMOTION(%struct.TYPE_9__* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %155

133:                                              ; preds = %129
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 8
  %138 = load i64, i64* %7, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load i64, i64* %7, align 8
  %142 = sub i64 %141, 1
  br label %144

143:                                              ; preds = %133
  br label %144

144:                                              ; preds = %143, %140
  %145 = phi i64 [ %142, %140 ], [ 0, %143 ]
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i64 %145, i64* %148, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 3
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 2
  %153 = bitcast %struct.TYPE_8__* %150 to i8*
  %154 = bitcast %struct.TYPE_8__* %152 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %153, i8* align 8 %154, i64 16, i1 false)
  br label %169

155:                                              ; preds = %129
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store i32 %156, i32* %159, align 8
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  store i64 0, i64* %162, align 8
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 3
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 1
  %167 = bitcast %struct.TYPE_8__* %164 to i8*
  %168 = bitcast %struct.TYPE_8__* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %167, i8* align 8 %168, i64 16, i1 false)
  br label %169

169:                                              ; preds = %155, %144
  store i32 0, i32* %3, align 4
  br label %272

170:                                              ; preds = %110
  %171 = call i32 (...) @abort() #4
  unreachable

172:                                              ; preds = %127, %122, %112
  br label %101

173:                                              ; preds = %109, %74
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %188, label %180

180:                                              ; preds = %173
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* %11, align 4
  %186 = sub nsw i32 %185, 1
  %187 = icmp eq i32 %184, %186
  br i1 %187, label %188, label %222

188:                                              ; preds = %180, %173
  %189 = load i32*, i32** %4, align 8
  %190 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @db_eget(i32* %189, i32 %193, i32** %13, i64* %8, i32* %12)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %204

196:                                              ; preds = %188
  %197 = load i32, i32* %12, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %200, label %199

199:                                              ; preds = %196
  store i32 1, i32* %3, align 4
  br label %272

200:                                              ; preds = %196
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  store i64 0, i64* %203, align 8
  store i32 0, i32* %3, align 4
  br label %272

204:                                              ; preds = %188
  %205 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* %8, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %204
  %212 = load i64, i64* %8, align 8
  %213 = sub i64 %212, 1
  br label %215

214:                                              ; preds = %204
  br label %215

215:                                              ; preds = %214, %211
  %216 = phi i64 [ %213, %211 ], [ 0, %214 ]
  %217 = icmp eq i64 %208, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load i32*, i32** %4, align 8
  %220 = call i32 @v_eof(i32* %219, i32* null)
  store i32 1, i32* %3, align 4
  br label %272

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221, %180
  %223 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %224 = call i64 @ISMOTION(%struct.TYPE_9__* %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %239

226:                                              ; preds = %222
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 8
  %230 = call i64 @ISCMD(i32 %229, i8 signext 100)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %226
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %234 = load i32, i32* @VM_RCM_MASK, align 4
  %235 = call i32 @F_CLR(%struct.TYPE_9__* %233, i32 %234)
  %236 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %237 = load i32, i32* @VM_RCM_SETFNB, align 4
  %238 = call i32 @F_SET(%struct.TYPE_9__* %236, i32 %237)
  br label %239

239:                                              ; preds = %232, %226, %222
  %240 = load i32, i32* %11, align 4
  %241 = sub nsw i32 %240, 1
  %242 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %243 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 1
  store i32 %241, i32* %244, align 8
  %245 = load i64, i64* %8, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %239
  %248 = load i64, i64* %8, align 8
  %249 = sub i64 %248, 1
  br label %251

250:                                              ; preds = %239
  br label %251

251:                                              ; preds = %250, %247
  %252 = phi i64 [ %249, %247 ], [ 0, %250 ]
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 1
  %255 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %254, i32 0, i32 0
  store i64 %252, i64* %255, align 8
  %256 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 3
  %258 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %259 = call i64 @ISMOTION(%struct.TYPE_9__* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %251
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 2
  %264 = bitcast %struct.TYPE_8__* %257 to i8*
  %265 = bitcast %struct.TYPE_8__* %263 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %264, i8* align 8 %265, i64 16, i1 false)
  br label %271

266:                                              ; preds = %251
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 1
  %269 = bitcast %struct.TYPE_8__* %257 to i8*
  %270 = bitcast %struct.TYPE_8__* %268 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %269, i8* align 8 %270, i64 16, i1 false)
  br label %271

271:                                              ; preds = %266, %261
  store i32 0, i32* %3, align 4
  br label %272

272:                                              ; preds = %271, %218, %200, %199, %169, %48
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i64 @ISMOTION(%struct.TYPE_9__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_9__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @nonblank(i32*, i32, i64*) #1

declare dso_local i64 @db_get(i32*, i32, i32, i32**, i64*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @v_isempty(i32*, i64) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i64 @db_eget(i32*, i32, i32**, i64*, i32*) #1

declare dso_local i32 @v_eof(i32*, i32*) #1

declare dso_local i64 @ISCMD(i32, i8 signext) #1

declare dso_local i32 @F_CLR(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
