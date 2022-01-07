; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_checkfat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/fsck_msdosfs/extr_fat.c_checkfat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bootblock = type { i64 }
%struct.fatEntry = type { i64, i64, i64 }

@CLUST_FIRST = common dso_local global i64 0, align 8
@CLUST_FREE = common dso_local global i64 0, align 8
@CLUST_BAD = common dso_local global i64 0, align 8
@CLUST_EOFS = common dso_local global i64 0, align 8
@CLUST_RSRVD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"Cluster chain starting at %u ends with cluster marked %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"Cluster chain starting at %u ends with cluster out of range (%u)\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"Cluster chain starting at %u loops at cluster %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Cluster chains starting at %u and %u are linked at cluster %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Clear chain starting at %u\00", align 1
@FSERROR = common dso_local global i32 0, align 4
@FSFATMOD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @checkfat(%struct.bootblock* %0, %struct.fatEntry* %1) #0 {
  %3 = alloca %struct.bootblock*, align 8
  %4 = alloca %struct.fatEntry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bootblock* %0, %struct.bootblock** %3, align 8
  store %struct.fatEntry* %1, %struct.fatEntry** %4, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* @CLUST_FIRST, align 8
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %96, %2
  %14 = load i64, i64* %5, align 8
  %15 = load %struct.bootblock*, %struct.bootblock** %3, align 8
  %16 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %99

19:                                               ; preds = %13
  %20 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %20, i64 %21
  %23 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %19
  %27 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %27, i64 %28
  %30 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CLUST_FREE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %26
  %35 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %35, i64 %36
  %38 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CLUST_BAD, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34, %26, %19
  br label %96

43:                                               ; preds = %34
  store i64 0, i64* %9, align 8
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %73, %43
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @CLUST_FIRST, align 8
  %48 = icmp uge i64 %46, %47
  br i1 %48, label %49, label %63

49:                                               ; preds = %45
  %50 = load i64, i64* %6, align 8
  %51 = load %struct.bootblock*, %struct.bootblock** %3, align 8
  %52 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %56, i64 %57
  %59 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %60, %61
  br label %63

63:                                               ; preds = %55, %49, %45
  %64 = phi i1 [ false, %49 ], [ false, %45 ], [ %62, %55 ]
  br i1 %64, label %65, label %79

65:                                               ; preds = %63
  %66 = load i64, i64* %5, align 8
  %67 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %68 = load i64, i64* %6, align 8
  %69 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %67, i64 %68
  %70 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %69, i32 0, i32 0
  store i64 %66, i64* %70, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %73

73:                                               ; preds = %65
  %74 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %75 = load i64, i64* %6, align 8
  %76 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %74, i64 %75
  %77 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %6, align 8
  br label %45

79:                                               ; preds = %63
  %80 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %81 = load i64, i64* %5, align 8
  %82 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %80, i64 %81
  %83 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @CLUST_FREE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %90

88:                                               ; preds = %79
  %89 = load i64, i64* %9, align 8
  br label %90

90:                                               ; preds = %88, %87
  %91 = phi i64 [ 0, %87 ], [ %89, %88 ]
  %92 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %92, i64 %93
  %95 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %94, i32 0, i32 2
  store i64 %91, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %42
  %97 = load i64, i64* %5, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %5, align 8
  br label %13

99:                                               ; preds = %13
  %100 = load i64, i64* @CLUST_FIRST, align 8
  store i64 %100, i64* %5, align 8
  br label %101

101:                                              ; preds = %289, %99
  %102 = load i64, i64* %5, align 8
  %103 = load %struct.bootblock*, %struct.bootblock** %3, align 8
  %104 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ult i64 %102, %105
  br i1 %106, label %107, label %292

107:                                              ; preds = %101
  %108 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %108, i64 %109
  %111 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %5, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %107
  br label %289

116:                                              ; preds = %107
  %117 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %118 = load i64, i64* %5, align 8
  %119 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %117, i64 %118
  %120 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %9, align 8
  %122 = load i64, i64* %5, align 8
  store i64 %122, i64* %6, align 8
  br label %123

