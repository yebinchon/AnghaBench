; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_CodersInfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_7zip.c_read_CodersInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct._7z_coders_info = type { i32, i32, i32*, %struct._7z_folder*, i32* }
%struct._7z_folder = type { i32*, i32, i32, i32 }
%struct._7z_digests = type { i32, i32, i32*, %struct._7z_folder*, i32* }

@kFolder = common dso_local global i8 0, align 1
@UMAX_ENTRY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Malformed 7-Zip archive\00", align 1
@kCodersUnPackSize = common dso_local global i8 0, align 1
@kEnd = common dso_local global i8 0, align 1
@kCRC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct._7z_coders_info*)* @read_CodersInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_CodersInfo(%struct.archive_read* %0, %struct._7z_coders_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct._7z_coders_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct._7z_digests, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct._7z_folder*, align 8
  %10 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct._7z_coders_info* %1, %struct._7z_coders_info** %5, align 8
  %11 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %12 = bitcast %struct._7z_coders_info* %11 to %struct._7z_digests*
  %13 = call i32 @memset(%struct._7z_digests* %12, i32 0, i32 32)
  %14 = call i32 @memset(%struct._7z_digests* %7, i32 0, i32 32)
  %15 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %16 = call i8* @header_bytes(%struct.archive_read* %15, i32 1)
  store i8* %16, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %263

19:                                               ; preds = %2
  %20 = load i8*, i8** %6, align 8
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* @kFolder, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %263

27:                                               ; preds = %19
  %28 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %29 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %30 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %29, i32 0, i32 0
  %31 = call i64 @parse_7zip_uint64(%struct.archive_read* %28, i32* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %263

34:                                               ; preds = %27
  %35 = load i32, i32* @UMAX_ENTRY, align 4
  %36 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %37 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 -1, i32* %3, align 4
  br label %265

41:                                               ; preds = %34
  %42 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %43 = call i8* @header_bytes(%struct.archive_read* %42, i32 1)
  store i8* %43, i8** %6, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %263

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i8, i8* %47, align 1
  %49 = zext i8 %48 to i32
  switch i32 %49, label %111 [
    i32 0, label %50
    i32 1, label %87
  ]

50:                                               ; preds = %46
  %51 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %52 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = zext i32 %53 to i64
  %55 = call i8* @calloc(i64 %54, i32 24)
  %56 = bitcast i8* %55 to %struct._7z_folder*
  %57 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %58 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %57, i32 0, i32 3
  store %struct._7z_folder* %56, %struct._7z_folder** %58, align 8
  %59 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %60 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %59, i32 0, i32 3
  %61 = load %struct._7z_folder*, %struct._7z_folder** %60, align 8
  %62 = icmp eq %struct._7z_folder* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store i32 -1, i32* %3, align 4
  br label %265

64:                                               ; preds = %50
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %8, align 4
  %67 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %68 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %65
  %72 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %73 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %74 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %73, i32 0, i32 3
  %75 = load %struct._7z_folder*, %struct._7z_folder** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %75, i64 %77
  %79 = call i32 @read_Folder(%struct.archive_read* %72, %struct._7z_folder* %78)
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %71
  br label %263

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %65

86:                                               ; preds = %65
  br label %115

87:                                               ; preds = %46
  %88 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %89 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %90 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %89, i32 0, i32 1
  %91 = call i64 @parse_7zip_uint64(%struct.archive_read* %88, i32* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %87
  store i32 -1, i32* %3, align 4
  br label %265

94:                                               ; preds = %87
  %95 = load i32, i32* @UMAX_ENTRY, align 4
  %96 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %97 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp ult i32 %95, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  store i32 -1, i32* %3, align 4
  br label %265

101:                                              ; preds = %94
  %102 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %103 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ugt i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %108 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %107, i32 0, i32 0
  %109 = call i32 @archive_set_error(i32* %108, i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %263

110:                                              ; preds = %101
  br label %115

111:                                              ; preds = %46
  %112 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %113 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %112, i32 0, i32 0
  %114 = call i32 @archive_set_error(i32* %113, i32 -1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %263

115:                                              ; preds = %110, %86
  %116 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %117 = call i8* @header_bytes(%struct.archive_read* %116, i32 1)
  store i8* %117, i8** %6, align 8
  %118 = icmp eq i8* %117, null
  br i1 %118, label %119, label %120

119:                                              ; preds = %115
  br label %263

120:                                              ; preds = %115
  %121 = load i8*, i8** %6, align 8
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = load i8, i8* @kCodersUnPackSize, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp ne i32 %123, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %120
  br label %263

128:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  br label %129

129:                                              ; preds = %178, %128
  %130 = load i32, i32* %8, align 4
  %131 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %132 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp ult i32 %130, %133
  br i1 %134, label %135, label %181

135:                                              ; preds = %129
  %136 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %137 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %136, i32 0, i32 3
  %138 = load %struct._7z_folder*, %struct._7z_folder** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %138, i64 %140
  store %struct._7z_folder* %141, %struct._7z_folder** %9, align 8
  %142 = load %struct._7z_folder*, %struct._7z_folder** %9, align 8
  %143 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = zext i32 %144 to i64
  %146 = call i8* @calloc(i64 %145, i32 4)
  %147 = bitcast i8* %146 to i32*
  %148 = load %struct._7z_folder*, %struct._7z_folder** %9, align 8
  %149 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %148, i32 0, i32 0
  store i32* %147, i32** %149, align 8
  %150 = load %struct._7z_folder*, %struct._7z_folder** %9, align 8
  %151 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %155

154:                                              ; preds = %135
  br label %263

155:                                              ; preds = %135
  store i32 0, i32* %10, align 4
  br label %156

156:                                              ; preds = %174, %155
  %157 = load i32, i32* %10, align 4
  %158 = load %struct._7z_folder*, %struct._7z_folder** %9, align 8
  %159 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = icmp ult i32 %157, %160
  br i1 %161, label %162, label %177

162:                                              ; preds = %156
  %163 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %164 = load %struct._7z_folder*, %struct._7z_folder** %9, align 8
  %165 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* %10, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = call i64 @parse_7zip_uint64(%struct.archive_read* %163, i32* %169)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %162
  br label %263

173:                                              ; preds = %162
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %10, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %10, align 4
  br label %156

177:                                              ; preds = %156
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %8, align 4
  %180 = add i32 %179, 1
  store i32 %180, i32* %8, align 4
  br label %129

181:                                              ; preds = %129
  %182 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %183 = call i8* @header_bytes(%struct.archive_read* %182, i32 1)
  store i8* %183, i8** %6, align 8
  %184 = icmp eq i8* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %263

186:                                              ; preds = %181
  %187 = load i8*, i8** %6, align 8
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = load i8, i8* @kEnd, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp eq i32 %189, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %265

194:                                              ; preds = %186
  %195 = load i8*, i8** %6, align 8
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = load i8, i8* @kCRC, align 1
  %199 = zext i8 %198 to i32
  %200 = icmp ne i32 %197, %199
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  br label %263

202:                                              ; preds = %194
  %203 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %204 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %205 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = zext i32 %206 to i64
  %208 = call i64 @read_Digests(%struct.archive_read* %203, %struct._7z_digests* %7, i64 %207)
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %263

211:                                              ; preds = %202
  store i32 0, i32* %8, align 4
  br label %212

212:                                              ; preds = %245, %211
  %213 = load i32, i32* %8, align 4
  %214 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %215 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ult i32 %213, %216
  br i1 %217, label %218, label %248

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct._7z_digests, %struct._7z_digests* %7, i32 0, i32 4
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = zext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %226 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %225, i32 0, i32 3
  %227 = load %struct._7z_folder*, %struct._7z_folder** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %227, i64 %229
  %231 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %230, i32 0, i32 3
  store i32 %224, i32* %231, align 8
  %232 = getelementptr inbounds %struct._7z_digests, %struct._7z_digests* %7, i32 0, i32 2
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %8, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = load %struct._7z_coders_info*, %struct._7z_coders_info** %5, align 8
  %239 = getelementptr inbounds %struct._7z_coders_info, %struct._7z_coders_info* %238, i32 0, i32 3
  %240 = load %struct._7z_folder*, %struct._7z_folder** %239, align 8
  %241 = load i32, i32* %8, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %240, i64 %242
  %244 = getelementptr inbounds %struct._7z_folder, %struct._7z_folder* %243, i32 0, i32 2
  store i32 %237, i32* %244, align 4
  br label %245

245:                                              ; preds = %218
  %246 = load i32, i32* %8, align 4
  %247 = add i32 %246, 1
  store i32 %247, i32* %8, align 4
  br label %212

248:                                              ; preds = %212
  %249 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %250 = call i8* @header_bytes(%struct.archive_read* %249, i32 1)
  store i8* %250, i8** %6, align 8
  %251 = icmp eq i8* %250, null
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  br label %263

253:                                              ; preds = %248
  %254 = load i8*, i8** %6, align 8
  %255 = load i8, i8* %254, align 1
  %256 = zext i8 %255 to i32
  %257 = load i8, i8* @kEnd, align 1
  %258 = zext i8 %257 to i32
  %259 = icmp ne i32 %256, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %253
  br label %263

261:                                              ; preds = %253
  %262 = call i32 @free_Digest(%struct._7z_digests* %7)
  store i32 0, i32* %3, align 4
  br label %265

263:                                              ; preds = %260, %252, %210, %201, %185, %172, %154, %127, %119, %111, %106, %81, %45, %33, %26, %18
  %264 = call i32 @free_Digest(%struct._7z_digests* %7)
  store i32 -1, i32* %3, align 4
  br label %265

265:                                              ; preds = %263, %261, %193, %100, %93, %63, %40
  %266 = load i32, i32* %3, align 4
  ret i32 %266
}

declare dso_local i32 @memset(%struct._7z_digests*, i32, i32) #1

declare dso_local i8* @header_bytes(%struct.archive_read*, i32) #1

declare dso_local i64 @parse_7zip_uint64(%struct.archive_read*, i32*) #1

declare dso_local i8* @calloc(i64, i32) #1

declare dso_local i32 @read_Folder(%struct.archive_read*, %struct._7z_folder*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @read_Digests(%struct.archive_read*, %struct._7z_digests*, i64) #1

declare dso_local i32 @free_Digest(%struct._7z_digests*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
