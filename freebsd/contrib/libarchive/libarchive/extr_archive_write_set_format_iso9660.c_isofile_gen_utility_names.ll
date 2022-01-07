; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isofile_gen_utility_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isofile_gen_utility_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.isofile = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for UTF-16BE\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [86 x i8] c"A filename cannot be converted to UTF-16BE;You should disable making Joliet extension\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@AE_IFLNK = common dso_local global i64 0, align 8
@AE_IFDIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.isofile*)* @isofile_gen_utility_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isofile_gen_utility_names(%struct.archive_write* %0, %struct.isofile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.isofile*, align 8
  %6 = alloca %struct.iso9660*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.isofile* %1, %struct.isofile** %5, align 8
  %19 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %21 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %20, i32 0, i32 1
  %22 = load %struct.iso9660*, %struct.iso9660** %21, align 8
  store %struct.iso9660* %22, %struct.iso9660** %6, align 8
  %23 = load %struct.isofile*, %struct.isofile** %5, align 8
  %24 = getelementptr inbounds %struct.isofile, %struct.isofile* %23, i32 0, i32 3
  %25 = call i32 @archive_string_empty(%struct.TYPE_10__* %24)
  %26 = load %struct.isofile*, %struct.isofile** %5, align 8
  %27 = getelementptr inbounds %struct.isofile, %struct.isofile* %26, i32 0, i32 2
  %28 = call i32 @archive_string_empty(%struct.TYPE_10__* %27)
  %29 = load %struct.isofile*, %struct.isofile** %5, align 8
  %30 = getelementptr inbounds %struct.isofile, %struct.isofile* %29, i32 0, i32 5
  %31 = call i32 @archive_string_empty(%struct.TYPE_10__* %30)
  %32 = load %struct.isofile*, %struct.isofile** %5, align 8
  %33 = getelementptr inbounds %struct.isofile, %struct.isofile* %32, i32 0, i32 4
  %34 = call i32 @archive_string_empty(%struct.TYPE_10__* %33)
  %35 = load %struct.isofile*, %struct.isofile** %5, align 8
  %36 = getelementptr inbounds %struct.isofile, %struct.isofile* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i8* @archive_entry_pathname(i32 %37)
  store i8* %38, i8** %7, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %47, label %41

41:                                               ; preds = %2
  %42 = load i8*, i8** %7, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %41, %2
  %48 = load %struct.isofile*, %struct.isofile** %5, align 8
  %49 = getelementptr inbounds %struct.isofile, %struct.isofile* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* %12, align 4
  store i32 %50, i32* %3, align 4
  br label %586

51:                                               ; preds = %41
  %52 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %53 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %193

57:                                               ; preds = %51
  %58 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %59 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %87

62:                                               ; preds = %57
  %63 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %64 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %63, i32 0, i32 0
  %65 = call i32* @archive_string_conversion_to_charset(i32* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %66 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %67 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %66, i32 0, i32 0
  store i32* %65, i32** %67, align 8
  %68 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %69 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = icmp eq i32* %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %73, i32* %3, align 4
  br label %586

74:                                               ; preds = %62
  %75 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %76 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %75, i32 0, i32 0
  %77 = call i32* @archive_string_conversion_from_charset(i32* %76, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 1)
  %78 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %79 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %78, i32 0, i32 1
  store i32* %77, i32** %79, align 8
  %80 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %81 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = icmp eq i32* %82, null
  br i1 %83, label %84, label %86

84:                                               ; preds = %74
  %85 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %85, i32* %3, align 4
  br label %586

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86, %57
  %88 = load %struct.isofile*, %struct.isofile** %5, align 8
  %89 = getelementptr inbounds %struct.isofile, %struct.isofile* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %92 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = call i64 @archive_entry_pathname_l(i32 %90, i8** %13, i64* %15, i32* %93)
  %95 = icmp sgt i64 0, %94
  br i1 %95, label %96, label %112

96:                                               ; preds = %87
  %97 = load i64, i64* @errno, align 8
  %98 = load i64, i64* @ENOMEM, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %102 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %101, i32 0, i32 0
  %103 = load i64, i64* @ENOMEM, align 8
  %104 = call i32 @archive_set_error(i32* %102, i64 %103, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %105, i32* %3, align 4
  br label %586

106:                                              ; preds = %96
  %107 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %108 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %107, i32 0, i32 0
  %109 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %110 = call i32 @archive_set_error(i32* %108, i64 %109, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0))
  %111 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %106, %87
  br label %113

113:                                              ; preds = %136, %112
  %114 = load i64, i64* %15, align 8
  %115 = icmp uge i64 %114, 2
  br i1 %115, label %116, label %137

116:                                              ; preds = %113
  %117 = load i8*, i8** %13, align 8
  %118 = load i64, i64* %15, align 8
  %119 = sub i64 %118, 2
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %116
  %125 = load i8*, i8** %13, align 8
  %126 = load i64, i64* %15, align 8
  %127 = sub i64 %126, 1
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 47
  br i1 %131, label %132, label %135

132:                                              ; preds = %124
  %133 = load i64, i64* %15, align 8
  %134 = sub i64 %133, 2
  store i64 %134, i64* %15, align 8
  br label %136

135:                                              ; preds = %124, %116
  br label %137

136:                                              ; preds = %132
  br label %113

137:                                              ; preds = %135, %113
  %138 = load i8*, i8** %13, align 8
  store i8* %138, i8** %14, align 8
  %139 = load i64, i64* %15, align 8
  %140 = lshr i64 %139, 1
  store i64 %140, i64* %15, align 8
  %141 = load i64, i64* %15, align 8
  store i64 %141, i64* %16, align 8
  br label %142

142:                                              ; preds = %162, %137
  %143 = load i64, i64* %15, align 8
  %144 = icmp ugt i64 %143, 0
  br i1 %144, label %145, label %167

145:                                              ; preds = %142
  %146 = load i8*, i8** %13, align 8
  %147 = getelementptr inbounds i8, i8* %146, i64 0
  %148 = load i8, i8* %147, align 1
  %149 = sext i8 %148 to i32
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %145
  %152 = load i8*, i8** %13, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 1
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 47
  br i1 %156, label %157, label %162

157:                                              ; preds = %151
  %158 = load i8*, i8** %13, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 2
  store i8* %159, i8** %14, align 8
  %160 = load i64, i64* %15, align 8
  %161 = sub i64 %160, 1
  store i64 %161, i64* %16, align 8
  br label %162

162:                                              ; preds = %157, %151, %145
  %163 = load i8*, i8** %13, align 8
  %164 = getelementptr inbounds i8, i8* %163, i64 2
  store i8* %164, i8** %13, align 8
  %165 = load i64, i64* %15, align 8
  %166 = add i64 %165, -1
  store i64 %166, i64* %15, align 8
  br label %142

167:                                              ; preds = %142
  %168 = load i64, i64* %16, align 8
  %169 = shl i64 %168, 1
  store i64 %169, i64* %16, align 8
  %170 = load %struct.isofile*, %struct.isofile** %5, align 8
  %171 = getelementptr inbounds %struct.isofile, %struct.isofile* %170, i32 0, i32 5
  %172 = load i64, i64* %16, align 8
  %173 = call i32* @archive_string_ensure(%struct.TYPE_10__* %171, i64 %172)
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %181

175:                                              ; preds = %167
  %176 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %177 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %176, i32 0, i32 0
  %178 = load i64, i64* @ENOMEM, align 8
  %179 = call i32 @archive_set_error(i32* %177, i64 %178, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %180 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %180, i32* %3, align 4
  br label %586

181:                                              ; preds = %167
  %182 = load %struct.isofile*, %struct.isofile** %5, align 8
  %183 = getelementptr inbounds %struct.isofile, %struct.isofile* %182, i32 0, i32 5
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  %186 = load i8*, i8** %14, align 8
  %187 = load i64, i64* %16, align 8
  %188 = call i32 @memcpy(i8* %185, i8* %186, i64 %187)
  %189 = load i64, i64* %16, align 8
  %190 = load %struct.isofile*, %struct.isofile** %5, align 8
  %191 = getelementptr inbounds %struct.isofile, %struct.isofile* %190, i32 0, i32 5
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 1
  store i64 %189, i64* %192, align 8
  br label %193

193:                                              ; preds = %181, %51
  %194 = load %struct.isofile*, %struct.isofile** %5, align 8
  %195 = getelementptr inbounds %struct.isofile, %struct.isofile* %194, i32 0, i32 3
  %196 = load i8*, i8** %7, align 8
  %197 = call i32 @archive_strcpy(%struct.TYPE_10__* %195, i8* %196)
  %198 = load %struct.isofile*, %struct.isofile** %5, align 8
  %199 = getelementptr inbounds %struct.isofile, %struct.isofile* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  store i64 %201, i64* %11, align 8
  %202 = load %struct.isofile*, %struct.isofile** %5, align 8
  %203 = getelementptr inbounds %struct.isofile, %struct.isofile* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  store i8* %205, i8** %9, align 8
  store i8* %205, i8** %8, align 8
  br label %206

206:                                              ; preds = %284, %193
  %207 = load i8*, i8** %8, align 8
  %208 = load i8, i8* %207, align 1
  %209 = icmp ne i8 %208, 0
  br i1 %209, label %210, label %285

210:                                              ; preds = %206
  %211 = load i8*, i8** %8, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 0
  %213 = load i8, i8* %212, align 1
  %214 = sext i8 %213 to i32
  %215 = icmp eq i32 %214, 47
  br i1 %215, label %216, label %221

216:                                              ; preds = %210
  %217 = load i8*, i8** %8, align 8
  %218 = getelementptr inbounds i8, i8* %217, i32 1
  store i8* %218, i8** %8, align 8
  %219 = load i64, i64* %11, align 8
  %220 = add i64 %219, -1
  store i64 %220, i64* %11, align 8
  br label %284

221:                                              ; preds = %210
  %222 = load i8*, i8** %8, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 0
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = icmp ne i32 %225, 46
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  br label %285

228:                                              ; preds = %221
  %229 = load i8*, i8** %8, align 8
  %230 = getelementptr inbounds i8, i8* %229, i64 1
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = icmp eq i32 %232, 46
  br i1 %233, label %234, label %245

234:                                              ; preds = %228
  %235 = load i8*, i8** %8, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 2
  %237 = load i8, i8* %236, align 1
  %238 = sext i8 %237 to i32
  %239 = icmp eq i32 %238, 47
  br i1 %239, label %240, label %245

240:                                              ; preds = %234
  %241 = load i8*, i8** %8, align 8
  %242 = getelementptr inbounds i8, i8* %241, i64 3
  store i8* %242, i8** %8, align 8
  %243 = load i64, i64* %11, align 8
  %244 = sub i64 %243, 3
  store i64 %244, i64* %11, align 8
  br label %282

245:                                              ; preds = %234, %228
  %246 = load i8*, i8** %8, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 1
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp eq i32 %249, 47
  br i1 %250, label %263, label %251

251:                                              ; preds = %245
  %252 = load i8*, i8** %8, align 8
  %253 = getelementptr inbounds i8, i8* %252, i64 1
  %254 = load i8, i8* %253, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp eq i32 %255, 46
  br i1 %256, label %257, label %268

257:                                              ; preds = %251
  %258 = load i8*, i8** %8, align 8
  %259 = getelementptr inbounds i8, i8* %258, i64 2
  %260 = load i8, i8* %259, align 1
  %261 = sext i8 %260 to i32
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %257, %245
  %264 = load i8*, i8** %8, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 2
  store i8* %265, i8** %8, align 8
  %266 = load i64, i64* %11, align 8
  %267 = sub i64 %266, 2
  store i64 %267, i64* %11, align 8
  br label %281

268:                                              ; preds = %257, %251
  %269 = load i8*, i8** %8, align 8
  %270 = getelementptr inbounds i8, i8* %269, i64 1
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp eq i32 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %268
  %275 = load i8*, i8** %8, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %8, align 8
  %277 = load i64, i64* %11, align 8
  %278 = add i64 %277, -1
  store i64 %278, i64* %11, align 8
  br label %280

279:                                              ; preds = %268
  br label %285

280:                                              ; preds = %274
  br label %281

281:                                              ; preds = %280, %263
  br label %282

282:                                              ; preds = %281, %240
  br label %283

283:                                              ; preds = %282
  br label %284

284:                                              ; preds = %283, %216
  br label %206

285:                                              ; preds = %279, %227, %206
  %286 = load i8*, i8** %8, align 8
  %287 = load i8*, i8** %9, align 8
  %288 = icmp ne i8* %286, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %285
  %290 = load i8*, i8** %9, align 8
  %291 = load i8*, i8** %8, align 8
  %292 = load i64, i64* %11, align 8
  %293 = add i64 %292, 1
  %294 = trunc i64 %293 to i32
  %295 = call i32 @memmove(i8* %290, i8* %291, i32 %294)
  %296 = load i8*, i8** %9, align 8
  store i8* %296, i8** %8, align 8
  br label %297

297:                                              ; preds = %289, %285
  br label %298

298:                                              ; preds = %385, %297
  %299 = load i64, i64* %11, align 8
  %300 = icmp ugt i64 %299, 0
  br i1 %300, label %301, label %386

301:                                              ; preds = %298
  %302 = load i64, i64* %11, align 8
  store i64 %302, i64* %17, align 8
  %303 = load i64, i64* %11, align 8
  %304 = icmp ugt i64 %303, 0
  br i1 %304, label %305, label %320

305:                                              ; preds = %301
  %306 = load i8*, i8** %8, align 8
  %307 = load i64, i64* %11, align 8
  %308 = sub i64 %307, 1
  %309 = getelementptr inbounds i8, i8* %306, i64 %308
  %310 = load i8, i8* %309, align 1
  %311 = sext i8 %310 to i32
  %312 = icmp eq i32 %311, 47
  br i1 %312, label %313, label %320

313:                                              ; preds = %305
  %314 = load i8*, i8** %8, align 8
  %315 = load i64, i64* %11, align 8
  %316 = sub i64 %315, 1
  %317 = getelementptr inbounds i8, i8* %314, i64 %316
  store i8 0, i8* %317, align 1
  %318 = load i64, i64* %11, align 8
  %319 = add i64 %318, -1
  store i64 %319, i64* %11, align 8
  br label %320

320:                                              ; preds = %313, %305, %301
  %321 = load i64, i64* %11, align 8
  %322 = icmp ugt i64 %321, 1
  br i1 %322, label %323, label %346

323:                                              ; preds = %320
  %324 = load i8*, i8** %8, align 8
  %325 = load i64, i64* %11, align 8
  %326 = sub i64 %325, 2
  %327 = getelementptr inbounds i8, i8* %324, i64 %326
  %328 = load i8, i8* %327, align 1
  %329 = sext i8 %328 to i32
  %330 = icmp eq i32 %329, 47
  br i1 %330, label %331, label %346

331:                                              ; preds = %323
  %332 = load i8*, i8** %8, align 8
  %333 = load i64, i64* %11, align 8
  %334 = sub i64 %333, 1
  %335 = getelementptr inbounds i8, i8* %332, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = sext i8 %336 to i32
  %338 = icmp eq i32 %337, 46
  br i1 %338, label %339, label %346

339:                                              ; preds = %331
  %340 = load i8*, i8** %8, align 8
  %341 = load i64, i64* %11, align 8
  %342 = sub i64 %341, 2
  %343 = getelementptr inbounds i8, i8* %340, i64 %342
  store i8 0, i8* %343, align 1
  %344 = load i64, i64* %11, align 8
  %345 = sub i64 %344, 2
  store i64 %345, i64* %11, align 8
  br label %346

346:                                              ; preds = %339, %331, %323, %320
  %347 = load i64, i64* %11, align 8
  %348 = icmp ugt i64 %347, 2
  br i1 %348, label %349, label %380

349:                                              ; preds = %346
  %350 = load i8*, i8** %8, align 8
  %351 = load i64, i64* %11, align 8
  %352 = sub i64 %351, 3
  %353 = getelementptr inbounds i8, i8* %350, i64 %352
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = icmp eq i32 %355, 47
  br i1 %356, label %357, label %380

357:                                              ; preds = %349
  %358 = load i8*, i8** %8, align 8
  %359 = load i64, i64* %11, align 8
  %360 = sub i64 %359, 2
  %361 = getelementptr inbounds i8, i8* %358, i64 %360
  %362 = load i8, i8* %361, align 1
  %363 = sext i8 %362 to i32
  %364 = icmp eq i32 %363, 46
  br i1 %364, label %365, label %380

365:                                              ; preds = %357
  %366 = load i8*, i8** %8, align 8
  %367 = load i64, i64* %11, align 8
  %368 = sub i64 %367, 1
  %369 = getelementptr inbounds i8, i8* %366, i64 %368
  %370 = load i8, i8* %369, align 1
  %371 = sext i8 %370 to i32
  %372 = icmp eq i32 %371, 46
  br i1 %372, label %373, label %380

373:                                              ; preds = %365
  %374 = load i8*, i8** %8, align 8
  %375 = load i64, i64* %11, align 8
  %376 = sub i64 %375, 3
  %377 = getelementptr inbounds i8, i8* %374, i64 %376
  store i8 0, i8* %377, align 1
  %378 = load i64, i64* %11, align 8
  %379 = sub i64 %378, 3
  store i64 %379, i64* %11, align 8
  br label %380

380:                                              ; preds = %373, %365, %357, %349, %346
  %381 = load i64, i64* %17, align 8
  %382 = load i64, i64* %11, align 8
  %383 = icmp eq i64 %381, %382
  br i1 %383, label %384, label %385

384:                                              ; preds = %380
  br label %386

385:                                              ; preds = %380
  br label %298

386:                                              ; preds = %384, %298
  br label %387

387:                                              ; preds = %493, %386
  %388 = load i8*, i8** %8, align 8
  %389 = load i8, i8* %388, align 1
  %390 = icmp ne i8 %389, 0
  br i1 %390, label %391, label %494

391:                                              ; preds = %387
  %392 = load i8*, i8** %8, align 8
  %393 = getelementptr inbounds i8, i8* %392, i64 0
  %394 = load i8, i8* %393, align 1
  %395 = sext i8 %394 to i32
  %396 = icmp eq i32 %395, 47
  br i1 %396, label %397, label %490

397:                                              ; preds = %391
  %398 = load i8*, i8** %8, align 8
  %399 = getelementptr inbounds i8, i8* %398, i64 1
  %400 = load i8, i8* %399, align 1
  %401 = sext i8 %400 to i32
  %402 = icmp eq i32 %401, 47
  br i1 %402, label %403, label %412

403:                                              ; preds = %397
  %404 = load i8*, i8** %8, align 8
  %405 = load i8*, i8** %8, align 8
  %406 = getelementptr inbounds i8, i8* %405, i64 1
  %407 = load i8*, i8** %8, align 8
  %408 = getelementptr inbounds i8, i8* %407, i64 1
  %409 = call i32 @strlen(i8* %408)
  %410 = add nsw i32 %409, 1
  %411 = call i32 @memmove(i8* %404, i8* %406, i32 %410)
  br label %489

412:                                              ; preds = %397
  %413 = load i8*, i8** %8, align 8
  %414 = getelementptr inbounds i8, i8* %413, i64 1
  %415 = load i8, i8* %414, align 1
  %416 = sext i8 %415 to i32
  %417 = icmp eq i32 %416, 46
  br i1 %417, label %418, label %433

418:                                              ; preds = %412
  %419 = load i8*, i8** %8, align 8
  %420 = getelementptr inbounds i8, i8* %419, i64 2
  %421 = load i8, i8* %420, align 1
  %422 = sext i8 %421 to i32
  %423 = icmp eq i32 %422, 47
  br i1 %423, label %424, label %433

424:                                              ; preds = %418
  %425 = load i8*, i8** %8, align 8
  %426 = load i8*, i8** %8, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 2
  %428 = load i8*, i8** %8, align 8
  %429 = getelementptr inbounds i8, i8* %428, i64 2
  %430 = call i32 @strlen(i8* %429)
  %431 = add nsw i32 %430, 1
  %432 = call i32 @memmove(i8* %425, i8* %427, i32 %431)
  br label %488

433:                                              ; preds = %418, %412
  %434 = load i8*, i8** %8, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 1
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i32
  %438 = icmp eq i32 %437, 46
  br i1 %438, label %439, label %484

439:                                              ; preds = %433
  %440 = load i8*, i8** %8, align 8
  %441 = getelementptr inbounds i8, i8* %440, i64 2
  %442 = load i8, i8* %441, align 1
  %443 = sext i8 %442 to i32
  %444 = icmp eq i32 %443, 46
  br i1 %444, label %445, label %484

445:                                              ; preds = %439
  %446 = load i8*, i8** %8, align 8
  %447 = getelementptr inbounds i8, i8* %446, i64 3
  %448 = load i8, i8* %447, align 1
  %449 = sext i8 %448 to i32
  %450 = icmp eq i32 %449, 47
  br i1 %450, label %451, label %484

451:                                              ; preds = %445
  %452 = load i8*, i8** %8, align 8
  %453 = getelementptr inbounds i8, i8* %452, i64 -1
  store i8* %453, i8** %18, align 8
  br label %454

454:                                              ; preds = %464, %451
  %455 = load i8*, i8** %18, align 8
  %456 = load i8*, i8** %9, align 8
  %457 = icmp uge i8* %455, %456
  br i1 %457, label %458, label %467

458:                                              ; preds = %454
  %459 = load i8*, i8** %18, align 8
  %460 = load i8, i8* %459, align 1
  %461 = sext i8 %460 to i32
  %462 = icmp eq i32 %461, 47
  br i1 %462, label %463, label %464

463:                                              ; preds = %458
  br label %467

464:                                              ; preds = %458
  %465 = load i8*, i8** %18, align 8
  %466 = getelementptr inbounds i8, i8* %465, i32 -1
  store i8* %466, i8** %18, align 8
  br label %454

467:                                              ; preds = %463, %454
  %468 = load i8*, i8** %18, align 8
  %469 = load i8*, i8** %9, align 8
  %470 = icmp ugt i8* %468, %469
  br i1 %470, label %471, label %477

471:                                              ; preds = %467
  %472 = load i8*, i8** %18, align 8
  %473 = load i8*, i8** %8, align 8
  %474 = getelementptr inbounds i8, i8* %473, i64 3
  %475 = call i32 @strcpy(i8* %472, i8* %474)
  %476 = load i8*, i8** %18, align 8
  store i8* %476, i8** %8, align 8
  br label %483

477:                                              ; preds = %467
  %478 = load i8*, i8** %9, align 8
  %479 = load i8*, i8** %8, align 8
  %480 = getelementptr inbounds i8, i8* %479, i64 4
  %481 = call i32 @strcpy(i8* %478, i8* %480)
  %482 = load i8*, i8** %9, align 8
  store i8* %482, i8** %8, align 8
  br label %483

483:                                              ; preds = %477, %471
  br label %487

484:                                              ; preds = %445, %439, %433
  %485 = load i8*, i8** %8, align 8
  %486 = getelementptr inbounds i8, i8* %485, i32 1
  store i8* %486, i8** %8, align 8
  br label %487

487:                                              ; preds = %484, %483
  br label %488

488:                                              ; preds = %487, %424
  br label %489

489:                                              ; preds = %488, %403
  br label %493

490:                                              ; preds = %391
  %491 = load i8*, i8** %8, align 8
  %492 = getelementptr inbounds i8, i8* %491, i32 1
  store i8* %492, i8** %8, align 8
  br label %493

493:                                              ; preds = %490, %489
  br label %387

494:                                              ; preds = %387
  %495 = load i8*, i8** %9, align 8
  store i8* %495, i8** %8, align 8
  %496 = load i8*, i8** %8, align 8
  %497 = call i32 @strlen(i8* %496)
  %498 = sext i32 %497 to i64
  store i64 %498, i64* %11, align 8
  %499 = load %struct.isofile*, %struct.isofile** %5, align 8
  %500 = getelementptr inbounds %struct.isofile, %struct.isofile* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 8
  %502 = call i64 @archive_entry_filetype(i32 %501)
  %503 = load i64, i64* @AE_IFLNK, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %505, label %514

505:                                              ; preds = %494
  %506 = load %struct.isofile*, %struct.isofile** %5, align 8
  %507 = getelementptr inbounds %struct.isofile, %struct.isofile* %506, i32 0, i32 1
  %508 = load i32, i32* %507, align 8
  %509 = call i8* @archive_entry_symlink(i32 %508)
  store i8* %509, i8** %7, align 8
  %510 = load %struct.isofile*, %struct.isofile** %5, align 8
  %511 = getelementptr inbounds %struct.isofile, %struct.isofile* %510, i32 0, i32 4
  %512 = load i8*, i8** %7, align 8
  %513 = call i32 @archive_strcpy(%struct.TYPE_10__* %511, i8* %512)
  br label %514

514:                                              ; preds = %505, %494
  store i8* null, i8** %10, align 8
  %515 = load %struct.isofile*, %struct.isofile** %5, align 8
  %516 = getelementptr inbounds %struct.isofile, %struct.isofile* %515, i32 0, i32 0
  store i64 0, i64* %516, align 8
  br label %517

517:                                              ; preds = %534, %514
  %518 = load i8*, i8** %8, align 8
  %519 = load i8, i8* %518, align 1
  %520 = sext i8 %519 to i32
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %537

522:                                              ; preds = %517
  %523 = load i8*, i8** %8, align 8
  %524 = load i8, i8* %523, align 1
  %525 = sext i8 %524 to i32
  %526 = icmp eq i32 %525, 47
  br i1 %526, label %527, label %533

527:                                              ; preds = %522
  %528 = load i8*, i8** %8, align 8
  store i8* %528, i8** %10, align 8
  %529 = load %struct.isofile*, %struct.isofile** %5, align 8
  %530 = getelementptr inbounds %struct.isofile, %struct.isofile* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = add nsw i64 %531, 1
  store i64 %532, i64* %530, align 8
  br label %533

533:                                              ; preds = %527, %522
  br label %534

534:                                              ; preds = %533
  %535 = load i8*, i8** %8, align 8
  %536 = getelementptr inbounds i8, i8* %535, i32 1
  store i8* %536, i8** %8, align 8
  br label %517

537:                                              ; preds = %517
  %538 = load i8*, i8** %10, align 8
  %539 = icmp eq i8* %538, null
  br i1 %539, label %540, label %558

540:                                              ; preds = %537
  %541 = load i64, i64* %11, align 8
  %542 = load %struct.isofile*, %struct.isofile** %5, align 8
  %543 = getelementptr inbounds %struct.isofile, %struct.isofile* %542, i32 0, i32 3
  %544 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %543, i32 0, i32 1
  store i64 %541, i64* %544, align 8
  %545 = load %struct.isofile*, %struct.isofile** %5, align 8
  %546 = getelementptr inbounds %struct.isofile, %struct.isofile* %545, i32 0, i32 2
  %547 = load %struct.isofile*, %struct.isofile** %5, align 8
  %548 = getelementptr inbounds %struct.isofile, %struct.isofile* %547, i32 0, i32 3
  %549 = call i32 @archive_string_copy(%struct.TYPE_10__* %546, %struct.TYPE_10__* %548)
  %550 = load %struct.isofile*, %struct.isofile** %5, align 8
  %551 = getelementptr inbounds %struct.isofile, %struct.isofile* %550, i32 0, i32 3
  %552 = call i32 @archive_string_empty(%struct.TYPE_10__* %551)
  %553 = load %struct.isofile*, %struct.isofile** %5, align 8
  %554 = getelementptr inbounds %struct.isofile, %struct.isofile* %553, i32 0, i32 3
  %555 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %554, i32 0, i32 0
  %556 = load i8*, i8** %555, align 8
  store i8 0, i8* %556, align 1
  %557 = load i32, i32* %12, align 4
  store i32 %557, i32* %3, align 4
  br label %586

558:                                              ; preds = %537
  %559 = load i8*, i8** %10, align 8
  store i8 0, i8* %559, align 1
  %560 = load i8*, i8** %10, align 8
  %561 = load i8*, i8** %9, align 8
  %562 = ptrtoint i8* %560 to i64
  %563 = ptrtoint i8* %561 to i64
  %564 = sub i64 %562, %563
  %565 = load %struct.isofile*, %struct.isofile** %5, align 8
  %566 = getelementptr inbounds %struct.isofile, %struct.isofile* %565, i32 0, i32 3
  %567 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %566, i32 0, i32 1
  store i64 %564, i64* %567, align 8
  %568 = load %struct.isofile*, %struct.isofile** %5, align 8
  %569 = getelementptr inbounds %struct.isofile, %struct.isofile* %568, i32 0, i32 2
  %570 = load i8*, i8** %10, align 8
  %571 = getelementptr inbounds i8, i8* %570, i64 1
  %572 = call i32 @archive_strcpy(%struct.TYPE_10__* %569, i8* %571)
  %573 = load %struct.isofile*, %struct.isofile** %5, align 8
  %574 = getelementptr inbounds %struct.isofile, %struct.isofile* %573, i32 0, i32 1
  %575 = load i32, i32* %574, align 8
  %576 = call i64 @archive_entry_filetype(i32 %575)
  %577 = load i64, i64* @AE_IFDIR, align 8
  %578 = icmp eq i64 %576, %577
  br i1 %578, label %579, label %584

579:                                              ; preds = %558
  %580 = load %struct.isofile*, %struct.isofile** %5, align 8
  %581 = getelementptr inbounds %struct.isofile, %struct.isofile* %580, i32 0, i32 0
  %582 = load i64, i64* %581, align 8
  %583 = add nsw i64 %582, 1
  store i64 %583, i64* %581, align 8
  br label %584

584:                                              ; preds = %579, %558
  %585 = load i32, i32* %12, align 4
  store i32 %585, i32* %3, align 4
  br label %586

586:                                              ; preds = %584, %540, %175, %100, %84, %72, %47
  %587 = load i32, i32* %3, align 4
  ret i32 %587
}

declare dso_local i32 @archive_string_empty(%struct.TYPE_10__*) #1

declare dso_local i8* @archive_entry_pathname(i32) #1

declare dso_local i32* @archive_string_conversion_to_charset(i32*, i8*, i32) #1

declare dso_local i32* @archive_string_conversion_from_charset(i32*, i8*, i32) #1

declare dso_local i64 @archive_entry_pathname_l(i32, i8**, i64*, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*) #1

declare dso_local i32* @archive_string_ensure(%struct.TYPE_10__*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @archive_strcpy(%struct.TYPE_10__*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i64 @archive_entry_filetype(i32) #1

declare dso_local i8* @archive_entry_symlink(i32) #1

declare dso_local i32 @archive_string_copy(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
