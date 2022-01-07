; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_archive_read_format_rar_seek_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_archive_read_format_rar_seek_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.rar = type { i64, i64, i64, i32, i32, i32, i64, i32, i64, i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64, i64 }

@COMPRESS_METHOD_STORE = common dso_local global i64 0, align 8
@MHD_VOLUME = common dso_local global i32 0, align 4
@FHD_SPLIT_BEFORE = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Attempt to seek past beginning of RAR data block\00", align 1
@ARCHIVE_FAILED = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Error during seek of RAR file\00", align 1
@FHD_SPLIT_AFTER = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"Seeking of compressed RAR files is unsupported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive_read*, i64, i32)* @archive_read_format_rar_seek_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @archive_read_format_rar_seek_data(%struct.archive_read* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rar*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.rar*
  store %struct.rar* %17, %struct.rar** %11, align 8
  %18 = load %struct.rar*, %struct.rar** %11, align 8
  %19 = getelementptr inbounds %struct.rar, %struct.rar* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @COMPRESS_METHOD_STORE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %465

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %34 [
    i32 130, label %25
    i32 129, label %29
    i32 128, label %33
  ]

25:                                               ; preds = %23
  %26 = load %struct.rar*, %struct.rar** %11, align 8
  %27 = getelementptr inbounds %struct.rar, %struct.rar* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  br label %35

29:                                               ; preds = %23
  %30 = load %struct.rar*, %struct.rar** %11, align 8
  %31 = getelementptr inbounds %struct.rar, %struct.rar* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %8, align 8
  br label %35

33:                                               ; preds = %23
  br label %34

34:                                               ; preds = %23, %33
  store i64 0, i64* %8, align 8
  br label %35

35:                                               ; preds = %34, %29, %25
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %8, align 8
  %38 = add nsw i64 %37, %36
  store i64 %38, i64* %8, align 8
  %39 = load i64, i64* %8, align 8
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i64 -1, i64* %4, align 8
  br label %472

42:                                               ; preds = %35
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.rar*, %struct.rar** %11, align 8
  %45 = getelementptr inbounds %struct.rar, %struct.rar* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load i64, i64* %8, align 8
  %50 = load %struct.rar*, %struct.rar** %11, align 8
  %51 = getelementptr inbounds %struct.rar, %struct.rar* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load %struct.rar*, %struct.rar** %11, align 8
  %53 = getelementptr inbounds %struct.rar, %struct.rar* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  br label %55

55:                                               ; preds = %48, %42
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.rar*, %struct.rar** %11, align 8
  %58 = getelementptr inbounds %struct.rar, %struct.rar* %57, i32 0, i32 10
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %8, align 8
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %71, %56
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.rar*, %struct.rar** %11, align 8
  %68 = getelementptr inbounds %struct.rar, %struct.rar* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %65
  %72 = load i32, i32* %10, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %10, align 4
  %74 = load %struct.rar*, %struct.rar** %11, align 8
  %75 = getelementptr inbounds %struct.rar, %struct.rar* %74, i32 0, i32 10
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.rar*, %struct.rar** %11, align 8
  %83 = getelementptr inbounds %struct.rar, %struct.rar* %82, i32 0, i32 10
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sub i32 %85, 1
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = sub nsw i64 %81, %90
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %92, %91
  store i64 %93, i64* %8, align 8
  br label %65

94:                                               ; preds = %65
  %95 = load %struct.rar*, %struct.rar** %11, align 8
  %96 = getelementptr inbounds %struct.rar, %struct.rar* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @MHD_VOLUME, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %372

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %174, %270, %344
  %103 = load i64, i64* %8, align 8
  %104 = load %struct.rar*, %struct.rar** %11, align 8
  %105 = getelementptr inbounds %struct.rar, %struct.rar* %104, i32 0, i32 10
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = load %struct.rar*, %struct.rar** %11, align 8
  %108 = getelementptr inbounds %struct.rar, %struct.rar* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp slt i64 %103, %113
  br i1 %114, label %115, label %224

115:                                              ; preds = %102
  %116 = load %struct.rar*, %struct.rar** %11, align 8
  %117 = getelementptr inbounds %struct.rar, %struct.rar* %116, i32 0, i32 5
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @FHD_SPLIT_BEFORE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %224