123:                                              ; preds = %153, %116
  %124 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %125 = load i64, i64* %6, align 8
  %126 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %124, i64 %125
  %127 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  store i64 %128, i64* %8, align 8
  %129 = load i64, i64* @CLUST_FIRST, align 8
  %130 = icmp uge i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %123
  %132 = load i64, i64* %8, align 8
  %133 = load %struct.bootblock*, %struct.bootblock** %3, align 8
  %134 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ult i64 %132, %135
  br label %137

137:                                              ; preds = %131, %123
  %138 = phi i1 [ false, %123 ], [ %136, %131 ]
  br i1 %138, label %139, label %155

139:                                              ; preds = %137
  %140 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %141 = load i64, i64* %8, align 8
  %142 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %140, i64 %141
  %143 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %5, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %151, label %147

147:                                              ; preds = %139
  %148 = load i64, i64* %9, align 8
  %149 = add nsw i64 %148, -1
  store i64 %149, i64* %9, align 8
  %150 = icmp slt i64 %148, 2
  br i1 %150, label %151, label %152

151:                                              ; preds = %147, %139
  br label %155

152:                                              ; preds = %147
  br label %153

153:                                              ; preds = %152
  %154 = load i64, i64* %8, align 8
  store i64 %154, i64* %6, align 8
  br label %123

155:                                              ; preds = %151, %137
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* @CLUST_EOFS, align 8
  %158 = icmp uge i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %289

160:                                              ; preds = %155
  %161 = load i64, i64* %8, align 8
  %162 = load i64, i64* @CLUST_FREE, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %168, label %164

164:                                              ; preds = %160
  %165 = load i64, i64* %8, align 8
  %166 = load i64, i64* @CLUST_RSRVD, align 8
  %167 = icmp uge i64 %165, %166
  br i1 %167, label %168, label %185

168:                                              ; preds = %164, %160
  %169 = load i64, i64* %5, align 8
  %170 = load i64, i64* %8, align 8
  %171 = call i32 @rsrvdcltype(i64 %170)
  %172 = sext i32 %171 to i64
  %173 = call i32 (i8*, i64, i64, ...) @pwarn(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i64 %169, i64 %172)
  br label %174

174:                                              ; preds = %207, %195, %168
  %175 = load %struct.bootblock*, %struct.bootblock** %3, align 8
  %176 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %177 = load i64, i64* %5, align 8
  %178 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %179 = load i64, i64* %6, align 8
  %180 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %178, i64 %179
  %181 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %180, i32 0, i32 1
  %182 = call i32 @tryclear(%struct.bootblock* %175, %struct.fatEntry* %176, i64 %177, i64* %181)
  %183 = load i32, i32* %10, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %10, align 4
  br label %289

185:                                              ; preds = %164
  %186 = load i64, i64* %8, align 8
  %187 = load i64, i64* @CLUST_FIRST, align 8
  %188 = icmp ult i64 %186, %187
  br i1 %188, label %195, label %189

189:                                              ; preds = %185
  %190 = load i64, i64* %8, align 8
  %191 = load %struct.bootblock*, %struct.bootblock** %3, align 8
  %192 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp uge i64 %190, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %189, %185
  %196 = load i64, i64* %5, align 8
  %197 = load i64, i64* %8, align 8
  %198 = call i32 (i8*, i64, i64, ...) @pwarn(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %196, i64 %197)
  br label %174

199:                                              ; preds = %189
  %200 = load i64, i64* %5, align 8
  %201 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %202 = load i64, i64* %8, align 8
  %203 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %201, i64 %202
  %204 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = icmp eq i64 %200, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %199
  %208 = load i64, i64* %5, align 8
  %209 = load i64, i64* %6, align 8
  %210 = call i32 (i8*, i64, i64, ...) @pwarn(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %208, i64 %209)
  br label %174

