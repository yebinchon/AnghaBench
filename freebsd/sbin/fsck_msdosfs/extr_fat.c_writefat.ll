; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_writefat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_writefat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i64, i64, i32, i64, i64, i32, i64, i64, i64 }
%struct.fatEntry = type { i32 }

@FSOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"No space for FAT sectors (%zu)\00", align 1
@FSFATAL = common dso_local global i32 0, align 4
@CLUST_FIRST = common dso_local global i64 0, align 8
@CLUST_FREE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Unable to write FAT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writefat(i32 %0, %struct.bootblock* %1, %struct.fatEntry* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bootblock*, align 8
  %8 = alloca %struct.fatEntry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.bootblock* %1, %struct.bootblock** %7, align 8
  store %struct.fatEntry* %2, %struct.fatEntry** %8, align 8
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* @FSOK, align 4
  store i32 %19, i32* %16, align 4
  %20 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %21 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %24 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = mul i64 %22, %25
  store i64 %26, i64* %14, align 8
  %27 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %28 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %31 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32* @calloc(i64 %29, i64 %32)
  store i32* %33, i32** %10, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %38 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @FSFATAL, align 4
  store i32 %41, i32* %5, align 4
  br label %327

42:                                               ; preds = %4
  %43 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %44 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %43, i32 0, i32 7
  store i64 0, i64* %44, align 8
  %45 = load i32*, i32** %10, align 8
  store i32* %45, i32** %11, align 8
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %77

48:                                               ; preds = %42
  %49 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %50 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32*, i32** %11, align 8
  %54 = getelementptr inbounds i32, i32* %53, i32 1
  store i32* %54, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  %55 = load i32*, i32** %11, align 8
  %56 = getelementptr inbounds i32, i32* %55, i32 1
  store i32* %56, i32** %11, align 8
  store i32 255, i32* %55, align 4
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %11, align 8
  store i32 255, i32* %57, align 4
  %59 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %60 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  switch i32 %61, label %76 [
    i32 129, label %62
    i32 128, label %65
  ]

62:                                               ; preds = %48
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %11, align 8
  store i32 255, i32* %63, align 4
  br label %76

65:                                               ; preds = %48
  %66 = load i32*, i32** %11, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %11, align 8
  store i32 15, i32* %66, align 4
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %11, align 8
  store i32 255, i32* %68, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %11, align 8
  store i32 255, i32* %70, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %11, align 8
  store i32 255, i32* %72, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %11, align 8
  store i32 15, i32* %74, align 4
  br label %76

76:                                               ; preds = %48, %65, %62
  br label %115

77:                                               ; preds = %42
  %78 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %79 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %83 [
    i32 128, label %81
    i32 129, label %82
  ]

81:                                               ; preds = %77
  store i32 8, i32* %17, align 4
  br label %84

82:                                               ; preds = %77
  store i32 4, i32* %17, align 4
  br label %84

83:                                               ; preds = %77
  store i32 3, i32* %17, align 4
  br label %84

84:                                               ; preds = %83, %82, %81
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %87 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %88 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp sge i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %84
  %92 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %93 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  br label %96

95:                                               ; preds = %84
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i64 [ %94, %91 ], [ 0, %95 ]
  %98 = call i32 @_readfat(i32 %85, %struct.bootblock* %86, i64 %97, i32** %18)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32*, i32** %10, align 8
  %102 = call i32 @free(i32* %101)
  %103 = load i32, i32* @FSFATAL, align 4
  store i32 %103, i32* %5, align 4
  br label %327

104:                                              ; preds = %96
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %18, align 8
  %107 = load i32, i32* %17, align 4
  %108 = call i32 @memcpy(i32* %105, i32* %106, i32 %107)
  %109 = load i32*, i32** %18, align 8
  %110 = call i32 @free(i32* %109)
  %111 = load i32, i32* %17, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = sext i32 %111 to i64
  %114 = getelementptr inbounds i32, i32* %112, i64 %113
  store i32* %114, i32** %11, align 8
  br label %115

115:                                              ; preds = %104, %76
  %116 = load i64, i64* @CLUST_FIRST, align 8
  store i64 %116, i64* %12, align 8
  br label %117

117:                                              ; preds = %277, %115
  %118 = load i64, i64* %12, align 8
  %119 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %120 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = icmp slt i64 %118, %121
  br i1 %122, label %123, label %280

123:                                              ; preds = %117
  %124 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %125 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %207 [
    i32 128, label %127
    i32 129, label %178
  ]

127:                                              ; preds = %123
  %128 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %129 = load i64, i64* %12, align 8
  %130 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %128, i64 %129
  %131 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @CLUST_FREE, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %127
  %136 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %137 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %136, i32 0, i32 7
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, 1
  store i64 %139, i64* %137, align 8
  br label %140

140:                                              ; preds = %135, %127
  %141 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %142 = load i64, i64* %12, align 8
  %143 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %141, i64 %142
  %144 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32*, i32** %11, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %11, align 8
  store i32 %145, i32* %146, align 4
  %148 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %149 = load i64, i64* %12, align 8
  %150 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %148, i64 %149
  %151 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = ashr i32 %152, 8
  %154 = load i32*, i32** %11, align 8
  %155 = getelementptr inbounds i32, i32* %154, i32 1
  store i32* %155, i32** %11, align 8
  store i32 %153, i32* %154, align 4
  %156 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %157 = load i64, i64* %12, align 8
  %158 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %156, i64 %157
  %159 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = ashr i32 %160, 16
  %162 = load i32*, i32** %11, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %11, align 8
  store i32 %161, i32* %162, align 4
  %164 = load i32*, i32** %11, align 8
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 240
  store i32 %166, i32* %164, align 4
  %167 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %168 = load i64, i64* %12, align 8
  %169 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %167, i64 %168
  %170 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = ashr i32 %171, 24
  %173 = and i32 %172, 15
  %174 = load i32*, i32** %11, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %11, align 8
  %176 = load i32, i32* %174, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %174, align 4
  br label %276

178:                                              ; preds = %123
  %179 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %180 = load i64, i64* %12, align 8
  %181 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %179, i64 %180
  %182 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @CLUST_FREE, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %191

186:                                              ; preds = %178
  %187 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %188 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %187, i32 0, i32 7
  %189 = load i64, i64* %188, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %188, align 8
  br label %191

191:                                              ; preds = %186, %178
  %192 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %193 = load i64, i64* %12, align 8
  %194 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %192, i64 %193
  %195 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %11, align 8
  %198 = getelementptr inbounds i32, i32* %197, i32 1
  store i32* %198, i32** %11, align 8
  store i32 %196, i32* %197, align 4
  %199 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %200 = load i64, i64* %12, align 8
  %201 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %199, i64 %200
  %202 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %203, 8
  %205 = load i32*, i32** %11, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %11, align 8
  store i32 %204, i32* %205, align 4
  br label %276

207:                                              ; preds = %123
  %208 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %209 = load i64, i64* %12, align 8
  %210 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %208, i64 %209
  %211 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load i32, i32* @CLUST_FREE, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %207
  %216 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %217 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %216, i32 0, i32 7
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, 1
  store i64 %219, i64* %217, align 8
  br label %220

220:                                              ; preds = %215, %207
  %221 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %222 = load i64, i64* %12, align 8
  %223 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %221, i64 %222
  %224 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %11, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %11, align 8
  store i32 %225, i32* %226, align 4
  %228 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %229 = load i64, i64* %12, align 8
  %230 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %228, i64 %229
  %231 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = ashr i32 %232, 8
  %234 = and i32 %233, 15
  %235 = load i32*, i32** %11, align 8
  store i32 %234, i32* %235, align 4
  %236 = load i64, i64* %12, align 8
  %237 = add nsw i64 %236, 1
  store i64 %237, i64* %12, align 8
  %238 = load i64, i64* %12, align 8
  %239 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %240 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %239, i32 0, i32 4
  %241 = load i64, i64* %240, align 8
  %242 = icmp sge i64 %238, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %220
  br label %276

244:                                              ; preds = %220
  %245 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %246 = load i64, i64* %12, align 8
  %247 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %245, i64 %246
  %248 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @CLUST_FREE, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %244
  %253 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %254 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %253, i32 0, i32 7
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %255, 1
  store i64 %256, i64* %254, align 8
  br label %257

257:                                              ; preds = %252, %244
  %258 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %259 = load i64, i64* %12, align 8
  %260 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %258, i64 %259
  %261 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = shl i32 %262, 4
  %264 = load i32*, i32** %11, align 8
  %265 = getelementptr inbounds i32, i32* %264, i32 1
  store i32* %265, i32** %11, align 8
  %266 = load i32, i32* %264, align 4
  %267 = or i32 %266, %263
  store i32 %267, i32* %264, align 4
  %268 = load %struct.fatEntry*, %struct.fatEntry** %8, align 8
  %269 = load i64, i64* %12, align 8
  %270 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %268, i64 %269
  %271 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = ashr i32 %272, 4
  %274 = load i32*, i32** %11, align 8
  %275 = getelementptr inbounds i32, i32* %274, i32 1
  store i32* %275, i32** %11, align 8
  store i32 %273, i32* %274, align 4
  br label %276

276:                                              ; preds = %257, %243, %191, %140
  br label %277

277:                                              ; preds = %276
  %278 = load i64, i64* %12, align 8
  %279 = add nsw i64 %278, 1
  store i64 %279, i64* %12, align 8
  br label %117

280:                                              ; preds = %117
  store i32 0, i32* %13, align 4
  br label %281

281:                                              ; preds = %320, %280
  %282 = load i32, i32* %13, align 4
  %283 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %284 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %283, i32 0, i32 5
  %285 = load i32, i32* %284, align 8
  %286 = icmp slt i32 %282, %285
  br i1 %286, label %287, label %323

287:                                              ; preds = %281
  %288 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %289 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %288, i32 0, i32 6
  %290 = load i64, i64* %289, align 8
  %291 = load i32, i32* %13, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %294 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = mul i64 %292, %295
  %297 = add i64 %290, %296
  store i64 %297, i64* %15, align 8
  %298 = load %struct.bootblock*, %struct.bootblock** %7, align 8
  %299 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %298, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* %15, align 8
  %302 = mul i64 %301, %300
  store i64 %302, i64* %15, align 8
  %303 = load i32, i32* %6, align 4
  %304 = load i64, i64* %15, align 8
  %305 = load i32, i32* @SEEK_SET, align 4
  %306 = call i64 @lseek(i32 %303, i64 %304, i32 %305)
  %307 = load i64, i64* %15, align 8
  %308 = icmp ne i64 %306, %307
  br i1 %308, label %316, label %309

309:                                              ; preds = %287
  %310 = load i32, i32* %6, align 4
  %311 = load i32*, i32** %10, align 8
  %312 = load i64, i64* %14, align 8
  %313 = call i64 @write(i32 %310, i32* %311, i64 %312)
  %314 = load i64, i64* %14, align 8
  %315 = icmp ne i64 %313, %314
  br i1 %315, label %316, label %319

316:                                              ; preds = %309, %287
  %317 = call i32 (i8*, ...) @perr(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %318 = load i32, i32* @FSFATAL, align 4
  store i32 %318, i32* %16, align 4
  br label %319

319:                                              ; preds = %316, %309
  br label %320

320:                                              ; preds = %319
  %321 = load i32, i32* %13, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %13, align 4
  br label %281

323:                                              ; preds = %281
  %324 = load i32*, i32** %10, align 8
  %325 = call i32 @free(i32* %324)
  %326 = load i32, i32* %16, align 4
  store i32 %326, i32* %5, align 4
  br label %327

327:                                              ; preds = %323, %100, %36
  %328 = load i32, i32* %5, align 4
  ret i32 %328
}

declare dso_local i32* @calloc(i64, i64) #1

declare dso_local i32 @perr(i8*, ...) #1

declare dso_local i32 @_readfat(i32, %struct.bootblock*, i64, i32**) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i64 @write(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
