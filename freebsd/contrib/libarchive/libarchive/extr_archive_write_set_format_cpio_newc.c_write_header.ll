; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio_newc.c_write_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio_newc.c_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i64 }
%struct.archive_entry = type { i32 }
%struct.cpio = type { i32, i32 }
%struct.archive_string_conv = type { i32 }

@c_header_size = common dso_local global i32 0, align 4
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
@c_devmajor_offset = common dso_local global i32 0, align 4
@c_devmajor_size = common dso_local global i32 0, align 4
@c_devminor_offset = common dso_local global i32 0, align 4
@c_devminor_size = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"large inode number truncated\00", align 1
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
@c_rdevmajor_offset = common dso_local global i32 0, align 4
@c_rdevmajor_size = common dso_local global i32 0, align 4
@c_rdevminor_offset = common dso_local global i32 0, align 4
@c_rdevminor_size = common dso_local global i32 0, align 4
@c_mtime_offset = common dso_local global i32 0, align 4
@c_mtime_size = common dso_local global i32 0, align 4
@c_namesize_offset = common dso_local global i32 0, align 4
@c_namesize_size = common dso_local global i32 0, align 4
@c_checksum_offset = common dso_local global i32 0, align 4
@c_checksum_size = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Can't allocate memory for Likname\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Can't translate linkname '%s' to %s\00", align 1
@c_filesize_offset = common dso_local global i32 0, align 4
@c_filesize_size = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"File is too large for this format.\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*)* @write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_header(%struct.archive_write* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cpio*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.archive_string_conv*, align 8
  %15 = alloca %struct.archive_entry*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %18 = load i32, i32* @c_header_size, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %23 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.cpio*
  store %struct.cpio* %25, %struct.cpio** %6, align 8
  %26 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %28 = call %struct.archive_string_conv* @get_sconv(%struct.archive_write* %27)
  store %struct.archive_string_conv* %28, %struct.archive_string_conv** %14, align 8
  store %struct.archive_entry* null, %struct.archive_entry** %15, align 8
  %29 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %30 = load %struct.archive_string_conv*, %struct.archive_string_conv** %14, align 8
  %31 = call i32 @archive_entry_pathname_l(%struct.archive_entry* %29, i8** %8, i64* %16, %struct.archive_string_conv* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %2
  %35 = load i64, i64* @errno, align 8
  %36 = load i64, i64* @ENOMEM, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %40 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %39, i32 0, i32 0
  %41 = load i64, i64* @ENOMEM, align 8
  %42 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %40, i64 %41, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %43, i32* %11, align 4
  br label %328

44:                                               ; preds = %34
  %45 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %46 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %45, i32 0, i32 0
  %47 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %48 = sext i32 %47 to i64
  %49 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %50 = call i32 @archive_entry_pathname(%struct.archive_entry* %49)
  %51 = load %struct.archive_string_conv*, %struct.archive_string_conv** %14, align 8
  %52 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %51)
  %53 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %46, i64 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %52)
  %54 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %44, %2
  %56 = load i64, i64* %16, align 8
  %57 = trunc i64 %56 to i32
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* @c_header_size, align 4
  %60 = call i32 @memset(i8* %21, i32 0, i32 %59)
  %61 = load i32, i32* @c_magic_offset, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %21, i64 %62
  %64 = load i32, i32* @c_magic_size, align 4
  %65 = call i32 @format_hex(i32 460545, i8* %63, i32 %64)
  %66 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %67 = call i32 @archive_entry_devmajor(%struct.archive_entry* %66)
  %68 = load i32, i32* @c_devmajor_offset, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %21, i64 %69
  %71 = load i32, i32* @c_devmajor_size, align 4
  %72 = call i32 @format_hex(i32 %67, i8* %70, i32 %71)
  %73 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %74 = call i32 @archive_entry_devminor(%struct.archive_entry* %73)
  %75 = load i32, i32* @c_devminor_offset, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %21, i64 %76
  %78 = load i32, i32* @c_devminor_size, align 4
  %79 = call i32 @format_hex(i32 %74, i8* %77, i32 %78)
  %80 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %81 = call i32 @archive_entry_ino64(%struct.archive_entry* %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ugt i32 %82, -1
  br i1 %83, label %84, label %90

84:                                               ; preds = %55
  %85 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %86 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %85, i32 0, i32 0
  %87 = load i64, i64* @ERANGE, align 8
  %88 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %86, i64 %87, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %89 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %84, %55
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @c_ino_offset, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %21, i64 %93
  %95 = load i32, i32* @c_ino_size, align 4
  %96 = call i32 @format_hex(i32 %91, i8* %94, i32 %95)
  %97 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %98 = call i32 @archive_entry_mode(%struct.archive_entry* %97)
  %99 = load i32, i32* @c_mode_offset, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %21, i64 %100
  %102 = load i32, i32* @c_mode_size, align 4
  %103 = call i32 @format_hex(i32 %98, i8* %101, i32 %102)
  %104 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %105 = call i32 @archive_entry_uid(%struct.archive_entry* %104)
  %106 = load i32, i32* @c_uid_offset, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %21, i64 %107
  %109 = load i32, i32* @c_uid_size, align 4
  %110 = call i32 @format_hex(i32 %105, i8* %108, i32 %109)
  %111 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %112 = call i32 @archive_entry_gid(%struct.archive_entry* %111)
  %113 = load i32, i32* @c_gid_offset, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %21, i64 %114
  %116 = load i32, i32* @c_gid_size, align 4
  %117 = call i32 @format_hex(i32 %112, i8* %115, i32 %116)
  %118 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %119 = call i32 @archive_entry_nlink(%struct.archive_entry* %118)
  %120 = load i32, i32* @c_nlink_offset, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %21, i64 %121
  %123 = load i32, i32* @c_nlink_size, align 4
  %124 = call i32 @format_hex(i32 %119, i8* %122, i32 %123)
  %125 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %126 = call i64 @archive_entry_filetype(%struct.archive_entry* %125)
  %127 = load i64, i64* @AE_IFBLK, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %134, label %129

129:                                              ; preds = %90
  %130 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %131 = call i64 @archive_entry_filetype(%struct.archive_entry* %130)
  %132 = load i64, i64* @AE_IFCHR, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %149

134:                                              ; preds = %129, %90
  %135 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %136 = call i32 @archive_entry_rdevmajor(%struct.archive_entry* %135)
  %137 = load i32, i32* @c_rdevmajor_offset, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %21, i64 %138
  %140 = load i32, i32* @c_rdevmajor_size, align 4
  %141 = call i32 @format_hex(i32 %136, i8* %139, i32 %140)
  %142 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %143 = call i32 @archive_entry_rdevminor(%struct.archive_entry* %142)
  %144 = load i32, i32* @c_rdevminor_offset, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i8, i8* %21, i64 %145
  %147 = load i32, i32* @c_rdevminor_size, align 4
  %148 = call i32 @format_hex(i32 %143, i8* %146, i32 %147)
  br label %160

149:                                              ; preds = %129
  %150 = load i32, i32* @c_rdevmajor_offset, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %21, i64 %151
  %153 = load i32, i32* @c_rdevmajor_size, align 4
  %154 = call i32 @format_hex(i32 0, i8* %152, i32 %153)
  %155 = load i32, i32* @c_rdevminor_offset, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %21, i64 %156
  %158 = load i32, i32* @c_rdevminor_size, align 4
  %159 = call i32 @format_hex(i32 0, i8* %157, i32 %158)
  br label %160

160:                                              ; preds = %149, %134
  %161 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %162 = call i32 @archive_entry_mtime(%struct.archive_entry* %161)
  %163 = load i32, i32* @c_mtime_offset, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i8, i8* %21, i64 %164
  %166 = load i32, i32* @c_mtime_size, align 4
  %167 = call i32 @format_hex(i32 %162, i8* %165, i32 %166)
  %168 = load i32, i32* %9, align 4
  %169 = load i32, i32* @c_namesize_offset, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %21, i64 %170
  %172 = load i32, i32* @c_namesize_size, align 4
  %173 = call i32 @format_hex(i32 %168, i8* %171, i32 %172)
  %174 = load i32, i32* @c_checksum_offset, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8, i8* %21, i64 %175
  %177 = load i32, i32* @c_checksum_size, align 4
  %178 = call i32 @format_hex(i32 0, i8* %176, i32 %177)
  %179 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %180 = call i64 @archive_entry_filetype(%struct.archive_entry* %179)
  %181 = load i64, i64* @AE_IFREG, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %160
  %184 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %185 = call i32 @archive_entry_set_size(%struct.archive_entry* %184, i32 0)
  br label %186

186:                                              ; preds = %183, %160
  %187 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %188 = load %struct.archive_string_conv*, %struct.archive_string_conv** %14, align 8
  %189 = call i32 @archive_entry_symlink_l(%struct.archive_entry* %187, i8** %7, i64* %16, %struct.archive_string_conv* %188)
  store i32 %189, i32* %10, align 4
  %190 = load i32, i32* %10, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %186
  %193 = load i64, i64* @errno, align 8
  %194 = load i64, i64* @ENOMEM, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %192
  %197 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %198 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %197, i32 0, i32 0
  %199 = load i64, i64* @ENOMEM, align 8
  %200 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %198, i64 %199, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %201 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %201, i32* %11, align 4
  br label %328

202:                                              ; preds = %192
  %203 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %204 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %203, i32 0, i32 0
  %205 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %206 = sext i32 %205 to i64
  %207 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %208 = call i32 @archive_entry_symlink(%struct.archive_entry* %207)
  %209 = load %struct.archive_string_conv*, %struct.archive_string_conv** %14, align 8
  %210 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %209)
  %211 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %204, i64 %206, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %208, i32 %210)
  %212 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %212, i32* %11, align 4
  br label %213

