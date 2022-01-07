; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_read_data_compressed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_read_data_compressed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 (i32*, i32*)* }
%struct.archive_read = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.rar = type { i32, i32, i64, i64, i64, i8*, i32, i64, i64, i32, i64, i64, i32, i32, i32, %struct.TYPE_5__, i32, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"File CRC error\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@__archive_ppmd7_functions = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Invalid symbol\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Parsing filters is unsupported.\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@INT64_MAX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Internal error extracting RAR file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i32*)* @read_data_compressed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_data_compressed(%struct.archive_read* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rar*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %23 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.rar*
  store %struct.rar* %27, %struct.rar** %10, align 8
  br label %28

28:                                               ; preds = %497, %4
  %29 = load %struct.rar*, %struct.rar** %10, align 8
  %30 = getelementptr inbounds %struct.rar, %struct.rar* %29, i32 0, i32 19
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %5, align 4
  br label %533

35:                                               ; preds = %28
  %36 = load %struct.rar*, %struct.rar** %10, align 8
  %37 = getelementptr inbounds %struct.rar, %struct.rar* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = load %struct.rar*, %struct.rar** %10, align 8
  %42 = getelementptr inbounds %struct.rar, %struct.rar* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %119

45:                                               ; preds = %40
  %46 = load %struct.rar*, %struct.rar** %10, align 8
  %47 = getelementptr inbounds %struct.rar, %struct.rar* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.rar*, %struct.rar** %10, align 8
  %50 = getelementptr inbounds %struct.rar, %struct.rar* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp sge i64 %48, %51
  br i1 %52, label %53, label %119

53:                                               ; preds = %45, %35
  %54 = load %struct.rar*, %struct.rar** %10, align 8
  %55 = getelementptr inbounds %struct.rar, %struct.rar* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %94

58:                                               ; preds = %53
  %59 = load %struct.rar*, %struct.rar** %10, align 8
  %60 = getelementptr inbounds %struct.rar, %struct.rar* %59, i32 0, i32 5
  %61 = load i8*, i8** %60, align 8
  %62 = load i8**, i8*** %7, align 8
  store i8* %61, i8** %62, align 8
  %63 = load %struct.rar*, %struct.rar** %10, align 8
  %64 = getelementptr inbounds %struct.rar, %struct.rar* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %8, align 8
  store i64 %65, i64* %66, align 8
  %67 = load %struct.rar*, %struct.rar** %10, align 8
  %68 = getelementptr inbounds %struct.rar, %struct.rar* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i64*, i64** %8, align 8
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.rar*, %struct.rar** %10, align 8
  %74 = getelementptr inbounds %struct.rar, %struct.rar* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = add i64 %76, %72
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 8
  %79 = load %struct.rar*, %struct.rar** %10, align 8
  %80 = getelementptr inbounds %struct.rar, %struct.rar* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = load i8**, i8*** %7, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i8* @crc32(i64 %81, i8* %83, i32 %86)
  %88 = ptrtoint i8* %87 to i64
  %89 = load %struct.rar*, %struct.rar** %10, align 8
  %90 = getelementptr inbounds %struct.rar, %struct.rar* %89, i32 0, i32 7
  store i64 %88, i64* %90, align 8
  %91 = load %struct.rar*, %struct.rar** %10, align 8
  %92 = getelementptr inbounds %struct.rar, %struct.rar* %91, i32 0, i32 4
  store i64 0, i64* %92, align 8
  %93 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %93, i32* %5, align 4
  br label %533

94:                                               ; preds = %53
  %95 = load i8**, i8*** %7, align 8
  store i8* null, i8** %95, align 8
  %96 = load i64*, i64** %8, align 8
  store i64 0, i64* %96, align 8
  %97 = load %struct.rar*, %struct.rar** %10, align 8
  %98 = getelementptr inbounds %struct.rar, %struct.rar* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32*, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %102 = load %struct.rar*, %struct.rar** %10, align 8
  %103 = getelementptr inbounds %struct.rar, %struct.rar* %102, i32 0, i32 8
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.rar*, %struct.rar** %10, align 8
  %106 = getelementptr inbounds %struct.rar, %struct.rar* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %104, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %94
  %110 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %111 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %110, i32 0, i32 0
  %112 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %113 = call i32 @archive_set_error(i32* %111, i32 %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %114, i32* %5, align 4
  br label %533

115:                                              ; preds = %94
  %116 = load %struct.rar*, %struct.rar** %10, align 8
  %117 = getelementptr inbounds %struct.rar, %struct.rar* %116, i32 0, i32 9
  store i32 1, i32* %117, align 8
  %118 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %118, i32* %5, align 4
  br label %533

119:                                              ; preds = %45, %40
  %120 = load %struct.rar*, %struct.rar** %10, align 8
  %121 = getelementptr inbounds %struct.rar, %struct.rar* %120, i32 0, i32 17
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %220, label %124

124:                                              ; preds = %119
  %125 = load %struct.rar*, %struct.rar** %10, align 8
  %126 = getelementptr inbounds %struct.rar, %struct.rar* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %220

129:                                              ; preds = %124
  %130 = load %struct.rar*, %struct.rar** %10, align 8
  %131 = getelementptr inbounds %struct.rar, %struct.rar* %130, i32 0, i32 10
  %132 = load i64, i64* %131, align 8
  %133 = icmp ugt i64 %132, 0
  br i1 %133, label %134, label %220

134:                                              ; preds = %129
  %135 = load %struct.rar*, %struct.rar** %10, align 8
  %136 = getelementptr inbounds %struct.rar, %struct.rar* %135, i32 0, i32 10
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.rar*, %struct.rar** %10, align 8
  %139 = getelementptr inbounds %struct.rar, %struct.rar* %138, i32 0, i32 11
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.rar*, %struct.rar** %10, align 8
  %142 = getelementptr inbounds %struct.rar, %struct.rar* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = sub i64 %140, %143
  %145 = icmp ugt i64 %137, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %134
  %147 = load %struct.rar*, %struct.rar** %10, align 8
  %148 = getelementptr inbounds %struct.rar, %struct.rar* %147, i32 0, i32 11
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.rar*, %struct.rar** %10, align 8
  %151 = getelementptr inbounds %struct.rar, %struct.rar* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = sub i64 %149, %152
  store i64 %153, i64* %14, align 8
  br label %158

154:                                              ; preds = %134
  %155 = load %struct.rar*, %struct.rar** %10, align 8
  %156 = getelementptr inbounds %struct.rar, %struct.rar* %155, i32 0, i32 10
  %157 = load i64, i64* %156, align 8
  store i64 %157, i64* %14, align 8
  br label %158

158:                                              ; preds = %154, %146
  %159 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %160 = load i8**, i8*** %7, align 8
  %161 = load %struct.rar*, %struct.rar** %10, align 8
  %162 = getelementptr inbounds %struct.rar, %struct.rar* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = load i64, i64* %14, align 8
  %166 = trunc i64 %165 to i32
  %167 = call i32 @copy_from_lzss_window(%struct.archive_read* %159, i8** %160, i32 %164, i32 %166)
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %15, align 4
  %169 = load i32, i32* @ARCHIVE_OK, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %158
  %172 = load i32, i32* %15, align 4
  store i32 %172, i32* %5, align 4
  br label %533

173:                                              ; preds = %158
  %174 = load i64, i64* %14, align 8
  %175 = load %struct.rar*, %struct.rar** %10, align 8
  %176 = getelementptr inbounds %struct.rar, %struct.rar* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = add i64 %177, %174
  store i64 %178, i64* %176, align 8
  %179 = load i64, i64* %14, align 8
  %180 = load %struct.rar*, %struct.rar** %10, align 8
  %181 = getelementptr inbounds %struct.rar, %struct.rar* %180, i32 0, i32 10
  %182 = load i64, i64* %181, align 8
  %183 = sub i64 %182, %179
  store i64 %183, i64* %181, align 8
  %184 = load i8**, i8*** %7, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = icmp ne i8* %185, null
  br i1 %186, label %187, label %219

187:                                              ; preds = %173
  %188 = load %struct.rar*, %struct.rar** %10, align 8
  %189 = getelementptr inbounds %struct.rar, %struct.rar* %188, i32 0, i32 4
  store i64 0, i64* %189, align 8
  %190 = load %struct.rar*, %struct.rar** %10, align 8
  %191 = getelementptr inbounds %struct.rar, %struct.rar* %190, i32 0, i32 11
  %192 = load i64, i64* %191, align 8
  %193 = load i64*, i64** %8, align 8
  store i64 %192, i64* %193, align 8
  %194 = load %struct.rar*, %struct.rar** %10, align 8
  %195 = getelementptr inbounds %struct.rar, %struct.rar* %194, i32 0, i32 6
  %196 = load i32, i32* %195, align 8
  %197 = load i32*, i32** %9, align 8
  store i32 %196, i32* %197, align 4
  %198 = load i64*, i64** %8, align 8
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.rar*, %struct.rar** %10, align 8
  %201 = getelementptr inbounds %struct.rar, %struct.rar* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = add i64 %203, %199
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %201, align 8
  %206 = load %struct.rar*, %struct.rar** %10, align 8
  %207 = getelementptr inbounds %struct.rar, %struct.rar* %206, i32 0, i32 7
  %208 = load i64, i64* %207, align 8
  %209 = load i8**, i8*** %7, align 8
  %210 = load i8*, i8** %209, align 8
  %211 = load i64*, i64** %8, align 8
  %212 = load i64, i64* %211, align 8
  %213 = trunc i64 %212 to i32
  %214 = call i8* @crc32(i64 %208, i8* %210, i32 %213)
  %215 = ptrtoint i8* %214 to i64
  %216 = load %struct.rar*, %struct.rar** %10, align 8
  %217 = getelementptr inbounds %struct.rar, %struct.rar* %216, i32 0, i32 7
  store i64 %215, i64* %217, align 8
  %218 = load i32, i32* %15, align 4
  store i32 %218, i32* %5, align 4
  br label %533

219:                                              ; preds = %173
  br label %497

220:                                              ; preds = %129, %124, %119
  %221 = load %struct.rar*, %struct.rar** %10, align 8
  %222 = getelementptr inbounds %struct.rar, %struct.rar* %221, i32 0, i32 18
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %235, label %226

226:                                              ; preds = %220
  %227 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %228 = load %struct.rar*, %struct.rar** %10, align 8
  %229 = getelementptr inbounds %struct.rar, %struct.rar* %228, i32 0, i32 18
  %230 = call i32 @rar_br_preparation(%struct.archive_read* %227, %struct.TYPE_7__* %229)
  store i32 %230, i32* %15, align 4
  %231 = load i32, i32* @ARCHIVE_WARN, align 4
  %232 = icmp slt i32 %230, %231
  br i1 %232, label %233, label %235

233:                                              ; preds = %226
  %234 = load i32, i32* %15, align 4
  store i32 %234, i32* %5, align 4
  br label %533

235:                                              ; preds = %226, %220
  %236 = load %struct.rar*, %struct.rar** %10, align 8
  %237 = getelementptr inbounds %struct.rar, %struct.rar* %236, i32 0, i32 12
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %247

240:                                              ; preds = %235
  %241 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %242 = call i32 @parse_codes(%struct.archive_read* %241)
  store i32 %242, i32* %15, align 4
  %243 = load i32, i32* @ARCHIVE_WARN, align 4
  %244 = icmp slt i32 %242, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %240
  %246 = load i32, i32* %15, align 4
  store i32 %246, i32* %5, align 4
  br label %533

247:                                              ; preds = %240, %235
  %248 = load %struct.rar*, %struct.rar** %10, align 8
  %249 = getelementptr inbounds %struct.rar, %struct.rar* %248, i32 0, i32 17
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %410

252:                                              ; preds = %247
  %253 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @__archive_ppmd7_functions, i32 0, i32 0), align 8
  %254 = load %struct.rar*, %struct.rar** %10, align 8
  %255 = getelementptr inbounds %struct.rar, %struct.rar* %254, i32 0, i32 16
  %256 = load %struct.rar*, %struct.rar** %10, align 8
  %257 = getelementptr inbounds %struct.rar, %struct.rar* %256, i32 0, i32 15
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 0
  %259 = call i32 %253(i32* %255, i32* %258)
  store i32 %259, i32* %16, align 4
  %260 = icmp slt i32 %259, 0
  br i1 %260, label %261, label %267

261:                                              ; preds = %252
  %262 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %263 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %262, i32 0, i32 0
  %264 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %265 = call i32 @archive_set_error(i32* %263, i32 %264, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %266 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %266, i32* %5, align 4
  br label %533

267:                                              ; preds = %252
  %268 = load i32, i32* %16, align 4
  %269 = load %struct.rar*, %struct.rar** %10, align 8
  %270 = getelementptr inbounds %struct.rar, %struct.rar* %269, i32 0, i32 13
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %268, %271
  br i1 %272, label %273, label %281

273:                                              ; preds = %267
  %274 = load %struct.rar*, %struct.rar** %10, align 8
  %275 = load i32, i32* %16, align 4
  %276 = call i32 @lzss_emit_literal(%struct.rar* %274, i32 %275)
  %277 = load %struct.rar*, %struct.rar** %10, align 8
  %278 = getelementptr inbounds %struct.rar, %struct.rar* %277, i32 0, i32 10
  %279 = load i64, i64* %278, align 8
  %280 = add i64 %279, 1
  store i64 %280, i64* %278, align 8
  br label %409

281:                                              ; preds = %267
  %282 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @__archive_ppmd7_functions, i32 0, i32 0), align 8
  %283 = load %struct.rar*, %struct.rar** %10, align 8
  %284 = getelementptr inbounds %struct.rar, %struct.rar* %283, i32 0, i32 16
  %285 = load %struct.rar*, %struct.rar** %10, align 8
  %286 = getelementptr inbounds %struct.rar, %struct.rar* %285, i32 0, i32 15
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 0
  %288 = call i32 %282(i32* %284, i32* %287)
  store i32 %288, i32* %17, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %281
  %291 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %292 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %291, i32 0, i32 0
  %293 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %294 = call i32 @archive_set_error(i32* %292, i32 %293, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %295 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %295, i32* %5, align 4
  br label %533

296:                                              ; preds = %281
  %297 = load i32, i32* %17, align 4
  switch i32 %297, label %400 [
    i32 0, label %298
    i32 2, label %306
    i32 3, label %309
    i32 4, label %315
    i32 5, label %373
  ]

298:                                              ; preds = %296
  %299 = load %struct.rar*, %struct.rar** %10, align 8
  %300 = getelementptr inbounds %struct.rar, %struct.rar* %299, i32 0, i32 12
  store i32 1, i32* %300, align 8
  %301 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %302 = load i8**, i8*** %7, align 8
  %303 = load i64*, i64** %8, align 8
  %304 = load i32*, i32** %9, align 8
  %305 = call i32 @read_data_compressed(%struct.archive_read* %301, i8** %302, i64* %303, i32* %304)
  store i32 %305, i32* %5, align 4
  br label %533

306:                                              ; preds = %296
  %307 = load %struct.rar*, %struct.rar** %10, align 8
  %308 = getelementptr inbounds %struct.rar, %struct.rar* %307, i32 0, i32 0
  store i32 1, i32* %308, align 8
  br label %497

309:                                              ; preds = %296
  %310 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %311 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %310, i32 0, i32 0
  %312 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %313 = call i32 @archive_set_error(i32* %311, i32 %312, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %314 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %314, i32* %5, align 4
  br label %533

315:                                              ; preds = %296
  store i32 0, i32* %18, align 4
  store i32 2, i32* %20, align 4
  br label %316

316:                                              ; preds = %341, %315
  %317 = load i32, i32* %20, align 4
  %318 = icmp sge i32 %317, 0
  br i1 %318, label %319, label %344

319:                                              ; preds = %316
  %320 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @__archive_ppmd7_functions, i32 0, i32 0), align 8
  %321 = load %struct.rar*, %struct.rar** %10, align 8
  %322 = getelementptr inbounds %struct.rar, %struct.rar* %321, i32 0, i32 16
  %323 = load %struct.rar*, %struct.rar** %10, align 8
  %324 = getelementptr inbounds %struct.rar, %struct.rar* %323, i32 0, i32 15
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 0
  %326 = call i32 %320(i32* %322, i32* %325)
  store i32 %326, i32* %17, align 4
  %327 = icmp slt i32 %326, 0
  br i1 %327, label %328, label %334

328:                                              ; preds = %319
  %329 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %330 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %329, i32 0, i32 0
  %331 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %332 = call i32 @archive_set_error(i32* %330, i32 %331, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %333 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %333, i32* %5, align 4
  br label %533

334:                                              ; preds = %319
  %335 = load i32, i32* %17, align 4
  %336 = load i32, i32* %20, align 4
  %337 = mul nsw i32 %336, 8
  %338 = shl i32 %335, %337
  %339 = load i32, i32* %18, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* %18, align 4
  br label %341

341:                                              ; preds = %334
  %342 = load i32, i32* %20, align 4
  %343 = add nsw i32 %342, -1
  store i32 %343, i32* %20, align 4
  br label %316

344:                                              ; preds = %316
  %345 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @__archive_ppmd7_functions, i32 0, i32 0), align 8
  %346 = load %struct.rar*, %struct.rar** %10, align 8
  %347 = getelementptr inbounds %struct.rar, %struct.rar* %346, i32 0, i32 16
  %348 = load %struct.rar*, %struct.rar** %10, align 8
  %349 = getelementptr inbounds %struct.rar, %struct.rar* %348, i32 0, i32 15
  %350 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %349, i32 0, i32 0
  %351 = call i32 %345(i32* %347, i32* %350)
  store i32 %351, i32* %19, align 4
  %352 = icmp slt i32 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %344
  %354 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %355 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %354, i32 0, i32 0
  %356 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %357 = call i32 @archive_set_error(i32* %355, i32 %356, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %358 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %358, i32* %5, align 4
  br label %533

359:                                              ; preds = %344
  %360 = load %struct.rar*, %struct.rar** %10, align 8
  %361 = load i32, i32* %18, align 4
  %362 = add nsw i32 %361, 2
  %363 = load i32, i32* %19, align 4
  %364 = add nsw i32 %363, 32
  %365 = call i32 @lzss_emit_match(%struct.rar* %360, i32 %362, i32 %364)
  %366 = load i32, i32* %19, align 4
  %367 = add nsw i32 %366, 32
  %368 = sext i32 %367 to i64
  %369 = load %struct.rar*, %struct.rar** %10, align 8
  %370 = getelementptr inbounds %struct.rar, %struct.rar* %369, i32 0, i32 10
  %371 = load i64, i64* %370, align 8
  %372 = add i64 %371, %368
  store i64 %372, i64* %370, align 8
  br label %408

373:                                              ; preds = %296
  %374 = load i32 (i32*, i32*)*, i32 (i32*, i32*)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @__archive_ppmd7_functions, i32 0, i32 0), align 8
  %375 = load %struct.rar*, %struct.rar** %10, align 8
  %376 = getelementptr inbounds %struct.rar, %struct.rar* %375, i32 0, i32 16
  %377 = load %struct.rar*, %struct.rar** %10, align 8
  %378 = getelementptr inbounds %struct.rar, %struct.rar* %377, i32 0, i32 15
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 0
  %380 = call i32 %374(i32* %376, i32* %379)
  store i32 %380, i32* %19, align 4
  %381 = icmp slt i32 %380, 0
  br i1 %381, label %382, label %388

382:                                              ; preds = %373
  %383 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %384 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %383, i32 0, i32 0
  %385 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %386 = call i32 @archive_set_error(i32* %384, i32 %385, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %387 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %387, i32* %5, align 4
  br label %533

388:                                              ; preds = %373
  %389 = load %struct.rar*, %struct.rar** %10, align 8
  %390 = load i32, i32* %19, align 4
  %391 = add nsw i32 %390, 4
  %392 = call i32 @lzss_emit_match(%struct.rar* %389, i32 1, i32 %391)
  %393 = load i32, i32* %19, align 4
  %394 = add nsw i32 %393, 4
  %395 = sext i32 %394 to i64
  %396 = load %struct.rar*, %struct.rar** %10, align 8
  %397 = getelementptr inbounds %struct.rar, %struct.rar* %396, i32 0, i32 10
  %398 = load i64, i64* %397, align 8
  %399 = add i64 %398, %395
  store i64 %399, i64* %397, align 8
  br label %408

400:                                              ; preds = %296
  %401 = load %struct.rar*, %struct.rar** %10, align 8
  %402 = load i32, i32* %16, align 4
  %403 = call i32 @lzss_emit_literal(%struct.rar* %401, i32 %402)
  %404 = load %struct.rar*, %struct.rar** %10, align 8
  %405 = getelementptr inbounds %struct.rar, %struct.rar* %404, i32 0, i32 10
  %406 = load i64, i64* %405, align 8
  %407 = add i64 %406, 1
  store i64 %407, i64* %405, align 8
  br label %408

408:                                              ; preds = %400, %388, %359
  br label %409

409:                                              ; preds = %408, %273
  br label %447

410:                                              ; preds = %247
  %411 = load %struct.rar*, %struct.rar** %10, align 8
  %412 = getelementptr inbounds %struct.rar, %struct.rar* %411, i32 0, i32 2
  %413 = load i64, i64* %412, align 8
  %414 = trunc i64 %413 to i32
  store i32 %414, i32* %11, align 4
  %415 = load i32, i32* %11, align 4
  %416 = load %struct.rar*, %struct.rar** %10, align 8
  %417 = getelementptr inbounds %struct.rar, %struct.rar* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = add nsw i32 %415, %418
  store i32 %419, i32* %12, align 4
  %420 = load i32, i32* @INT64_MAX, align 4
  %421 = load %struct.rar*, %struct.rar** %10, align 8
  %422 = getelementptr inbounds %struct.rar, %struct.rar* %421, i32 0, i32 14
  store i32 %420, i32* %422, align 8
  %423 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %424 = load i32, i32* %12, align 4
  %425 = call i32 @expand(%struct.archive_read* %423, i32 %424)
  store i32 %425, i32* %13, align 4
  %426 = icmp slt i32 %425, 0
  br i1 %426, label %427, label %429

427:                                              ; preds = %410
  %428 = load i32, i32* %13, align 4
  store i32 %428, i32* %5, align 4
  br label %533

429:                                              ; preds = %410
  %430 = load i32, i32* %13, align 4
  %431 = load i32, i32* %11, align 4
  %432 = sub nsw i32 %430, %431
  %433 = sext i32 %432 to i64
  %434 = load %struct.rar*, %struct.rar** %10, align 8
  %435 = getelementptr inbounds %struct.rar, %struct.rar* %434, i32 0, i32 10
  store i64 %433, i64* %435, align 8
  %436 = load %struct.rar*, %struct.rar** %10, align 8
  %437 = getelementptr inbounds %struct.rar, %struct.rar* %436, i32 0, i32 10
  %438 = load i64, i64* %437, align 8
  %439 = icmp eq i64 %438, 0
  br i1 %439, label %440, label %446

440:                                              ; preds = %429
  %441 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %442 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %441, i32 0, i32 0
  %443 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %444 = call i32 @archive_set_error(i32* %442, i32 %443, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %445 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %445, i32* %5, align 4
  br label %533

446:                                              ; preds = %429
  br label %447

447:                                              ; preds = %446, %409
  %448 = load %struct.rar*, %struct.rar** %10, align 8
  %449 = getelementptr inbounds %struct.rar, %struct.rar* %448, i32 0, i32 10
  %450 = load i64, i64* %449, align 8
  %451 = load %struct.rar*, %struct.rar** %10, align 8
  %452 = getelementptr inbounds %struct.rar, %struct.rar* %451, i32 0, i32 11
  %453 = load i64, i64* %452, align 8
  %454 = load %struct.rar*, %struct.rar** %10, align 8
  %455 = getelementptr inbounds %struct.rar, %struct.rar* %454, i32 0, i32 4
  %456 = load i64, i64* %455, align 8
  %457 = sub i64 %453, %456
  %458 = icmp ugt i64 %450, %457
  br i1 %458, label %459, label %467

459:                                              ; preds = %447
  %460 = load %struct.rar*, %struct.rar** %10, align 8
  %461 = getelementptr inbounds %struct.rar, %struct.rar* %460, i32 0, i32 11
  %462 = load i64, i64* %461, align 8
  %463 = load %struct.rar*, %struct.rar** %10, align 8
  %464 = getelementptr inbounds %struct.rar, %struct.rar* %463, i32 0, i32 4
  %465 = load i64, i64* %464, align 8
  %466 = sub i64 %462, %465
  store i64 %466, i64* %14, align 8
  br label %471

467:                                              ; preds = %447
  %468 = load %struct.rar*, %struct.rar** %10, align 8
  %469 = getelementptr inbounds %struct.rar, %struct.rar* %468, i32 0, i32 10
  %470 = load i64, i64* %469, align 8
  store i64 %470, i64* %14, align 8
  br label %471

471:                                              ; preds = %467, %459
  %472 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %473 = load i8**, i8*** %7, align 8
  %474 = load %struct.rar*, %struct.rar** %10, align 8
  %475 = getelementptr inbounds %struct.rar, %struct.rar* %474, i32 0, i32 2
  %476 = load i64, i64* %475, align 8
  %477 = trunc i64 %476 to i32
  %478 = load i64, i64* %14, align 8
  %479 = trunc i64 %478 to i32
  %480 = call i32 @copy_from_lzss_window(%struct.archive_read* %472, i8** %473, i32 %477, i32 %479)
  store i32 %480, i32* %15, align 4
  %481 = load i32, i32* %15, align 4
  %482 = load i32, i32* @ARCHIVE_OK, align 4
  %483 = icmp ne i32 %481, %482
  br i1 %483, label %484, label %486

484:                                              ; preds = %471
  %485 = load i32, i32* %15, align 4
  store i32 %485, i32* %5, align 4
  br label %533

486:                                              ; preds = %471
  %487 = load i64, i64* %14, align 8
  %488 = load %struct.rar*, %struct.rar** %10, align 8
  %489 = getelementptr inbounds %struct.rar, %struct.rar* %488, i32 0, i32 2
  %490 = load i64, i64* %489, align 8
  %491 = add i64 %490, %487
  store i64 %491, i64* %489, align 8
  %492 = load i64, i64* %14, align 8
  %493 = load %struct.rar*, %struct.rar** %10, align 8
  %494 = getelementptr inbounds %struct.rar, %struct.rar* %493, i32 0, i32 10
  %495 = load i64, i64* %494, align 8
  %496 = sub i64 %495, %492
  store i64 %496, i64* %494, align 8
  br label %497

497:                                              ; preds = %486, %306, %219
  %498 = load i8**, i8*** %7, align 8
  %499 = load i8*, i8** %498, align 8
  %500 = icmp eq i8* %499, null
  br i1 %500, label %28, label %501

501:                                              ; preds = %497
  %502 = load %struct.rar*, %struct.rar** %10, align 8
  %503 = getelementptr inbounds %struct.rar, %struct.rar* %502, i32 0, i32 4
  store i64 0, i64* %503, align 8
  %504 = load %struct.rar*, %struct.rar** %10, align 8
  %505 = getelementptr inbounds %struct.rar, %struct.rar* %504, i32 0, i32 11
  %506 = load i64, i64* %505, align 8
  %507 = load i64*, i64** %8, align 8
  store i64 %506, i64* %507, align 8
  %508 = load %struct.rar*, %struct.rar** %10, align 8
  %509 = getelementptr inbounds %struct.rar, %struct.rar* %508, i32 0, i32 6
  %510 = load i32, i32* %509, align 8
  %511 = load i32*, i32** %9, align 8
  store i32 %510, i32* %511, align 4
  %512 = load i64*, i64** %8, align 8
  %513 = load i64, i64* %512, align 8
  %514 = load %struct.rar*, %struct.rar** %10, align 8
  %515 = getelementptr inbounds %struct.rar, %struct.rar* %514, i32 0, i32 6
  %516 = load i32, i32* %515, align 8
  %517 = sext i32 %516 to i64
  %518 = add i64 %517, %513
  %519 = trunc i64 %518 to i32
  store i32 %519, i32* %515, align 8
  %520 = load %struct.rar*, %struct.rar** %10, align 8
  %521 = getelementptr inbounds %struct.rar, %struct.rar* %520, i32 0, i32 7
  %522 = load i64, i64* %521, align 8
  %523 = load i8**, i8*** %7, align 8
  %524 = load i8*, i8** %523, align 8
  %525 = load i64*, i64** %8, align 8
  %526 = load i64, i64* %525, align 8
  %527 = trunc i64 %526 to i32
  %528 = call i8* @crc32(i64 %522, i8* %524, i32 %527)
  %529 = ptrtoint i8* %528 to i64
  %530 = load %struct.rar*, %struct.rar** %10, align 8
  %531 = getelementptr inbounds %struct.rar, %struct.rar* %530, i32 0, i32 7
  store i64 %529, i64* %531, align 8
  %532 = load i32, i32* %15, align 4
  store i32 %532, i32* %5, align 4
  br label %533

533:                                              ; preds = %501, %484, %440, %427, %382, %353, %328, %309, %298, %290, %261, %245, %233, %187, %171, %115, %109, %58, %33
  %534 = load i32, i32* %5, align 4
  ret i32 %534
}

declare dso_local i8* @crc32(i64, i8*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @copy_from_lzss_window(%struct.archive_read*, i8**, i32, i32) #1

declare dso_local i32 @rar_br_preparation(%struct.archive_read*, %struct.TYPE_7__*) #1

declare dso_local i32 @parse_codes(%struct.archive_read*) #1

declare dso_local i32 @lzss_emit_literal(%struct.rar*, i32) #1

declare dso_local i32 @lzss_emit_match(%struct.rar*, i32, i32) #1

declare dso_local i32 @expand(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