211:                                              ; preds = %199
  %212 = load i64, i64* %5, align 8
  %213 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %214 = load i64, i64* %8, align 8
  %215 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %213, i64 %214
  %216 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %215, i32 0, i32 0
  %217 = load i64, i64* %216, align 8
  %218 = load i64, i64* %8, align 8
  %219 = call i32 (i8*, i64, i64, ...) @pwarn(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i64 %212, i64 %217, i64 %218)
  %220 = load %struct.bootblock*, %struct.bootblock** %3, align 8
  %221 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %222 = load i64, i64* %5, align 8
  %223 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %224 = load i64, i64* %6, align 8
  %225 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %223, i64 %224
  %226 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %225, i32 0, i32 1
  %227 = call i32 @tryclear(%struct.bootblock* %220, %struct.fatEntry* %221, i64 %222, i64* %226)
  store i32 %227, i32* %11, align 4
  %228 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %229 = load i64, i64* %8, align 8
  %230 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %228, i64 %229
  %231 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  store i64 %232, i64* %7, align 8
  %233 = call i64 @ask(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %285

235:                                              ; preds = %211
  %236 = load i32, i32* %11, align 4
  %237 = load i32, i32* @FSERROR, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %277

239:                                              ; preds = %235
  %240 = load i64, i64* %8, align 8
  store i64 %240, i64* %6, align 8
  br label %241

241:                                              ; preds = %270, %239
  %242 = load i64, i64* %6, align 8
  %243 = load i64, i64* @CLUST_FIRST, align 8
  %244 = icmp uge i64 %242, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %241
  %246 = load i64, i64* %6, align 8
  %247 = load %struct.bootblock*, %struct.bootblock** %3, align 8
  %248 = getelementptr inbounds %struct.bootblock, %struct.bootblock* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ult i64 %246, %249
  br label %251

251:                                              ; preds = %245, %241
  %252 = phi i1 [ false, %241 ], [ %250, %245 ]
  br i1 %252, label %253, label %276

253:                                              ; preds = %251
  %254 = load i64, i64* %7, align 8
  %255 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %256 = load i64, i64* %6, align 8
  %257 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %255, i64 %256
  %258 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %254, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %253
  %262 = load i64, i64* %5, align 8
  %263 = add i64 %262, -1
  store i64 %263, i64* %5, align 8
  br label %276

264:                                              ; preds = %253
  %265 = load i64, i64* %5, align 8
  %266 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %267 = load i64, i64* %6, align 8
  %268 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %266, i64 %267
  %269 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %268, i32 0, i32 0
  store i64 %265, i64* %269, align 8
  br label %270

270:                                              ; preds = %264
  %271 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %272 = load i64, i64* %6, align 8
  %273 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %271, i64 %272
  %274 = getelementptr inbounds %struct.fatEntry, %struct.fatEntry* %273, i32 0, i32 1
  %275 = load i64, i64* %274, align 8
  store i64 %275, i64* %6, align 8
  br label %241

276:                                              ; preds = %261, %251
  br label %277

277:                                              ; preds = %276, %235
  %278 = load %struct.bootblock*, %struct.bootblock** %3, align 8
  %279 = load %struct.fatEntry*, %struct.fatEntry** %4, align 8
  %280 = load i64, i64* %7, align 8
  %281 = call i32 @clearchain(%struct.bootblock* %278, %struct.fatEntry* %279, i64 %280)
  %282 = load i32, i32* @FSFATMOD, align 4
  %283 = load i32, i32* %11, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %11, align 4
  br label %285

285:                                              ; preds = %277, %211
  %286 = load i32, i32* %11, align 4
  %287 = load i32, i32* %10, align 4
  %288 = or i32 %287, %286
  store i32 %288, i32* %10, align 4
  br label %289

289:                                              ; preds = %285, %174, %159, %115
  %290 = load i64, i64* %5, align 8
  %291 = add i64 %290, 1
  store i64 %291, i64* %5, align 8
  br label %101

292:                                              ; preds = %101
  %293 = load i32, i32* %10, align 4
  ret i32 %293
}

declare dso_local i32 @pwarn(i8*, i64, i64, ...) #1

declare dso_local i32 @rsrvdcltype(i64) #1

declare dso_local i32 @tryclear(%struct.bootblock*, %struct.fatEntry*, i64, i64*) #1

declare dso_local i64 @ask(i32, i8*, i64) #1

declare dso_local i32 @clearchain(%struct.bootblock*, %struct.fatEntry*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
