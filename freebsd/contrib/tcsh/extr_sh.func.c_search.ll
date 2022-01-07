; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.func.c_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Strbuf = type { i8*, i64 }
%struct.whyle = type { %struct.whyle* }
%struct.wordent = type { %struct.wordent*, %struct.wordent*, i8* }
%struct.Ain = type { i64, i64, i64 }

@Strbuf_INIT = common dso_local global %struct.Strbuf zeroinitializer, align 8
@Stype = common dso_local global i32 0, align 4
@Sgoal = common dso_local global %struct.Strbuf* null, align 8
@TC_GOTO = common dso_local global i32 0, align 4
@TCSH_F_SEEK = common dso_local global i64 0, align 8
@intty = common dso_local global i64 0, align 8
@STRNULL = common dso_local global i8* null, align 8
@fseekp = common dso_local global i64 0, align 8
@feobp = common dso_local global i64 0, align 8
@aret = common dso_local global i64 0, align 8
@TC_BREAK = common dso_local global i32 0, align 4
@zlast = common dso_local global i32 0, align 4
@STRthen = common dso_local global %struct.Strbuf* null, align 8
@TC_BRKSW = common dso_local global i32 0, align 4
@whyles = common dso_local global %struct.whyle* null, align 8
@STRdefault = common dso_local global %struct.Strbuf* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.Strbuf*)* @search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search(i32 %0, i32 %1, %struct.Strbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.Strbuf*, align 8
  %7 = alloca %struct.Strbuf, align 8
  %8 = alloca %struct.Strbuf*, align 8
  %9 = alloca %struct.whyle*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wordent*, align 8
  %12 = alloca %struct.wordent*, align 8
  %13 = alloca %struct.Ain, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.Strbuf* %2, %struct.Strbuf** %6, align 8
  %14 = bitcast %struct.Strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 bitcast (%struct.Strbuf* @Strbuf_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %10, align 4
  store %struct.wordent* null, %struct.wordent** %11, align 8
  store %struct.wordent* null, %struct.wordent** %12, align 8
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* @Stype, align 4
  %16 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  store %struct.Strbuf* %16, %struct.Strbuf** @Sgoal, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TC_GOTO, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i64, i64* @TCSH_F_SEEK, align 8
  %22 = getelementptr inbounds %struct.Ain, %struct.Ain* %13, i32 0, i32 2
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.Ain, %struct.Ain* %13, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.Ain, %struct.Ain* %13, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = call i32 @bseek(%struct.Ain* %13)
  br label %26

26:                                               ; preds = %20, %3
  %27 = call i32 @cleanup_push(%struct.Strbuf* %7, i32 (%struct.wordent*)* @Strbuf_cleanup)
  br label %28

28:                                               ; preds = %363, %26
  %29 = load i64, i64* @intty, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %28
  %32 = call i8* @xmalloc(i32 24)
  %33 = bitcast i8* %32 to %struct.wordent*
  store %struct.wordent* %33, %struct.wordent** %11, align 8
  %34 = call i8* @xmalloc(i32 24)
  %35 = bitcast i8* %34 to %struct.wordent*
  store %struct.wordent* %35, %struct.wordent** %12, align 8
  %36 = load i8*, i8** @STRNULL, align 8
  %37 = load %struct.wordent*, %struct.wordent** %12, align 8
  %38 = getelementptr inbounds %struct.wordent, %struct.wordent* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.wordent*, %struct.wordent** %11, align 8
  %40 = load %struct.wordent*, %struct.wordent** %12, align 8
  %41 = getelementptr inbounds %struct.wordent, %struct.wordent* %40, i32 0, i32 0
  store %struct.wordent* %39, %struct.wordent** %41, align 8
  %42 = load %struct.wordent*, %struct.wordent** %12, align 8
  %43 = load %struct.wordent*, %struct.wordent** %11, align 8
  %44 = getelementptr inbounds %struct.wordent, %struct.wordent* %43, i32 0, i32 1
  store %struct.wordent* %42, %struct.wordent** %44, align 8
  br label %45

45:                                               ; preds = %31, %28
  %46 = load i64, i64* @intty, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %45
  %49 = load i64, i64* @fseekp, align 8
  %50 = load i64, i64* @feobp, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load i64, i64* @aret, align 8
  %54 = load i64, i64* @TCSH_F_SEEK, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %52
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @TC_BREAK, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @zlast, align 4
  br label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = call i32 @isrchx(i32 %65)
  %67 = call i32 @printprompt(i32 1, i32 %66)
  br label %68

68:                                               ; preds = %64, %52, %48, %45
  %69 = call i32 @getword(%struct.Strbuf* %7)
  %70 = call i32 @Strbuf_terminate(%struct.Strbuf* %7)
  %71 = load i64, i64* @intty, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @Strlen(i8* %75)
  %77 = icmp sgt i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %73
  %79 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i8* @Strsave(i8* %80)
  %82 = load %struct.wordent*, %struct.wordent** %11, align 8
  %83 = getelementptr inbounds %struct.wordent, %struct.wordent* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = call i8* @xmalloc(i32 24)
  %85 = bitcast i8* %84 to %struct.wordent*
  %86 = load %struct.wordent*, %struct.wordent** %11, align 8
  %87 = getelementptr inbounds %struct.wordent, %struct.wordent* %86, i32 0, i32 0
  store %struct.wordent* %85, %struct.wordent** %87, align 8
  %88 = load %struct.wordent*, %struct.wordent** %11, align 8
  %89 = load %struct.wordent*, %struct.wordent** %11, align 8
  %90 = getelementptr inbounds %struct.wordent, %struct.wordent* %89, i32 0, i32 0
  %91 = load %struct.wordent*, %struct.wordent** %90, align 8
  %92 = getelementptr inbounds %struct.wordent, %struct.wordent* %91, i32 0, i32 1
  store %struct.wordent* %88, %struct.wordent** %92, align 8
  %93 = load %struct.wordent*, %struct.wordent** %11, align 8
  %94 = getelementptr inbounds %struct.wordent, %struct.wordent* %93, i32 0, i32 0
  %95 = load %struct.wordent*, %struct.wordent** %94, align 8
  store %struct.wordent* %95, %struct.wordent** %11, align 8
  br label %96

96:                                               ; preds = %78, %73, %68
  %97 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call i32 @srchx(i8* %98)
  switch i32 %99, label %236 [
    i32 136, label %100
    i32 131, label %108
    i32 134, label %150
    i32 132, label %160
    i32 128, label %160
    i32 135, label %170
    i32 129, label %199
    i32 133, label %210
    i32 130, label %221
    i32 138, label %289
    i32 137, label %333
  ]

100:                                              ; preds = %96
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 131
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %367

107:                                              ; preds = %103, %100
  br label %341

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %133, %108
  %110 = call i32 @getword(%struct.Strbuf* %7)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %134

112:                                              ; preds = %109
  %113 = load i64, i64* @intty, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %112
  %116 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = call i8* @Strsave(i8* %117)
  %119 = load %struct.wordent*, %struct.wordent** %11, align 8
  %120 = getelementptr inbounds %struct.wordent, %struct.wordent* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = call i8* @xmalloc(i32 24)
  %122 = bitcast i8* %121 to %struct.wordent*
  %123 = load %struct.wordent*, %struct.wordent** %11, align 8
  %124 = getelementptr inbounds %struct.wordent, %struct.wordent* %123, i32 0, i32 0
  store %struct.wordent* %122, %struct.wordent** %124, align 8
  %125 = load %struct.wordent*, %struct.wordent** %11, align 8
  %126 = load %struct.wordent*, %struct.wordent** %11, align 8
  %127 = getelementptr inbounds %struct.wordent, %struct.wordent* %126, i32 0, i32 0
  %128 = load %struct.wordent*, %struct.wordent** %127, align 8
  %129 = getelementptr inbounds %struct.wordent, %struct.wordent* %128, i32 0, i32 1
  store %struct.wordent* %125, %struct.wordent** %129, align 8
  %130 = load %struct.wordent*, %struct.wordent** %11, align 8
  %131 = getelementptr inbounds %struct.wordent, %struct.wordent* %130, i32 0, i32 0
  %132 = load %struct.wordent*, %struct.wordent** %131, align 8
  store %struct.wordent* %132, %struct.wordent** %11, align 8
  br label %133

133:                                              ; preds = %115, %112
  br label %109

134:                                              ; preds = %109
  %135 = load i32, i32* %4, align 4
  %136 = icmp eq i32 %135, 131
  br i1 %136, label %140, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %4, align 4
  %139 = icmp eq i32 %138, 136
  br i1 %139, label %140, label %149

140:                                              ; preds = %137, %134
  %141 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = load %struct.Strbuf*, %struct.Strbuf** @STRthen, align 8
  %144 = call i32 @eq(i8* %142, %struct.Strbuf* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %146, %140, %137
  br label %341

150:                                              ; preds = %96
  %151 = load i32, i32* %4, align 4
  %152 = icmp eq i32 %151, 131
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* %4, align 4
  %155 = icmp eq i32 %154, 136
  br i1 %155, label %156, label %159

156:                                              ; preds = %153, %150
  %157 = load i32, i32* %5, align 4
  %158 = add nsw i32 %157, -1
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %156, %153
  br label %341

160:                                              ; preds = %96, %96
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* @TC_BREAK, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %5, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %166, %160
  br label %341

170:                                              ; preds = %96
  %171 = load i32, i32* %4, align 4
  %172 = load i32, i32* @TC_BRKSW, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %189

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %188

177:                                              ; preds = %174
  %178 = load %struct.whyle*, %struct.whyle** @whyles, align 8
  store %struct.whyle* %178, %struct.whyle** %9, align 8
  %179 = load %struct.whyle*, %struct.whyle** %9, align 8
  %180 = icmp ne %struct.whyle* %179, null
  br i1 %180, label %181, label %187

181:                                              ; preds = %177
  %182 = load %struct.whyle*, %struct.whyle** %9, align 8
  %183 = getelementptr inbounds %struct.whyle, %struct.whyle* %182, i32 0, i32 0
  %184 = load %struct.whyle*, %struct.whyle** %183, align 8
  store %struct.whyle* %184, %struct.whyle** @whyles, align 8
  %185 = load %struct.whyle*, %struct.whyle** %9, align 8
  %186 = call i32 @wpfree(%struct.whyle* %185)
  br label %187

187:                                              ; preds = %181, %177
  br label %188

188:                                              ; preds = %187, %174
  br label %189

189:                                              ; preds = %188, %170
  %190 = load i32, i32* %4, align 4
  %191 = load i32, i32* @TC_BREAK, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %196

193:                                              ; preds = %189
  %194 = load i32, i32* %5, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %193, %189
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %10, align 4
  br label %341

199:                                              ; preds = %96
  %200 = load i32, i32* %4, align 4
  %201 = icmp eq i32 %200, 129
  br i1 %201, label %206, label %202

202:                                              ; preds = %199
  %203 = load i32, i32* %4, align 4
  %204 = load i32, i32* @TC_BRKSW, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %202, %199
  %207 = load i32, i32* %5, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %5, align 4
  br label %209

209:                                              ; preds = %206, %202
  br label %341

210:                                              ; preds = %96
  %211 = load i32, i32* %4, align 4
  %212 = icmp eq i32 %211, 129
  br i1 %212, label %217, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %4, align 4
  %215 = load i32, i32* @TC_BRKSW, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %213, %210
  %218 = load i32, i32* %5, align 4
  %219 = add nsw i32 %218, -1
  store i32 %219, i32* %5, align 4
  br label %220

220:                                              ; preds = %217, %213
  br label %341

221:                                              ; preds = %96
  %222 = load i32, i32* %4, align 4
  %223 = load i32, i32* @TC_GOTO, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %235

225:                                              ; preds = %221
  %226 = call i32 @getword(%struct.Strbuf* %7)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %235

228:                                              ; preds = %225
  %229 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %230 = load i8*, i8** %229, align 8
  %231 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %232 = call i32 @eq(i8* %230, %struct.Strbuf* %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  store i32 -1, i32* %5, align 4
  br label %235

235:                                              ; preds = %234, %228, %225, %221
  br label %341

236:                                              ; preds = %96
  %237 = load i32, i32* %4, align 4
  %238 = load i32, i32* @TC_GOTO, align 4
  %239 = icmp ne i32 %237, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %236
  %241 = load i32, i32* %4, align 4
  %242 = icmp ne i32 %241, 129
  br i1 %242, label %246, label %243

243:                                              ; preds = %240
  %244 = load i32, i32* %5, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %243, %240
  br label %341

247:                                              ; preds = %243, %236
  %248 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 1
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = sub i64 %255, 1
  %257 = getelementptr inbounds i8, i8* %253, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 58
  br i1 %260, label %261, label %262

261:                                              ; preds = %251, %247
  br label %341

262:                                              ; preds = %251
  %263 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %264 = load i8*, i8** %263, align 8
  %265 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = add i64 %266, -1
  store i64 %267, i64* %265, align 8
  %268 = getelementptr inbounds i8, i8* %264, i64 %267
  store i8 0, i8* %268, align 1
  %269 = load i32, i32* %4, align 4
  %270 = load i32, i32* @TC_GOTO, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %278

272:                                              ; preds = %262
  %273 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %274 = load i8*, i8** %273, align 8
  %275 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %276 = call i32 @eq(i8* %274, %struct.Strbuf* %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %287, label %278

278:                                              ; preds = %272, %262
  %279 = load i32, i32* %4, align 4
  %280 = icmp eq i32 %279, 129
  br i1 %280, label %281, label %288

281:                                              ; preds = %278
  %282 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %283 = load i8*, i8** %282, align 8
  %284 = load %struct.Strbuf*, %struct.Strbuf** @STRdefault, align 8
  %285 = call i32 @eq(i8* %283, %struct.Strbuf* %284)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %281, %272
  store i32 -1, i32* %5, align 4
  br label %288

288:                                              ; preds = %287, %281, %278
  br label %341

289:                                              ; preds = %96
  %290 = load i32, i32* %4, align 4
  %291 = icmp ne i32 %290, 129
  br i1 %291, label %295, label %292

292:                                              ; preds = %289
  %293 = load i32, i32* %5, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %292, %289
  br label %341

296:                                              ; preds = %292
  %297 = call i32 @getword(%struct.Strbuf* %7)
  %298 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 1
  %299 = load i64, i64* %298, align 8
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %318

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  %304 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = sub i64 %305, 1
  %307 = getelementptr inbounds i8, i8* %303, i64 %306
  %308 = load i8, i8* %307, align 1
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %309, 58
  br i1 %310, label %311, label %318

311:                                              ; preds = %301
  %312 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  %316 = add i64 %315, -1
  store i64 %316, i64* %314, align 8
  %317 = getelementptr inbounds i8, i8* %313, i64 %316
  store i8 0, i8* %317, align 1
  br label %318

318:                                              ; preds = %311, %301, %296
  %319 = getelementptr inbounds %struct.Strbuf, %struct.Strbuf* %7, i32 0, i32 0
  %320 = load i8*, i8** %319, align 8
  %321 = call i32 @Dfix1(i8* %320)
  %322 = call %struct.Strbuf* @strip(i32 %321)
  store %struct.Strbuf* %322, %struct.Strbuf** %8, align 8
  %323 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %324 = call i32 @cleanup_push(%struct.Strbuf* %323, i32 (%struct.wordent*)* @xfree)
  %325 = load %struct.Strbuf*, %struct.Strbuf** %6, align 8
  %326 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %327 = call i32 @Gmatch(%struct.Strbuf* %325, %struct.Strbuf* %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %318
  store i32 -1, i32* %5, align 4
  br label %330

330:                                              ; preds = %329, %318
  %331 = load %struct.Strbuf*, %struct.Strbuf** %8, align 8
  %332 = call i32 @cleanup_until(%struct.Strbuf* %331)
  br label %341

333:                                              ; preds = %96
  %334 = load i32, i32* %4, align 4
  %335 = icmp eq i32 %334, 129
  br i1 %335, label %336, label %340

336:                                              ; preds = %333
  %337 = load i32, i32* %5, align 4
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %340

339:                                              ; preds = %336
  store i32 -1, i32* %5, align 4
  br label %340

340:                                              ; preds = %339, %336, %333
  br label %341

341:                                              ; preds = %340, %330, %295, %288, %261, %246, %235, %220, %209, %196, %169, %159, %149, %107
  %342 = load i64, i64* @intty, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %360

344:                                              ; preds = %341
  %345 = load %struct.wordent*, %struct.wordent** %11, align 8
  %346 = call %struct.wordent* @histgetword(%struct.wordent* %345)
  %347 = load %struct.wordent*, %struct.wordent** %12, align 8
  %348 = getelementptr inbounds %struct.wordent, %struct.wordent* %347, i32 0, i32 1
  store %struct.wordent* %346, %struct.wordent** %348, align 8
  %349 = load %struct.wordent*, %struct.wordent** %12, align 8
  %350 = load %struct.wordent*, %struct.wordent** %12, align 8
  %351 = getelementptr inbounds %struct.wordent, %struct.wordent* %350, i32 0, i32 1
  %352 = load %struct.wordent*, %struct.wordent** %351, align 8
  %353 = getelementptr inbounds %struct.wordent, %struct.wordent* %352, i32 0, i32 0
  store %struct.wordent* %349, %struct.wordent** %353, align 8
  %354 = load %struct.wordent*, %struct.wordent** %12, align 8
  %355 = call i32 @savehist(%struct.wordent* %354, i32 0)
  %356 = load %struct.wordent*, %struct.wordent** %12, align 8
  %357 = call i32 @freelex(%struct.wordent* %356)
  %358 = load %struct.wordent*, %struct.wordent** %12, align 8
  %359 = call i32 @xfree(%struct.wordent* %358)
  br label %362

360:                                              ; preds = %341
  %361 = call i32 @getword(%struct.Strbuf* null)
  br label %362

362:                                              ; preds = %360, %344
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %5, align 4
  %365 = icmp sge i32 %364, 0
  br i1 %365, label %28, label %366

366:                                              ; preds = %363
  br label %367

367:                                              ; preds = %366, %106
  %368 = call i32 @cleanup_until(%struct.Strbuf* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bseek(%struct.Ain*) #2

declare dso_local i32 @cleanup_push(%struct.Strbuf*, i32 (%struct.wordent*)*) #2

declare dso_local i32 @Strbuf_cleanup(%struct.wordent*) #2

declare dso_local i8* @xmalloc(i32) #2

declare dso_local i32 @printprompt(i32, i32) #2

declare dso_local i32 @isrchx(i32) #2

declare dso_local i32 @getword(%struct.Strbuf*) #2

declare dso_local i32 @Strbuf_terminate(%struct.Strbuf*) #2

declare dso_local i64 @Strlen(i8*) #2

declare dso_local i8* @Strsave(i8*) #2

declare dso_local i32 @srchx(i8*) #2

declare dso_local i32 @eq(i8*, %struct.Strbuf*) #2

declare dso_local i32 @wpfree(%struct.whyle*) #2

declare dso_local %struct.Strbuf* @strip(i32) #2

declare dso_local i32 @Dfix1(i8*) #2

declare dso_local i32 @xfree(%struct.wordent*) #2

declare dso_local i32 @Gmatch(%struct.Strbuf*, %struct.Strbuf*) #2

declare dso_local i32 @cleanup_until(%struct.Strbuf*) #2

declare dso_local %struct.wordent* @histgetword(%struct.wordent*) #2

declare dso_local i32 @savehist(%struct.wordent*, i32) #2

declare dso_local i32 @freelex(%struct.wordent*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
