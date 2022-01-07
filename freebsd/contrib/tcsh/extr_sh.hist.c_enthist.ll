; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_enthist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_sh.hist.c_enthist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Hist = type { i64, i32, i32, %struct.wordent, %struct.Hist*, i64, i32*, %struct.Hist* }
%struct.wordent = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.wordent* }
%struct.TYPE_4__ = type { %struct.wordent* }
%struct.TYPE_6__ = type { i32 }

@Histlist = common dso_local global %struct.Hist zeroinitializer, align 8
@STRhistdup = common dso_local global i32 0, align 4
@STRNULL = common dso_local global i32* null, align 8
@STRerase = common dso_local global i32 0, align 4
@Htime = common dso_local global i64 0, align 8
@fastMergeErase = common dso_local global i32 0, align 4
@STRall = common dso_local global i32 0, align 4
@eventno = common dso_local global i32 0, align 4
@STRprev = common dso_local global i32 0, align 4
@histvalid = common dso_local global i64 0, align 8
@histline = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.Hist* @enthist(i32 %0, %struct.wordent* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.Hist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wordent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.Hist*, align 8
  %13 = alloca %struct.Hist*, align 8
  %14 = alloca %struct.Hist*, align 8
  %15 = alloca %struct.Hist*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.wordent* %1, %struct.wordent** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.Hist* null, %struct.Hist** %12, align 8
  store %struct.Hist* @Histlist, %struct.Hist** %13, align 8
  store %struct.Hist* null, %struct.Hist** %14, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* @STRhistdup, align 4
  %19 = call i32* @varval(i32 %18)
  store i32* %19, i32** %16, align 8
  %20 = load i32*, i32** @STRNULL, align 8
  %21 = icmp ne i32* %19, %20
  br i1 %21, label %22, label %135

22:                                               ; preds = %5
  %23 = load i32*, i32** %16, align 8
  %24 = load i32, i32* @STRerase, align 4
  %25 = call i64 @eq(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %84

27:                                               ; preds = %22
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @createHistHashTable(i32 %28)
  %30 = load %struct.wordent*, %struct.wordent** %8, align 8
  %31 = call i32 @hashhist(%struct.wordent* %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* %17, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.wordent*, %struct.wordent** %8, align 8
  %37 = load i32, i32* %17, align 4
  %38 = call %struct.Hist* @findHistHashTable(%struct.wordent* %36, i32 %37)
  store %struct.Hist* %38, %struct.Hist** %12, align 8
  %39 = load %struct.Hist*, %struct.Hist** %12, align 8
  %40 = icmp ne %struct.Hist* %39, null
  br i1 %40, label %41, label %83

41:                                               ; preds = %27
  %42 = load i64, i64* @Htime, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.Hist*, %struct.Hist** %12, align 8
  %46 = getelementptr inbounds %struct.Hist, %struct.Hist* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @Htime, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.Hist*, %struct.Hist** %12, align 8
  %52 = getelementptr inbounds %struct.Hist, %struct.Hist* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* @Htime, align 8
  br label %54

54:                                               ; preds = %50, %44, %41
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %72

57:                                               ; preds = %54
  %58 = load i64, i64* @Htime, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.Hist*, %struct.Hist** %12, align 8
  %62 = getelementptr inbounds %struct.Hist, %struct.Hist* %61, i32 0, i32 7
  %63 = load %struct.Hist*, %struct.Hist** %62, align 8
  %64 = getelementptr inbounds %struct.Hist, %struct.Hist* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @Htime, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load %struct.Hist*, %struct.Hist** %12, align 8
  %70 = getelementptr inbounds %struct.Hist, %struct.Hist* %69, i32 0, i32 7
  %71 = load %struct.Hist*, %struct.Hist** %70, align 8
  store %struct.Hist* %71, %struct.Hist** %14, align 8
  br label %72

72:                                               ; preds = %68, %60, %57, %54
  %73 = load i32, i32* @fastMergeErase, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load %struct.Hist*, %struct.Hist** %12, align 8
  %77 = call i32 @renumberHist(%struct.Hist* %76)
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.Hist*, %struct.Hist** %12, align 8
  %80 = call i32 @hremove(%struct.Hist* %79)
  %81 = load %struct.Hist*, %struct.Hist** %12, align 8
  %82 = call i32 @hfree(%struct.Hist* %81)
  store %struct.Hist* null, %struct.Hist** %12, align 8
  br label %83

83:                                               ; preds = %78, %27
  br label %134

84:                                               ; preds = %22
  %85 = load i32*, i32** %16, align 8
  %86 = load i32, i32* @STRall, align 4
  %87 = call i64 @eq(i32* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @createHistHashTable(i32 %90)
  %92 = load %struct.wordent*, %struct.wordent** %8, align 8
  %93 = call i32 @hashhist(%struct.wordent* %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp ne i32 %94, 0
  %96 = zext i1 %95 to i32
  %97 = call i32 @assert(i32 %96)
  %98 = load %struct.wordent*, %struct.wordent** %8, align 8
  %99 = load i32, i32* %17, align 4
  %100 = call %struct.Hist* @findHistHashTable(%struct.wordent* %98, i32 %99)
  store %struct.Hist* %100, %struct.Hist** %12, align 8
  %101 = load %struct.Hist*, %struct.Hist** %12, align 8
  %102 = icmp ne %struct.Hist* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %89
  %104 = load i32, i32* @eventno, align 4
  %105 = add nsw i32 %104, -1
  store i32 %105, i32* @eventno, align 4
  br label %106

106:                                              ; preds = %103, %89
  br label %133

107:                                              ; preds = %84
  %108 = load i32*, i32** %16, align 8
  %109 = load i32, i32* @STRprev, align 4
  %110 = call i64 @eq(i32* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %132

112:                                              ; preds = %107
  %113 = load %struct.Hist*, %struct.Hist** %13, align 8
  %114 = getelementptr inbounds %struct.Hist, %struct.Hist* %113, i32 0, i32 4
  %115 = load %struct.Hist*, %struct.Hist** %114, align 8
  %116 = icmp ne %struct.Hist* %115, null
  br i1 %116, label %117, label %131

117:                                              ; preds = %112
  %118 = load %struct.wordent*, %struct.wordent** %8, align 8
  %119 = load %struct.Hist*, %struct.Hist** %13, align 8
  %120 = getelementptr inbounds %struct.Hist, %struct.Hist* %119, i32 0, i32 4
  %121 = load %struct.Hist*, %struct.Hist** %120, align 8
  %122 = getelementptr inbounds %struct.Hist, %struct.Hist* %121, i32 0, i32 3
  %123 = call i64 @heq(%struct.wordent* %118, %struct.wordent* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %117
  %126 = load %struct.Hist*, %struct.Hist** %13, align 8
  %127 = getelementptr inbounds %struct.Hist, %struct.Hist* %126, i32 0, i32 4
  %128 = load %struct.Hist*, %struct.Hist** %127, align 8
  store %struct.Hist* %128, %struct.Hist** %12, align 8
  %129 = load i32, i32* @eventno, align 4
  %130 = add nsw i32 %129, -1
  store i32 %130, i32* @eventno, align 4
  br label %131

131:                                              ; preds = %125, %117, %112
  br label %132

132:                                              ; preds = %131, %107
  br label %133

133:                                              ; preds = %132, %106
  br label %134

134:                                              ; preds = %133, %83
  br label %135

135:                                              ; preds = %134, %5
  %136 = load %struct.Hist*, %struct.Hist** %12, align 8
  %137 = icmp ne %struct.Hist* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load %struct.Hist*, %struct.Hist** %12, align 8
  br label %142

140:                                              ; preds = %135
  %141 = call %struct.Hist* @xmalloc(i32 64)
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi %struct.Hist* [ %139, %138 ], [ %141, %140 ]
  store %struct.Hist* %143, %struct.Hist** %15, align 8
  %144 = load i64, i64* @Htime, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load i64, i64* @Htime, align 8
  %148 = load %struct.Hist*, %struct.Hist** %15, align 8
  %149 = getelementptr inbounds %struct.Hist, %struct.Hist* %148, i32 0, i32 0
  store i64 %147, i64* %149, align 8
  store i64 0, i64* @Htime, align 8
  br label %154

150:                                              ; preds = %142
  %151 = load %struct.Hist*, %struct.Hist** %15, align 8
  %152 = getelementptr inbounds %struct.Hist, %struct.Hist* %151, i32 0, i32 0
  %153 = call i32 @time(i64* %152)
  br label %154

154:                                              ; preds = %150, %146
  %155 = load %struct.Hist*, %struct.Hist** %12, align 8
  %156 = load %struct.Hist*, %struct.Hist** %15, align 8
  %157 = icmp eq %struct.Hist* %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load %struct.Hist*, %struct.Hist** %15, align 8
  store %struct.Hist* %159, %struct.Hist** %6, align 8
  br label %281

160:                                              ; preds = %154
  %161 = load i32, i32* %7, align 4
  %162 = load %struct.Hist*, %struct.Hist** %15, align 8
  %163 = getelementptr inbounds %struct.Hist, %struct.Hist* %162, i32 0, i32 2
  store i32 %161, i32* %163, align 4
  %164 = load %struct.Hist*, %struct.Hist** %15, align 8
  %165 = getelementptr inbounds %struct.Hist, %struct.Hist* %164, i32 0, i32 1
  store i32 %161, i32* %165, align 8
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %184

168:                                              ; preds = %160
  %169 = load %struct.Hist*, %struct.Hist** %15, align 8
  %170 = getelementptr inbounds %struct.Hist, %struct.Hist* %169, i32 0, i32 3
  %171 = load %struct.wordent*, %struct.wordent** %8, align 8
  %172 = call i32 @copylex(%struct.wordent* %170, %struct.wordent* %171)
  %173 = load i64, i64* @histvalid, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @histline, i32 0, i32 0), align 4
  %177 = call i32* @Strsave(i32 %176)
  %178 = load %struct.Hist*, %struct.Hist** %15, align 8
  %179 = getelementptr inbounds %struct.Hist, %struct.Hist* %178, i32 0, i32 6
  store i32* %177, i32** %179, align 8
  br label %183

180:                                              ; preds = %168
  %181 = load %struct.Hist*, %struct.Hist** %15, align 8
  %182 = getelementptr inbounds %struct.Hist, %struct.Hist* %181, i32 0, i32 6
  store i32* null, i32** %182, align 8
  br label %183

183:                                              ; preds = %180, %175
  br label %211

184:                                              ; preds = %160
  %185 = load %struct.wordent*, %struct.wordent** %8, align 8
  %186 = getelementptr inbounds %struct.wordent, %struct.wordent* %185, i32 0, i32 1
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = load %struct.Hist*, %struct.Hist** %15, align 8
  %189 = getelementptr inbounds %struct.Hist, %struct.Hist* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.wordent, %struct.wordent* %189, i32 0, i32 1
  store %struct.TYPE_4__* %187, %struct.TYPE_4__** %190, align 8
  %191 = load %struct.Hist*, %struct.Hist** %15, align 8
  %192 = getelementptr inbounds %struct.Hist, %struct.Hist* %191, i32 0, i32 3
  %193 = load %struct.wordent*, %struct.wordent** %8, align 8
  %194 = getelementptr inbounds %struct.wordent, %struct.wordent* %193, i32 0, i32 1
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  store %struct.wordent* %192, %struct.wordent** %196, align 8
  %197 = load %struct.wordent*, %struct.wordent** %8, align 8
  %198 = getelementptr inbounds %struct.wordent, %struct.wordent* %197, i32 0, i32 0
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = load %struct.Hist*, %struct.Hist** %15, align 8
  %201 = getelementptr inbounds %struct.Hist, %struct.Hist* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.wordent, %struct.wordent* %201, i32 0, i32 0
  store %struct.TYPE_5__* %199, %struct.TYPE_5__** %202, align 8
  %203 = load %struct.Hist*, %struct.Hist** %15, align 8
  %204 = getelementptr inbounds %struct.Hist, %struct.Hist* %203, i32 0, i32 3
  %205 = load %struct.wordent*, %struct.wordent** %8, align 8
  %206 = getelementptr inbounds %struct.wordent, %struct.wordent* %205, i32 0, i32 0
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  store %struct.wordent* %204, %struct.wordent** %208, align 8
  %209 = load %struct.Hist*, %struct.Hist** %15, align 8
  %210 = getelementptr inbounds %struct.Hist, %struct.Hist* %209, i32 0, i32 6
  store i32* null, i32** %210, align 8
  br label %211

211:                                              ; preds = %184, %183
  %212 = load %struct.Hist*, %struct.Hist** %15, align 8
  %213 = getelementptr inbounds %struct.Hist, %struct.Hist* %212, i32 0, i32 5
  store i64 0, i64* %213, align 8
  %214 = load i32, i32* %10, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %263

216:                                              ; preds = %211
  %217 = load %struct.Hist*, %struct.Hist** %15, align 8
  %218 = load %struct.Hist*, %struct.Hist** %14, align 8
  %219 = call %struct.Hist* @mergeInsertionPoint(%struct.Hist* %217, %struct.Hist* %218)
  store %struct.Hist* %219, %struct.Hist** %13, align 8
  %220 = load %struct.Hist*, %struct.Hist** %13, align 8
  %221 = getelementptr inbounds %struct.Hist, %struct.Hist* %220, i32 0, i32 4
  %222 = load %struct.Hist*, %struct.Hist** %221, align 8
  store %struct.Hist* %222, %struct.Hist** %12, align 8
  br label %223

223:                                              ; preds = %250, %216
  %224 = load %struct.Hist*, %struct.Hist** %12, align 8
  %225 = icmp ne %struct.Hist* %224, null
  br i1 %225, label %226, label %234

226:                                              ; preds = %223
  %227 = load %struct.Hist*, %struct.Hist** %12, align 8
  %228 = getelementptr inbounds %struct.Hist, %struct.Hist* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.Hist*, %struct.Hist** %15, align 8
  %231 = getelementptr inbounds %struct.Hist, %struct.Hist* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp eq i64 %229, %232
  br label %234

234:                                              ; preds = %226, %223
  %235 = phi i1 [ false, %223 ], [ %233, %226 ]
  br i1 %235, label %236, label %255

236:                                              ; preds = %234
  %237 = load %struct.Hist*, %struct.Hist** %12, align 8
  %238 = getelementptr inbounds %struct.Hist, %struct.Hist* %237, i32 0, i32 3
  %239 = load %struct.Hist*, %struct.Hist** %15, align 8
  %240 = getelementptr inbounds %struct.Hist, %struct.Hist* %239, i32 0, i32 3
  %241 = call i64 @heq(%struct.wordent* %238, %struct.wordent* %240)
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %236
  %244 = load i32, i32* @eventno, align 4
  %245 = add nsw i32 %244, -1
  store i32 %245, i32* @eventno, align 4
  %246 = load %struct.Hist*, %struct.Hist** %15, align 8
  %247 = call i32 @hfree(%struct.Hist* %246)
  %248 = load %struct.Hist*, %struct.Hist** %12, align 8
  store %struct.Hist* %248, %struct.Hist** %6, align 8
  br label %281

249:                                              ; preds = %236
  br label %250

250:                                              ; preds = %249
  %251 = load %struct.Hist*, %struct.Hist** %12, align 8
  store %struct.Hist* %251, %struct.Hist** %13, align 8
  %252 = load %struct.Hist*, %struct.Hist** %12, align 8
  %253 = getelementptr inbounds %struct.Hist, %struct.Hist* %252, i32 0, i32 4
  %254 = load %struct.Hist*, %struct.Hist** %253, align 8
  store %struct.Hist* %254, %struct.Hist** %12, align 8
  br label %223

255:                                              ; preds = %234
  %256 = load i32, i32* @fastMergeErase, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %262, label %258

258:                                              ; preds = %255
  %259 = load %struct.Hist*, %struct.Hist** %15, align 8
  %260 = load %struct.Hist*, %struct.Hist** %13, align 8
  %261 = call i32 @bubbleHnumHrefDown(%struct.Hist* %259, %struct.Hist* %260)
  br label %262

262:                                              ; preds = %258, %255
  br label %264

263:                                              ; preds = %211
  store %struct.Hist* @Histlist, %struct.Hist** %13, align 8
  br label %264

264:                                              ; preds = %263, %262
  %265 = load %struct.Hist*, %struct.Hist** %15, align 8
  %266 = load %struct.Hist*, %struct.Hist** %13, align 8
  %267 = call i32 @hinsert(%struct.Hist* %265, %struct.Hist* %266)
  %268 = load i32, i32* %17, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %277

270:                                              ; preds = %264
  %271 = load i32, i32* %11, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load %struct.Hist*, %struct.Hist** %15, align 8
  %275 = load i32, i32* %17, align 4
  %276 = call i32 @insertHistHashTable(%struct.Hist* %274, i32 %275)
  br label %279

277:                                              ; preds = %270, %264
  %278 = call i32 (...) @discardHistHashTable()
  br label %279

279:                                              ; preds = %277, %273
  %280 = load %struct.Hist*, %struct.Hist** %15, align 8
  store %struct.Hist* %280, %struct.Hist** %6, align 8
  br label %281

281:                                              ; preds = %279, %243, %158
  %282 = load %struct.Hist*, %struct.Hist** %6, align 8
  ret %struct.Hist* %282
}

declare dso_local i32* @varval(i32) #1

declare dso_local i64 @eq(i32*, i32) #1

declare dso_local i32 @createHistHashTable(i32) #1

declare dso_local i32 @hashhist(%struct.wordent*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.Hist* @findHistHashTable(%struct.wordent*, i32) #1

declare dso_local i32 @renumberHist(%struct.Hist*) #1

declare dso_local i32 @hremove(%struct.Hist*) #1

declare dso_local i32 @hfree(%struct.Hist*) #1

declare dso_local i64 @heq(%struct.wordent*, %struct.wordent*) #1

declare dso_local %struct.Hist* @xmalloc(i32) #1

declare dso_local i32 @time(i64*) #1

declare dso_local i32 @copylex(%struct.wordent*, %struct.wordent*) #1

declare dso_local i32* @Strsave(i32) #1

declare dso_local %struct.Hist* @mergeInsertionPoint(%struct.Hist*, %struct.Hist*) #1

declare dso_local i32 @bubbleHnumHrefDown(%struct.Hist*, %struct.Hist*) #1

declare dso_local i32 @hinsert(%struct.Hist*, %struct.Hist*) #1

declare dso_local i32 @insertHistHashTable(%struct.Hist*, i32) #1

declare dso_local i32 @discardHistHashTable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