213:                                              ; preds = %202, %186
  %214 = load i64, i64* %16, align 8
  %215 = icmp ugt i64 %214, 0
  br i1 %215, label %216, label %232

216:                                              ; preds = %213
  %217 = load i8*, i8** %7, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %232

219:                                              ; preds = %216
  %220 = load i8*, i8** %7, align 8
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %232

224:                                              ; preds = %219
  %225 = load i8*, i8** %7, align 8
  %226 = call i32 @strlen(i8* %225)
  %227 = load i32, i32* @c_filesize_offset, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %21, i64 %228
  %230 = load i32, i32* @c_filesize_size, align 4
  %231 = call i32 @format_hex(i32 %226, i8* %229, i32 %230)
  store i32 %231, i32* %10, align 4
  br label %240

232:                                              ; preds = %219, %216, %213
  %233 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %234 = call i32 @archive_entry_size(%struct.archive_entry* %233)
  %235 = load i32, i32* @c_filesize_offset, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i8, i8* %21, i64 %236
  %238 = load i32, i32* @c_filesize_size, align 4
  %239 = call i32 @format_hex(i32 %234, i8* %237, i32 %238)
  store i32 %239, i32* %10, align 4
  br label %240

240:                                              ; preds = %232, %224
  %241 = load i32, i32* %10, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %240
  %244 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %245 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %244, i32 0, i32 0
  %246 = load i64, i64* @ERANGE, align 8
  %247 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %245, i64 %246, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %248 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %248, i32* %11, align 4
  br label %328

