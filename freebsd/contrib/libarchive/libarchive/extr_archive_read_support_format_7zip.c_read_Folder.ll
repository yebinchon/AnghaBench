; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_Folder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_Folder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct._7z_folder = type { i32, i32, i32, i32*, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32 }
%struct._7zip = type { i32 }

@UMAX_ENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct._7z_folder*)* @read_Folder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_Folder(%struct.archive_read* %0, %struct._7z_folder* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct._7z_folder*, align 8
  %6 = alloca %struct._7zip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct._7z_folder* %1, %struct._7z_folder** %5, align 8
  %15 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct._7zip*
  store %struct._7zip* %20, %struct._7zip** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %21 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %22 = call i32 @memset(%struct._7z_folder* %21, i32 0, i32 48)
  %23 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %24 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %25 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %24, i32 0, i32 0
  %26 = call i64 @parse_7zip_uint64(%struct.archive_read* %23, i32* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %489

29:                                               ; preds = %2
  %30 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %31 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 4
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %489

35:                                               ; preds = %29
  %36 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %37 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = call i8* @calloc(i64 %39, i32 32)
  %41 = bitcast i8* %40 to %struct.TYPE_5__*
  %42 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %43 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %42, i32 0, i32 7
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %43, align 8
  %44 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %45 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %44, i32 0, i32 7
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = icmp eq %struct.TYPE_5__* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %489

49:                                               ; preds = %35
  store i32 0, i32* %10, align 4
  br label %50

50:                                               ; preds = %265, %49
  %51 = load i32, i32* %10, align 4
  %52 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %53 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ult i32 %51, %54
  br i1 %55, label %56, label %268

56:                                               ; preds = %50
  %57 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %58 = call i8* @header_bytes(%struct.archive_read* %57, i64 1)
  store i8* %58, i8** %7, align 8
  %59 = icmp eq i8* %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i32 -1, i32* %3, align 4
  br label %489

61:                                               ; preds = %56
  %62 = load i8*, i8** %7, align 8
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, 15
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %11, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %69, 16
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i32 0, i32 1
  store i32 %73, i32* %12, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = and i32 %76, 32
  store i32 %77, i32* %13, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %80, 128
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %61
  store i32 -1, i32* %3, align 4
  br label %489

84:                                               ; preds = %61
  %85 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %86 = load i64, i64* %11, align 8
  %87 = call i8* @header_bytes(%struct.archive_read* %85, i64 %86)
  store i8* %87, i8** %7, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  store i32 -1, i32* %3, align 4
  br label %489

90:                                               ; preds = %84
  %91 = load i8*, i8** %7, align 8
  %92 = load i64, i64* %11, align 8
  %93 = call i32 @decode_codec_id(i8* %91, i64 %92)
  %94 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %95 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %94, i32 0, i32 7
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 4
  store i32 %93, i32* %100, align 8
  %101 = load i32, i32* %12, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %90
  %104 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %105 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %104, i32 0, i32 7
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = load i32, i32* %10, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %112 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %111, i32 0, i32 7
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i32, i32* %10, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  br label %167

118:                                              ; preds = %90
  %119 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %120 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %121 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %120, i32 0, i32 7
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = call i64 @parse_7zip_uint64(%struct.archive_read* %119, i32* %126)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %118
  store i32 -1, i32* %3, align 4
  br label %489

130:                                              ; preds = %118
  %131 = load i32, i32* @UMAX_ENTRY, align 4
  %132 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %133 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %132, i32 0, i32 7
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp slt i32 %131, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %130
  store i32 -1, i32* %3, align 4
  br label %489

142:                                              ; preds = %130
  %143 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %144 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %145 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %144, i32 0, i32 7
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = call i64 @parse_7zip_uint64(%struct.archive_read* %143, i32* %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %142
  store i32 -1, i32* %3, align 4
  br label %489

154:                                              ; preds = %142
  %155 = load i32, i32* @UMAX_ENTRY, align 4
  %156 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %157 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %156, i32 0, i32 7
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %155, %163
  br i1 %164, label %165, label %166

165:                                              ; preds = %154
  store i32 -1, i32* %3, align 4
  br label %489

166:                                              ; preds = %154
  br label %167

167:                                              ; preds = %166, %103
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %244

170:                                              ; preds = %167
  %171 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %172 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %173 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %172, i32 0, i32 7
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = zext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = call i64 @parse_7zip_uint64(%struct.archive_read* %171, i32* %178)
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %170
  store i32 -1, i32* %3, align 4
  br label %489

182:                                              ; preds = %170
  %183 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %184 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %185 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %184, i32 0, i32 7
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = call i8* @header_bytes(%struct.archive_read* %183, i64 %192)
  store i8* %193, i8** %7, align 8
  %194 = icmp eq i8* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %182
  store i32 -1, i32* %3, align 4
  br label %489

196:                                              ; preds = %182
  %197 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %198 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %197, i32 0, i32 7
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = call i32* @malloc(i64 %205)
  %207 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %208 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %207, i32 0, i32 7
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %208, align 8
  %210 = load i32, i32* %10, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 3
  store i32* %206, i32** %213, align 8
  %214 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %215 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %214, i32 0, i32 7
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %215, align 8
  %217 = load i32, i32* %10, align 4
  %218 = zext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 3
  %221 = load i32*, i32** %220, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %223, label %224

223:                                              ; preds = %196
  store i32 -1, i32* %3, align 4
  br label %489

224:                                              ; preds = %196
  %225 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %226 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %225, i32 0, i32 7
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = load i32, i32* %10, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = load i8*, i8** %7, align 8
  %234 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %235 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %234, i32 0, i32 7
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i64 %238
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 2
  %241 = load i32, i32* %240, align 8
  %242 = sext i32 %241 to i64
  %243 = call i32 @memcpy(i32* %232, i8* %233, i64 %242)
  br label %244

244:                                              ; preds = %224, %167
  %245 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %246 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %245, i32 0, i32 7
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %246, align 8
  %248 = load i32, i32* %10, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* %8, align 4
  %254 = add nsw i32 %253, %252
  store i32 %254, i32* %8, align 4
  %255 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %256 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %255, i32 0, i32 7
  %257 = load %struct.TYPE_5__*, %struct.TYPE_5__** %256, align 8
  %258 = load i32, i32* %10, align 4
  %259 = zext i32 %258 to i64
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i64 %259
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %9, align 4
  %264 = add nsw i32 %263, %262
  store i32 %264, i32* %9, align 4
  br label %265

265:                                              ; preds = %244
  %266 = load i32, i32* %10, align 4
  %267 = add i32 %266, 1
  store i32 %267, i32* %10, align 4
  br label %50

268:                                              ; preds = %50
  %269 = load i32, i32* %9, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %276, label %271

271:                                              ; preds = %268
  %272 = load i32, i32* %8, align 4
  %273 = load i32, i32* %9, align 4
  %274 = sub nsw i32 %273, 1
  %275 = icmp slt i32 %272, %274
  br i1 %275, label %276, label %277

276:                                              ; preds = %271, %268
  store i32 -1, i32* %3, align 4
  br label %489

277:                                              ; preds = %271
  %278 = load i32, i32* %9, align 4
  %279 = sub nsw i32 %278, 1
  %280 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %281 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %280, i32 0, i32 1
  store i32 %279, i32* %281, align 4
  %282 = load %struct._7zip*, %struct._7zip** %6, align 8
  %283 = getelementptr inbounds %struct._7zip, %struct._7zip* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %286 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = icmp slt i32 %284, %287
  br i1 %288, label %289, label %290

289:                                              ; preds = %277
  store i32 -1, i32* %3, align 4
  br label %489

290:                                              ; preds = %277
  %291 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %292 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = icmp sgt i32 %293, 0
  br i1 %294, label %295, label %310

295:                                              ; preds = %290
  %296 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %297 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = sext i32 %298 to i64
  %300 = call i8* @calloc(i64 %299, i32 8)
  %301 = bitcast i8* %300 to %struct.TYPE_6__*
  %302 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %303 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %302, i32 0, i32 6
  store %struct.TYPE_6__* %301, %struct.TYPE_6__** %303, align 8
  %304 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %305 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %304, i32 0, i32 6
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %305, align 8
  %307 = icmp eq %struct.TYPE_6__* %306, null
  br i1 %307, label %308, label %309

308:                                              ; preds = %295
  store i32 -1, i32* %3, align 4
  br label %489

309:                                              ; preds = %295
  br label %313

310:                                              ; preds = %290
  %311 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %312 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %311, i32 0, i32 6
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %312, align 8
  br label %313

313:                                              ; preds = %310, %309
  store i32 0, i32* %10, align 4
  br label %314

314:                                              ; preds = %369, %313
  %315 = load i32, i32* %10, align 4
  %316 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %317 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp ult i32 %315, %318
  br i1 %319, label %320, label %372

320:                                              ; preds = %314
  %321 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %322 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %323 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %322, i32 0, i32 6
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %323, align 8
  %325 = load i32, i32* %10, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %327, i32 0, i32 0
  %329 = call i64 @parse_7zip_uint64(%struct.archive_read* %321, i32* %328)
  %330 = icmp slt i64 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %320
  store i32 -1, i32* %3, align 4
  br label %489

332:                                              ; preds = %320
  %333 = load i32, i32* @UMAX_ENTRY, align 4
  %334 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %335 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %334, i32 0, i32 6
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %335, align 8
  %337 = load i32, i32* %10, align 4
  %338 = zext i32 %337 to i64
  %339 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i64 %338
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 4
  %342 = icmp slt i32 %333, %341
  br i1 %342, label %343, label %344

343:                                              ; preds = %332
  store i32 -1, i32* %3, align 4
  br label %489

344:                                              ; preds = %332
  %345 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %346 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %347 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %346, i32 0, i32 6
  %348 = load %struct.TYPE_6__*, %struct.TYPE_6__** %347, align 8
  %349 = load i32, i32* %10, align 4
  %350 = zext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %351, i32 0, i32 1
  %353 = call i64 @parse_7zip_uint64(%struct.archive_read* %345, i32* %352)
  %354 = icmp slt i64 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %344
  store i32 -1, i32* %3, align 4
  br label %489

356:                                              ; preds = %344
  %357 = load i32, i32* @UMAX_ENTRY, align 4
  %358 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %359 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %358, i32 0, i32 6
  %360 = load %struct.TYPE_6__*, %struct.TYPE_6__** %359, align 8
  %361 = load i32, i32* %10, align 4
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 1
  %365 = load i32, i32* %364, align 4
  %366 = icmp slt i32 %357, %365
  br i1 %366, label %367, label %368

367:                                              ; preds = %356
  store i32 -1, i32* %3, align 4
  br label %489

368:                                              ; preds = %356
  br label %369

369:                                              ; preds = %368
  %370 = load i32, i32* %10, align 4
  %371 = add i32 %370, 1
  store i32 %371, i32* %10, align 4
  br label %314

372:                                              ; preds = %314
  %373 = load i32, i32* %8, align 4
  %374 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %375 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %374, i32 0, i32 1
  %376 = load i32, i32* %375, align 4
  %377 = sub nsw i32 %373, %376
  %378 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %379 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %378, i32 0, i32 2
  store i32 %377, i32* %379, align 8
  %380 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %381 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 8
  %383 = sext i32 %382 to i64
  %384 = call i8* @calloc(i64 %383, i32 4)
  %385 = bitcast i8* %384 to i32*
  %386 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %387 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %386, i32 0, i32 3
  store i32* %385, i32** %387, align 8
  %388 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %389 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %388, i32 0, i32 3
  %390 = load i32*, i32** %389, align 8
  %391 = icmp eq i32* %390, null
  br i1 %391, label %392, label %393

392:                                              ; preds = %372
  store i32 -1, i32* %3, align 4
  br label %489

393:                                              ; preds = %372
  %394 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %395 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %394, i32 0, i32 2
  %396 = load i32, i32* %395, align 8
  %397 = icmp eq i32 %396, 1
  br i1 %397, label %398, label %448

398:                                              ; preds = %393
  store i32 0, i32* %10, align 4
  br label %399

399:                                              ; preds = %434, %398
  %400 = load i32, i32* %10, align 4
  %401 = load i32, i32* %8, align 4
  %402 = icmp ult i32 %400, %401
  br i1 %402, label %403, label %437

403:                                              ; preds = %399
  store i32 0, i32* %14, align 4
  br label %404

404:                                              ; preds = %423, %403
  %405 = load i32, i32* %14, align 4
  %406 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %407 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %406, i32 0, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = icmp ult i32 %405, %408
  br i1 %409, label %410, label %426

410:                                              ; preds = %404
  %411 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %412 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %411, i32 0, i32 6
  %413 = load %struct.TYPE_6__*, %struct.TYPE_6__** %412, align 8
  %414 = load i32, i32* %14, align 4
  %415 = zext i32 %414 to i64
  %416 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %413, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = load i32, i32* %10, align 4
  %420 = icmp eq i32 %418, %419
  br i1 %420, label %421, label %422

421:                                              ; preds = %410
  br label %426

422:                                              ; preds = %410
  br label %423

423:                                              ; preds = %422
  %424 = load i32, i32* %14, align 4
  %425 = add i32 %424, 1
  store i32 %425, i32* %14, align 4
  br label %404

426:                                              ; preds = %421, %404
  %427 = load i32, i32* %14, align 4
  %428 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %429 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %428, i32 0, i32 1
  %430 = load i32, i32* %429, align 4
  %431 = icmp eq i32 %427, %430
  br i1 %431, label %432, label %433

432:                                              ; preds = %426
  br label %437

433:                                              ; preds = %426
  br label %434

434:                                              ; preds = %433
  %435 = load i32, i32* %10, align 4
  %436 = add i32 %435, 1
  store i32 %436, i32* %10, align 4
  br label %399

437:                                              ; preds = %432, %399
  %438 = load i32, i32* %10, align 4
  %439 = load i32, i32* %8, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %441, label %442

441:                                              ; preds = %437
  store i32 -1, i32* %3, align 4
  br label %489

442:                                              ; preds = %437
  %443 = load i32, i32* %10, align 4
  %444 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %445 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %444, i32 0, i32 3
  %446 = load i32*, i32** %445, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 0
  store i32 %443, i32* %447, align 4
  br label %482

448:                                              ; preds = %393
  store i32 0, i32* %10, align 4
  br label %449

449:                                              ; preds = %478, %448
  %450 = load i32, i32* %10, align 4
  %451 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %452 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %451, i32 0, i32 2
  %453 = load i32, i32* %452, align 8
  %454 = icmp ult i32 %450, %453
  br i1 %454, label %455, label %481

455:                                              ; preds = %449
  %456 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %457 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %458 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %457, i32 0, i32 3
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %10, align 4
  %461 = zext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = call i64 @parse_7zip_uint64(%struct.archive_read* %456, i32* %462)
  %464 = icmp slt i64 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %455
  store i32 -1, i32* %3, align 4
  br label %489

466:                                              ; preds = %455
  %467 = load i32, i32* @UMAX_ENTRY, align 4
  %468 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %469 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %468, i32 0, i32 3
  %470 = load i32*, i32** %469, align 8
  %471 = load i32, i32* %10, align 4
  %472 = zext i32 %471 to i64
  %473 = getelementptr inbounds i32, i32* %470, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = icmp ult i32 %467, %474
  br i1 %475, label %476, label %477

476:                                              ; preds = %466
  store i32 -1, i32* %3, align 4
  br label %489

477:                                              ; preds = %466
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* %10, align 4
  %480 = add i32 %479, 1
  store i32 %480, i32* %10, align 4
  br label %449

481:                                              ; preds = %449
  br label %482

482:                                              ; preds = %481, %442
  %483 = load i32, i32* %8, align 4
  %484 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %485 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %484, i32 0, i32 4
  store i32 %483, i32* %485, align 8
  %486 = load i32, i32* %9, align 4
  %487 = load %struct._7z_folder*, %struct._7z_folder** %5, align 8
  %488 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %487, i32 0, i32 5
  store i32 %486, i32* %488, align 4
  store i32 0, i32* %3, align 4
  br label %489

489:                                              ; preds = %482, %476, %465, %441, %392, %367, %355, %343, %331, %308, %289, %276, %223, %195, %181, %165, %153, %141, %129, %89, %83, %60, %48, %34, %28
  %490 = load i32, i32* %3, align 4
  ret i32 %490
}

declare dso_local i32 @memset(%struct._7z_folder*, i32, i32) #1

declare dso_local i64 @parse_7zip_uint64(%struct.archive_read*, i32*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i8* @header_bytes(%struct.archive_read*, i64) #1

declare dso_local i32 @decode_codec_id(i8*, i64) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
