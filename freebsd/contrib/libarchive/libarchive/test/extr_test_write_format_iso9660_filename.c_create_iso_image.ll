; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_filename.c_create_iso_image.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_filename.c_create_iso_image.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@__const.create_iso_image.lens = private unnamed_addr constant [33 x i32] [i32 0, i32 1, i32 3, i32 5, i32 7, i32 8, i32 9, i32 29, i32 30, i32 31, i32 32, i32 62, i32 63, i32 64, i32 65, i32 101, i32 102, i32 103, i32 104, i32 191, i32 192, i32 193, i32 194, i32 204, i32 205, i32 206, i32 207, i32 208, i32 252, i32 253, i32 254, i32 255, i32 -1], align 16
@.str = private unnamed_addr constant [4 x i8] c"pad\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64*, i8*)* @create_iso_image to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_iso_image(i8* %0, i64 %1, i64* %2, i8* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.archive*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [33 x i32], align 16
  %14 = alloca [256 x i8], align 16
  %15 = alloca [256 x i8], align 16
  %16 = alloca [2 x i8], align 1
  %17 = alloca [129 x i8], align 16
  %18 = alloca [256 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  %19 = bitcast [33 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([33 x i32]* @__const.create_iso_image.lens to i8*), i64 132, i1 false)
  %20 = call %struct.archive* (...) @archive_write_new()
  store %struct.archive* %20, %struct.archive** %9, align 8
  %21 = icmp ne %struct.archive* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load %struct.archive*, %struct.archive** %9, align 8
  %25 = call i64 @archive_write_set_format_iso9660(%struct.archive* %24)
  %26 = icmp eq i64 0, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @assertA(i32 %27)
  %29 = load %struct.archive*, %struct.archive** %9, align 8
  %30 = call i64 @archive_write_add_filter_none(%struct.archive* %29)
  %31 = icmp eq i64 0, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assertA(i32 %32)
  %34 = load %struct.archive*, %struct.archive** %9, align 8
  %35 = call i64 @archive_write_set_option(%struct.archive* %34, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  %36 = icmp eq i64 0, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @assertA(i32 %37)
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %4
  %42 = load %struct.archive*, %struct.archive** %9, align 8
  %43 = load i8*, i8** %8, align 8
  %44 = call i64 @archive_write_set_options(%struct.archive* %42, i8* %43)
  %45 = icmp eq i64 0, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assertA(i32 %46)
  br label %48

48:                                               ; preds = %41, %4
  %49 = load %struct.archive*, %struct.archive** %9, align 8
  %50 = call i64 @archive_write_set_bytes_per_block(%struct.archive* %49, i32 1)
  %51 = icmp eq i64 0, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assertA(i32 %52)
  %54 = load %struct.archive*, %struct.archive** %9, align 8
  %55 = call i64 @archive_write_set_bytes_in_last_block(%struct.archive* %54, i32 1)
  %56 = icmp eq i64 0, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assertA(i32 %57)
  %59 = load %struct.archive*, %struct.archive** %9, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = call i64 @archive_write_open_memory(%struct.archive* %59, i8* %60, i64 %61, i64* %62)
  %64 = icmp eq i64 0, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assertA(i32 %65)
  %67 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  store i8 120, i8* %67, align 1
  %68 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 1
  store i8 0, i8* %68, align 1
  store i32 0, i32* %10, align 4
  br label %69

69:                                               ; preds = %76, %48
  %70 = load i32, i32* %10, align 4
  %71 = icmp slt i32 %70, 127
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [129 x i8], [129 x i8]* %17, i64 0, i64 %74
  store i8 97, i8* %75, align 1
  br label %76

76:                                               ; preds = %72
  %77 = load i32, i32* %10, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %10, align 4
  br label %69

79:                                               ; preds = %69
  %80 = getelementptr inbounds [129 x i8], [129 x i8]* %17, i64 0, i64 127
  store i8 120, i8* %80, align 1
  %81 = getelementptr inbounds [129 x i8], [129 x i8]* %17, i64 0, i64 128
  store i8 0, i8* %81, align 16
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %89, %79
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 254
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 %87
  store i8 97, i8* %88, align 1
  br label %89

89:                                               ; preds = %85
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %82

92:                                               ; preds = %82
  %93 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 254
  store i8 120, i8* %93, align 2
  %94 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 255
  store i8 0, i8* %94, align 1
  store i32 0, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %286, %92
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [33 x i32], [33 x i32]* %13, i64 0, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %289

101:                                              ; preds = %95
  store i32 0, i32* %11, align 4
  br label %102

102:                                              ; preds = %116, %101
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %10, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [33 x i32], [33 x i32]* %13, i64 0, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = icmp slt i32 %103, %107
  br i1 %108, label %109, label %119

109:                                              ; preds = %102
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %111
  store i8 97, i8* %112, align 1
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %114
  store i8 65, i8* %115, align 1
  br label %116

116:                                              ; preds = %109
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %102

119:                                              ; preds = %102
  %120 = load i32, i32* %11, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %119
  %123 = load i32, i32* %11, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %124
  store i8 0, i8* %125, align 1
  %126 = load i32, i32* %11, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %127
  store i8 0, i8* %128, align 1
  %129 = load %struct.archive*, %struct.archive** %9, align 8
  %130 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %131 = call i32 @add_entry(%struct.archive* %129, i8* %130, i8* null)
  %132 = load %struct.archive*, %struct.archive** %9, align 8
  %133 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %134 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  %135 = call i32 @add_entry(%struct.archive* %132, i8* %133, i8* %134)
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 2
  store i32 %137, i32* %12, align 4
  br label %138

138:                                              ; preds = %122, %119
  %139 = load i32, i32* %11, align 4
  %140 = icmp slt i32 %139, 254
  br i1 %140, label %141, label %174

141:                                              ; preds = %138
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %143
  store i8 46, i8* %144, align 1
  %145 = load i32, i32* %11, align 4
  %146 = add nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %147
  store i8 99, i8* %148, align 1
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %151
  store i8 0, i8* %152, align 1
  %153 = load i32, i32* %11, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %154
  store i8 46, i8* %155, align 1
  %156 = load i32, i32* %11, align 4
  %157 = add nsw i32 %156, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %158
  store i8 67, i8* %159, align 1
  %160 = load i32, i32* %11, align 4
  %161 = add nsw i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %162
  store i8 0, i8* %163, align 1
  %164 = load %struct.archive*, %struct.archive** %9, align 8
  %165 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %166 = getelementptr inbounds [129 x i8], [129 x i8]* %17, i64 0, i64 0
  %167 = call i32 @add_entry(%struct.archive* %164, i8* %165, i8* %166)
  %168 = load %struct.archive*, %struct.archive** %9, align 8
  %169 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %170 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %171 = call i32 @add_entry(%struct.archive* %168, i8* %169, i8* %170)
  %172 = load i32, i32* %12, align 4
  %173 = add nsw i32 %172, 2
  store i32 %173, i32* %12, align 4
  br label %174

174:                                              ; preds = %141, %138
  %175 = load i32, i32* %11, align 4
  %176 = icmp slt i32 %175, 252
  br i1 %176, label %177, label %225

177:                                              ; preds = %174
  %178 = load i32, i32* %11, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %179
  store i8 46, i8* %180, align 1
  %181 = load i32, i32* %11, align 4
  %182 = add nsw i32 %181, 1
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %183
  store i8 112, i8* %184, align 1
  %185 = load i32, i32* %11, align 4
  %186 = add nsw i32 %185, 2
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %187
  store i8 110, i8* %188, align 1
  %189 = load i32, i32* %11, align 4
  %190 = add nsw i32 %189, 3
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %191
  store i8 103, i8* %192, align 1
  %193 = load i32, i32* %11, align 4
  %194 = add nsw i32 %193, 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %195
  store i8 0, i8* %196, align 1
  %197 = load i32, i32* %11, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %198
  store i8 46, i8* %199, align 1
  %200 = load i32, i32* %11, align 4
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %202
  store i8 80, i8* %203, align 1
  %204 = load i32, i32* %11, align 4
  %205 = add nsw i32 %204, 2
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %206
  store i8 78, i8* %207, align 1
  %208 = load i32, i32* %11, align 4
  %209 = add nsw i32 %208, 3
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %210
  store i8 71, i8* %211, align 1
  %212 = load i32, i32* %11, align 4
  %213 = add nsw i32 %212, 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %214
  store i8 0, i8* %215, align 1
  %216 = load %struct.archive*, %struct.archive** %9, align 8
  %217 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %218 = call i32 @add_entry(%struct.archive* %216, i8* %217, i8* null)
  %219 = load %struct.archive*, %struct.archive** %9, align 8
  %220 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %221 = getelementptr inbounds [2 x i8], [2 x i8]* %16, i64 0, i64 0
  %222 = call i32 @add_entry(%struct.archive* %219, i8* %220, i8* %221)
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, 2
  store i32 %224, i32* %12, align 4
  br label %225

225:                                              ; preds = %177, %174
  %226 = load i32, i32* %11, align 4
  %227 = icmp slt i32 %226, 251
  br i1 %227, label %228, label %285

228:                                              ; preds = %225
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %230
  store i8 46, i8* %231, align 1
  %232 = load i32, i32* %11, align 4
  %233 = add nsw i32 %232, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %234
  store i8 106, i8* %235, align 1
  %236 = load i32, i32* %11, align 4
  %237 = add nsw i32 %236, 2
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %238
  store i8 112, i8* %239, align 1
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 3
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %242
  store i8 101, i8* %243, align 1
  %244 = load i32, i32* %11, align 4
  %245 = add nsw i32 %244, 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %246
  store i8 103, i8* %247, align 1
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %248, 5
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %250
  store i8 0, i8* %251, align 1
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %253
  store i8 46, i8* %254, align 1
  %255 = load i32, i32* %11, align 4
  %256 = add nsw i32 %255, 1
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %257
  store i8 74, i8* %258, align 1
  %259 = load i32, i32* %11, align 4
  %260 = add nsw i32 %259, 2
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %261
  store i8 80, i8* %262, align 1
  %263 = load i32, i32* %11, align 4
  %264 = add nsw i32 %263, 3
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %265
  store i8 69, i8* %266, align 1
  %267 = load i32, i32* %11, align 4
  %268 = add nsw i32 %267, 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %269
  store i8 71, i8* %270, align 1
  %271 = load i32, i32* %11, align 4
  %272 = add nsw i32 %271, 5
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 %273
  store i8 0, i8* %274, align 1
  %275 = load %struct.archive*, %struct.archive** %9, align 8
  %276 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %277 = getelementptr inbounds [129 x i8], [129 x i8]* %17, i64 0, i64 0
  %278 = call i32 @add_entry(%struct.archive* %275, i8* %276, i8* %277)
  %279 = load %struct.archive*, %struct.archive** %9, align 8
  %280 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %281 = getelementptr inbounds [256 x i8], [256 x i8]* %18, i64 0, i64 0
  %282 = call i32 @add_entry(%struct.archive* %279, i8* %280, i8* %281)
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, 2
  store i32 %284, i32* %12, align 4
  br label %285

285:                                              ; preds = %228, %225
  br label %286

286:                                              ; preds = %285
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %10, align 4
  br label %95

289:                                              ; preds = %95
  %290 = load %struct.archive*, %struct.archive** %9, align 8
  %291 = load i32, i32* @ARCHIVE_OK, align 4
  %292 = load %struct.archive*, %struct.archive** %9, align 8
  %293 = call i32 @archive_write_close(%struct.archive* %292)
  %294 = call i32 @assertEqualIntA(%struct.archive* %290, i32 %291, i32 %293)
  %295 = load %struct.archive*, %struct.archive** %9, align 8
  %296 = load i32, i32* @ARCHIVE_OK, align 4
  %297 = load %struct.archive*, %struct.archive** %9, align 8
  %298 = call i32 @archive_write_free(%struct.archive* %297)
  %299 = call i32 @assertEqualIntA(%struct.archive* %295, i32 %296, i32 %298)
  %300 = load i32, i32* %12, align 4
  ret i32 %300
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local %struct.archive* @archive_write_new(...) #2

declare dso_local i32 @assertA(i32) #2

declare dso_local i64 @archive_write_set_format_iso9660(%struct.archive*) #2

declare dso_local i64 @archive_write_add_filter_none(%struct.archive*) #2

declare dso_local i64 @archive_write_set_option(%struct.archive*, i32*, i8*, i32*) #2

declare dso_local i64 @archive_write_set_options(%struct.archive*, i8*) #2

declare dso_local i64 @archive_write_set_bytes_per_block(%struct.archive*, i32) #2

declare dso_local i64 @archive_write_set_bytes_in_last_block(%struct.archive*, i32) #2

declare dso_local i64 @archive_write_open_memory(%struct.archive*, i8*, i64, i64*) #2

declare dso_local i32 @add_entry(%struct.archive*, i8*, i8*) #2

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #2

declare dso_local i32 @archive_write_close(%struct.archive*) #2

declare dso_local i32 @archive_write_free(%struct.archive*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
