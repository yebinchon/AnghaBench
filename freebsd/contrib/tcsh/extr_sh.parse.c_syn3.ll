; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.parse.c_syn3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.command = type { i32, i32, i32, i8*, i8*, i32** }
%struct.wordent = type { i32*, %struct.wordent* }

@RELPAR = common dso_local global i32 0, align 4
@F_NOFORK = common dso_local global i32 0, align 4
@ERR_BADPLP = common dso_local global i32 0, align 4
@F_APPEND = common dso_local global i32 0, align 4
@STRand = common dso_local global i32 0, align 4
@F_STDERR = common dso_local global i32 0, align 4
@P_OUT = common dso_local global i32 0, align 4
@P_DIAG = common dso_local global i32 0, align 4
@ERR_OUTRED = common dso_local global i32 0, align 4
@STRbang = common dso_local global i32 0, align 4
@F_OVERWRITE = common dso_local global i32 0, align 4
@ERR_MISRED = common dso_local global i32 0, align 4
@F_READ = common dso_local global i32 0, align 4
@P_HERE = common dso_local global i32 0, align 4
@ERR_REDPAR = common dso_local global i32 0, align 4
@P_IN = common dso_local global i32 0, align 4
@ERR_INRED = common dso_local global i32 0, align 4
@seterr = common dso_local global i32 0, align 4
@ERR_BADPLPS = common dso_local global i32 0, align 4
@NODE_PAREN = common dso_local global i32 0, align 4
@ERR_NULLCOM = common dso_local global i32 0, align 4
@NODE_COMMAND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.command* (%struct.wordent*, %struct.wordent*, i32)* @syn3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.command* @syn3(%struct.wordent* %0, %struct.wordent* %1, i32 %2) #0 {
  %4 = alloca %struct.wordent*, align 8
  %5 = alloca %struct.wordent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wordent*, align 8
  %8 = alloca %struct.wordent*, align 8
  %9 = alloca %struct.wordent*, align 8
  %10 = alloca %struct.command*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wordent* %0, %struct.wordent** %4, align 8
  store %struct.wordent* %1, %struct.wordent** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.wordent*, %struct.wordent** %4, align 8
  %17 = load %struct.wordent*, %struct.wordent** %5, align 8
  %18 = icmp ne %struct.wordent* %16, %17
  br i1 %18, label %19, label %38

19:                                               ; preds = %3
  %20 = load %struct.wordent*, %struct.wordent** %4, align 8
  store %struct.wordent* %20, %struct.wordent** %7, align 8
  br label %21

21:                                               ; preds = %33, %19
  %22 = load %struct.wordent*, %struct.wordent** %7, align 8
  %23 = getelementptr inbounds %struct.wordent, %struct.wordent* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @srchx(i32* %24)
  switch i32 %25, label %36 [
    i32 135, label %26
    i32 134, label %35
    i32 133, label %35
    i32 132, label %35
    i32 131, label %35
    i32 130, label %35
    i32 129, label %35
    i32 128, label %35
  ]

26:                                               ; preds = %21
  %27 = load %struct.wordent*, %struct.wordent** %7, align 8
  %28 = getelementptr inbounds %struct.wordent, %struct.wordent* %27, i32 0, i32 1
  %29 = load %struct.wordent*, %struct.wordent** %28, align 8
  store %struct.wordent* %29, %struct.wordent** %7, align 8
  %30 = load %struct.wordent*, %struct.wordent** %7, align 8
  %31 = load %struct.wordent*, %struct.wordent** %5, align 8
  %32 = icmp ne %struct.wordent* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %21

34:                                               ; preds = %26
  br label %37

35:                                               ; preds = %21, %21, %21, %21, %21, %21, %21
  store i32 1, i32* %15, align 4
  br label %37

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36, %35, %34
  br label %38

38:                                               ; preds = %37, %3
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  %39 = load %struct.wordent*, %struct.wordent** %4, align 8
  store %struct.wordent* %39, %struct.wordent** %7, align 8
  br label %40

40:                                               ; preds = %111, %38
  %41 = load %struct.wordent*, %struct.wordent** %7, align 8
  %42 = load %struct.wordent*, %struct.wordent** %5, align 8
  %43 = icmp ne %struct.wordent* %41, %42
  br i1 %43, label %44, label %115

