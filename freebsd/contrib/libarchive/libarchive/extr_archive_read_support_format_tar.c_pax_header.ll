; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_pax_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_pax_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { %struct.archive_string, %struct.archive_string, %struct.archive_string, %struct.archive_string, %struct.archive_string, i64, %struct.archive_string_conv*, i64 }
%struct.archive_string = type { i8*, i64 }
%struct.archive_string_conv = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Ignoring malformed pax extended attributes\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Rejecting pax extended attribute > 1MB\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Ignoring malformed pax extended attribute\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Invalid pax extended attributes\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@SCONV_SET_OPT_UTF8_LIBARCHIVE2X = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Gname\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"Linkname\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"Pathname\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Uname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, %struct.archive_string*)* @pax_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pax_header(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, %struct.archive_string* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.tar*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca %struct.archive_string*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.archive_string*, align 8
  %18 = alloca %struct.archive_string_conv*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.tar* %1, %struct.tar** %7, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %8, align 8
  store %struct.archive_string* %3, %struct.archive_string** %9, align 8
  %22 = load %struct.archive_string*, %struct.archive_string** %9, align 8
  %23 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %21, align 8
  %25 = load %struct.archive_string*, %struct.archive_string** %9, align 8
  %26 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %10, align 8
  %28 = load %struct.tar*, %struct.tar** %7, align 8
  %29 = getelementptr inbounds %struct.tar, %struct.tar* %28, i32 0, i32 7
  store i64 0, i64* %29, align 8
  %30 = load %struct.tar*, %struct.tar** %7, align 8
  %31 = getelementptr inbounds %struct.tar, %struct.tar* %30, i32 0, i32 4
  %32 = call i32 @archive_string_empty(%struct.archive_string* %31)
  %33 = load %struct.tar*, %struct.tar** %7, align 8
  %34 = getelementptr inbounds %struct.tar, %struct.tar* %33, i32 0, i32 3
  %35 = call i32 @archive_string_empty(%struct.archive_string* %34)
  %36 = load %struct.tar*, %struct.tar** %7, align 8
  %37 = getelementptr inbounds %struct.tar, %struct.tar* %36, i32 0, i32 1
  %38 = call i32 @archive_string_empty(%struct.archive_string* %37)
  %39 = load %struct.tar*, %struct.tar** %7, align 8
  %40 = getelementptr inbounds %struct.tar, %struct.tar* %39, i32 0, i32 2
  %41 = call i32 @archive_string_empty(%struct.archive_string* %40)
  %42 = load %struct.tar*, %struct.tar** %7, align 8
  %43 = getelementptr inbounds %struct.tar, %struct.tar* %42, i32 0, i32 0
  %44 = call i32 @archive_string_empty(%struct.archive_string* %43)
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %45, i32* %19, align 4
  br label %46

46:                                               ; preds = %188, %4
  %47 = load i64, i64* %10, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %198

49:                                               ; preds = %46
  store i64 0, i64* %12, align 8
  %50 = load i64, i64* %10, align 8
  store i64 %50, i64* %11, align 8
  %51 = load i8*, i8** %21, align 8
  store i8* %51, i8** %14, align 8
  br label %52

52:                                               ; preds = %99, %49
  %53 = load i64, i64* %11, align 8
  %54 = icmp ugt i64 %53, 0
  br i1 %54, label %55, label %104

55:                                               ; preds = %52
  %56 = load i8*, i8** %14, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 %58, 32
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load i8*, i8** %14, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %14, align 8
  %63 = load i64, i64* %11, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %11, align 8
  br label %104

65:                                               ; preds = %55
  %66 = load i8*, i8** %14, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp slt i32 %68, 48
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load i8*, i8** %14, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp sgt i32 %73, 57
  br i1 %74, label %75, label %81

75:                                               ; preds = %70, %65
  %76 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %77 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %76, i32 0, i32 0
  %78 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %79 = call i32 @archive_set_error(i32* %77, i32 %78, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %80, i32* %5, align 4
  br label %375

81:                                               ; preds = %70
  %82 = load i64, i64* %12, align 8
  %83 = mul i64 %82, 10
  store i64 %83, i64* %12, align 8
  %84 = load i8*, i8** %14, align 8
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = sub nsw i32 %86, 48
  %88 = sext i32 %87 to i64
  %89 = load i64, i64* %12, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %12, align 8
  %92 = icmp ugt i64 %91, 999999
  br i1 %92, label %93, label %99

93:                                               ; preds = %81
  %94 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %95 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %94, i32 0, i32 0
  %96 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %97 = call i32 @archive_set_error(i32* %95, i32 %96, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %98 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %98, i32* %5, align 4
  br label %375

99:                                               ; preds = %81
  %100 = load i8*, i8** %14, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %14, align 8
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, -1
  store i64 %103, i64* %11, align 8
  br label %52

104:                                              ; preds = %60, %52
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* %10, align 8
  %107 = icmp ugt i64 %105, %106
  br i1 %107, label %119, label %108

108:                                              ; preds = %104
  %109 = load i64, i64* %12, align 8
  %110 = icmp ult i64 %109, 1
  br i1 %110, label %119, label %111

111:                                              ; preds = %108
  %112 = load i8*, i8** %21, align 8
  %113 = load i64, i64* %12, align 8
  %114 = sub i64 %113, 1
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 10
  br i1 %118, label %119, label %125

119:                                              ; preds = %111, %108, %104
  %120 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %121 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %120, i32 0, i32 0
  %122 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %123 = call i32 @archive_set_error(i32* %121, i32 %122, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %124, i32* %5, align 4
  br label %375

125:                                              ; preds = %111
  %126 = load i8*, i8** %21, align 8
  %127 = load i64, i64* %12, align 8
  %128 = sub i64 %127, 1
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  store i8 0, i8* %129, align 1
  %130 = load i8*, i8** %14, align 8
  store i8* %130, i8** %15, align 8
  %131 = load i8*, i8** %15, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 0
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = icmp eq i32 %134, 61
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  store i32 -1, i32* %5, align 4
  br label %375

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %150, %137
  %139 = load i8*, i8** %14, align 8
  %140 = load i8, i8* %139, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load i8*, i8** %14, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 61
  br label %148

148:                                              ; preds = %143, %138
  %149 = phi i1 [ false, %138 ], [ %147, %143 ]
  br i1 %149, label %150, label %153

150:                                              ; preds = %148
  %151 = load i8*, i8** %14, align 8
  %152 = getelementptr inbounds i8, i8* %151, i32 1
  store i8* %152, i8** %14, align 8
  br label %138

153:                                              ; preds = %148
  %154 = load i8*, i8** %14, align 8
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %153
  %159 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %160 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %159, i32 0, i32 0
  %161 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %162 = call i32 @archive_set_error(i32* %160, i32 %161, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %163 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %163, i32* %5, align 4
  br label %375

164:                                              ; preds = %153
  %165 = load i8*, i8** %14, align 8
  store i8 0, i8* %165, align 1
  %166 = load i8*, i8** %14, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  store i8* %167, i8** %16, align 8
  %168 = load i8*, i8** %21, align 8
  %169 = load i64, i64* %12, align 8
  %170 = getelementptr inbounds i8, i8* %168, i64 %169
  %171 = getelementptr inbounds i8, i8* %170, i64 -1
  %172 = load i8*, i8** %16, align 8
  %173 = ptrtoint i8* %171 to i64
  %174 = ptrtoint i8* %172 to i64
  %175 = sub i64 %173, %174
  store i64 %175, i64* %13, align 8
  %176 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %177 = load %struct.tar*, %struct.tar** %7, align 8
  %178 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %179 = load i8*, i8** %15, align 8
  %180 = load i8*, i8** %16, align 8
  %181 = load i64, i64* %13, align 8
  %182 = call i32 @pax_attribute(%struct.archive_read* %176, %struct.tar* %177, %struct.archive_entry* %178, i8* %179, i8* %180, i64 %181)
  store i32 %182, i32* %20, align 4
  %183 = load i32, i32* %20, align 4
  %184 = load i32, i32* @ARCHIVE_FATAL, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %164
  %187 = load i32, i32* %20, align 4
  store i32 %187, i32* %5, align 4
  br label %375

188:                                              ; preds = %164
  %189 = load i32, i32* %19, align 4
  %190 = load i32, i32* %20, align 4
  %191 = call i32 @err_combine(i32 %189, i32 %190)
  store i32 %191, i32* %19, align 4
  %192 = load i64, i64* %12, align 8
  %193 = load i8*, i8** %21, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 %192
  store i8* %194, i8** %21, align 8
  %195 = load i64, i64* %12, align 8
  %196 = load i64, i64* %10, align 8
  %197 = sub i64 %196, %195
  store i64 %197, i64* %10, align 8
  br label %46

198:                                              ; preds = %46
  %199 = load %struct.tar*, %struct.tar** %7, align 8
  %200 = getelementptr inbounds %struct.tar, %struct.tar* %199, i32 0, i32 7
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load %struct.tar*, %struct.tar** %7, align 8
  %205 = getelementptr inbounds %struct.tar, %struct.tar* %204, i32 0, i32 6
  %206 = load %struct.archive_string_conv*, %struct.archive_string_conv** %205, align 8
  store %struct.archive_string_conv* %206, %struct.archive_string_conv** %18, align 8
  br label %225

207:                                              ; preds = %198
  %208 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %209 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %208, i32 0, i32 0
  %210 = call %struct.archive_string_conv* @archive_string_conversion_from_charset(i32* %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store %struct.archive_string_conv* %210, %struct.archive_string_conv** %18, align 8
  %211 = load %struct.archive_string_conv*, %struct.archive_string_conv** %18, align 8
  %212 = icmp eq %struct.archive_string_conv* %211, null
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %214, i32* %5, align 4
  br label %375

215:                                              ; preds = %207
  %216 = load %struct.tar*, %struct.tar** %7, align 8
  %217 = getelementptr inbounds %struct.tar, %struct.tar* %216, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %215
  %221 = load %struct.archive_string_conv*, %struct.archive_string_conv** %18, align 8
  %222 = load i32, i32* @SCONV_SET_OPT_UTF8_LIBARCHIVE2X, align 4
  %223 = call i32 @archive_string_conversion_set_opt(%struct.archive_string_conv* %221, i32 %222)
  br label %224

224:                                              ; preds = %220, %215
  br label %225

225:                                              ; preds = %224, %203
  %226 = load %struct.tar*, %struct.tar** %7, align 8
  %227 = getelementptr inbounds %struct.tar, %struct.tar* %226, i32 0, i32 4
  %228 = call i32 @archive_strlen(%struct.archive_string* %227)
  %229 = icmp sgt i32 %228, 0
  br i1 %229, label %230, label %259

230:                                              ; preds = %225
  %231 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %232 = load %struct.tar*, %struct.tar** %7, align 8
  %233 = getelementptr inbounds %struct.tar, %struct.tar* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = load %struct.tar*, %struct.tar** %7, align 8
  %237 = getelementptr inbounds %struct.tar, %struct.tar* %236, i32 0, i32 4
  %238 = call i32 @archive_strlen(%struct.archive_string* %237)
  %239 = load %struct.archive_string_conv*, %struct.archive_string_conv** %18, align 8
  %240 = call i64 @archive_entry_copy_gname_l(%struct.archive_entry* %231, i8* %235, i32 %238, %struct.archive_string_conv* %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %258

242:                                              ; preds = %230
  %243 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %244 = load %struct.archive_string_conv*, %struct.archive_string_conv** %18, align 8
  %245 = call i32 @set_conversion_failed_error(%struct.archive_read* %243, %struct.archive_string_conv* %244, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  store i32 %245, i32* %19, align 4
  %246 = load i32, i32* %19, align 4
  %247 = load i32, i32* @ARCHIVE_FATAL, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %251

249:                                              ; preds = %242
  %250 = load i32, i32* %19, align 4
  store i32 %250, i32* %5, align 4
  br label %375

251:                                              ; preds = %242
  %252 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %253 = load %struct.tar*, %struct.tar** %7, align 8
  %254 = getelementptr inbounds %struct.tar, %struct.tar* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = call i32 @archive_entry_copy_gname(%struct.archive_entry* %252, i8* %256)
  br label %258

258:                                              ; preds = %251, %230
  br label %259

259:                                              ; preds = %258, %225
  %260 = load %struct.tar*, %struct.tar** %7, align 8
  %261 = getelementptr inbounds %struct.tar, %struct.tar* %260, i32 0, i32 3
  %262 = call i32 @archive_strlen(%struct.archive_string* %261)
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %293

264:                                              ; preds = %259
  %265 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %266 = load %struct.tar*, %struct.tar** %7, align 8
  %267 = getelementptr inbounds %struct.tar, %struct.tar* %266, i32 0, i32 3
  %268 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %267, i32 0, i32 0
  %269 = load i8*, i8** %268, align 8
  %270 = load %struct.tar*, %struct.tar** %7, align 8
  %271 = getelementptr inbounds %struct.tar, %struct.tar* %270, i32 0, i32 3
  %272 = call i32 @archive_strlen(%struct.archive_string* %271)
  %273 = load %struct.archive_string_conv*, %struct.archive_string_conv** %18, align 8
  %274 = call i64 @archive_entry_copy_link_l(%struct.archive_entry* %265, i8* %269, i32 %272, %struct.archive_string_conv* %273)
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %292

276:                                              ; preds = %264
  %277 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %278 = load %struct.archive_string_conv*, %struct.archive_string_conv** %18, align 8
  %279 = call i32 @set_conversion_failed_error(%struct.archive_read* %277, %struct.archive_string_conv* %278, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store i32 %279, i32* %19, align 4
  %280 = load i32, i32* %19, align 4
  %281 = load i32, i32* @ARCHIVE_FATAL, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %285

283:                                              ; preds = %276
  %284 = load i32, i32* %19, align 4
  store i32 %284, i32* %5, align 4
  br label %375

285:                                              ; preds = %276
  %286 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %287 = load %struct.tar*, %struct.tar** %7, align 8
  %288 = getelementptr inbounds %struct.tar, %struct.tar* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = call i32 @archive_entry_copy_link(%struct.archive_entry* %286, i8* %290)
  br label %292

292:                                              ; preds = %285, %264
  br label %293

293:                                              ; preds = %292, %259
  store %struct.archive_string* null, %struct.archive_string** %17, align 8
  %294 = load %struct.tar*, %struct.tar** %7, align 8
  %295 = getelementptr inbounds %struct.tar, %struct.tar* %294, i32 0, i32 2
  %296 = call i32 @archive_strlen(%struct.archive_string* %295)
  %297 = icmp sgt i32 %296, 0
  br i1 %297, label %298, label %301

298:                                              ; preds = %293
  %299 = load %struct.tar*, %struct.tar** %7, align 8
  %300 = getelementptr inbounds %struct.tar, %struct.tar* %299, i32 0, i32 2
  store %struct.archive_string* %300, %struct.archive_string** %17, align 8
  br label %310

301:                                              ; preds = %293
  %302 = load %struct.tar*, %struct.tar** %7, align 8
  %303 = getelementptr inbounds %struct.tar, %struct.tar* %302, i32 0, i32 1
  %304 = call i32 @archive_strlen(%struct.archive_string* %303)
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %309

306:                                              ; preds = %301
  %307 = load %struct.tar*, %struct.tar** %7, align 8
  %308 = getelementptr inbounds %struct.tar, %struct.tar* %307, i32 0, i32 1
  store %struct.archive_string* %308, %struct.archive_string** %17, align 8
  br label %309

309:                                              ; preds = %306, %301
  br label %310

310:                                              ; preds = %309, %298
  %311 = load %struct.archive_string*, %struct.archive_string** %17, align 8
  %312 = icmp ne %struct.archive_string* %311, null
  br i1 %312, label %313, label %339

313:                                              ; preds = %310
  %314 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %315 = load %struct.archive_string*, %struct.archive_string** %17, align 8
  %316 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %315, i32 0, i32 0
  %317 = load i8*, i8** %316, align 8
  %318 = load %struct.archive_string*, %struct.archive_string** %17, align 8
  %319 = call i32 @archive_strlen(%struct.archive_string* %318)
  %320 = load %struct.archive_string_conv*, %struct.archive_string_conv** %18, align 8
  %321 = call i64 @archive_entry_copy_pathname_l(%struct.archive_entry* %314, i8* %317, i32 %319, %struct.archive_string_conv* %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %338

323:                                              ; preds = %313
  %324 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %325 = load %struct.archive_string_conv*, %struct.archive_string_conv** %18, align 8
  %326 = call i32 @set_conversion_failed_error(%struct.archive_read* %324, %struct.archive_string_conv* %325, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  store i32 %326, i32* %19, align 4
  %327 = load i32, i32* %19, align 4
  %328 = load i32, i32* @ARCHIVE_FATAL, align 4
  %329 = icmp eq i32 %327, %328
  br i1 %329, label %330, label %332

330:                                              ; preds = %323
  %331 = load i32, i32* %19, align 4
  store i32 %331, i32* %5, align 4
  br label %375

332:                                              ; preds = %323
  %333 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %334 = load %struct.archive_string*, %struct.archive_string** %17, align 8
  %335 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %334, i32 0, i32 0
  %336 = load i8*, i8** %335, align 8
  %337 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %333, i8* %336)
  br label %338

338:                                              ; preds = %332, %313
  br label %339

339:                                              ; preds = %338, %310
  %340 = load %struct.tar*, %struct.tar** %7, align 8
  %341 = getelementptr inbounds %struct.tar, %struct.tar* %340, i32 0, i32 0
  %342 = call i32 @archive_strlen(%struct.archive_string* %341)
  %343 = icmp sgt i32 %342, 0
  br i1 %343, label %344, label %373

344:                                              ; preds = %339
  %345 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %346 = load %struct.tar*, %struct.tar** %7, align 8
  %347 = getelementptr inbounds %struct.tar, %struct.tar* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %347, i32 0, i32 0
  %349 = load i8*, i8** %348, align 8
  %350 = load %struct.tar*, %struct.tar** %7, align 8
  %351 = getelementptr inbounds %struct.tar, %struct.tar* %350, i32 0, i32 0
  %352 = call i32 @archive_strlen(%struct.archive_string* %351)
  %353 = load %struct.archive_string_conv*, %struct.archive_string_conv** %18, align 8
  %354 = call i64 @archive_entry_copy_uname_l(%struct.archive_entry* %345, i8* %349, i32 %352, %struct.archive_string_conv* %353)
  %355 = icmp ne i64 %354, 0
  br i1 %355, label %356, label %372

356:                                              ; preds = %344
  %357 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %358 = load %struct.archive_string_conv*, %struct.archive_string_conv** %18, align 8
  %359 = call i32 @set_conversion_failed_error(%struct.archive_read* %357, %struct.archive_string_conv* %358, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  store i32 %359, i32* %19, align 4
  %360 = load i32, i32* %19, align 4
  %361 = load i32, i32* @ARCHIVE_FATAL, align 4
  %362 = icmp eq i32 %360, %361
  br i1 %362, label %363, label %365

363:                                              ; preds = %356
  %364 = load i32, i32* %19, align 4
  store i32 %364, i32* %5, align 4
  br label %375

365:                                              ; preds = %356
  %366 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %367 = load %struct.tar*, %struct.tar** %7, align 8
  %368 = getelementptr inbounds %struct.tar, %struct.tar* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %368, i32 0, i32 0
  %370 = load i8*, i8** %369, align 8
  %371 = call i32 @archive_entry_copy_uname(%struct.archive_entry* %366, i8* %370)
  br label %372

372:                                              ; preds = %365, %344
  br label %373

373:                                              ; preds = %372, %339
  %374 = load i32, i32* %19, align 4
  store i32 %374, i32* %5, align 4
  br label %375

375:                                              ; preds = %373, %363, %330, %283, %249, %213, %186, %158, %136, %119, %93, %75
  %376 = load i32, i32* %5, align 4
  ret i32 %376
}

declare dso_local i32 @archive_string_empty(%struct.archive_string*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @pax_attribute(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i8*, i64) #1

declare dso_local i32 @err_combine(i32, i32) #1

declare dso_local %struct.archive_string_conv* @archive_string_conversion_from_charset(i32*, i8*, i32) #1

declare dso_local i32 @archive_string_conversion_set_opt(%struct.archive_string_conv*, i32) #1

declare dso_local i32 @archive_strlen(%struct.archive_string*) #1

declare dso_local i64 @archive_entry_copy_gname_l(%struct.archive_entry*, i8*, i32, %struct.archive_string_conv*) #1

declare dso_local i32 @set_conversion_failed_error(%struct.archive_read*, %struct.archive_string_conv*, i8*) #1

declare dso_local i32 @archive_entry_copy_gname(%struct.archive_entry*, i8*) #1

declare dso_local i64 @archive_entry_copy_link_l(%struct.archive_entry*, i8*, i32, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_copy_link(%struct.archive_entry*, i8*) #1

declare dso_local i64 @archive_entry_copy_pathname_l(%struct.archive_entry*, i8*, i32, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i64 @archive_entry_copy_uname_l(%struct.archive_entry*, i8*, i32, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_copy_uname(%struct.archive_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
