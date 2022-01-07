; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_section.c_v_sectionf.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_v_section.c_v_sectionf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_7__, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i32 }

@O_SECTIONS = common dso_local global i32 0, align 4
@VM_LMODE = common dso_local global i32 0, align 4
@VC_C1SET = common dso_local global i32 0, align 4
@DBG_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @v_sectionf(i32* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* @O_SECTIONS, align 4
  %14 = call i8* @O_STR(i32* %12, i32 %13)
  store i8* %14, i8** %10, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %270

17:                                               ; preds = %2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %19 = call i64 @ISMOTION(%struct.TYPE_8__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %17
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = load i32, i32* @VM_LMODE, align 4
  %30 = call i32 @F_SET(%struct.TYPE_8__* %28, i32 %29)
  br label %67

31:                                               ; preds = %21
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = bitcast %struct.TYPE_7__* %33 to i8*
  %37 = bitcast %struct.TYPE_7__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 %37, i64 16, i1 false)
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = call i64 @nonblank(i32* %41, i32 %45, i64* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %31
  store i32 1, i32* %3, align 4
  br label %270

52:                                               ; preds = %31
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sle i64 %56, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = load i32, i32* @VM_LMODE, align 4
  %65 = call i32 @F_SET(%struct.TYPE_8__* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %52
  br label %67

67:                                               ; preds = %66, %27
  br label %68

68:                                               ; preds = %67, %17
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = load i32, i32* @VC_C1SET, align 4
  %71 = call i64 @F_ISSET(%struct.TYPE_8__* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  br label %78

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %73
  %79 = phi i32 [ %76, %73 ], [ 1, %77 ]
  store i32 %79, i32* %6, align 4
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %205, %145, %135, %123, %94, %78
  %85 = load i32*, i32** %4, align 8
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %7, align 4
  %88 = call i64 @db_get(i32* %85, i32 %87, i32 0, i8** %9, i64* %8)
  %89 = icmp ne i64 %88, 0
  %90 = xor i1 %89, true
  br i1 %90, label %91, label %206

91:                                               ; preds = %84
  %92 = load i64, i64* %8, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %84

95:                                               ; preds = %91
  %96 = load i8*, i8** %9, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 0
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 123
  br i1 %100, label %111, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %103 = call i64 @ISMOTION(%struct.TYPE_8__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %124

105:                                              ; preds = %101
  %106 = load i8*, i8** %9, align 8
  %107 = getelementptr inbounds i8, i8* %106, i64 0
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 125
  br i1 %110, label %111, label %124

111:                                              ; preds = %105, %95
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %6, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %111
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 0
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 123
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %187

122:                                              ; preds = %115
  br label %193

123:                                              ; preds = %111
  br label %84

124:                                              ; preds = %105, %101
  %125 = load i8*, i8** %9, align 8
  %126 = getelementptr inbounds i8, i8* %125, i64 0
  %127 = load i8, i8* %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 12
  br i1 %129, label %130, label %136

130:                                              ; preds = %124
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %130
  br label %187

135:                                              ; preds = %130
  br label %84

136:                                              ; preds = %124
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = icmp ne i32 %140, 46
  br i1 %141, label %145, label %142

142:                                              ; preds = %136
  %143 = load i64, i64* %8, align 8
  %144 = icmp ult i64 %143, 2
  br i1 %144, label %145, label %146

145:                                              ; preds = %142, %136
  br label %84

146:                                              ; preds = %142
  %147 = load i8*, i8** %10, align 8
  store i8* %147, i8** %11, align 8
  br label %148

148:                                              ; preds = %202, %146
  %149 = load i8*, i8** %11, align 8
  %150 = load i8, i8* %149, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %205

153:                                              ; preds = %148
  %154 = load i8*, i8** %11, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 0
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = load i8*, i8** %9, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 1
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %157, %161
  br i1 %162, label %163, label %201

163:                                              ; preds = %153
  %164 = load i8*, i8** %11, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 32
  br i1 %168, label %169, label %172

169:                                              ; preds = %163
  %170 = load i64, i64* %8, align 8
  %171 = icmp eq i64 %170, 2
  br i1 %171, label %182, label %172

172:                                              ; preds = %169, %163
  %173 = load i8*, i8** %11, align 8
  %174 = getelementptr inbounds i8, i8* %173, i64 1
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = load i8*, i8** %9, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 2
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %176, %180
  br i1 %181, label %182, label %201

182:                                              ; preds = %172, %169
  %183 = load i32, i32* %6, align 4
  %184 = add nsw i32 %183, -1
  store i32 %184, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %201, label %186

186:                                              ; preds = %182
  br label %187

187:                                              ; preds = %186, %134, %121
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %189 = call i64 @ISMOTION(%struct.TYPE_8__* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  br label %218

192:                                              ; preds = %187
  br label %193

193:                                              ; preds = %192, %122
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  store i64 0, i64* %200, align 8
  br label %242

201:                                              ; preds = %182, %172, %153
  br label %202

202:                                              ; preds = %201
  %203 = load i8*, i8** %11, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 2
  store i8* %204, i8** %11, align 8
  br label %148

205:                                              ; preds = %148
  br label %84

206:                                              ; preds = %84
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %7, align 4
  %212 = sub nsw i32 %211, 1
  %213 = icmp eq i32 %210, %212
  br i1 %213, label %214, label %217

214:                                              ; preds = %206
  %215 = load i32*, i32** %4, align 8
  %216 = call i32 @v_eof(i32* %215, i32* null)
  store i32 1, i32* %3, align 4
  br label %270

217:                                              ; preds = %206
  br label %218

218:                                              ; preds = %217, %191
  %219 = load i32*, i32** %4, align 8
  %220 = load i32, i32* %7, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %7, align 4
  %222 = load i32, i32* @DBG_FATAL, align 4
  %223 = call i64 @db_get(i32* %219, i32 %221, i32 %222, i8** null, i64* %8)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %218
  store i32 1, i32* %3, align 4
  br label %270

226:                                              ; preds = %218
  %227 = load i32, i32* %7, align 4
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  store i32 %227, i32* %230, align 8
  %231 = load i64, i64* %8, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %226
  %234 = load i64, i64* %8, align 8
  %235 = sub i64 %234, 1
  br label %237

236:                                              ; preds = %226
  br label %237

237:                                              ; preds = %236, %233
  %238 = phi i64 [ %235, %233 ], [ 0, %236 ]
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  store i64 %238, i64* %241, align 8
  br label %242

242:                                              ; preds = %237, %193
  %243 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %244 = call i64 @ISMOTION(%struct.TYPE_8__* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %262

246:                                              ; preds = %242
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 3
  %251 = bitcast %struct.TYPE_7__* %248 to i8*
  %252 = bitcast %struct.TYPE_7__* %250 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %251, i8* align 8 %252, i64 16, i1 false)
  %253 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %254 = load i32, i32* @VM_LMODE, align 4
  %255 = call i64 @F_ISSET(%struct.TYPE_8__* %253, i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %246
  %258 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %259, i32 0, i32 0
  store i64 0, i64* %260, align 8
  br label %261

261:                                              ; preds = %257, %246
  br label %269

262:                                              ; preds = %242
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 1
  %267 = bitcast %struct.TYPE_7__* %264 to i8*
  %268 = bitcast %struct.TYPE_7__* %266 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 16, i1 false)
  br label %269

269:                                              ; preds = %262, %261
  store i32 0, i32* %3, align 4
  br label %270

270:                                              ; preds = %269, %225, %214, %51, %16
  %271 = load i32, i32* %3, align 4
  ret i32 %271
}

declare dso_local i8* @O_STR(i32*, i32) #1

declare dso_local i64 @ISMOTION(%struct.TYPE_8__*) #1

declare dso_local i32 @F_SET(%struct.TYPE_8__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @nonblank(i32*, i32, i64*) #1

declare dso_local i64 @F_ISSET(%struct.TYPE_8__*, i32) #1

declare dso_local i64 @db_get(i32*, i32, i32, i8**, i64*) #1

declare dso_local i32 @v_eof(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