44:                                               ; preds = %40
  %45 = load %struct.wordent*, %struct.wordent** %7, align 8
  %46 = getelementptr inbounds %struct.wordent, %struct.wordent* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %101 [
    i32 40, label %50
    i32 41, label %59
    i32 62, label %68
    i32 60, label %68
  ]

50:                                               ; preds = %44
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %13, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %11, align 4
  br label %111

59:                                               ; preds = %44
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %11, align 4
  br label %111

68:                                               ; preds = %44, %44
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %74, %71
  br label %111

78:                                               ; preds = %68
  %79 = load %struct.wordent*, %struct.wordent** %7, align 8
  %80 = getelementptr inbounds %struct.wordent, %struct.wordent* %79, i32 0, i32 1
  %81 = load %struct.wordent*, %struct.wordent** %80, align 8
  %82 = load %struct.wordent*, %struct.wordent** %5, align 8
  %83 = icmp eq %struct.wordent* %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %111

85:                                               ; preds = %78
  %86 = load i32, i32* @RELPAR, align 4
  %87 = load %struct.wordent*, %struct.wordent** %7, align 8
  %88 = getelementptr inbounds %struct.wordent, %struct.wordent* %87, i32 0, i32 1
  %89 = load %struct.wordent*, %struct.wordent** %88, align 8
  %90 = getelementptr inbounds %struct.wordent, %struct.wordent* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = trunc i32 %93 to i8
  %95 = call i32 @any(i32 %86, i8 signext %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %85
  br label %111

98:                                               ; preds = %85
  %99 = load i32, i32* %13, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %13, align 4
  br label %111

101:                                              ; preds = %44
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %11, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  br label %111

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %108, %107, %98, %97, %84, %77, %65, %56
  %112 = load %struct.wordent*, %struct.wordent** %7, align 8
  %113 = getelementptr inbounds %struct.wordent, %struct.wordent* %112, i32 0, i32 1
  %114 = load %struct.wordent*, %struct.wordent** %113, align 8
  store %struct.wordent* %114, %struct.wordent** %7, align 8
  br label %40

115:                                              ; preds = %40
  %116 = load i32, i32* %13, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %118, %115
  %120 = call i8* @xcalloc(i32 1, i32 40)
  %121 = bitcast i8* %120 to %struct.command*
  store %struct.command* %121, %struct.command** %10, align 8
  %122 = load i32, i32* %13, align 4
  %123 = add nsw i32 %122, 1
  %124 = call i8* @xcalloc(i32 %123, i32 8)
  %125 = bitcast i8* %124 to i32**
  store i32** %125, i32*** %12, align 8
  %126 = load i32**, i32*** %12, align 8
  %127 = load %struct.command*, %struct.command** %10, align 8
  %128 = getelementptr inbounds %struct.command, %struct.command* %127, i32 0, i32 5
  store i32** %126, i32*** %128, align 8
  store i32 0, i32* %13, align 4
  %129 = load %struct.wordent*, %struct.wordent** %5, align 8
  %130 = getelementptr inbounds %struct.wordent, %struct.wordent* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 41
  br i1 %134, label %135, label %139

135:                                              ; preds = %119
  %136 = load i32, i32* @F_NOFORK, align 4
  %137 = load %struct.command*, %struct.command** %10, align 8
  %138 = getelementptr inbounds %struct.command, %struct.command* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %119
  store %struct.wordent* null, %struct.wordent** %8, align 8
  store %struct.wordent* null, %struct.wordent** %9, align 8
  store i32 0, i32* %11, align 4
  %140 = load %struct.wordent*, %struct.wordent** %4, align 8
  store %struct.wordent* %140, %struct.wordent** %7, align 8
  br label %141

141:                                              ; preds = %417, %139
  %142 = load %struct.wordent*, %struct.wordent** %7, align 8
  %143 = load %struct.wordent*, %struct.wordent** %5, align 8
  %144 = icmp ne %struct.wordent* %142, %143
  br i1 %144, label %145, label %421

145:                                              ; preds = %141
  %146 = load %struct.wordent*, %struct.wordent** %7, align 8
  %147 = getelementptr inbounds %struct.wordent, %struct.wordent* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %14, align 4
  switch i32 %151, label %393 [
    i32 40, label %152
    i32 41, label %171
    i32 62, label %179
    i32 60, label %308
  ]

152:                                              ; preds = %145
  %153 = load i32, i32* %11, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %152
  %156 = load %struct.wordent*, %struct.wordent** %8, align 8
  %157 = icmp ne %struct.wordent* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %155
  %159 = load i32, i32* %15, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %158
  %162 = load i32, i32* @ERR_BADPLP, align 4
  %163 = call i32 @seterror(i32 %162)
  br label %164

164:                                              ; preds = %161, %158, %155
  %165 = load %struct.wordent*, %struct.wordent** %7, align 8
  %166 = getelementptr inbounds %struct.wordent, %struct.wordent* %165, i32 0, i32 1
  %167 = load %struct.wordent*, %struct.wordent** %166, align 8
  store %struct.wordent* %167, %struct.wordent** %8, align 8
  br label %168

168:                                              ; preds = %164, %152
  %169 = load i32, i32* %11, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %11, align 4
  br label %388

171:                                              ; preds = %145
  %172 = load i32, i32* %11, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* %11, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %171
  %177 = load %struct.wordent*, %struct.wordent** %7, align 8
  store %struct.wordent* %177, %struct.wordent** %9, align 8
  br label %178

178:                                              ; preds = %176, %171
  br label %388

179:                                              ; preds = %145
  %180 = load i32, i32* %11, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %179
  br label %388

183:                                              ; preds = %179
  %184 = load %struct.wordent*, %struct.wordent** %7, align 8
  %185 = getelementptr inbounds %struct.wordent, %struct.wordent* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp eq i32 %188, 62
  br i1 %189, label %190, label %196

190:                                              ; preds = %183
  %191 = load i32, i32* @F_APPEND, align 4
  %192 = load %struct.command*, %struct.command** %10, align 8
  %193 = getelementptr inbounds %struct.command, %struct.command* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 8
  br label %196

196:                                              ; preds = %190, %183
  %197 = load %struct.wordent*, %struct.wordent** %7, align 8
  %198 = getelementptr inbounds %struct.wordent, %struct.wordent* %197, i32 0, i32 1
  %199 = load %struct.wordent*, %struct.wordent** %198, align 8
  %200 = load %struct.wordent*, %struct.wordent** %5, align 8
  %201 = icmp ne %struct.wordent* %199, %200
  br i1 %201, label %202, label %231

202:                                              ; preds = %196
  %203 = load %struct.wordent*, %struct.wordent** %7, align 8
  %204 = getelementptr inbounds %struct.wordent, %struct.wordent* %203, i32 0, i32 1
  %205 = load %struct.wordent*, %struct.wordent** %204, align 8
  %206 = getelementptr inbounds %struct.wordent, %struct.wordent* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = bitcast i32* %207 to i8*
  %209 = load i32, i32* @STRand, align 4
  %210 = call i32 @eq(i8* %208, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %231

212:                                              ; preds = %202
  %213 = load i32, i32* @F_STDERR, align 4
  %214 = load %struct.command*, %struct.command** %10, align 8
  %215 = getelementptr inbounds %struct.command, %struct.command* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 8
  %218 = load %struct.wordent*, %struct.wordent** %7, align 8
  %219 = getelementptr inbounds %struct.wordent, %struct.wordent* %218, i32 0, i32 1
  %220 = load %struct.wordent*, %struct.wordent** %219, align 8
  store %struct.wordent* %220, %struct.wordent** %7, align 8
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @P_OUT, align 4
  %223 = load i32, i32* @P_DIAG, align 4
  %224 = or i32 %222, %223
  %225 = and i32 %221, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %212
  %228 = load i32, i32* @ERR_OUTRED, align 4
  %229 = call i32 @seterror(i32 %228)
  br label %417

230:                                              ; preds = %212
  br label %231

231:                                              ; preds = %230, %202, %196
  %232 = load %struct.wordent*, %struct.wordent** %7, align 8
  %233 = getelementptr inbounds %struct.wordent, %struct.wordent* %232, i32 0, i32 1
  %234 = load %struct.wordent*, %struct.wordent** %233, align 8
  %235 = load %struct.wordent*, %struct.wordent** %5, align 8
  %236 = icmp ne %struct.wordent* %234, %235
  br i1 %236, label %237, label %256

237:                                              ; preds = %231
  %238 = load %struct.wordent*, %struct.wordent** %7, align 8
  %239 = getelementptr inbounds %struct.wordent, %struct.wordent* %238, i32 0, i32 1
  %240 = load %struct.wordent*, %struct.wordent** %239, align 8
  %241 = getelementptr inbounds %struct.wordent, %struct.wordent* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = bitcast i32* %242 to i8*
  %244 = load i32, i32* @STRbang, align 4
  %245 = call i32 @eq(i8* %243, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %256

247:                                              ; preds = %237
  %248 = load i32, i32* @F_OVERWRITE, align 4
  %249 = load %struct.command*, %struct.command** %10, align 8
  %250 = getelementptr inbounds %struct.command, %struct.command* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  %253 = load %struct.wordent*, %struct.wordent** %7, align 8
  %254 = getelementptr inbounds %struct.wordent, %struct.wordent* %253, i32 0, i32 1
  %255 = load %struct.wordent*, %struct.wordent** %254, align 8
  store %struct.wordent* %255, %struct.wordent** %7, align 8
  br label %256

256:                                              ; preds = %247, %237, %231
  %257 = load %struct.wordent*, %struct.wordent** %7, align 8
  %258 = getelementptr inbounds %struct.wordent, %struct.wordent* %257, i32 0, i32 1
  %259 = load %struct.wordent*, %struct.wordent** %258, align 8
  %260 = load %struct.wordent*, %struct.wordent** %5, align 8
  %261 = icmp eq %struct.wordent* %259, %260
  br i1 %261, label %262, label %265

262:                                              ; preds = %256
  %263 = load i32, i32* @ERR_MISRED, align 4
  %264 = call i32 @seterror(i32 %263)
  br label %417

265:                                              ; preds = %256
  %266 = load %struct.wordent*, %struct.wordent** %7, align 8
  %267 = getelementptr inbounds %struct.wordent, %struct.wordent* %266, i32 0, i32 1
  %268 = load %struct.wordent*, %struct.wordent** %267, align 8
  store %struct.wordent* %268, %struct.wordent** %7, align 8
  %269 = load i32, i32* @RELPAR, align 4
  %270 = load %struct.wordent*, %struct.wordent** %7, align 8
  %271 = getelementptr inbounds %struct.wordent, %struct.wordent* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 0
  %274 = load i32, i32* %273, align 4
  %275 = trunc i32 %274 to i8
  %276 = call i32 @any(i32 %269, i8 signext %275)
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %265
  %279 = load i32, i32* @ERR_MISRED, align 4
  %280 = call i32 @seterror(i32 %279)
  br label %417

281:                                              ; preds = %265
  %282 = load i32, i32* %6, align 4
  %283 = load i32, i32* @P_OUT, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %291

286:                                              ; preds = %281
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* @P_DIAG, align 4
  %289 = and i32 %287, %288
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %286, %281
  %292 = load %struct.command*, %struct.command** %10, align 8
  %293 = getelementptr inbounds %struct.command, %struct.command* %292, i32 0, i32 4
  %294 = load i8*, i8** %293, align 8
  %295 = icmp ne i8* %294, null
  br i1 %295, label %296, label %299

296:                                              ; preds = %291, %286
  %297 = load i32, i32* @ERR_OUTRED, align 4
  %298 = call i32 @seterror(i32 %297)
  br label %307

299:                                              ; preds = %291
  %300 = load %struct.wordent*, %struct.wordent** %7, align 8
  %301 = getelementptr inbounds %struct.wordent, %struct.wordent* %300, i32 0, i32 0
  %302 = load i32*, i32** %301, align 8
  %303 = bitcast i32* %302 to i8*
  %304 = call i8* @Strsave(i8* %303)
  %305 = load %struct.command*, %struct.command** %10, align 8
  %306 = getelementptr inbounds %struct.command, %struct.command* %305, i32 0, i32 4
  store i8* %304, i8** %306, align 8
  br label %307

307:                                              ; preds = %299, %296
  br label %417

308:                                              ; preds = %145
  %309 = load i32, i32* %11, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %312

311:                                              ; preds = %308
  br label %388

312:                                              ; preds = %308
  %313 = load %struct.wordent*, %struct.wordent** %7, align 8
  %314 = getelementptr inbounds %struct.wordent, %struct.wordent* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 1
  %317 = load i32, i32* %316, align 4
  %318 = icmp eq i32 %317, 60
  br i1 %318, label %319, label %325

319:                                              ; preds = %312
  %320 = load i32, i32* @F_READ, align 4
  %321 = load %struct.command*, %struct.command** %10, align 8
  %322 = getelementptr inbounds %struct.command, %struct.command* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 8
  br label %325

325:                                              ; preds = %319, %312
  %326 = load %struct.wordent*, %struct.wordent** %7, align 8
  %327 = getelementptr inbounds %struct.wordent, %struct.wordent* %326, i32 0, i32 1
  %328 = load %struct.wordent*, %struct.wordent** %327, align 8
  %329 = load %struct.wordent*, %struct.wordent** %5, align 8
  %330 = icmp eq %struct.wordent* %328, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %325
  %332 = load i32, i32* @ERR_MISRED, align 4
  %333 = call i32 @seterror(i32 %332)
  br label %417

334:                                              ; preds = %325
  %335 = load %struct.wordent*, %struct.wordent** %7, align 8
  %336 = getelementptr inbounds %struct.wordent, %struct.wordent* %335, i32 0, i32 1
  %337 = load %struct.wordent*, %struct.wordent** %336, align 8
  store %struct.wordent* %337, %struct.wordent** %7, align 8
  %338 = load i32, i32* @RELPAR, align 4
  %339 = load %struct.wordent*, %struct.wordent** %7, align 8
  %340 = getelementptr inbounds %struct.wordent, %struct.wordent* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 0
  %343 = load i32, i32* %342, align 4
  %344 = trunc i32 %343 to i8
  %345 = call i32 @any(i32 %338, i8 signext %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %334
  %348 = load i32, i32* @ERR_MISRED, align 4
  %349 = call i32 @seterror(i32 %348)
  br label %417

350:                                              ; preds = %334
  %351 = load i32, i32* %6, align 4
  %352 = load i32, i32* @P_HERE, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %365

355:                                              ; preds = %350
  %356 = load %struct.command*, %struct.command** %10, align 8
  %357 = getelementptr inbounds %struct.command, %struct.command* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @F_READ, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %355
  %363 = load i32, i32* @ERR_REDPAR, align 4
  %364 = call i32 @seterror(i32 %363)
  br label %387

365:                                              ; preds = %355, %350
  %366 = load i32, i32* %6, align 4
  %367 = load i32, i32* @P_IN, align 4
  %368 = and i32 %366, %367
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %375, label %370

370:                                              ; preds = %365
  %371 = load %struct.command*, %struct.command** %10, align 8
  %372 = getelementptr inbounds %struct.command, %struct.command* %371, i32 0, i32 3
  %373 = load i8*, i8** %372, align 8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %375, label %378

375:                                              ; preds = %370, %365
  %376 = load i32, i32* @ERR_INRED, align 4
  %377 = call i32 @seterror(i32 %376)
  br label %386

378:                                              ; preds = %370
  %379 = load %struct.wordent*, %struct.wordent** %7, align 8
  %380 = getelementptr inbounds %struct.wordent, %struct.wordent* %379, i32 0, i32 0
  %381 = load i32*, i32** %380, align 8
  %382 = bitcast i32* %381 to i8*
  %383 = call i8* @Strsave(i8* %382)
  %384 = load %struct.command*, %struct.command** %10, align 8
  %385 = getelementptr inbounds %struct.command, %struct.command* %384, i32 0, i32 3
  store i8* %383, i8** %385, align 8
  br label %386

386:                                              ; preds = %378, %375
  br label %387

387:                                              ; preds = %386, %362
  br label %417

388:                                              ; preds = %311, %182, %178, %168
  %389 = load i32, i32* %15, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %392, label %391

391:                                              ; preds = %388
  br label %417

392:                                              ; preds = %388
  br label %393

393:                                              ; preds = %145, %392
  %394 = load i32, i32* %11, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %393
  %397 = load i32, i32* %15, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %400, label %399

399:                                              ; preds = %396
  br label %417

400:                                              ; preds = %396, %393
  %401 = load i32, i32* @seterr, align 4
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %403, label %414

403:                                              ; preds = %400
  %404 = load %struct.wordent*, %struct.wordent** %7, align 8
  %405 = getelementptr inbounds %struct.wordent, %struct.wordent* %404, i32 0, i32 0
  %406 = load i32*, i32** %405, align 8
  %407 = bitcast i32* %406 to i8*
  %408 = call i8* @Strsave(i8* %407)
  %409 = bitcast i8* %408 to i32*
  %410 = load i32**, i32*** %12, align 8
  %411 = load i32, i32* %13, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32*, i32** %410, i64 %412
  store i32* %409, i32** %413, align 8
  br label %414

414:                                              ; preds = %403, %400
  %415 = load i32, i32* %13, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %13, align 4
  br label %417

417:                                              ; preds = %414, %399, %391, %387, %347, %331, %307, %278, %262, %227
  %418 = load %struct.wordent*, %struct.wordent** %7, align 8
  %419 = getelementptr inbounds %struct.wordent, %struct.wordent* %418, i32 0, i32 1
  %420 = load %struct.wordent*, %struct.wordent** %419, align 8
  store %struct.wordent* %420, %struct.wordent** %7, align 8
  br label %141

421:                                              ; preds = %141
  %422 = load %struct.wordent*, %struct.wordent** %8, align 8
  %423 = icmp ne %struct.wordent* %422, null
  br i1 %423, label %424, label %443

424:                                              ; preds = %421
  %425 = load i32, i32* %15, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %443, label %427

427:                                              ; preds = %424
  %428 = load i32, i32* %13, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %433

430:                                              ; preds = %427
  %431 = load i32, i32* @ERR_BADPLPS, align 4
  %432 = call i32 @seterror(i32 %431)
  br label %433

433:                                              ; preds = %430, %427
  %434 = load i32, i32* @NODE_PAREN, align 4
  %435 = load %struct.command*, %struct.command** %10, align 8
  %436 = getelementptr inbounds %struct.command, %struct.command* %435, i32 0, i32 1
  store i32 %434, i32* %436, align 4
  %437 = load %struct.wordent*, %struct.wordent** %8, align 8
  %438 = load %struct.wordent*, %struct.wordent** %9, align 8
  %439 = load i32, i32* @P_HERE, align 4
  %440 = call i32 @syn0(%struct.wordent* %437, %struct.wordent* %438, i32 %439)
  %441 = load %struct.command*, %struct.command** %10, align 8
  %442 = getelementptr inbounds %struct.command, %struct.command* %441, i32 0, i32 2
  store i32 %440, i32* %442, align 8
  br label %453

443:                                              ; preds = %424, %421
  %444 = load i32, i32* %13, align 4
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %449

446:                                              ; preds = %443
  %447 = load i32, i32* @ERR_NULLCOM, align 4
  %448 = call i32 @seterror(i32 %447)
  br label %449

449:                                              ; preds = %446, %443
  %450 = load i32, i32* @NODE_COMMAND, align 4
  %451 = load %struct.command*, %struct.command** %10, align 8
  %452 = getelementptr inbounds %struct.command, %struct.command* %451, i32 0, i32 1
  store i32 %450, i32* %452, align 4
  br label %453

453:                                              ; preds = %449, %433
  %454 = load %struct.command*, %struct.command** %10, align 8
  ret %struct.command* %454
}

declare dso_local i32 @srchx(i32*) #1

declare dso_local i32 @any(i32, i8 signext) #1

declare dso_local i8* @xcalloc(i32, i32) #1

declare dso_local i32 @seterror(i32) #1

declare dso_local i32 @eq(i8*, i32) #1

declare dso_local i8* @Strsave(i8*) #1

declare dso_local i32 @syn0(%struct.wordent*, %struct.wordent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
