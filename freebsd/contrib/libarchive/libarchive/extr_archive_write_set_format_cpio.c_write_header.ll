; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio.c_write_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio.c_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.archive_entry = type { i32 }
%struct.cpio = type { i32 }
%struct.archive_string_conv = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Pathname\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't translate pathname '%s' to %s\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@c_magic_offset = common dso_local global i32 0, align 4
@c_magic_size = common dso_local global i32 0, align 4
@c_dev_offset = common dso_local global i32 0, align 4
@c_dev_size = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"No memory for ino translation table\00", align 1
@ERANGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"Too many files for this cpio format\00", align 1
@c_ino_offset = common dso_local global i32 0, align 4
@c_ino_size = common dso_local global i32 0, align 4
@c_mode_offset = common dso_local global i32 0, align 4
@c_mode_size = common dso_local global i32 0, align 4
@c_uid_offset = common dso_local global i32 0, align 4
@c_uid_size = common dso_local global i32 0, align 4
@c_gid_offset = common dso_local global i32 0, align 4
@c_gid_size = common dso_local global i32 0, align 4
@c_nlink_offset = common dso_local global i32 0, align 4
@c_nlink_size = common dso_local global i32 0, align 4
@AE_IFBLK = common dso_local global i64 0, align 8
@AE_IFCHR = common dso_local global i64 0, align 8
@c_rdev_offset = common dso_local global i32 0, align 4
@c_rdev_size = common dso_local global i32 0, align 4
@c_mtime_offset = common dso_local global i32 0, align 4
@c_mtime_size = common dso_local global i32 0, align 4
@c_namesize_offset = common dso_local global i32 0, align 4
@c_namesize_size = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Linkname\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Can't translate linkname '%s' to %s\00", align 1
@c_filesize_offset = common dso_local global i32 0, align 4
@c_filesize_size = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"File is too large for cpio format.\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*)* @write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_header(%struct.archive_write* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca %struct.cpio*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [76 x i8], align 16
  %13 = alloca %struct.archive_string_conv*, align 8
  %14 = alloca %struct.archive_entry*, align 8
  %15 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %16 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %17 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.cpio*
  store %struct.cpio* %19, %struct.cpio** %5, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %20, i32* %10, align 4
  %21 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %22 = call %struct.archive_string_conv* @get_sconv(%struct.archive_write* %21)
  store %struct.archive_string_conv* %22, %struct.archive_string_conv** %13, align 8
  store %struct.archive_entry* null, %struct.archive_entry** %14, align 8
  %23 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %24 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %25 = call i32 @archive_entry_pathname_l(%struct.archive_entry* %23, i8** %7, i64* %15, %struct.archive_string_conv* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %2
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @ENOMEM, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %34 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %33, i32 0, i32 0
  %35 = load i64, i64* @ENOMEM, align 8
  %36 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %34, i64 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %37, i32* %10, align 4
  br label %288

38:                                               ; preds = %28
  %39 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %40 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %39, i32 0, i32 0
  %41 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %42 = sext i32 %41 to i64
  %43 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %44 = call i32 @archive_entry_pathname(%struct.archive_entry* %43)
  %45 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %46 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %45)
  %47 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %40, i64 %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %46)
  %48 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %38, %2
  %50 = load i64, i64* %15, align 8
  %51 = trunc i64 %50 to i32
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  %53 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %54 = call i32 @memset(i8* %53, i32 0, i32 76)
  %55 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %56 = load i32, i32* @c_magic_offset, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i32, i32* @c_magic_size, align 4
  %60 = call i32 @format_octal(i32 29127, i8* %58, i32 %59)
  %61 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %62 = call i32 @archive_entry_dev(%struct.archive_entry* %61)
  %63 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %64 = load i32, i32* @c_dev_offset, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i32, i32* @c_dev_size, align 4
  %68 = call i32 @format_octal(i32 %62, i8* %66, i32 %67)
  %69 = load %struct.cpio*, %struct.cpio** %5, align 8
  %70 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %71 = call i32 @synthesize_ino_value(%struct.cpio* %69, %struct.archive_entry* %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %49
  %75 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %76 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %75, i32 0, i32 0
  %77 = load i64, i64* @ENOMEM, align 8
  %78 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %76, i64 %77, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %79, i32* %10, align 4
  br label %288

80:                                               ; preds = %49
  %81 = load i32, i32* %11, align 4
  %82 = icmp sgt i32 %81, 262143
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %85 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %84, i32 0, i32 0
  %86 = load i64, i64* @ERANGE, align 8
  %87 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %85, i64 %86, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %88 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %88, i32* %10, align 4
  br label %288

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = and i32 %91, 262143
  %93 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %94 = load i32, i32* @c_ino_offset, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i32, i32* @c_ino_size, align 4
  %98 = call i32 @format_octal(i32 %92, i8* %96, i32 %97)
  %99 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %100 = call i32 @archive_entry_mode(%struct.archive_entry* %99)
  %101 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %102 = load i32, i32* @c_mode_offset, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i32, i32* @c_mode_size, align 4
  %106 = call i32 @format_octal(i32 %100, i8* %104, i32 %105)
  %107 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %108 = call i32 @archive_entry_uid(%struct.archive_entry* %107)
  %109 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %110 = load i32, i32* @c_uid_offset, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i32, i32* @c_uid_size, align 4
  %114 = call i32 @format_octal(i32 %108, i8* %112, i32 %113)
  %115 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %116 = call i32 @archive_entry_gid(%struct.archive_entry* %115)
  %117 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %118 = load i32, i32* @c_gid_offset, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i8, i8* %117, i64 %119
  %121 = load i32, i32* @c_gid_size, align 4
  %122 = call i32 @format_octal(i32 %116, i8* %120, i32 %121)
  %123 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %124 = call i32 @archive_entry_nlink(%struct.archive_entry* %123)
  %125 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %126 = load i32, i32* @c_nlink_offset, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %125, i64 %127
  %129 = load i32, i32* @c_nlink_size, align 4
  %130 = call i32 @format_octal(i32 %124, i8* %128, i32 %129)
  %131 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %132 = call i64 @archive_entry_filetype(%struct.archive_entry* %131)
  %133 = load i64, i64* @AE_IFBLK, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %140, label %135

135:                                              ; preds = %90
  %136 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %137 = call i64 @archive_entry_filetype(%struct.archive_entry* %136)
  %138 = load i64, i64* @AE_IFCHR, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %135, %90
  %141 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %142 = call i32 @archive_entry_dev(%struct.archive_entry* %141)
  %143 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %144 = load i32, i32* @c_rdev_offset, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %143, i64 %145
  %147 = load i32, i32* @c_rdev_size, align 4
  %148 = call i32 @format_octal(i32 %142, i8* %146, i32 %147)
  br label %156

149:                                              ; preds = %135
  %150 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %151 = load i32, i32* @c_rdev_offset, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i32, i32* @c_rdev_size, align 4
  %155 = call i32 @format_octal(i32 0, i8* %153, i32 %154)
  br label %156

156:                                              ; preds = %149, %140
  %157 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %158 = call i32 @archive_entry_mtime(%struct.archive_entry* %157)
  %159 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %160 = load i32, i32* @c_mtime_offset, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8, i8* %159, i64 %161
  %163 = load i32, i32* @c_mtime_size, align 4
  %164 = call i32 @format_octal(i32 %158, i8* %162, i32 %163)
  %165 = load i32, i32* %8, align 4
  %166 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %167 = load i32, i32* @c_namesize_offset, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i8, i8* %166, i64 %168
  %170 = load i32, i32* @c_namesize_size, align 4
  %171 = call i32 @format_octal(i32 %165, i8* %169, i32 %170)
  %172 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %173 = call i64 @archive_entry_filetype(%struct.archive_entry* %172)
  %174 = load i64, i64* @AE_IFREG, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %179

176:                                              ; preds = %156
  %177 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %178 = call i32 @archive_entry_set_size(%struct.archive_entry* %177, i32 0)
  br label %179

179:                                              ; preds = %176, %156
  %180 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %181 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %182 = call i32 @archive_entry_symlink_l(%struct.archive_entry* %180, i8** %6, i64* %15, %struct.archive_string_conv* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %206

185:                                              ; preds = %179
  %186 = load i64, i64* @errno, align 8
  %187 = load i64, i64* @ENOMEM, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %185
  %190 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %191 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %190, i32 0, i32 0
  %192 = load i64, i64* @ENOMEM, align 8
  %193 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %191, i64 %192, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %194 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %194, i32* %10, align 4
  br label %288

195:                                              ; preds = %185
  %196 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %197 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %196, i32 0, i32 0
  %198 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %199 = sext i32 %198 to i64
  %200 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %201 = call i32 @archive_entry_symlink(%struct.archive_entry* %200)
  %202 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %203 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %202)
  %204 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %197, i64 %199, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %201, i32 %203)
  %205 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %205, i32* %10, align 4
  br label %206