249:                                              ; preds = %240
  %250 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %251 = load i32, i32* @c_header_size, align 4
  %252 = call i32 @__archive_write_output(%struct.archive_write* %250, i8* %21, i32 %251)
  store i32 %252, i32* %10, align 4
  %253 = load i32, i32* %10, align 4
  %254 = load i32, i32* @ARCHIVE_OK, align 4
  %255 = icmp ne i32 %253, %254
  br i1 %255, label %256, label %258

256:                                              ; preds = %249
  %257 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %257, i32* %11, align 4
  br label %328

258:                                              ; preds = %249
  %259 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %260 = load i8*, i8** %8, align 8
  %261 = load i32, i32* %9, align 4
  %262 = call i32 @__archive_write_output(%struct.archive_write* %259, i8* %260, i32 %261)
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* @ARCHIVE_OK, align 4
  %265 = icmp ne i32 %263, %264
  br i1 %265, label %266, label %268

266:                                              ; preds = %258
  %267 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %267, i32* %11, align 4
  br label %328

268:                                              ; preds = %258
  %269 = load i32, i32* %9, align 4
  %270 = load i32, i32* @c_header_size, align 4
  %271 = add nsw i32 %269, %270
  %272 = call i32 @PAD4(i32 %271)
  store i32 %272, i32* %17, align 4
  %273 = load i32, i32* %17, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %285

