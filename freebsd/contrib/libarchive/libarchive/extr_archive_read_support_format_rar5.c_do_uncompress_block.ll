; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_do_uncompress_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_do_uncompress_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.compressed_block_header }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i64, i32, i32*, i32, i32, i32, i64*, i32 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.compressed_block_header = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to decode the code length\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to decode the distance slot\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Distance pointer overflow\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Unsupported block code: 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i64*)* @do_uncompress_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_uncompress_block(%struct.archive_read* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.rar5*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.compressed_block_header*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i64* %1, i64** %5, align 8
  %24 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %25 = call %struct.rar5* @get_context(%struct.archive_read* %24)
  store %struct.rar5* %25, %struct.rar5** %6, align 8
  %26 = load %struct.rar5*, %struct.rar5** %6, align 8
  %27 = getelementptr inbounds %struct.rar5, %struct.rar5* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %9, align 8
  %30 = load %struct.rar5*, %struct.rar5** %6, align 8
  %31 = getelementptr inbounds %struct.rar5, %struct.rar5* %30, i32 0, i32 2
  store %struct.compressed_block_header* %31, %struct.compressed_block_header** %10, align 8
  %32 = load %struct.compressed_block_header*, %struct.compressed_block_header** %10, align 8
  %33 = call i64 @bf_bit_size(%struct.compressed_block_header* %32)
  %34 = add nsw i64 1, %33
  store i64 %34, i64* %11, align 8
  br label %35

35:                                               ; preds = %2, %99, %281, %294, %322, %359
  %36 = load %struct.rar5*, %struct.rar5** %6, align 8
  %37 = getelementptr inbounds %struct.rar5, %struct.rar5* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rar5*, %struct.rar5** %6, align 8
  %41 = getelementptr inbounds %struct.rar5, %struct.rar5* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %39, %43
  %45 = load %struct.rar5*, %struct.rar5** %6, align 8
  %46 = getelementptr inbounds %struct.rar5, %struct.rar5* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = ashr i32 %48, 1
  %50 = icmp sgt i32 %44, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %35
  br label %371

52:                                               ; preds = %35
  %53 = load %struct.rar5*, %struct.rar5** %6, align 8
  %54 = getelementptr inbounds %struct.rar5, %struct.rar5* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.rar5*, %struct.rar5** %6, align 8
  %58 = getelementptr inbounds %struct.rar5, %struct.rar5* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, 1
  %62 = icmp sgt i32 %56, %61
  br i1 %62, label %81, label %63

63:                                               ; preds = %52
  %64 = load %struct.rar5*, %struct.rar5** %6, align 8
  %65 = getelementptr inbounds %struct.rar5, %struct.rar5* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.rar5*, %struct.rar5** %6, align 8
  %69 = getelementptr inbounds %struct.rar5, %struct.rar5* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = sub nsw i32 %71, 1
  %73 = icmp eq i32 %67, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load %struct.rar5*, %struct.rar5** %6, align 8
  %76 = getelementptr inbounds %struct.rar5, %struct.rar5* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = icmp sge i64 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %74, %52
  %82 = load %struct.rar5*, %struct.rar5** %6, align 8
  %83 = getelementptr inbounds %struct.rar5, %struct.rar5* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 5
  store i32 1, i32* %84, align 8
  br label %371

85:                                               ; preds = %74, %63
  %86 = load i32, i32* @ARCHIVE_OK, align 4
  %87 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %88 = load %struct.rar5*, %struct.rar5** %6, align 8
  %89 = getelementptr inbounds %struct.rar5, %struct.rar5* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 13
  %91 = load i64*, i64** %5, align 8
  %92 = call i32 @decode_number(%struct.archive_read* %87, i32* %90, i64* %91, i32* %7)
  %93 = icmp ne i32 %86, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %95, i32* %3, align 4
  br label %373

96:                                               ; preds = %85
  %97 = load i32, i32* %7, align 4
  %98 = icmp slt i32 %97, 256
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  %100 = load %struct.rar5*, %struct.rar5** %6, align 8
  %101 = getelementptr inbounds %struct.rar5, %struct.rar5* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.rar5*, %struct.rar5** %6, align 8
  %105 = getelementptr inbounds %struct.rar5, %struct.rar5* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %106, align 8
  %109 = sext i32 %107 to i64
  %110 = add i64 %103, %109
  store i64 %110, i64* %12, align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = load %struct.rar5*, %struct.rar5** %6, align 8
  %114 = getelementptr inbounds %struct.rar5, %struct.rar5* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 12
  %116 = load i64*, i64** %115, align 8
  %117 = load i64, i64* %12, align 8
  %118 = load i64, i64* %9, align 8
  %119 = and i64 %117, %118
  %120 = getelementptr inbounds i64, i64* %116, i64 %119
  store i64 %112, i64* %120, align 8
  br label %35

121:                                              ; preds = %96
  %122 = load i32, i32* %7, align 4
  %123 = icmp sge i32 %122, 262
  br i1 %123, label %124, label %282

124:                                              ; preds = %121
  %125 = load %struct.rar5*, %struct.rar5** %6, align 8
  %126 = load i64*, i64** %5, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %127, 262
  %129 = call i32 @decode_code_length(%struct.rar5* %125, i64* %126, i32 %128)
  store i32 %129, i32* %14, align 4
  store i32 1, i32* %16, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %138

132:                                              ; preds = %124
  %133 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %134 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %133, i32 0, i32 0
  %135 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %136 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %134, i32 %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %137 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %137, i32* %3, align 4
  br label %373

138:                                              ; preds = %124
  %139 = load i32, i32* @ARCHIVE_OK, align 4
  %140 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %141 = load %struct.rar5*, %struct.rar5** %6, align 8
  %142 = getelementptr inbounds %struct.rar5, %struct.rar5* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 11
  %144 = load i64*, i64** %5, align 8
  %145 = call i32 @decode_number(%struct.archive_read* %140, i32* %143, i64* %144, i32* %13)
  %146 = icmp ne i32 %139, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %138
  %148 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %149 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %148, i32 0, i32 0
  %150 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %151 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %149, i32 %150, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %152 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %152, i32* %3, align 4
  br label %373

153:                                              ; preds = %138
  %154 = load i32, i32* %13, align 4
  %155 = icmp slt i32 %154, 4
  br i1 %155, label %156, label %160

156:                                              ; preds = %153
  store i32 0, i32* %15, align 4
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* %16, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %16, align 4
  br label %171

160:                                              ; preds = %153
  %161 = load i32, i32* %13, align 4
  %162 = sdiv i32 %161, 2
  %163 = sub nsw i32 %162, 1
  store i32 %163, i32* %15, align 4
  %164 = load i32, i32* %13, align 4
  %165 = and i32 %164, 1
  %166 = or i32 2, %165
  %167 = load i32, i32* %15, align 4
  %168 = shl i32 %166, %167
  %169 = load i32, i32* %16, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %16, align 4
  br label %171

171:                                              ; preds = %160, %156
  %172 = load i32, i32* %15, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %247

174:                                              ; preds = %171
  %175 = load i32, i32* %15, align 4
  %176 = icmp sge i32 %175, 4
  br i1 %176, label %177, label %233

177:                                              ; preds = %174
  store i32 0, i32* %17, align 4
  %178 = load i32, i32* %15, align 4
  %179 = icmp sgt i32 %178, 4
  br i1 %179, label %180, label %201

180:                                              ; preds = %177
  %181 = load i32, i32* @ARCHIVE_OK, align 4
  %182 = load %struct.rar5*, %struct.rar5** %6, align 8
  %183 = load i64*, i64** %5, align 8
  %184 = call i32 @read_bits_32(%struct.rar5* %182, i64* %183, i32* %17)
  %185 = icmp ne i32 %181, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %180
  %187 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %187, i32* %3, align 4
  br label %373

188:                                              ; preds = %180
  %189 = load %struct.rar5*, %struct.rar5** %6, align 8
  %190 = load i32, i32* %15, align 4
  %191 = sub nsw i32 %190, 4
  %192 = call i32 @skip_bits(%struct.rar5* %189, i32 %191)
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %15, align 4
  %195 = sub nsw i32 36, %194
  %196 = ashr i32 %193, %195
  %197 = shl i32 %196, 4
  store i32 %197, i32* %17, align 4
  %198 = load i32, i32* %17, align 4
  %199 = load i32, i32* %16, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %16, align 4
  br label %201

201:                                              ; preds = %188, %177
  %202 = load i32, i32* @ARCHIVE_OK, align 4
  %203 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %204 = load %struct.rar5*, %struct.rar5** %6, align 8
  %205 = getelementptr inbounds %struct.rar5, %struct.rar5* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %205, i32 0, i32 10
  %207 = load i64*, i64** %5, align 8
  %208 = call i32 @decode_number(%struct.archive_read* %203, i32* %206, i64* %207, i32* %18)
  %209 = icmp ne i32 %202, %208
  br i1 %209, label %210, label %216

210:                                              ; preds = %201
  %211 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %212 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %211, i32 0, i32 0
  %213 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %214 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %212, i32 %213, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %215 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %215, i32* %3, align 4
  br label %373

216:                                              ; preds = %201
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* @INT_MAX, align 4
  %219 = load i32, i32* %18, align 4
  %220 = sub nsw i32 %218, %219
  %221 = sub nsw i32 %220, 1
  %222 = icmp sge i32 %217, %221
  br i1 %222, label %223, label %229

223:                                              ; preds = %216
  %224 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %225 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %224, i32 0, i32 0
  %226 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %227 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %225, i32 %226, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %228 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %228, i32* %3, align 4
  br label %373

229:                                              ; preds = %216
  %230 = load i32, i32* %18, align 4
  %231 = load i32, i32* %16, align 4
  %232 = add nsw i32 %231, %230
  store i32 %232, i32* %16, align 4
  br label %246

233:                                              ; preds = %174
  %234 = load i32, i32* @ARCHIVE_OK, align 4
  %235 = load %struct.rar5*, %struct.rar5** %6, align 8
  %236 = load i64*, i64** %5, align 8
  %237 = load i32, i32* %15, align 4
  %238 = call i32 @read_consume_bits(%struct.rar5* %235, i64* %236, i32 %237, i32* %19)
  %239 = icmp ne i32 %234, %238
  br i1 %239, label %240, label %242

240:                                              ; preds = %233
  %241 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %241, i32* %3, align 4
  br label %373

242:                                              ; preds = %233
  %243 = load i32, i32* %19, align 4
  %244 = load i32, i32* %16, align 4
  %245 = add nsw i32 %244, %243
  store i32 %245, i32* %16, align 4
  br label %246

246:                                              ; preds = %242, %229
  br label %247

247:                                              ; preds = %246, %171
  %248 = load i32, i32* %16, align 4
  %249 = icmp sgt i32 %248, 256
  br i1 %249, label %250, label %265

250:                                              ; preds = %247
  %251 = load i32, i32* %14, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %16, align 4
  %254 = icmp sgt i32 %253, 8192
  br i1 %254, label %255, label %264

255:                                              ; preds = %250
  %256 = load i32, i32* %14, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %14, align 4
  %258 = load i32, i32* %16, align 4
  %259 = icmp sgt i32 %258, 262144
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load i32, i32* %14, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %14, align 4
  br label %263

263:                                              ; preds = %260, %255
  br label %264

264:                                              ; preds = %263, %250
  br label %265

265:                                              ; preds = %264, %247
  %266 = load %struct.rar5*, %struct.rar5** %6, align 8
  %267 = load i32, i32* %16, align 4
  %268 = call i32 @dist_cache_push(%struct.rar5* %266, i32 %267)
  %269 = load i32, i32* %14, align 4
  %270 = load %struct.rar5*, %struct.rar5** %6, align 8
  %271 = getelementptr inbounds %struct.rar5, %struct.rar5* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %271, i32 0, i32 7
  store i32 %269, i32* %272, align 8
  %273 = load i32, i32* @ARCHIVE_OK, align 4
  %274 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %16, align 4
  %277 = call i32 @copy_string(%struct.archive_read* %274, i32 %275, i32 %276)
  %278 = icmp ne i32 %273, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %265
  %280 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %280, i32* %3, align 4
  br label %373

281:                                              ; preds = %265
  br label %35

282:                                              ; preds = %121
  %283 = load i32, i32* %7, align 4
  %284 = icmp eq i32 %283, 256
  br i1 %284, label %285, label %295

285:                                              ; preds = %282
  %286 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %287 = load i64*, i64** %5, align 8
  %288 = call i32 @parse_filter(%struct.archive_read* %286, i64* %287)
  store i32 %288, i32* %8, align 4
  %289 = load i32, i32* %8, align 4
  %290 = load i32, i32* @ARCHIVE_OK, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %285
  %293 = load i32, i32* %8, align 4
  store i32 %293, i32* %3, align 4
  br label %373

294:                                              ; preds = %285
  br label %35

295:                                              ; preds = %282
  %296 = load i32, i32* %7, align 4
  %297 = icmp eq i32 %296, 257
  br i1 %297, label %298, label %323

298:                                              ; preds = %295
  %299 = load %struct.rar5*, %struct.rar5** %6, align 8
  %300 = getelementptr inbounds %struct.rar5, %struct.rar5* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %322

304:                                              ; preds = %298
  %305 = load i32, i32* @ARCHIVE_OK, align 4
  %306 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %307 = load %struct.rar5*, %struct.rar5** %6, align 8
  %308 = getelementptr inbounds %struct.rar5, %struct.rar5* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 7
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.rar5*, %struct.rar5** %6, align 8
  %312 = getelementptr inbounds %struct.rar5, %struct.rar5* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %312, i32 0, i32 8
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  %316 = load i32, i32* %315, align 4
  %317 = call i32 @copy_string(%struct.archive_read* %306, i32 %310, i32 %316)
  %318 = icmp ne i32 %305, %317
  br i1 %318, label %319, label %321

319:                                              ; preds = %304
  %320 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %320, i32* %3, align 4
  br label %373

321:                                              ; preds = %304
  br label %322

322:                                              ; preds = %321, %298
  br label %35

323:                                              ; preds = %295
  %324 = load i32, i32* %7, align 4
  %325 = icmp slt i32 %324, 262
  br i1 %325, label %326, label %360

326:                                              ; preds = %323
  %327 = load i32, i32* %7, align 4
  %328 = sub nsw i32 %327, 258
  store i32 %328, i32* %20, align 4
  %329 = load %struct.rar5*, %struct.rar5** %6, align 8
  %330 = load i32, i32* %20, align 4
  %331 = call i32 @dist_cache_touch(%struct.rar5* %329, i32 %330)
  store i32 %331, i32* %21, align 4
  %332 = load i32, i32* @ARCHIVE_OK, align 4
  %333 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %334 = load %struct.rar5*, %struct.rar5** %6, align 8
  %335 = getelementptr inbounds %struct.rar5, %struct.rar5* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %335, i32 0, i32 9
  %337 = load i64*, i64** %5, align 8
  %338 = call i32 @decode_number(%struct.archive_read* %333, i32* %336, i64* %337, i32* %22)
  %339 = icmp ne i32 %332, %338
  br i1 %339, label %340, label %342

340:                                              ; preds = %326
  %341 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %341, i32* %3, align 4
  br label %373

342:                                              ; preds = %326
  %343 = load %struct.rar5*, %struct.rar5** %6, align 8
  %344 = load i64*, i64** %5, align 8
  %345 = load i32, i32* %22, align 4
  %346 = call i32 @decode_code_length(%struct.rar5* %343, i64* %344, i32 %345)
  store i32 %346, i32* %23, align 4
  %347 = load i32, i32* %23, align 4
  %348 = load %struct.rar5*, %struct.rar5** %6, align 8
  %349 = getelementptr inbounds %struct.rar5, %struct.rar5* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %349, i32 0, i32 7
  store i32 %347, i32* %350, align 8
  %351 = load i32, i32* @ARCHIVE_OK, align 4
  %352 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %353 = load i32, i32* %23, align 4
  %354 = load i32, i32* %21, align 4
  %355 = call i32 @copy_string(%struct.archive_read* %352, i32 %353, i32 %354)
  %356 = icmp ne i32 %351, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %342
  %358 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %358, i32* %3, align 4
  br label %373

359:                                              ; preds = %342
  br label %35

360:                                              ; preds = %323
  br label %361

361:                                              ; preds = %360
  br label %362

362:                                              ; preds = %361
  br label %363

363:                                              ; preds = %362
  br label %364

364:                                              ; preds = %363
  %365 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %366 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %365, i32 0, i32 0
  %367 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %368 = load i32, i32* %7, align 4
  %369 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %366, i32 %367, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %368)
  %370 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %370, i32* %3, align 4
  br label %373

371:                                              ; preds = %81, %51
  %372 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %372, i32* %3, align 4
  br label %373

373:                                              ; preds = %371, %364, %357, %340, %319, %292, %279, %240, %223, %210, %186, %147, %132, %94
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i64 @bf_bit_size(%struct.compressed_block_header*) #1

declare dso_local i32 @decode_number(%struct.archive_read*, i32*, i64*, i32*) #1

declare dso_local i32 @decode_code_length(%struct.rar5*, i64*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @read_bits_32(%struct.rar5*, i64*, i32*) #1

declare dso_local i32 @skip_bits(%struct.rar5*, i32) #1

declare dso_local i32 @read_consume_bits(%struct.rar5*, i64*, i32, i32*) #1

declare dso_local i32 @dist_cache_push(%struct.rar5*, i32) #1

declare dso_local i32 @copy_string(%struct.archive_read*, i32, i32) #1

declare dso_local i32 @parse_filter(%struct.archive_read*, i64*) #1

declare dso_local i32 @dist_cache_touch(%struct.rar5*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