206:                                              ; preds = %195, %179
  %207 = load i64, i64* %15, align 8
  %208 = icmp ugt i64 %207, 0
  br i1 %208, label %209, label %226

209:                                              ; preds = %206
  %210 = load i8*, i8** %6, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %226

212:                                              ; preds = %209
  %213 = load i8*, i8** %6, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %212
  %218 = load i8*, i8** %6, align 8
  %219 = call i32 @strlen(i8* %218)
  %220 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %221 = load i32, i32* @c_filesize_offset, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i8, i8* %220, i64 %222
  %224 = load i32, i32* @c_filesize_size, align 4
  %225 = call i32 @format_octal(i32 %219, i8* %223, i32 %224)
  store i32 %225, i32* %9, align 4
  br label %235

226:                                              ; preds = %212, %209, %206
  %227 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %228 = call i32 @archive_entry_size(%struct.archive_entry* %227)
  %229 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %230 = load i32, i32* @c_filesize_offset, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  %233 = load i32, i32* @c_filesize_size, align 4
  %234 = call i32 @format_octal(i32 %228, i8* %232, i32 %233)
  store i32 %234, i32* %9, align 4
  br label %235

235:                                              ; preds = %226, %217
  %236 = load i32, i32* %9, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %240 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %239, i32 0, i32 0
  %241 = load i64, i64* @ERANGE, align 8
  %242 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %240, i64 %241, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %243 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %243, i32* %10, align 4
  br label %288