122:                                              ; preds = %115
  %123 = load %struct.rar*, %struct.rar** %11, align 8
  %124 = getelementptr inbounds %struct.rar, %struct.rar* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %122
  %128 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %129 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %128, i32 0, i32 0
  %130 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %131 = call i32 @archive_set_error(i32* %129, i32 %130, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %132 = load i64, i64* @ARCHIVE_FAILED, align 8
  store i64 %132, i64* %4, align 8
  br label %472

133:                                              ; preds = %122
  %134 = load %struct.rar*, %struct.rar** %11, align 8
  %135 = getelementptr inbounds %struct.rar, %struct.rar* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = add i32 %136, -1
  store i32 %137, i32* %135, align 8
  %138 = load %struct.rar*, %struct.rar** %11, align 8
  %139 = getelementptr inbounds %struct.rar, %struct.rar* %138, i32 0, i32 10
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load %struct.rar*, %struct.rar** %11, align 8
  %142 = getelementptr inbounds %struct.rar, %struct.rar* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = add i32 %143, 1
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.rar*, %struct.rar** %11, align 8
  %150 = getelementptr inbounds %struct.rar, %struct.rar* %149, i32 0, i32 10
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load %struct.rar*, %struct.rar** %11, align 8
  %153 = getelementptr inbounds %struct.rar, %struct.rar* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = sub nsw i64 %148, %158
  %160 = load i64, i64* %8, align 8
  %161 = sub nsw i64 %160, %159
  store i64 %161, i64* %8, align 8
  %162 = load i64, i64* %8, align 8
  %163 = load %struct.rar*, %struct.rar** %11, align 8
  %164 = getelementptr inbounds %struct.rar, %struct.rar* %163, i32 0, i32 10
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = load %struct.rar*, %struct.rar** %11, align 8
  %167 = getelementptr inbounds %struct.rar, %struct.rar* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp slt i64 %162, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %133
  br label %102

175:                                              ; preds = %133
  %176 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %177 = load %struct.rar*, %struct.rar** %11, align 8
  %178 = getelementptr inbounds %struct.rar, %struct.rar* %177, i32 0, i32 10
  %179 = load %struct.TYPE_4__*, %struct.TYPE_4__** %178, align 8
  %180 = load %struct.rar*, %struct.rar** %11, align 8
  %181 = getelementptr inbounds %struct.rar, %struct.rar* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.rar*, %struct.rar** %11, align 8
  %188 = getelementptr inbounds %struct.rar, %struct.rar* %187, i32 0, i32 10
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %188, align 8
  %190 = load %struct.rar*, %struct.rar** %11, align 8
  %191 = getelementptr inbounds %struct.rar, %struct.rar* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = sub nsw i64 %186, %196
  %198 = call i64 @__archive_read_seek(%struct.archive_read* %176, i64 %197, i32 128)
  store i64 %198, i64* %9, align 8
  %199 = load i64, i64* %9, align 8
  %200 = load i64, i64* @ARCHIVE_OK, align 8
  %201 = icmp slt i64 %199, %200
  br i1 %201, label %202, label %204

202:                                              ; preds = %175
  %203 = load i64, i64* %9, align 8
  store i64 %203, i64* %4, align 8
  br label %472

204:                                              ; preds = %175
  %205 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %206 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %207 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i64 @archive_read_format_rar_read_header(%struct.archive_read* %205, i32 %208)
  store i64 %209, i64* %9, align 8
  %210 = load i64, i64* %9, align 8
  %211 = load i64, i64* @ARCHIVE_OK, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %219

213:                                              ; preds = %204
  %214 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %215 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %214, i32 0, i32 0
  %216 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %217 = call i32 @archive_set_error(i32* %215, i32 %216, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %218 = load i64, i64* @ARCHIVE_FAILED, align 8
  store i64 %218, i64* %4, align 8
  br label %472

219:                                              ; preds = %204
  %220 = load %struct.rar*, %struct.rar** %11, align 8
  %221 = getelementptr inbounds %struct.rar, %struct.rar* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = add i32 %222, -1
  store i32 %223, i32* %221, align 8
  br label %371

224:                                              ; preds = %115, %102
  %225 = load i64, i64* %8, align 8
  %226 = load %struct.rar*, %struct.rar** %11, align 8
  %227 = getelementptr inbounds %struct.rar, %struct.rar* %226, i32 0, i32 10
  %228 = load %struct.TYPE_4__*, %struct.TYPE_4__** %227, align 8
  %229 = load %struct.rar*, %struct.rar** %11, align 8
  %230 = getelementptr inbounds %struct.rar, %struct.rar* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 8
  %232 = zext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i64 %232
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp sgt i64 %225, %235
  br i1 %236, label %237, label %369

237:                                              ; preds = %224
  %238 = load %struct.rar*, %struct.rar** %11, align 8
  %239 = getelementptr inbounds %struct.rar, %struct.rar* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @FHD_SPLIT_AFTER, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %369

244:                                              ; preds = %237
  %245 = load %struct.rar*, %struct.rar** %11, align 8
  %246 = getelementptr inbounds %struct.rar, %struct.rar* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 8
  %248 = add i32 %247, 1
  store i32 %248, i32* %246, align 8
  %249 = load %struct.rar*, %struct.rar** %11, align 8
  %250 = getelementptr inbounds %struct.rar, %struct.rar* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = zext i32 %251 to i64
  %253 = load %struct.rar*, %struct.rar** %11, align 8
  %254 = getelementptr inbounds %struct.rar, %struct.rar* %253, i32 0, i32 6
  %255 = load i64, i64* %254, align 8
  %256 = icmp ult i64 %252, %255
  br i1 %256, label %257, label %295

257:                                              ; preds = %244
  %258 = load i64, i64* %8, align 8
  %259 = load %struct.rar*, %struct.rar** %11, align 8
  %260 = getelementptr inbounds %struct.rar, %struct.rar* %259, i32 0, i32 10
  %261 = load %struct.TYPE_4__*, %struct.TYPE_4__** %260, align 8
  %262 = load %struct.rar*, %struct.rar** %11, align 8
  %263 = getelementptr inbounds %struct.rar, %struct.rar* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = zext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %261, i64 %265
  %267 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %266, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp sgt i64 %258, %268
  br i1 %269, label %270, label %295

270:                                              ; preds = %257
  %271 = load %struct.rar*, %struct.rar** %11, align 8
  %272 = getelementptr inbounds %struct.rar, %struct.rar* %271, i32 0, i32 10
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %272, align 8
  %274 = load %struct.rar*, %struct.rar** %11, align 8
  %275 = getelementptr inbounds %struct.rar, %struct.rar* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %273, i64 %277
  %279 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load %struct.rar*, %struct.rar** %11, align 8
  %282 = getelementptr inbounds %struct.rar, %struct.rar* %281, i32 0, i32 10
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %282, align 8
  %284 = load %struct.rar*, %struct.rar** %11, align 8
  %285 = getelementptr inbounds %struct.rar, %struct.rar* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 8
  %287 = sub i32 %286, 1
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %283, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = sub nsw i64 %280, %291
  %293 = load i64, i64* %8, align 8
  %294 = add nsw i64 %293, %292
  store i64 %294, i64* %8, align 8
  br label %102

295:                                              ; preds = %257, %244
  %296 = load %struct.rar*, %struct.rar** %11, align 8
  %297 = getelementptr inbounds %struct.rar, %struct.rar* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = add i32 %298, -1
  store i32 %299, i32* %297, align 8
  %300 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %301 = load %struct.rar*, %struct.rar** %11, align 8
  %302 = getelementptr inbounds %struct.rar, %struct.rar* %301, i32 0, i32 10
  %303 = load %struct.TYPE_4__*, %struct.TYPE_4__** %302, align 8
  %304 = load %struct.rar*, %struct.rar** %11, align 8
  %305 = getelementptr inbounds %struct.rar, %struct.rar* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = zext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %303, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = call i64 @__archive_read_seek(%struct.archive_read* %300, i64 %310, i32 128)
  store i64 %311, i64* %9, align 8
  %312 = load i64, i64* %9, align 8
  %313 = load i64, i64* @ARCHIVE_OK, align 8
  %314 = icmp slt i64 %312, %313
  br i1 %314, label %315, label %317

315:                                              ; preds = %295
  %316 = load i64, i64* %9, align 8
  store i64 %316, i64* %4, align 8
  br label %472

317:                                              ; preds = %295
  %318 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %319 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %320 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = call i64 @archive_read_format_rar_read_header(%struct.archive_read* %318, i32 %321)
  store i64 %322, i64* %9, align 8
  %323 = load i64, i64* %9, align 8
  %324 = load i64, i64* @ARCHIVE_EOF, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %334

326:                                              ; preds = %317
  %327 = load %struct.rar*, %struct.rar** %11, align 8
  %328 = getelementptr inbounds %struct.rar, %struct.rar* %327, i32 0, i32 7
  store i32 1, i32* %328, align 8
  %329 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %330 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %331 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = call i64 @archive_read_format_rar_read_header(%struct.archive_read* %329, i32 %332)
  store i64 %333, i64* %9, align 8
  br label %334

334:                                              ; preds = %326, %317
  %335 = load i64, i64* %9, align 8
  %336 = load i64, i64* @ARCHIVE_OK, align 8
  %337 = icmp ne i64 %335, %336
  br i1 %337, label %338, label %344

338:                                              ; preds = %334
  %339 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %340 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %339, i32 0, i32 0
  %341 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %342 = call i32 @archive_set_error(i32* %340, i32 %341, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %343 = load i64, i64* @ARCHIVE_FAILED, align 8
  store i64 %343, i64* %4, align 8
  br label %472

344:                                              ; preds = %334
  %345 = load %struct.rar*, %struct.rar** %11, align 8
  %346 = getelementptr inbounds %struct.rar, %struct.rar* %345, i32 0, i32 10
  %347 = load %struct.TYPE_4__*, %struct.TYPE_4__** %346, align 8
  %348 = load %struct.rar*, %struct.rar** %11, align 8
  %349 = getelementptr inbounds %struct.rar, %struct.rar* %348, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i64 %351
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.rar*, %struct.rar** %11, align 8
  %356 = getelementptr inbounds %struct.rar, %struct.rar* %355, i32 0, i32 10
  %357 = load %struct.TYPE_4__*, %struct.TYPE_4__** %356, align 8
  %358 = load %struct.rar*, %struct.rar** %11, align 8
  %359 = getelementptr inbounds %struct.rar, %struct.rar* %358, i32 0, i32 3
  %360 = load i32, i32* %359, align 8
  %361 = sub i32 %360, 1
  %362 = zext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %357, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = sub nsw i64 %354, %365
  %367 = load i64, i64* %8, align 8
  %368 = add nsw i64 %367, %366
  store i64 %368, i64* %8, align 8
  br label %102

369:                                              ; preds = %237, %224
  br label %370

370:                                              ; preds = %369
  br label %371

371:                                              ; preds = %370, %219
  br label %372

372:                                              ; preds = %371, %94
  %373 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %374 = load i64, i64* %8, align 8
  %375 = call i64 @__archive_read_seek(%struct.archive_read* %373, i64 %374, i32 128)
  store i64 %375, i64* %9, align 8
  %376 = load i64, i64* %9, align 8
  %377 = load i64, i64* @ARCHIVE_OK, align 8
  %378 = icmp slt i64 %376, %377
  br i1 %378, label %379, label %381

379:                                              ; preds = %372
  %380 = load i64, i64* %9, align 8
  store i64 %380, i64* %4, align 8
  br label %472

381:                                              ; preds = %372
  %382 = load %struct.rar*, %struct.rar** %11, align 8
  %383 = getelementptr inbounds %struct.rar, %struct.rar* %382, i32 0, i32 10
  %384 = load %struct.TYPE_4__*, %struct.TYPE_4__** %383, align 8
  %385 = load %struct.rar*, %struct.rar** %11, align 8
  %386 = getelementptr inbounds %struct.rar, %struct.rar* %385, i32 0, i32 3
  %387 = load i32, i32* %386, align 8
  %388 = zext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %384, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* %9, align 8
  %393 = sub nsw i64 %391, %392
  %394 = load %struct.rar*, %struct.rar** %11, align 8
  %395 = getelementptr inbounds %struct.rar, %struct.rar* %394, i32 0, i32 11
  store i64 %393, i64* %395, align 8
  %396 = load %struct.rar*, %struct.rar** %11, align 8
  %397 = getelementptr inbounds %struct.rar, %struct.rar* %396, i32 0, i32 3
  %398 = load i32, i32* %397, align 8
  store i32 %398, i32* %10, align 4
  br label %399

399:                                              ; preds = %402, %381
  %400 = load i32, i32* %10, align 4
  %401 = icmp ugt i32 %400, 0
  br i1 %401, label %402, label %425

402:                                              ; preds = %399
  %403 = load i32, i32* %10, align 4
  %404 = add i32 %403, -1
  store i32 %404, i32* %10, align 4
  %405 = load %struct.rar*, %struct.rar** %11, align 8
  %406 = getelementptr inbounds %struct.rar, %struct.rar* %405, i32 0, i32 10
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** %406, align 8
  %408 = load i32, i32* %10, align 4
  %409 = add i32 %408, 1
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %411, i32 0, i32 0
  %413 = load i64, i64* %412, align 8
  %414 = load %struct.rar*, %struct.rar** %11, align 8
  %415 = getelementptr inbounds %struct.rar, %struct.rar* %414, i32 0, i32 10
  %416 = load %struct.TYPE_4__*, %struct.TYPE_4__** %415, align 8
  %417 = load i32, i32* %10, align 4
  %418 = zext i32 %417 to i64
  %419 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %416, i64 %418
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %419, i32 0, i32 1
  %421 = load i64, i64* %420, align 8
  %422 = sub nsw i64 %413, %421
  %423 = load i64, i64* %9, align 8
  %424 = sub nsw i64 %423, %422
  store i64 %424, i64* %9, align 8
  br label %399

425:                                              ; preds = %399
  %426 = load %struct.rar*, %struct.rar** %11, align 8
  %427 = getelementptr inbounds %struct.rar, %struct.rar* %426, i32 0, i32 10
  %428 = load %struct.TYPE_4__*, %struct.TYPE_4__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %428, i64 0
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = load i64, i64* %9, align 8
  %433 = sub nsw i64 %432, %431
  store i64 %433, i64* %9, align 8
  %434 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %435 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %434, i32 0, i32 0
  %436 = call i32 @__archive_reset_read_data(i32* %435)
  %437 = load %struct.rar*, %struct.rar** %11, align 8
  %438 = getelementptr inbounds %struct.rar, %struct.rar* %437, i32 0, i32 9
  store i64 0, i64* %438, align 8
  %439 = load %struct.rar*, %struct.rar** %11, align 8
  %440 = getelementptr inbounds %struct.rar, %struct.rar* %439, i32 0, i32 8
  store i64 0, i64* %440, align 8
  %441 = load i64, i64* %9, align 8
  %442 = load %struct.rar*, %struct.rar** %11, align 8
  %443 = getelementptr inbounds %struct.rar, %struct.rar* %442, i32 0, i32 2
  %444 = load i64, i64* %443, align 8
  %445 = icmp eq i64 %441, %444
  br i1 %445, label %446, label %458

446:                                              ; preds = %425
  %447 = load %struct.rar*, %struct.rar** %11, align 8
  %448 = getelementptr inbounds %struct.rar, %struct.rar* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = load %struct.rar*, %struct.rar** %11, align 8
  %451 = getelementptr inbounds %struct.rar, %struct.rar* %450, i32 0, i32 2
  %452 = load i64, i64* %451, align 8
  %453 = icmp sgt i64 %449, %452
  br i1 %453, label %454, label %458

454:                                              ; preds = %446
  %455 = load %struct.rar*, %struct.rar** %11, align 8
  %456 = getelementptr inbounds %struct.rar, %struct.rar* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %4, align 8
  br label %472

458:                                              ; preds = %446, %425
  %459 = load i64, i64* %9, align 8
  %460 = load %struct.rar*, %struct.rar** %11, align 8
  %461 = getelementptr inbounds %struct.rar, %struct.rar* %460, i32 0, i32 1
  store i64 %459, i64* %461, align 8
  %462 = load %struct.rar*, %struct.rar** %11, align 8
  %463 = getelementptr inbounds %struct.rar, %struct.rar* %462, i32 0, i32 1
  %464 = load i64, i64* %463, align 8
  store i64 %464, i64* %4, align 8
  br label %472

465:                                              ; preds = %3
  %466 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %467 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %466, i32 0, i32 0
  %468 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %469 = call i32 @archive_set_error(i32* %467, i32 %468, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %470

470:                                              ; preds = %465
  %471 = load i64, i64* @ARCHIVE_FAILED, align 8
  store i64 %471, i64* %4, align 8
  br label %472

472:                                              ; preds = %470, %458, %454, %379, %338, %315, %213, %202, %127, %41
  %473 = load i64, i64* %4, align 8
  ret i64 %473
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @__archive_read_seek(%struct.archive_read*, i64, i32) #1

declare dso_local i64 @archive_read_format_rar_read_header(%struct.archive_read*, i32) #1

declare dso_local i32 @__archive_reset_read_data(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