275:                                              ; preds = %268
  %276 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %277 = load i32, i32* %17, align 4
  %278 = call i32 @__archive_write_output(%struct.archive_write* %276, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %277)
  store i32 %278, i32* %10, align 4
  %279 = load i32, i32* %10, align 4
  %280 = load i32, i32* @ARCHIVE_OK, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %283, i32* %11, align 4
  br label %328

284:                                              ; preds = %275
  br label %285

285:                                              ; preds = %284, %268
  %286 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %287 = call i32 @archive_entry_size(%struct.archive_entry* %286)
  %288 = load %struct.cpio*, %struct.cpio** %6, align 8
  %289 = getelementptr inbounds %struct.cpio, %struct.cpio* %288, i32 0, i32 0
  store i32 %287, i32* %289, align 4
  %290 = load %struct.cpio*, %struct.cpio** %6, align 8
  %291 = getelementptr inbounds %struct.cpio, %struct.cpio* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @PAD4(i32 %292)
  %294 = load %struct.cpio*, %struct.cpio** %6, align 8
  %295 = getelementptr inbounds %struct.cpio, %struct.cpio* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 4
  %296 = load i8*, i8** %7, align 8
  %297 = icmp ne i8* %296, null
  br i1 %297, label %298, label %327

298:                                              ; preds = %285
  %299 = load i8*, i8** %7, align 8
  %300 = load i8, i8* %299, align 1
  %301 = sext i8 %300 to i32
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %327

303:                                              ; preds = %298
  %304 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %305 = load i8*, i8** %7, align 8
  %306 = load i8*, i8** %7, align 8
  %307 = call i32 @strlen(i8* %306)
  %308 = call i32 @__archive_write_output(%struct.archive_write* %304, i8* %305, i32 %307)
  store i32 %308, i32* %10, align 4
  %309 = load i32, i32* %10, align 4
  %310 = load i32, i32* @ARCHIVE_OK, align 4
  %311 = icmp ne i32 %309, %310
  br i1 %311, label %312, label %314

312:                                              ; preds = %303
  %313 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %313, i32* %11, align 4
  br label %328

314:                                              ; preds = %303
  %315 = load i8*, i8** %7, align 8
  %316 = call i32 @strlen(i8* %315)
  %317 = call i32 @PAD4(i32 %316)
  store i32 %317, i32* %17, align 4
  %318 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %319 = load i32, i32* %17, align 4
  %320 = call i32 @__archive_write_output(%struct.archive_write* %318, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %319)
  store i32 %320, i32* %10, align 4
  %321 = load i32, i32* %10, align 4
  %322 = load i32, i32* @ARCHIVE_OK, align 4
  %323 = icmp ne i32 %321, %322
  br i1 %323, label %324, label %326

324:                                              ; preds = %314
  %325 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %325, i32* %11, align 4
  br label %328

326:                                              ; preds = %314
  br label %327

327:                                              ; preds = %326, %298, %285
  br label %328

328:                                              ; preds = %327, %324, %312, %282, %266, %256, %243, %196, %38
  %329 = load %struct.archive_entry*, %struct.archive_entry** %15, align 8
  %330 = call i32 @archive_entry_free(%struct.archive_entry* %329)
  %331 = load i32, i32* %11, align 4
  %332 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %332)
  ret i32 %331
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.archive_string_conv* @get_sconv(%struct.archive_write*) #2

declare dso_local i32 @archive_entry_pathname_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #2

declare dso_local i32 @archive_set_error(i32*, i64, i8*, ...) #2

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #2

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @format_hex(i32, i8*, i32) #2

declare dso_local i32 @archive_entry_devmajor(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_devminor(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_ino64(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_nlink(%struct.archive_entry*) #2

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_rdevmajor(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_rdevminor(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #2

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #2

declare dso_local i32 @archive_entry_symlink_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #2

declare dso_local i32 @archive_entry_symlink(%struct.archive_entry*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #2

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i8*, i32) #2

declare dso_local i32 @PAD4(i32) #2

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