244:                                              ; preds = %235
  %245 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %246 = getelementptr inbounds [76 x i8], [76 x i8]* %12, i64 0, i64 0
  %247 = call i32 @__archive_write_output(%struct.archive_write* %245, i8* %246, i32 76)
  store i32 %247, i32* %9, align 4
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* @ARCHIVE_OK, align 4
  %250 = icmp ne i32 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %244
  %252 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %252, i32* %10, align 4
  br label %288

253:                                              ; preds = %244
  %254 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %255 = load i8*, i8** %7, align 8
  %256 = load i32, i32* %8, align 4
  %257 = call i32 @__archive_write_output(%struct.archive_write* %254, i8* %255, i32 %256)
  store i32 %257, i32* %9, align 4
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* @ARCHIVE_OK, align 4
  %260 = icmp ne i32 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %253
  %262 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %262, i32* %10, align 4
  br label %288

263:                                              ; preds = %253
  %264 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %265 = call i32 @archive_entry_size(%struct.archive_entry* %264)
  %266 = load %struct.cpio*, %struct.cpio** %5, align 8
  %267 = getelementptr inbounds %struct.cpio, %struct.cpio* %266, i32 0, i32 0
  store i32 %265, i32* %267, align 4
  %268 = load i8*, i8** %6, align 8
  %269 = icmp ne i8* %268, null
  br i1 %269, label %270, label %287

270:                                              ; preds = %263
  %271 = load i8*, i8** %6, align 8
  %272 = load i8, i8* %271, align 1
  %273 = sext i8 %272 to i32
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %287

275:                                              ; preds = %270
  %276 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %277 = load i8*, i8** %6, align 8
  %278 = load i8*, i8** %6, align 8
  %279 = call i32 @strlen(i8* %278)
  %280 = call i32 @__archive_write_output(%struct.archive_write* %276, i8* %277, i32 %279)
  store i32 %280, i32* %9, align 4
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @ARCHIVE_OK, align 4
  %283 = icmp ne i32 %281, %282
  br i1 %283, label %284, label %286

284:                                              ; preds = %275
  %285 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %285, i32* %10, align 4
  br label %288

286:                                              ; preds = %275
  br label %287

287:                                              ; preds = %286, %270, %263
  br label %288

288:                                              ; preds = %287, %284, %261, %251, %238, %189, %83, %74, %32
  %289 = load %struct.archive_entry*, %struct.archive_entry** %14, align 8
  %290 = call i32 @archive_entry_free(%struct.archive_entry* %289)
  %291 = load i32, i32* %10, align 4
  ret i32 %291
}

declare dso_local %struct.archive_string_conv* @get_sconv(%struct.archive_write*) #1

declare dso_local i32 @archive_entry_pathname_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*, ...) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @format_octal(i32, i8*, i32) #1

declare dso_local i32 @archive_entry_dev(%struct.archive_entry*) #1

declare dso_local i32 @synthesize_ino_value(%struct.cpio*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_nlink(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_symlink_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i8*, i32) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
