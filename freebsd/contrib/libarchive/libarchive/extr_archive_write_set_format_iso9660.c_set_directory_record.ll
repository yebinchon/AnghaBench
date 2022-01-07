; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_directory_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_set_directory_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isoent = type { i64, i32, i32, %struct.TYPE_6__, i32*, %struct.isofile*, i64, %struct.isoent* }
%struct.TYPE_6__ = type { i64, i64, i64, i64 }
%struct.isofile = type { i32, %struct.TYPE_4__*, %struct.isofile* }
%struct.TYPE_4__ = type { i32, i64, i32* }
%struct.iso9660 = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 }

@FILE_FLAG_DIRECTORY = common dso_local global i8 0, align 1
@FILE_FLAG_MULTI_EXTENT = common dso_local global i8 0, align 1
@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@VDD_JOLIET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.isoent*, %struct.iso9660*, i32, i32)* @set_directory_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_directory_record(i8* %0, i64 %1, %struct.isoent* %2, %struct.iso9660* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.isoent*, align 8
  %11 = alloca %struct.iso9660*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.isoent*, align 8
  %18 = alloca %struct.isofile*, align 8
  %19 = alloca i8, align 1
  store i8* %0, i8** %8, align 8
  store i64 %1, i64* %9, align 8
  store %struct.isoent* %2, %struct.isoent** %10, align 8
  store %struct.iso9660* %3, %struct.iso9660** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %6
  %23 = load i32, i32* %12, align 4
  switch i32 %23, label %40 [
    i32 128, label %24
    i32 129, label %29
    i32 130, label %34
    i32 131, label %39
  ]

24:                                               ; preds = %22
  %25 = load %struct.isoent*, %struct.isoent** %10, align 8
  %26 = getelementptr inbounds %struct.isoent, %struct.isoent* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %15, align 8
  br label %45

29:                                               ; preds = %22
  %30 = load %struct.isoent*, %struct.isoent** %10, align 8
  %31 = getelementptr inbounds %struct.isoent, %struct.isoent* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %15, align 8
  br label %45

34:                                               ; preds = %22
  %35 = load %struct.isoent*, %struct.isoent** %10, align 8
  %36 = getelementptr inbounds %struct.isoent, %struct.isoent* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %15, align 8
  br label %45

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %22, %39
  %41 = load %struct.isoent*, %struct.isoent** %10, align 8
  %42 = getelementptr inbounds %struct.isoent, %struct.isoent* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %15, align 8
  br label %45

45:                                               ; preds = %40, %34, %29, %24
  %46 = load i64, i64* %15, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %7, align 4
  br label %306

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %6
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 131
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.isoent*, %struct.isoent** %10, align 8
  %56 = getelementptr inbounds %struct.isoent, %struct.isoent* %55, i32 0, i32 4
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.isoent*, %struct.isoent** %10, align 8
  %61 = getelementptr inbounds %struct.isoent, %struct.isoent* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %16, align 8
  br label %64

63:                                               ; preds = %54, %51
  store i64 1, i64* %16, align 8
  br label %64

64:                                               ; preds = %63, %59
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %214

67:                                               ; preds = %64
  %68 = load i32, i32* %12, align 4
  %69 = icmp eq i32 %68, 130
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load %struct.isoent*, %struct.isoent** %10, align 8
  %72 = getelementptr inbounds %struct.isoent, %struct.isoent* %71, i32 0, i32 7
  %73 = load %struct.isoent*, %struct.isoent** %72, align 8
  store %struct.isoent* %73, %struct.isoent** %17, align 8
  br label %76

74:                                               ; preds = %67
  %75 = load %struct.isoent*, %struct.isoent** %10, align 8
  store %struct.isoent* %75, %struct.isoent** %17, align 8
  br label %76

76:                                               ; preds = %74, %70
  %77 = load %struct.isoent*, %struct.isoent** %10, align 8
  %78 = getelementptr inbounds %struct.isoent, %struct.isoent* %77, i32 0, i32 5
  %79 = load %struct.isofile*, %struct.isofile** %78, align 8
  store %struct.isofile* %79, %struct.isofile** %18, align 8
  %80 = load %struct.isofile*, %struct.isofile** %18, align 8
  %81 = getelementptr inbounds %struct.isofile, %struct.isofile* %80, i32 0, i32 2
  %82 = load %struct.isofile*, %struct.isofile** %81, align 8
  %83 = icmp ne %struct.isofile* %82, null
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load %struct.isofile*, %struct.isofile** %18, align 8
  %86 = getelementptr inbounds %struct.isofile, %struct.isofile* %85, i32 0, i32 2
  %87 = load %struct.isofile*, %struct.isofile** %86, align 8
  store %struct.isofile* %87, %struct.isofile** %18, align 8
  br label %88

88:                                               ; preds = %84, %76
  %89 = load %struct.isoent*, %struct.isoent** %17, align 8
  %90 = getelementptr inbounds %struct.isoent, %struct.isoent* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %88
  %94 = load i8, i8* @FILE_FLAG_DIRECTORY, align 1
  store i8 %94, i8* %19, align 1
  br label %106

95:                                               ; preds = %88
  %96 = load %struct.isofile*, %struct.isofile** %18, align 8
  %97 = getelementptr inbounds %struct.isofile, %struct.isofile* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %104

102:                                              ; preds = %95
  %103 = load i8, i8* @FILE_FLAG_MULTI_EXTENT, align 1
  store i8 %103, i8* %19, align 1
  br label %105

104:                                              ; preds = %95
  store i8 0, i8* %19, align 1
  br label %105

105:                                              ; preds = %104, %102
  br label %106

106:                                              ; preds = %105, %93
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 -1
  store i8* %108, i8** %14, align 8
  %109 = load i8*, i8** %14, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = call i32 @set_num_711(i8* %110, i8 zeroext 0)
  %112 = load %struct.isoent*, %struct.isoent** %17, align 8
  %113 = getelementptr inbounds %struct.isoent, %struct.isoent* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %106
  %117 = load i8*, i8** %14, align 8
  %118 = getelementptr inbounds i8, i8* %117, i64 3
  %119 = load %struct.isoent*, %struct.isoent** %17, align 8
  %120 = getelementptr inbounds %struct.isoent, %struct.isoent* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @set_num_733(i8* %118, i32 %121)
  br label %132

123:                                              ; preds = %106
  %124 = load i8*, i8** %14, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 3
  %126 = load %struct.isofile*, %struct.isofile** %18, align 8
  %127 = getelementptr inbounds %struct.isofile, %struct.isofile* %126, i32 0, i32 1
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @set_num_733(i8* %125, i32 %130)
  br label %132

132:                                              ; preds = %123, %116
  %133 = load %struct.isoent*, %struct.isoent** %17, align 8
  %134 = getelementptr inbounds %struct.isoent, %struct.isoent* %133, i32 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %146

137:                                              ; preds = %132
  %138 = load i8*, i8** %14, align 8
  %139 = getelementptr inbounds i8, i8* %138, i64 11
  %140 = load %struct.isoent*, %struct.isoent** %17, align 8
  %141 = getelementptr inbounds %struct.isoent, %struct.isoent* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %144 = mul nsw i32 %142, %143
  %145 = call i32 @set_num_733(i8* %139, i32 %144)
  br label %156

146:                                              ; preds = %132
  %147 = load i8*, i8** %14, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 11
  %149 = load %struct.isofile*, %struct.isofile** %18, align 8
  %150 = getelementptr inbounds %struct.isofile, %struct.isofile* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @set_num_733(i8* %148, i32 %154)
  br label %156

156:                                              ; preds = %146, %137
  %157 = load i8*, i8** %14, align 8
  %158 = getelementptr inbounds i8, i8* %157, i64 19
  %159 = load %struct.isoent*, %struct.isoent** %17, align 8
  %160 = getelementptr inbounds %struct.isoent, %struct.isoent* %159, i32 0, i32 5
  %161 = load %struct.isofile*, %struct.isofile** %160, align 8
  %162 = getelementptr inbounds %struct.isofile, %struct.isofile* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @archive_entry_mtime(i32 %163)
  %165 = call i32 @set_time_915(i8* %158, i32 %164)
  %166 = load i8, i8* %19, align 1
  %167 = load i8*, i8** %14, align 8
  %168 = getelementptr inbounds i8, i8* %167, i64 26
  store i8 %166, i8* %168, align 1
  %169 = load i8*, i8** %14, align 8
  %170 = getelementptr inbounds i8, i8* %169, i64 27
  %171 = call i32 @set_num_711(i8* %170, i8 zeroext 0)
  %172 = load i8*, i8** %14, align 8
  %173 = getelementptr inbounds i8, i8* %172, i64 28
  %174 = call i32 @set_num_711(i8* %173, i8 zeroext 0)
  %175 = load i8*, i8** %14, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 29
  %177 = load %struct.iso9660*, %struct.iso9660** %11, align 8
  %178 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @set_num_723(i8* %176, i32 %179)
  %181 = load i8*, i8** %14, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 33
  %183 = load i64, i64* %16, align 8
  %184 = trunc i64 %183 to i8
  %185 = call i32 @set_num_711(i8* %182, i8 zeroext %184)
  %186 = load i32, i32* %12, align 4
  switch i32 %186, label %213 [
    i32 128, label %187
    i32 129, label %187
    i32 130, label %191
    i32 131, label %195
  ]

187:                                              ; preds = %156, %156
  %188 = load i8*, i8** %14, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 34
  %190 = call i32 @set_num_711(i8* %189, i8 zeroext 0)
  br label %213

191:                                              ; preds = %156
  %192 = load i8*, i8** %14, align 8
  %193 = getelementptr inbounds i8, i8* %192, i64 34
  %194 = call i32 @set_num_711(i8* %193, i8 zeroext 1)
  br label %213

195:                                              ; preds = %156
  %196 = load %struct.isoent*, %struct.isoent** %10, align 8
  %197 = getelementptr inbounds %struct.isoent, %struct.isoent* %196, i32 0, i32 4
  %198 = load i32*, i32** %197, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %208

200:                                              ; preds = %195
  %201 = load i8*, i8** %14, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 34
  %203 = load %struct.isoent*, %struct.isoent** %10, align 8
  %204 = getelementptr inbounds %struct.isoent, %struct.isoent* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = load i64, i64* %16, align 8
  %207 = call i32 @memcpy(i8* %202, i32* %205, i64 %206)
  br label %212

208:                                              ; preds = %195
  %209 = load i8*, i8** %14, align 8
  %210 = getelementptr inbounds i8, i8* %209, i64 34
  %211 = call i32 @set_num_711(i8* %210, i8 zeroext 0)
  br label %212

212:                                              ; preds = %208, %200
  br label %213

213:                                              ; preds = %156, %212, %191, %187
  br label %215

214:                                              ; preds = %64
  store i8* null, i8** %14, align 8
  br label %215

215:                                              ; preds = %214, %213
  %216 = load i64, i64* %16, align 8
  %217 = add i64 33, %216
  store i64 %217, i64* %15, align 8
  %218 = load i64, i64* %15, align 8
  %219 = and i64 %218, 1
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %215
  %222 = load i64, i64* %15, align 8
  %223 = add i64 %222, 1
  store i64 %223, i64* %15, align 8
  %224 = load i8*, i8** %8, align 8
  %225 = icmp ne i8* %224, null
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load i8*, i8** %14, align 8
  %228 = load i64, i64* %15, align 8
  %229 = getelementptr inbounds i8, i8* %227, i64 %228
  store i8 0, i8* %229, align 1
  br label %230

230:                                              ; preds = %226, %221
  br label %231

231:                                              ; preds = %230, %215
  %232 = load i32, i32* %12, align 4
  %233 = icmp eq i32 %232, 128
  br i1 %233, label %234, label %252

234:                                              ; preds = %231
  %235 = load i8*, i8** %8, align 8
  %236 = icmp ne i8* %235, null
  br i1 %236, label %237, label %242

237:                                              ; preds = %234
  %238 = load i8*, i8** %8, align 8
  %239 = load i64, i64* %15, align 8
  %240 = trunc i64 %239 to i8
  %241 = call i32 @set_num_711(i8* %238, i8 zeroext %240)
  br label %249

242:                                              ; preds = %234
  %243 = load i64, i64* %15, align 8
  %244 = trunc i64 %243 to i32
  %245 = sext i32 %244 to i64
  %246 = load %struct.isoent*, %struct.isoent** %10, align 8
  %247 = getelementptr inbounds %struct.isoent, %struct.isoent* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i32 0, i32 0
  store i64 %245, i64* %248, align 8
  br label %249

249:                                              ; preds = %242, %237
  %250 = load i64, i64* %15, align 8
  %251 = trunc i64 %250 to i32
  store i32 %251, i32* %7, align 4
  br label %306

252:                                              ; preds = %231
  %253 = load %struct.iso9660*, %struct.iso9660** %11, align 8
  %254 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %270

258:                                              ; preds = %252
  %259 = load i32, i32* %13, align 4
  %260 = load i32, i32* @VDD_JOLIET, align 4
  %261 = icmp ne i32 %259, %260
  br i1 %261, label %262, label %270

262:                                              ; preds = %258
  %263 = load i8*, i8** %14, align 8
  %264 = load i64, i64* %15, align 8
  %265 = trunc i64 %264 to i32
  %266 = load %struct.isoent*, %struct.isoent** %10, align 8
  %267 = load %struct.iso9660*, %struct.iso9660** %11, align 8
  %268 = load i32, i32* %12, align 4
  %269 = call i64 @set_directory_record_rr(i8* %263, i32 %265, %struct.isoent* %266, %struct.iso9660* %267, i32 %268)
  store i64 %269, i64* %15, align 8
  br label %270

270:                                              ; preds = %262, %258, %252
  %271 = load i8*, i8** %8, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %273, label %278

273:                                              ; preds = %270
  %274 = load i8*, i8** %8, align 8
  %275 = load i64, i64* %15, align 8
  %276 = trunc i64 %275 to i8
  %277 = call i32 @set_num_711(i8* %274, i8 zeroext %276)
  br label %303

278:                                              ; preds = %270
  %279 = load i32, i32* %12, align 4
  switch i32 %279, label %302 [
    i32 128, label %280
    i32 129, label %281
    i32 130, label %288
    i32 131, label %295
  ]

280:                                              ; preds = %278
  br label %302

281:                                              ; preds = %278
  %282 = load i64, i64* %15, align 8
  %283 = trunc i64 %282 to i32
  %284 = sext i32 %283 to i64
  %285 = load %struct.isoent*, %struct.isoent** %10, align 8
  %286 = getelementptr inbounds %struct.isoent, %struct.isoent* %285, i32 0, i32 3
  %287 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %286, i32 0, i32 1
  store i64 %284, i64* %287, align 8
  br label %302

288:                                              ; preds = %278
  %289 = load i64, i64* %15, align 8
  %290 = trunc i64 %289 to i32
  %291 = sext i32 %290 to i64
  %292 = load %struct.isoent*, %struct.isoent** %10, align 8
  %293 = getelementptr inbounds %struct.isoent, %struct.isoent* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %293, i32 0, i32 2
  store i64 %291, i64* %294, align 8
  br label %302

295:                                              ; preds = %278
  %296 = load i64, i64* %15, align 8
  %297 = trunc i64 %296 to i32
  %298 = sext i32 %297 to i64
  %299 = load %struct.isoent*, %struct.isoent** %10, align 8
  %300 = getelementptr inbounds %struct.isoent, %struct.isoent* %299, i32 0, i32 3
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 3
  store i64 %298, i64* %301, align 8
  br label %302

302:                                              ; preds = %278, %295, %288, %281, %280
  br label %303

303:                                              ; preds = %302, %273
  %304 = load i64, i64* %15, align 8
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %7, align 4
  br label %306

306:                                              ; preds = %303, %249, %49
  %307 = load i32, i32* %7, align 4
  ret i32 %307
}

declare dso_local i32 @set_num_711(i8*, i8 zeroext) #1

declare dso_local i32 @set_num_733(i8*, i32) #1

declare dso_local i32 @set_time_915(i8*, i32) #1

declare dso_local i32 @archive_entry_mtime(i32) #1

declare dso_local i32 @set_num_723(i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local i64 @set_directory_record_rr(i8*, i32, %struct.isoent*, %struct.iso9660*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
