; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_Header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_Header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct._7z_header_info = type { i64*, i64*, i64*, i64* }
%struct._7zip = type { i64, i64, i8*, %struct._7zip_entry*, %struct._7z_stream_info }
%struct._7zip_entry = type { i8*, i32, i32, i32, i32, i32, i32, i32* }
%struct._7z_stream_info = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, %struct._7z_folder* }
%struct._7z_folder = type { i64 }
%struct.TYPE_4__ = type { i64, i64* }

@kHeader = common dso_local global i8 0, align 1
@kArchiveProperties = common dso_local global i8 0, align 1
@kMainStreamsInfo = common dso_local global i8 0, align 1
@kEnd = common dso_local global i8 0, align 1
@kFilesInfo = common dso_local global i8 0, align 1
@UMAX_ENTRY = common dso_local global i64 0, align 8
@UBUFF_SIZE = common dso_local global i64 0, align 8
@__LA_FALLTHROUGH = common dso_local global i32 0, align 4
@HAS_STREAM = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@CRC32_IS_SET = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i32 0, align 4
@AE_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct._7z_header_info*, i32)* @read_Header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_Header(%struct.archive_read* %0, %struct._7z_header_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca %struct._7z_header_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._7zip*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._7z_folder*, align 8
  %11 = alloca %struct._7z_stream_info*, align 8
  %12 = alloca %struct._7zip_entry*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store %struct._7z_header_info* %1, %struct._7z_header_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %29 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %30 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct._7zip*
  store %struct._7zip* %34, %struct._7zip** %8, align 8
  %35 = load %struct._7zip*, %struct._7zip** %8, align 8
  %36 = getelementptr inbounds %struct._7zip, %struct._7zip* %35, i32 0, i32 4
  store %struct._7z_stream_info* %36, %struct._7z_stream_info** %11, align 8
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %3
  %40 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %41 = call i8* @header_bytes(%struct.archive_read* %40, i64 1)
  store i8* %41, i8** %9, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 -1, i32* %4, align 4
  br label %952

44:                                               ; preds = %39
  %45 = load i8*, i8** %9, align 8
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @kHeader, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp ne i32 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %952

52:                                               ; preds = %44
  br label %53

53:                                               ; preds = %52, %3
  %54 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %55 = call i8* @header_bytes(%struct.archive_read* %54, i64 1)
  store i8* %55, i8** %9, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i32 -1, i32* %4, align 4
  br label %952

58:                                               ; preds = %53
  %59 = load i8*, i8** %9, align 8
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = load i8, i8* @kArchiveProperties, align 1
  %63 = zext i8 %62 to i32
  %64 = icmp eq i32 %61, %63
  br i1 %64, label %65, label %89

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %82, %65
  %67 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %68 = call i8* @header_bytes(%struct.archive_read* %67, i64 1)
  store i8* %68, i8** %9, align 8
  %69 = icmp eq i8* %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 -1, i32* %4, align 4
  br label %952

71:                                               ; preds = %66
  %72 = load i8*, i8** %9, align 8
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %83

77:                                               ; preds = %71
  %78 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %79 = call i64 @parse_7zip_uint64(%struct.archive_read* %78, i64* %19)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  store i32 -1, i32* %4, align 4
  br label %952

82:                                               ; preds = %77
  br label %66

83:                                               ; preds = %76
  %84 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %85 = call i8* @header_bytes(%struct.archive_read* %84, i64 1)
  store i8* %85, i8** %9, align 8
  %86 = icmp eq i8* %85, null
  br i1 %86, label %87, label %88

87:                                               ; preds = %83
  store i32 -1, i32* %4, align 4
  br label %952

88:                                               ; preds = %83
  br label %89

89:                                               ; preds = %88, %58
  %90 = load i8*, i8** %9, align 8
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = load i8, i8* @kMainStreamsInfo, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %98 = load %struct._7zip*, %struct._7zip** %8, align 8
  %99 = getelementptr inbounds %struct._7zip, %struct._7zip* %98, i32 0, i32 4
  %100 = call i64 @read_StreamsInfo(%struct.archive_read* %97, %struct._7z_stream_info* %99)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  store i32 -1, i32* %4, align 4
  br label %952

103:                                              ; preds = %96
  %104 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %105 = call i8* @header_bytes(%struct.archive_read* %104, i64 1)
  store i8* %105, i8** %9, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %103
  store i32 -1, i32* %4, align 4
  br label %952

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %89
  %110 = load i8*, i8** %9, align 8
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = load i8, i8* @kEnd, align 1
  %114 = zext i8 %113 to i32
  %115 = icmp eq i32 %112, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 0, i32* %4, align 4
  br label %952

117:                                              ; preds = %109
  %118 = load i8*, i8** %9, align 8
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load i8, i8* @kFilesInfo, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp ne i32 %120, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 -1, i32* %4, align 4
  br label %952

125:                                              ; preds = %117
  %126 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %127 = load %struct._7zip*, %struct._7zip** %8, align 8
  %128 = getelementptr inbounds %struct._7zip, %struct._7zip* %127, i32 0, i32 0
  %129 = call i64 @parse_7zip_uint64(%struct.archive_read* %126, i64* %128)
  %130 = icmp slt i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 -1, i32* %4, align 4
  br label %952

132:                                              ; preds = %125
  %133 = load i64, i64* @UMAX_ENTRY, align 8
  %134 = load %struct._7zip*, %struct._7zip** %8, align 8
  %135 = getelementptr inbounds %struct._7zip, %struct._7zip* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %132
  store i32 -1, i32* %4, align 4
  br label %952

139:                                              ; preds = %132
  %140 = load %struct._7zip*, %struct._7zip** %8, align 8
  %141 = getelementptr inbounds %struct._7zip, %struct._7zip* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i8* @calloc(i64 %142, i32 40)
  %144 = bitcast i8* %143 to %struct._7zip_entry*
  %145 = load %struct._7zip*, %struct._7zip** %8, align 8
  %146 = getelementptr inbounds %struct._7zip, %struct._7zip* %145, i32 0, i32 3
  store %struct._7zip_entry* %144, %struct._7zip_entry** %146, align 8
  %147 = load %struct._7zip*, %struct._7zip** %8, align 8
  %148 = getelementptr inbounds %struct._7zip, %struct._7zip* %147, i32 0, i32 3
  %149 = load %struct._7zip_entry*, %struct._7zip_entry** %148, align 8
  %150 = icmp eq %struct._7zip_entry* %149, null
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  store i32 -1, i32* %4, align 4
  br label %952

152:                                              ; preds = %139
  %153 = load %struct._7zip*, %struct._7zip** %8, align 8
  %154 = getelementptr inbounds %struct._7zip, %struct._7zip* %153, i32 0, i32 3
  %155 = load %struct._7zip_entry*, %struct._7zip_entry** %154, align 8
  store %struct._7zip_entry* %155, %struct._7zip_entry** %12, align 8
  store i32 0, i32* %17, align 4
  br label %156

156:                                              ; preds = %564, %152
  %157 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %158 = call i8* @header_bytes(%struct.archive_read* %157, i64 1)
  store i8* %158, i8** %9, align 8
  %159 = icmp eq i8* %158, null
  br i1 %159, label %160, label %161

160:                                              ; preds = %156
  store i32 -1, i32* %4, align 4
  br label %952

161:                                              ; preds = %156
  %162 = load i8*, i8** %9, align 8
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  store i32 %164, i32* %20, align 4
  %165 = load i32, i32* %20, align 4
  %166 = load i8, i8* @kEnd, align 1
  %167 = zext i8 %166 to i32
  %168 = icmp eq i32 %165, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %161
  br label %565

170:                                              ; preds = %161
  %171 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %172 = call i64 @parse_7zip_uint64(%struct.archive_read* %171, i64* %21)
  %173 = icmp slt i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  store i32 -1, i32* %4, align 4
  br label %952

175:                                              ; preds = %170
  %176 = load %struct._7zip*, %struct._7zip** %8, align 8
  %177 = getelementptr inbounds %struct._7zip, %struct._7zip* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* %21, align 8
  %180 = icmp slt i64 %178, %179
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  store i32 -1, i32* %4, align 4
  br label %952

182:                                              ; preds = %175
  %183 = load i64, i64* %21, align 8
  store i64 %183, i64* %22, align 8
  %184 = load i32, i32* %20, align 4
  switch i32 %184, label %557 [
    i32 130, label %185
    i32 131, label %240
    i32 135, label %279
    i32 133, label %318
    i32 136, label %318
    i32 129, label %318
    i32 128, label %326
    i32 134, label %466
    i32 132, label %551
  ]

185:                                              ; preds = %182
  %186 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %187 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %186, i32 0, i32 0
  %188 = load i64*, i64** %187, align 8
  %189 = icmp ne i64* %188, null
  br i1 %189, label %190, label %191

190:                                              ; preds = %185
  store i32 -1, i32* %4, align 4
  br label %952

191:                                              ; preds = %185
  %192 = load %struct._7zip*, %struct._7zip** %8, align 8
  %193 = getelementptr inbounds %struct._7zip, %struct._7zip* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = call i8* @calloc(i64 %194, i32 8)
  %196 = bitcast i8* %195 to i64*
  %197 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %198 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %197, i32 0, i32 0
  store i64* %196, i64** %198, align 8
  %199 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %200 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %199, i32 0, i32 0
  %201 = load i64*, i64** %200, align 8
  %202 = icmp eq i64* %201, null
  br i1 %202, label %203, label %204

203:                                              ; preds = %191
  store i32 -1, i32* %4, align 4
  br label %952

204:                                              ; preds = %191
  %205 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %206 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %207 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %206, i32 0, i32 0
  %208 = load i64*, i64** %207, align 8
  %209 = load %struct._7zip*, %struct._7zip** %8, align 8
  %210 = getelementptr inbounds %struct._7zip, %struct._7zip* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @read_Bools(%struct.archive_read* %205, i64* %208, i64 %211)
  %213 = icmp slt i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %204
  store i32 -1, i32* %4, align 4
  br label %952

215:                                              ; preds = %204
  store i32 0, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %216

216:                                              ; preds = %236, %215
  %217 = load i32, i32* %15, align 4
  %218 = zext i32 %217 to i64
  %219 = load %struct._7zip*, %struct._7zip** %8, align 8
  %220 = getelementptr inbounds %struct._7zip, %struct._7zip* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = icmp slt i64 %218, %221
  br i1 %222, label %223, label %239

223:                                              ; preds = %216
  %224 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %225 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %224, i32 0, i32 0
  %226 = load i64*, i64** %225, align 8
  %227 = load i32, i32* %15, align 4
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds i64, i64* %226, i64 %228
  %230 = load i64, i64* %229, align 8
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %223
  %233 = load i32, i32* %17, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %17, align 4
  br label %235

235:                                              ; preds = %232, %223
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %15, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %15, align 4
  br label %216

239:                                              ; preds = %216
  br label %564

240:                                              ; preds = %182
  %241 = load i32, i32* %17, align 4
  %242 = icmp sle i32 %241, 0
  br i1 %242, label %243, label %250

243:                                              ; preds = %240
  %244 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %245 = load i64, i64* %22, align 8
  %246 = call i8* @header_bytes(%struct.archive_read* %244, i64 %245)
  %247 = icmp eq i8* %246, null
  br i1 %247, label %248, label %249

248:                                              ; preds = %243
  store i32 -1, i32* %4, align 4
  br label %952

249:                                              ; preds = %243
  br label %564

250:                                              ; preds = %240
  %251 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %252 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %251, i32 0, i32 1
  %253 = load i64*, i64** %252, align 8
  %254 = icmp ne i64* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %250
  store i32 -1, i32* %4, align 4
  br label %952

256:                                              ; preds = %250
  %257 = load i32, i32* %17, align 4
  %258 = sext i32 %257 to i64
  %259 = call i8* @calloc(i64 %258, i32 8)
  %260 = bitcast i8* %259 to i64*
  %261 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %262 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %261, i32 0, i32 1
  store i64* %260, i64** %262, align 8
  %263 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %264 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %263, i32 0, i32 1
  %265 = load i64*, i64** %264, align 8
  %266 = icmp eq i64* %265, null
  br i1 %266, label %267, label %268

267:                                              ; preds = %256
  store i32 -1, i32* %4, align 4
  br label %952

268:                                              ; preds = %256
  %269 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %270 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %271 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %270, i32 0, i32 1
  %272 = load i64*, i64** %271, align 8
  %273 = load i32, i32* %17, align 4
  %274 = sext i32 %273 to i64
  %275 = call i32 @read_Bools(%struct.archive_read* %269, i64* %272, i64 %274)
  %276 = icmp slt i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %268
  store i32 -1, i32* %4, align 4
  br label %952

278:                                              ; preds = %268
  br label %564

279:                                              ; preds = %182
  %280 = load i32, i32* %17, align 4
  %281 = icmp sle i32 %280, 0
  br i1 %281, label %282, label %289

282:                                              ; preds = %279
  %283 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %284 = load i64, i64* %22, align 8
  %285 = call i8* @header_bytes(%struct.archive_read* %283, i64 %284)
  %286 = icmp eq i8* %285, null
  br i1 %286, label %287, label %288

287:                                              ; preds = %282
  store i32 -1, i32* %4, align 4
  br label %952

288:                                              ; preds = %282
  br label %564

289:                                              ; preds = %279
  %290 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %291 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %290, i32 0, i32 2
  %292 = load i64*, i64** %291, align 8
  %293 = icmp ne i64* %292, null
  br i1 %293, label %294, label %295

294:                                              ; preds = %289
  store i32 -1, i32* %4, align 4
  br label %952

295:                                              ; preds = %289
  %296 = load i32, i32* %17, align 4
  %297 = sext i32 %296 to i64
  %298 = call i8* @calloc(i64 %297, i32 8)
  %299 = bitcast i8* %298 to i64*
  %300 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %301 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %300, i32 0, i32 2
  store i64* %299, i64** %301, align 8
  %302 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %303 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %302, i32 0, i32 2
  %304 = load i64*, i64** %303, align 8
  %305 = icmp eq i64* %304, null
  br i1 %305, label %306, label %307

306:                                              ; preds = %295
  store i32 -1, i32* %4, align 4
  br label %952

307:                                              ; preds = %295
  %308 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %309 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %310 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %309, i32 0, i32 2
  %311 = load i64*, i64** %310, align 8
  %312 = load i32, i32* %17, align 4
  %313 = sext i32 %312 to i64
  %314 = call i32 @read_Bools(%struct.archive_read* %308, i64* %311, i64 %313)
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %307
  store i32 -1, i32* %4, align 4
  br label %952

317:                                              ; preds = %307
  br label %564

318:                                              ; preds = %182, %182, %182
  %319 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %320 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %321 = load i32, i32* %20, align 4
  %322 = call i32 @read_Times(%struct.archive_read* %319, %struct._7z_header_info* %320, i32 %321)
  %323 = icmp slt i32 %322, 0
  br i1 %323, label %324, label %325

324:                                              ; preds = %318
  store i32 -1, i32* %4, align 4
  br label %952

325:                                              ; preds = %318
  br label %564

326:                                              ; preds = %182
  %327 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %328 = call i8* @header_bytes(%struct.archive_read* %327, i64 1)
  store i8* %328, i8** %9, align 8
  %329 = icmp eq i8* %328, null
  br i1 %329, label %330, label %331

330:                                              ; preds = %326
  store i32 -1, i32* %4, align 4
  br label %952

331:                                              ; preds = %326
  %332 = load i64, i64* %22, align 8
  %333 = add i64 %332, -1
  store i64 %333, i64* %22, align 8
  %334 = load i64, i64* %22, align 8
  %335 = and i64 %334, 1
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %344, label %337

337:                                              ; preds = %331
  %338 = load i64, i64* %22, align 8
  %339 = load %struct._7zip*, %struct._7zip** %8, align 8
  %340 = getelementptr inbounds %struct._7zip, %struct._7zip* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = mul nsw i64 %341, 4
  %343 = icmp ult i64 %338, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %337, %331
  store i32 -1, i32* %4, align 4
  br label %952

345:                                              ; preds = %337
  %346 = load %struct._7zip*, %struct._7zip** %8, align 8
  %347 = getelementptr inbounds %struct._7zip, %struct._7zip* %346, i32 0, i32 2
  %348 = load i8*, i8** %347, align 8
  %349 = icmp ne i8* %348, null
  br i1 %349, label %350, label %351

350:                                              ; preds = %345
  store i32 -1, i32* %4, align 4
  br label %952

351:                                              ; preds = %345
  %352 = load i64, i64* %22, align 8
  %353 = call i8* @malloc(i64 %352)
  %354 = load %struct._7zip*, %struct._7zip** %8, align 8
  %355 = getelementptr inbounds %struct._7zip, %struct._7zip* %354, i32 0, i32 2
  store i8* %353, i8** %355, align 8
  %356 = load %struct._7zip*, %struct._7zip** %8, align 8
  %357 = getelementptr inbounds %struct._7zip, %struct._7zip* %356, i32 0, i32 2
  %358 = load i8*, i8** %357, align 8
  %359 = icmp eq i8* %358, null
  br i1 %359, label %360, label %361

360:                                              ; preds = %351
  store i32 -1, i32* %4, align 4
  br label %952

361:                                              ; preds = %351
  %362 = load %struct._7zip*, %struct._7zip** %8, align 8
  %363 = getelementptr inbounds %struct._7zip, %struct._7zip* %362, i32 0, i32 2
  %364 = load i8*, i8** %363, align 8
  store i8* %364, i8** %23, align 8
  %365 = load i64, i64* %22, align 8
  store i64 %365, i64* %25, align 8
  br label %366

366:                                              ; preds = %383, %361
  %367 = load i64, i64* %25, align 8
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %394

369:                                              ; preds = %366
  %370 = load i64, i64* %25, align 8
  %371 = load i64, i64* @UBUFF_SIZE, align 8
  %372 = icmp ugt i64 %370, %371
  br i1 %372, label %373, label %375

373:                                              ; preds = %369
  %374 = load i64, i64* @UBUFF_SIZE, align 8
  store i64 %374, i64* %26, align 8
  br label %377

375:                                              ; preds = %369
  %376 = load i64, i64* %25, align 8
  store i64 %376, i64* %26, align 8
  br label %377

377:                                              ; preds = %375, %373
  %378 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %379 = load i64, i64* %26, align 8
  %380 = call i8* @header_bytes(%struct.archive_read* %378, i64 %379)
  store i8* %380, i8** %9, align 8
  %381 = icmp eq i8* %380, null
  br i1 %381, label %382, label %383

382:                                              ; preds = %377
  store i32 -1, i32* %4, align 4
  br label %952

383:                                              ; preds = %377
  %384 = load i8*, i8** %23, align 8
  %385 = load i8*, i8** %9, align 8
  %386 = load i64, i64* %26, align 8
  %387 = call i32 @memcpy(i8* %384, i8* %385, i64 %386)
  %388 = load i64, i64* %26, align 8
  %389 = load i8*, i8** %23, align 8
  %390 = getelementptr inbounds i8, i8* %389, i64 %388
  store i8* %390, i8** %23, align 8
  %391 = load i64, i64* %26, align 8
  %392 = load i64, i64* %25, align 8
  %393 = sub i64 %392, %391
  store i64 %393, i64* %25, align 8
  br label %366

394:                                              ; preds = %366
  %395 = load %struct._7zip*, %struct._7zip** %8, align 8
  %396 = getelementptr inbounds %struct._7zip, %struct._7zip* %395, i32 0, i32 2
  %397 = load i8*, i8** %396, align 8
  store i8* %397, i8** %23, align 8
  %398 = load i64, i64* %22, align 8
  store i64 %398, i64* %24, align 8
  store i32 0, i32* %15, align 4
  br label %399

399:                                              ; preds = %462, %394
  %400 = load i32, i32* %15, align 4
  %401 = zext i32 %400 to i64
  %402 = load %struct._7zip*, %struct._7zip** %8, align 8
  %403 = getelementptr inbounds %struct._7zip, %struct._7zip* %402, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = icmp slt i64 %401, %404
  br i1 %405, label %406, label %465

406:                                              ; preds = %399
  %407 = load i8*, i8** %23, align 8
  %408 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %409 = load i32, i32* %15, align 4
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %408, i64 %410
  %412 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %411, i32 0, i32 0
  store i8* %407, i8** %412, align 8
  br label %413

413:                                              ; preds = %432, %406
  %414 = load i64, i64* %24, align 8
  %415 = icmp uge i64 %414, 2
  br i1 %415, label %416, label %430

416:                                              ; preds = %413
  %417 = load i8*, i8** %23, align 8
  %418 = getelementptr inbounds i8, i8* %417, i64 0
  %419 = load i8, i8* %418, align 1
  %420 = zext i8 %419 to i32
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %428, label %422

422:                                              ; preds = %416
  %423 = load i8*, i8** %23, align 8
  %424 = getelementptr inbounds i8, i8* %423, i64 1
  %425 = load i8, i8* %424, align 1
  %426 = zext i8 %425 to i32
  %427 = icmp ne i32 %426, 0
  br label %428

428:                                              ; preds = %422, %416
  %429 = phi i1 [ true, %416 ], [ %427, %422 ]
  br label %430

430:                                              ; preds = %428, %413
  %431 = phi i1 [ false, %413 ], [ %429, %428 ]
  br i1 %431, label %432, label %437

432:                                              ; preds = %430
  %433 = load i8*, i8** %23, align 8
  %434 = getelementptr inbounds i8, i8* %433, i64 2
  store i8* %434, i8** %23, align 8
  %435 = load i64, i64* %24, align 8
  %436 = sub i64 %435, 2
  store i64 %436, i64* %24, align 8
  br label %413

437:                                              ; preds = %430
  %438 = load i64, i64* %24, align 8
  %439 = icmp ult i64 %438, 2
  br i1 %439, label %440, label %441

440:                                              ; preds = %437
  store i32 -1, i32* %4, align 4
  br label %952

441:                                              ; preds = %437
  %442 = load i8*, i8** %23, align 8
  %443 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %444 = load i32, i32* %15, align 4
  %445 = zext i32 %444 to i64
  %446 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %443, i64 %445
  %447 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %446, i32 0, i32 0
  %448 = load i8*, i8** %447, align 8
  %449 = ptrtoint i8* %442 to i64
  %450 = ptrtoint i8* %448 to i64
  %451 = sub i64 %449, %450
  %452 = trunc i64 %451 to i32
  %453 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %454 = load i32, i32* %15, align 4
  %455 = zext i32 %454 to i64
  %456 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %453, i64 %455
  %457 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %456, i32 0, i32 1
  store i32 %452, i32* %457, align 8
  %458 = load i8*, i8** %23, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 2
  store i8* %459, i8** %23, align 8
  %460 = load i64, i64* %24, align 8
  %461 = sub i64 %460, 2
  store i64 %461, i64* %24, align 8
  br label %462

462:                                              ; preds = %441
  %463 = load i32, i32* %15, align 4
  %464 = add i32 %463, 1
  store i32 %464, i32* %15, align 4
  br label %399

465:                                              ; preds = %399
  br label %564

466:                                              ; preds = %182
  %467 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %468 = call i8* @header_bytes(%struct.archive_read* %467, i64 2)
  store i8* %468, i8** %9, align 8
  %469 = icmp eq i8* %468, null
  br i1 %469, label %470, label %471

470:                                              ; preds = %466
  store i32 -1, i32* %4, align 4
  br label %952

471:                                              ; preds = %466
  %472 = load i8*, i8** %9, align 8
  %473 = load i8, i8* %472, align 1
  %474 = zext i8 %473 to i32
  store i32 %474, i32* %27, align 4
  %475 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %476 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %475, i32 0, i32 3
  %477 = load i64*, i64** %476, align 8
  %478 = icmp ne i64* %477, null
  br i1 %478, label %479, label %480

479:                                              ; preds = %471
  store i32 -1, i32* %4, align 4
  br label %952

480:                                              ; preds = %471
  %481 = load %struct._7zip*, %struct._7zip** %8, align 8
  %482 = getelementptr inbounds %struct._7zip, %struct._7zip* %481, i32 0, i32 0
  %483 = load i64, i64* %482, align 8
  %484 = call i8* @calloc(i64 %483, i32 8)
  %485 = bitcast i8* %484 to i64*
  %486 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %487 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %486, i32 0, i32 3
  store i64* %485, i64** %487, align 8
  %488 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %489 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %488, i32 0, i32 3
  %490 = load i64*, i64** %489, align 8
  %491 = icmp eq i64* %490, null
  br i1 %491, label %492, label %493

492:                                              ; preds = %480
  store i32 -1, i32* %4, align 4
  br label %952

493:                                              ; preds = %480
  %494 = load i32, i32* %27, align 4
  %495 = icmp ne i32 %494, 0
  br i1 %495, label %496, label %504

496:                                              ; preds = %493
  %497 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %498 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %497, i32 0, i32 3
  %499 = load i64*, i64** %498, align 8
  %500 = load %struct._7zip*, %struct._7zip** %8, align 8
  %501 = getelementptr inbounds %struct._7zip, %struct._7zip* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = call i32 @memset(i64* %499, i32 1, i64 %502)
  br label %516

504:                                              ; preds = %493
  %505 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %506 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %507 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %506, i32 0, i32 3
  %508 = load i64*, i64** %507, align 8
  %509 = load %struct._7zip*, %struct._7zip** %8, align 8
  %510 = getelementptr inbounds %struct._7zip, %struct._7zip* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = call i32 @read_Bools(%struct.archive_read* %505, i64* %508, i64 %511)
  %513 = icmp slt i32 %512, 0
  br i1 %513, label %514, label %515

514:                                              ; preds = %504
  store i32 -1, i32* %4, align 4
  br label %952

515:                                              ; preds = %504
  br label %516

516:                                              ; preds = %515, %496
  store i32 0, i32* %15, align 4
  br label %517

517:                                              ; preds = %547, %516
  %518 = load i32, i32* %15, align 4
  %519 = zext i32 %518 to i64
  %520 = load %struct._7zip*, %struct._7zip** %8, align 8
  %521 = getelementptr inbounds %struct._7zip, %struct._7zip* %520, i32 0, i32 0
  %522 = load i64, i64* %521, align 8
  %523 = icmp slt i64 %519, %522
  br i1 %523, label %524, label %550

524:                                              ; preds = %517
  %525 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %526 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %525, i32 0, i32 3
  %527 = load i64*, i64** %526, align 8
  %528 = load i32, i32* %15, align 4
  %529 = zext i32 %528 to i64
  %530 = getelementptr inbounds i64, i64* %527, i64 %529
  %531 = load i64, i64* %530, align 8
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %546

533:                                              ; preds = %524
  %534 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %535 = call i8* @header_bytes(%struct.archive_read* %534, i64 4)
  store i8* %535, i8** %9, align 8
  %536 = icmp eq i8* %535, null
  br i1 %536, label %537, label %538

537:                                              ; preds = %533
  store i32 -1, i32* %4, align 4
  br label %952

538:                                              ; preds = %533
  %539 = load i8*, i8** %9, align 8
  %540 = call i32 @archive_le32dec(i8* %539)
  %541 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %542 = load i32, i32* %15, align 4
  %543 = zext i32 %542 to i64
  %544 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %541, i64 %543
  %545 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %544, i32 0, i32 2
  store i32 %540, i32* %545, align 4
  br label %546

546:                                              ; preds = %538, %524
  br label %547

547:                                              ; preds = %546
  %548 = load i32, i32* %15, align 4
  %549 = add i32 %548, 1
  store i32 %549, i32* %15, align 4
  br label %517

550:                                              ; preds = %517
  br label %564

551:                                              ; preds = %182
  %552 = load i64, i64* %22, align 8
  %553 = icmp eq i64 %552, 0
  br i1 %553, label %554, label %555

554:                                              ; preds = %551
  br label %564

555:                                              ; preds = %551
  %556 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %557

557:                                              ; preds = %182, %555
  %558 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %559 = load i64, i64* %22, align 8
  %560 = call i8* @header_bytes(%struct.archive_read* %558, i64 %559)
  %561 = icmp eq i8* %560, null
  br i1 %561, label %562, label %563

562:                                              ; preds = %557
  store i32 -1, i32* %4, align 4
  br label %952

563:                                              ; preds = %557
  br label %564

564:                                              ; preds = %563, %554, %550, %465, %325, %317, %288, %278, %249, %239
  br label %156

565:                                              ; preds = %169
  %566 = load %struct._7z_stream_info*, %struct._7z_stream_info** %11, align 8
  %567 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %567, i32 0, i32 1
  %569 = load %struct._7z_folder*, %struct._7z_folder** %568, align 8
  store %struct._7z_folder* %569, %struct._7z_folder** %10, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %14, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %15, align 4
  br label %570

570:                                              ; preds = %948, %565
  %571 = load i32, i32* %15, align 4
  %572 = zext i32 %571 to i64
  %573 = load %struct._7zip*, %struct._7zip** %8, align 8
  %574 = getelementptr inbounds %struct._7zip, %struct._7zip* %573, i32 0, i32 0
  %575 = load i64, i64* %574, align 8
  %576 = icmp slt i64 %572, %575
  br i1 %576, label %577, label %951

577:                                              ; preds = %570
  %578 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %579 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %578, i32 0, i32 0
  %580 = load i64*, i64** %579, align 8
  %581 = icmp eq i64* %580, null
  br i1 %581, label %591, label %582

582:                                              ; preds = %577
  %583 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %584 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %583, i32 0, i32 0
  %585 = load i64*, i64** %584, align 8
  %586 = load i32, i32* %15, align 4
  %587 = zext i32 %586 to i64
  %588 = getelementptr inbounds i64, i64* %585, i64 %587
  %589 = load i64, i64* %588, align 8
  %590 = icmp eq i64 %589, 0
  br i1 %590, label %591, label %600

591:                                              ; preds = %582, %577
  %592 = load i32, i32* @HAS_STREAM, align 4
  %593 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %594 = load i32, i32* %15, align 4
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %593, i64 %595
  %597 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %596, i32 0, i32 3
  %598 = load i32, i32* %597, align 8
  %599 = or i32 %598, %592
  store i32 %599, i32* %597, align 8
  br label %600

600:                                              ; preds = %591, %582
  %601 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %602 = load i32, i32* %15, align 4
  %603 = zext i32 %602 to i64
  %604 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %601, i64 %603
  %605 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %604, i32 0, i32 2
  %606 = load i32, i32* %605, align 4
  %607 = ashr i32 %606, 16
  %608 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %609 = load i32, i32* %15, align 4
  %610 = zext i32 %609 to i64
  %611 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %608, i64 %610
  %612 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %611, i32 0, i32 4
  store i32 %607, i32* %612, align 4
  %613 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %614 = load i32, i32* %15, align 4
  %615 = zext i32 %614 to i64
  %616 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %613, i64 %615
  %617 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %616, i32 0, i32 3
  %618 = load i32, i32* %617, align 8
  %619 = load i32, i32* @HAS_STREAM, align 4
  %620 = and i32 %618, %619
  %621 = icmp ne i32 %620, 0
  br i1 %621, label %622, label %675

622:                                              ; preds = %600
  %623 = load i32, i32* %18, align 4
  %624 = sext i32 %623 to i64
  %625 = load %struct._7z_stream_info*, %struct._7z_stream_info** %11, align 8
  %626 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %625, i32 0, i32 1
  %627 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %626, i32 0, i32 0
  %628 = load i64, i64* %627, align 8
  %629 = icmp uge i64 %624, %628
  br i1 %629, label %630, label %631

630:                                              ; preds = %622
  store i32 -1, i32* %4, align 4
  br label %952

631:                                              ; preds = %622
  %632 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %633 = load i32, i32* %15, align 4
  %634 = zext i32 %633 to i64
  %635 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %632, i64 %634
  %636 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %635, i32 0, i32 4
  %637 = load i32, i32* %636, align 4
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %647

639:                                              ; preds = %631
  %640 = load i32, i32* @AE_IFREG, align 4
  %641 = or i32 %640, 438
  %642 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %643 = load i32, i32* %15, align 4
  %644 = zext i32 %643 to i64
  %645 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %642, i64 %644
  %646 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %645, i32 0, i32 4
  store i32 %641, i32* %646, align 4
  br label %647

647:                                              ; preds = %639, %631
  %648 = load %struct._7z_stream_info*, %struct._7z_stream_info** %11, align 8
  %649 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %648, i32 0, i32 1
  %650 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %649, i32 0, i32 1
  %651 = load i64*, i64** %650, align 8
  %652 = load i32, i32* %18, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i64, i64* %651, i64 %653
  %655 = load i64, i64* %654, align 8
  %656 = icmp ne i64 %655, 0
  br i1 %656, label %657, label %666

657:                                              ; preds = %647
  %658 = load i32, i32* @CRC32_IS_SET, align 4
  %659 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %660 = load i32, i32* %15, align 4
  %661 = zext i32 %660 to i64
  %662 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %659, i64 %661
  %663 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %662, i32 0, i32 3
  %664 = load i32, i32* %663, align 8
  %665 = or i32 %664, %658
  store i32 %665, i32* %663, align 8
  br label %666

666:                                              ; preds = %657, %647
  %667 = load i32, i32* %18, align 4
  %668 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %669 = load i32, i32* %15, align 4
  %670 = zext i32 %669 to i64
  %671 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %668, i64 %670
  %672 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %671, i32 0, i32 5
  store i32 %667, i32* %672, align 8
  %673 = load i32, i32* %18, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %18, align 4
  br label %856

675:                                              ; preds = %600
  %676 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %677 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %676, i32 0, i32 1
  %678 = load i64*, i64** %677, align 8
  %679 = icmp eq i64* %678, null
  br i1 %679, label %680, label %681

680:                                              ; preds = %675
  store i32 1, i32* %28, align 4
  br label %695

681:                                              ; preds = %675
  %682 = load %struct._7z_header_info*, %struct._7z_header_info** %6, align 8
  %683 = getelementptr inbounds %struct._7z_header_info, %struct._7z_header_info* %682, i32 0, i32 1
  %684 = load i64*, i64** %683, align 8
  %685 = load i32, i32* %16, align 4
  %686 = sext i32 %685 to i64
  %687 = getelementptr inbounds i64, i64* %684, i64 %686
  %688 = load i64, i64* %687, align 8
  %689 = icmp ne i64 %688, 0
  br i1 %689, label %690, label %691

690:                                              ; preds = %681
  store i32 0, i32* %28, align 4
  br label %692

691:                                              ; preds = %681
  store i32 1, i32* %28, align 4
  br label %692

692:                                              ; preds = %691, %690
  %693 = load i32, i32* %16, align 4
  %694 = add nsw i32 %693, 1
  store i32 %694, i32* %16, align 4
  br label %695

695:                                              ; preds = %692, %680
  %696 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %697 = load i32, i32* %15, align 4
  %698 = zext i32 %697 to i64
  %699 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %696, i64 %698
  %700 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %699, i32 0, i32 4
  %701 = load i32, i32* %700, align 4
  %702 = icmp eq i32 %701, 0
  br i1 %702, label %703, label %723

703:                                              ; preds = %695
  %704 = load i32, i32* %28, align 4
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %706, label %714

706:                                              ; preds = %703
  %707 = load i32, i32* @AE_IFDIR, align 4
  %708 = or i32 %707, 511
  %709 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %710 = load i32, i32* %15, align 4
  %711 = zext i32 %710 to i64
  %712 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %709, i64 %711
  %713 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %712, i32 0, i32 4
  store i32 %708, i32* %713, align 4
  br label %722

714:                                              ; preds = %703
  %715 = load i32, i32* @AE_IFREG, align 4
  %716 = or i32 %715, 438
  %717 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %718 = load i32, i32* %15, align 4
  %719 = zext i32 %718 to i64
  %720 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %717, i64 %719
  %721 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %720, i32 0, i32 4
  store i32 %716, i32* %721, align 4
  br label %722

722:                                              ; preds = %714, %706
  br label %756

723:                                              ; preds = %695
  %724 = load i32, i32* %28, align 4
  %725 = icmp ne i32 %724, 0
  br i1 %725, label %726, label %755

726:                                              ; preds = %723
  %727 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %728 = load i32, i32* %15, align 4
  %729 = zext i32 %728 to i64
  %730 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %727, i64 %729
  %731 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %730, i32 0, i32 4
  %732 = load i32, i32* %731, align 4
  %733 = load i32, i32* @AE_IFMT, align 4
  %734 = and i32 %732, %733
  %735 = load i32, i32* @AE_IFDIR, align 4
  %736 = icmp ne i32 %734, %735
  br i1 %736, label %737, label %755

737:                                              ; preds = %726
  %738 = load i32, i32* @AE_IFMT, align 4
  %739 = xor i32 %738, -1
  %740 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %741 = load i32, i32* %15, align 4
  %742 = zext i32 %741 to i64
  %743 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %740, i64 %742
  %744 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %743, i32 0, i32 4
  %745 = load i32, i32* %744, align 4
  %746 = and i32 %745, %739
  store i32 %746, i32* %744, align 4
  %747 = load i32, i32* @AE_IFDIR, align 4
  %748 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %749 = load i32, i32* %15, align 4
  %750 = zext i32 %749 to i64
  %751 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %748, i64 %750
  %752 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %751, i32 0, i32 4
  %753 = load i32, i32* %752, align 4
  %754 = or i32 %753, %747
  store i32 %754, i32* %752, align 4
  br label %755

755:                                              ; preds = %737, %726, %723
  br label %756

756:                                              ; preds = %755, %722
  %757 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %758 = load i32, i32* %15, align 4
  %759 = zext i32 %758 to i64
  %760 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %757, i64 %759
  %761 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %760, i32 0, i32 4
  %762 = load i32, i32* %761, align 4
  %763 = load i32, i32* @AE_IFMT, align 4
  %764 = and i32 %762, %763
  %765 = load i32, i32* @AE_IFDIR, align 4
  %766 = icmp eq i32 %764, %765
  br i1 %766, label %767, label %850

767:                                              ; preds = %756
  %768 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %769 = load i32, i32* %15, align 4
  %770 = zext i32 %769 to i64
  %771 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %768, i64 %770
  %772 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %771, i32 0, i32 1
  %773 = load i32, i32* %772, align 8
  %774 = icmp sge i32 %773, 2
  br i1 %774, label %775, label %850

775:                                              ; preds = %767
  %776 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %777 = load i32, i32* %15, align 4
  %778 = zext i32 %777 to i64
  %779 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %776, i64 %778
  %780 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %779, i32 0, i32 0
  %781 = load i8*, i8** %780, align 8
  %782 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %783 = load i32, i32* %15, align 4
  %784 = zext i32 %783 to i64
  %785 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %782, i64 %784
  %786 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %785, i32 0, i32 1
  %787 = load i32, i32* %786, align 8
  %788 = sub nsw i32 %787, 2
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds i8, i8* %781, i64 %789
  %791 = load i8, i8* %790, align 1
  %792 = zext i8 %791 to i32
  %793 = icmp ne i32 %792, 47
  br i1 %793, label %813, label %794

794:                                              ; preds = %775
  %795 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %796 = load i32, i32* %15, align 4
  %797 = zext i32 %796 to i64
  %798 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %795, i64 %797
  %799 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %798, i32 0, i32 0
  %800 = load i8*, i8** %799, align 8
  %801 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %802 = load i32, i32* %15, align 4
  %803 = zext i32 %802 to i64
  %804 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %801, i64 %803
  %805 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %804, i32 0, i32 1
  %806 = load i32, i32* %805, align 8
  %807 = sub nsw i32 %806, 1
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds i8, i8* %800, i64 %808
  %810 = load i8, i8* %809, align 1
  %811 = zext i8 %810 to i32
  %812 = icmp ne i32 %811, 0
  br i1 %812, label %813, label %850

813:                                              ; preds = %794, %775
  %814 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %815 = load i32, i32* %15, align 4
  %816 = zext i32 %815 to i64
  %817 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %814, i64 %816
  %818 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %817, i32 0, i32 0
  %819 = load i8*, i8** %818, align 8
  %820 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %821 = load i32, i32* %15, align 4
  %822 = zext i32 %821 to i64
  %823 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %820, i64 %822
  %824 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %823, i32 0, i32 1
  %825 = load i32, i32* %824, align 8
  %826 = sext i32 %825 to i64
  %827 = getelementptr inbounds i8, i8* %819, i64 %826
  store i8 47, i8* %827, align 1
  %828 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %829 = load i32, i32* %15, align 4
  %830 = zext i32 %829 to i64
  %831 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %828, i64 %830
  %832 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %831, i32 0, i32 0
  %833 = load i8*, i8** %832, align 8
  %834 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %835 = load i32, i32* %15, align 4
  %836 = zext i32 %835 to i64
  %837 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %834, i64 %836
  %838 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %837, i32 0, i32 1
  %839 = load i32, i32* %838, align 8
  %840 = add nsw i32 %839, 1
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds i8, i8* %833, i64 %841
  store i8 0, i8* %842, align 1
  %843 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %844 = load i32, i32* %15, align 4
  %845 = zext i32 %844 to i64
  %846 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %843, i64 %845
  %847 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %846, i32 0, i32 1
  %848 = load i32, i32* %847, align 8
  %849 = add nsw i32 %848, 2
  store i32 %849, i32* %847, align 8
  br label %850

850:                                              ; preds = %813, %794, %767, %756
  %851 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %852 = load i32, i32* %15, align 4
  %853 = zext i32 %852 to i64
  %854 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %851, i64 %853
  %855 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %854, i32 0, i32 5
  store i32 -1, i32* %855, align 8
  br label %856

856:                                              ; preds = %850, %666
  %857 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %858 = load i32, i32* %15, align 4
  %859 = zext i32 %858 to i64
  %860 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %857, i64 %859
  %861 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %860, i32 0, i32 2
  %862 = load i32, i32* %861, align 4
  %863 = and i32 %862, 1
  %864 = icmp ne i32 %863, 0
  br i1 %864, label %865, label %873

865:                                              ; preds = %856
  %866 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %867 = load i32, i32* %15, align 4
  %868 = zext i32 %867 to i64
  %869 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %866, i64 %868
  %870 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %869, i32 0, i32 4
  %871 = load i32, i32* %870, align 4
  %872 = and i32 %871, -147
  store i32 %872, i32* %870, align 4
  br label %873

873:                                              ; preds = %865, %856
  %874 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %875 = load i32, i32* %15, align 4
  %876 = zext i32 %875 to i64
  %877 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %874, i64 %876
  %878 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %877, i32 0, i32 3
  %879 = load i32, i32* %878, align 8
  %880 = load i32, i32* @HAS_STREAM, align 4
  %881 = and i32 %879, %880
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %883, label %892

883:                                              ; preds = %873
  %884 = load i64, i64* %14, align 8
  %885 = icmp eq i64 %884, 0
  br i1 %885, label %886, label %892

886:                                              ; preds = %883
  %887 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %888 = load i32, i32* %15, align 4
  %889 = zext i32 %888 to i64
  %890 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %887, i64 %889
  %891 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %890, i32 0, i32 6
  store i32 -1, i32* %891, align 4
  br label %948

892:                                              ; preds = %883, %873
  %893 = load i64, i64* %14, align 8
  %894 = icmp eq i64 %893, 0
  br i1 %894, label %895, label %916

895:                                              ; preds = %892
  br label %896

896:                                              ; preds = %912, %895
  %897 = load i64, i64* %13, align 8
  %898 = load %struct._7z_stream_info*, %struct._7z_stream_info** %11, align 8
  %899 = getelementptr inbounds %struct._7z_stream_info, %struct._7z_stream_info* %898, i32 0, i32 0
  %900 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %899, i32 0, i32 0
  %901 = load i64, i64* %900, align 8
  %902 = icmp sge i64 %897, %901
  br i1 %902, label %903, label %904

903:                                              ; preds = %896
  store i32 -1, i32* %4, align 4
  br label %952

904:                                              ; preds = %896
  %905 = load %struct._7z_folder*, %struct._7z_folder** %10, align 8
  %906 = load i64, i64* %13, align 8
  %907 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %905, i64 %906
  %908 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %907, i32 0, i32 0
  %909 = load i64, i64* %908, align 8
  %910 = icmp ne i64 %909, 0
  br i1 %910, label %911, label %912

911:                                              ; preds = %904
  br label %915

912:                                              ; preds = %904
  %913 = load i64, i64* %13, align 8
  %914 = add nsw i64 %913, 1
  store i64 %914, i64* %13, align 8
  br label %896

915:                                              ; preds = %911
  br label %916

916:                                              ; preds = %915, %892
  %917 = load i64, i64* %13, align 8
  %918 = trunc i64 %917 to i32
  %919 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %920 = load i32, i32* %15, align 4
  %921 = zext i32 %920 to i64
  %922 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %919, i64 %921
  %923 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %922, i32 0, i32 6
  store i32 %918, i32* %923, align 4
  %924 = load %struct._7zip_entry*, %struct._7zip_entry** %12, align 8
  %925 = load i32, i32* %15, align 4
  %926 = zext i32 %925 to i64
  %927 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %924, i64 %926
  %928 = getelementptr inbounds %struct._7zip_entry, %struct._7zip_entry* %927, i32 0, i32 3
  %929 = load i32, i32* %928, align 8
  %930 = load i32, i32* @HAS_STREAM, align 4
  %931 = and i32 %929, %930
  %932 = icmp eq i32 %931, 0
  br i1 %932, label %933, label %934

933:                                              ; preds = %916
  br label %948

934:                                              ; preds = %916
  %935 = load i64, i64* %14, align 8
  %936 = add nsw i64 %935, 1
  store i64 %936, i64* %14, align 8
  %937 = load i64, i64* %14, align 8
  %938 = load %struct._7z_folder*, %struct._7z_folder** %10, align 8
  %939 = load i64, i64* %13, align 8
  %940 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %938, i64 %939
  %941 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %940, i32 0, i32 0
  %942 = load i64, i64* %941, align 8
  %943 = icmp sge i64 %937, %942
  br i1 %943, label %944, label %947

944:                                              ; preds = %934
  %945 = load i64, i64* %13, align 8
  %946 = add nsw i64 %945, 1
  store i64 %946, i64* %13, align 8
  store i64 0, i64* %14, align 8
  br label %947

947:                                              ; preds = %944, %934
  br label %948

948:                                              ; preds = %947, %933, %886
  %949 = load i32, i32* %15, align 4
  %950 = add i32 %949, 1
  store i32 %950, i32* %15, align 4
  br label %570

951:                                              ; preds = %570
  store i32 0, i32* %4, align 4
  br label %952

952:                                              ; preds = %951, %903, %630, %562, %537, %514, %492, %479, %470, %440, %382, %360, %350, %344, %330, %324, %316, %306, %294, %287, %277, %267, %255, %248, %214, %203, %190, %181, %174, %160, %151, %138, %131, %124, %116, %107, %102, %87, %81, %70, %57, %51, %43
  %953 = load i32, i32* %4, align 4
  ret i32 %953
}

declare dso_local i8* @header_bytes(%struct.archive_read*, i64) #1

declare dso_local i64 @parse_7zip_uint64(%struct.archive_read*, i64*) #1

declare dso_local i64 @read_StreamsInfo(%struct.archive_read*, %struct._7z_stream_info*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @read_Bools(%struct.archive_read*, i64*, i64) #1

declare dso_local i32 @read_Times(%struct.archive_read*, %struct._7z_header_info*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i32 @archive_le32dec(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
