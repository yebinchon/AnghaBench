; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_add_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar.c_add_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.huffman_code = type { i32, i32, %struct.TYPE_2__*, i32, i32* }
%struct.TYPE_2__ = type { i32* }

@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid repeat position\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"Prefix found\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid repeating code\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Unable to allocate memory for node data.\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.huffman_code*, i32, i32, i32)* @add_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_value(%struct.archive_read* %0, %struct.huffman_code* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.huffman_code*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.huffman_code* %1, %struct.huffman_code** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %18 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %19 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @free(i32* %20)
  %22 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %23 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %22, i32 0, i32 4
  store i32* null, i32** %23, align 8
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %26 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %5
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %32 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %33

33:                                               ; preds = %29, %5
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %36 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  %40 = load i32, i32* %11, align 4
  %41 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %42 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  br label %43

43:                                               ; preds = %39, %33
  store i32 -1, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %12, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %69

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %12, align 4
  %52 = sub nsw i32 %51, 1
  %53 = ashr i32 %50, %52
  %54 = and i32 %53, 3
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = sub nsw i32 %58, 1
  %60 = ashr i32 %57, %59
  %61 = and i32 %60, 3
  %62 = icmp eq i32 %61, 3
  br i1 %62, label %63, label %69

63:                                               ; preds = %56, %49, %43
  %64 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %65 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %64, i32 0, i32 0
  %66 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %67 = call i32 @archive_set_error(i32* %65, i32 %66, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %68, i32* %6, align 4
  br label %301

69:                                               ; preds = %56, %46
  store i32 0, i32* %13, align 4
  %70 = load i32, i32* %11, align 4
  %71 = sub nsw i32 %70, 1
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %246, %69
  %73 = load i32, i32* %14, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %249

75:                                               ; preds = %72
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %14, align 4
  %78 = ashr i32 %76, %77
  %79 = and i32 %78, 1
  store i32 %79, i32* %15, align 4
  %80 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %81 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %91 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %89, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %75
  %102 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %103 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %102, i32 0, i32 0
  %104 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %105 = call i32 @archive_set_error(i32* %103, i32 %104, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %106 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %106, i32* %6, align 4
  br label %301

107:                                              ; preds = %75
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %12, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %192

111:                                              ; preds = %107
  %112 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %113 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i32, i32* %13, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %15, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %131, label %125

125:                                              ; preds = %111
  %126 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %127 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %126, i32 0, i32 0
  %128 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %129 = call i32 @archive_set_error(i32* %127, i32 %128, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %130 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %130, i32* %6, align 4
  br label %301

131:                                              ; preds = %111
  %132 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %133 = call i32 @new_node(%struct.huffman_code* %132)
  store i32 %133, i32* %16, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %137 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %136, i32 0, i32 0
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = call i32 @archive_set_error(i32* %137, i32 %138, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %140 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %140, i32* %6, align 4
  br label %301

141:                                              ; preds = %131
  %142 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %143 = call i32 @new_node(%struct.huffman_code* %142)
  store i32 %143, i32* %17, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %141
  %146 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %147 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %146, i32 0, i32 0
  %148 = load i32, i32* @ENOMEM, align 4
  %149 = call i32 @archive_set_error(i32* %147, i32 %148, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %150 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %150, i32* %6, align 4
  br label %301

151:                                              ; preds = %141
  %152 = load i32, i32* %16, align 4
  %153 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %154 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %153, i32 0, i32 2
  %155 = load %struct.TYPE_2__*, %struct.TYPE_2__** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %15, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %152, i32* %163, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %166 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %165, i32 0, i32 2
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  store i32 %164, i32* %175, align 4
  %176 = load i32, i32* %17, align 4
  %177 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %178 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %177, i32 0, i32 2
  %179 = load %struct.TYPE_2__*, %struct.TYPE_2__** %178, align 8
  %180 = load i32, i32* %16, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %15, align 4
  %186 = xor i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 %176, i32* %188, align 4
  %189 = load i32, i32* %17, align 4
  store i32 %189, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %14, align 4
  br label %245

192:                                              ; preds = %107
  %193 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %194 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %193, i32 0, i32 2
  %195 = load %struct.TYPE_2__*, %struct.TYPE_2__** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %15, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp slt i32 %204, 0
  br i1 %205, label %206, label %232

206:                                              ; preds = %192
  %207 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %208 = call i32 @new_node(%struct.huffman_code* %207)
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %206
  %211 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %212 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %211, i32 0, i32 0
  %213 = load i32, i32* @ENOMEM, align 4
  %214 = call i32 @archive_set_error(i32* %212, i32 %213, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %215 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %215, i32* %6, align 4
  br label %301

216:                                              ; preds = %206
  %217 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %218 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %217, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  %221 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %222 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %221, i32 0, i32 2
  %223 = load %struct.TYPE_2__*, %struct.TYPE_2__** %222, align 8
  %224 = load i32, i32* %13, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %226, i32 0, i32 0
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %219, i32* %231, align 4
  br label %232

232:                                              ; preds = %216, %192
  %233 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %234 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %233, i32 0, i32 2
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = load i32, i32* %13, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %15, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  store i32 %244, i32* %13, align 4
  br label %245

245:                                              ; preds = %232, %151
  br label %246

246:                                              ; preds = %245
  %247 = load i32, i32* %14, align 4
  %248 = add nsw i32 %247, -1
  store i32 %248, i32* %14, align 4
  br label %72

249:                                              ; preds = %72
  %250 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %251 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %250, i32 0, i32 2
  %252 = load %struct.TYPE_2__*, %struct.TYPE_2__** %251, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %255, i32 0, i32 0
  %257 = load i32*, i32** %256, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp eq i32 %259, -1
  br i1 %260, label %261, label %273

261:                                              ; preds = %249
  %262 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %263 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %262, i32 0, i32 2
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = load i32, i32* %13, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = getelementptr inbounds i32, i32* %269, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp eq i32 %271, -2
  br i1 %272, label %279, label %273

273:                                              ; preds = %261, %249
  %274 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %275 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %274, i32 0, i32 0
  %276 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %277 = call i32 @archive_set_error(i32* %275, i32 %276, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %278 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %278, i32* %6, align 4
  br label %301

279:                                              ; preds = %261
  %280 = load i32, i32* %9, align 4
  %281 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %282 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %281, i32 0, i32 2
  %283 = load %struct.TYPE_2__*, %struct.TYPE_2__** %282, align 8
  %284 = load i32, i32* %13, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %286, i32 0, i32 0
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 0
  store i32 %280, i32* %289, align 4
  %290 = load i32, i32* %9, align 4
  %291 = load %struct.huffman_code*, %struct.huffman_code** %8, align 8
  %292 = getelementptr inbounds %struct.huffman_code, %struct.huffman_code* %291, i32 0, i32 2
  %293 = load %struct.TYPE_2__*, %struct.TYPE_2__** %292, align 8
  %294 = load i32, i32* %13, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %296, i32 0, i32 0
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds i32, i32* %298, i64 1
  store i32 %290, i32* %299, align 4
  %300 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %300, i32* %6, align 4
  br label %301

301:                                              ; preds = %279, %273, %210, %145, %135, %125, %101, %63
  %302 = load i32, i32* %6, align 4
  ret i32 %302
}

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @new_node(%struct.huffman_code*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
