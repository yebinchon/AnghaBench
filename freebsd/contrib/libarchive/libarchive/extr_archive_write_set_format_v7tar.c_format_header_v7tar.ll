; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_v7tar.c_format_header_v7tar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_v7tar.c_format_header_v7tar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_string_conv = type { i32 }

@template_header = common dso_local global i8 0, align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Pathname\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't translate pathname '%s' to %s\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@V7TAR_name_size = common dso_local global i64 0, align 8
@V7TAR_name_offset = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Pathname too long\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Linkname\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Can't translate linkname '%s' to %s\00", align 1
@V7TAR_linkname_size = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Link contents too long\00", align 1
@V7TAR_linkname_offset = common dso_local global i32 0, align 4
@V7TAR_mode_offset = common dso_local global i32 0, align 4
@V7TAR_mode_size = common dso_local global i32 0, align 4
@V7TAR_mode_max_size = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Numeric mode too large\00", align 1
@V7TAR_uid_offset = common dso_local global i32 0, align 4
@V7TAR_uid_size = common dso_local global i32 0, align 4
@V7TAR_uid_max_size = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"Numeric user ID too large\00", align 1
@V7TAR_gid_offset = common dso_local global i32 0, align 4
@V7TAR_gid_size = common dso_local global i32 0, align 4
@V7TAR_gid_max_size = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Numeric group ID too large\00", align 1
@V7TAR_size_offset = common dso_local global i32 0, align 4
@V7TAR_size_size = common dso_local global i32 0, align 4
@V7TAR_size_max_size = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [23 x i8] c"File size out of range\00", align 1
@V7TAR_mtime_offset = common dso_local global i32 0, align 4
@V7TAR_mtime_size = common dso_local global i32 0, align 4
@V7TAR_mtime_max_size = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [33 x i8] c"File modification time too large\00", align 1
@V7TAR_typeflag_offset = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [43 x i8] c"tar format cannot archive character device\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"tar format cannot archive block device\00", align 1
@.str.13 = private unnamed_addr constant [31 x i8] c"tar format cannot archive fifo\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"tar format cannot archive socket\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"tar format cannot archive this (mode=0%lo)\00", align 1
@V7TAR_checksum_offset = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, %struct.archive_entry*, i32, %struct.archive_string_conv*)* @format_header_v7tar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @format_header_v7tar(%struct.archive_write* %0, i8* %1, %struct.archive_entry* %2, i32 %3, %struct.archive_string_conv* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_write*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.archive_string_conv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.archive_string_conv* %4, %struct.archive_string_conv** %11, align 8
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %19, align 4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @memcpy(i8* %20, i8* @template_header, i64 512)
  %22 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %23 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8
  %24 = call i32 @archive_entry_pathname_l(%struct.archive_entry* %22, i8** %18, i64* %16, %struct.archive_string_conv* %23)
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* %14, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %5
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @ENOMEM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %33 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %32, i32 0, i32 0
  %34 = load i64, i64* @ENOMEM, align 8
  %35 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %33, i64 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %36, i32* %6, align 4
  br label %347

37:                                               ; preds = %27
  %38 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %39 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %38, i32 0, i32 0
  %40 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %41 = sext i32 %40 to i64
  %42 = load i8*, i8** %18, align 8
  %43 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8
  %44 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %43)
  %45 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %39, i64 %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %44)
  %46 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %46, i32* %15, align 4
  br label %47

47:                                               ; preds = %37, %5
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %47
  %51 = load i64, i64* %16, align 8
  %52 = load i64, i64* @V7TAR_name_size, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i32, i32* @V7TAR_name_offset, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8*, i8** %18, align 8
  %60 = load i64, i64* %16, align 8
  %61 = call i32 @memcpy(i8* %58, i8* %59, i64 %60)
  br label %85

62:                                               ; preds = %50, %47
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* @V7TAR_name_size, align 8
  %68 = icmp ule i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = load i32, i32* @V7TAR_name_offset, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i8*, i8** %18, align 8
  %75 = load i64, i64* %16, align 8
  %76 = call i32 @memcpy(i8* %73, i8* %74, i64 %75)
  br label %84

77:                                               ; preds = %65, %62
  %78 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %79 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %78, i32 0, i32 0
  %80 = load i32, i32* @ENAMETOOLONG, align 4
  %81 = sext i32 %80 to i64
  %82 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %79, i64 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %83 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %77, %69
  br label %85

85:                                               ; preds = %84, %54
  %86 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %87 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8
  %88 = call i32 @archive_entry_hardlink_l(%struct.archive_entry* %86, i8** %17, i64* %16, %struct.archive_string_conv* %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %111

91:                                               ; preds = %85
  %92 = load i64, i64* @errno, align 8
  %93 = load i64, i64* @ENOMEM, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %97 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %96, i32 0, i32 0
  %98 = load i64, i64* @ENOMEM, align 8
  %99 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %97, i64 %98, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %100 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %100, i32* %6, align 4
  br label %347

101:                                              ; preds = %91
  %102 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %103 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %102, i32 0, i32 0
  %104 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %105 = sext i32 %104 to i64
  %106 = load i8*, i8** %17, align 8
  %107 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8
  %108 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %107)
  %109 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %103, i64 %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %106, i32 %108)
  %110 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %101, %85
  %112 = load i64, i64* %16, align 8
  %113 = icmp ugt i64 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 49, i32* %19, align 4
  br label %142

115:                                              ; preds = %111
  %116 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %117 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8
  %118 = call i32 @archive_entry_symlink_l(%struct.archive_entry* %116, i8** %17, i64* %16, %struct.archive_string_conv* %117)
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %115
  %122 = load i64, i64* @errno, align 8
  %123 = load i64, i64* @ENOMEM, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %131

125:                                              ; preds = %121
  %126 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %127 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %126, i32 0, i32 0
  %128 = load i64, i64* @ENOMEM, align 8
  %129 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %127, i64 %128, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %130 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %130, i32* %6, align 4
  br label %347

131:                                              ; preds = %121
  %132 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %133 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %132, i32 0, i32 0
  %134 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %135 = sext i32 %134 to i64
  %136 = load i8*, i8** %17, align 8
  %137 = load %struct.archive_string_conv*, %struct.archive_string_conv** %11, align 8
  %138 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %137)
  %139 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %133, i64 %135, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %136, i32 %138)
  %140 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %140, i32* %15, align 4
  br label %141

141:                                              ; preds = %131, %115
  br label %142

142:                                              ; preds = %141, %114
  %143 = load i64, i64* %16, align 8
  %144 = icmp ugt i64 %143, 0
  br i1 %144, label %145, label %165

145:                                              ; preds = %142
  %146 = load i64, i64* %16, align 8
  %147 = load i64, i64* @V7TAR_linkname_size, align 8
  %148 = icmp uge i64 %146, %147
  br i1 %148, label %149, label %157

149:                                              ; preds = %145
  %150 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %151 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %150, i32 0, i32 0
  %152 = load i32, i32* @ENAMETOOLONG, align 4
  %153 = sext i32 %152 to i64
  %154 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %151, i64 %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %155 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %155, i32* %15, align 4
  %156 = load i64, i64* @V7TAR_linkname_size, align 8
  store i64 %156, i64* %16, align 8
  br label %157

157:                                              ; preds = %149, %145
  %158 = load i8*, i8** %8, align 8
  %159 = load i32, i32* @V7TAR_linkname_offset, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8*, i8** %17, align 8
  %163 = load i64, i64* %16, align 8
  %164 = call i32 @memcpy(i8* %161, i8* %162, i64 %163)
  br label %165

165:                                              ; preds = %157, %142
  %166 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %167 = call i32 @archive_entry_mode(%struct.archive_entry* %166)
  %168 = and i32 %167, 4095
  %169 = load i8*, i8** %8, align 8
  %170 = load i32, i32* @V7TAR_mode_offset, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i8, i8* %169, i64 %171
  %173 = load i32, i32* @V7TAR_mode_size, align 4
  %174 = load i32, i32* @V7TAR_mode_max_size, align 4
  %175 = load i32, i32* %10, align 4
  %176 = call i64 @format_number(i32 %168, i8* %172, i32 %173, i32 %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %165
  %179 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %180 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %179, i32 0, i32 0
  %181 = load i32, i32* @ERANGE, align 4
  %182 = sext i32 %181 to i64
  %183 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %180, i64 %182, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %184 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %184, i32* %15, align 4
  br label %185

185:                                              ; preds = %178, %165
  %186 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %187 = call i32 @archive_entry_uid(%struct.archive_entry* %186)
  %188 = load i8*, i8** %8, align 8
  %189 = load i32, i32* @V7TAR_uid_offset, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i8, i8* %188, i64 %190
  %192 = load i32, i32* @V7TAR_uid_size, align 4
  %193 = load i32, i32* @V7TAR_uid_max_size, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i64 @format_number(i32 %187, i8* %191, i32 %192, i32 %193, i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %204

197:                                              ; preds = %185
  %198 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %199 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %198, i32 0, i32 0
  %200 = load i32, i32* @ERANGE, align 4
  %201 = sext i32 %200 to i64
  %202 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %199, i64 %201, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %203 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %203, i32* %15, align 4
  br label %204

204:                                              ; preds = %197, %185
  %205 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %206 = call i32 @archive_entry_gid(%struct.archive_entry* %205)
  %207 = load i8*, i8** %8, align 8
  %208 = load i32, i32* @V7TAR_gid_offset, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i8, i8* %207, i64 %209
  %211 = load i32, i32* @V7TAR_gid_size, align 4
  %212 = load i32, i32* @V7TAR_gid_max_size, align 4
  %213 = load i32, i32* %10, align 4
  %214 = call i64 @format_number(i32 %206, i8* %210, i32 %211, i32 %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %223

216:                                              ; preds = %204
  %217 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %218 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %217, i32 0, i32 0
  %219 = load i32, i32* @ERANGE, align 4
  %220 = sext i32 %219 to i64
  %221 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %218, i64 %220, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %222 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %222, i32* %15, align 4
  br label %223

223:                                              ; preds = %216, %204
  %224 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %225 = call i32 @archive_entry_size(%struct.archive_entry* %224)
  %226 = load i8*, i8** %8, align 8
  %227 = load i32, i32* @V7TAR_size_offset, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8, i8* %226, i64 %228
  %230 = load i32, i32* @V7TAR_size_size, align 4
  %231 = load i32, i32* @V7TAR_size_max_size, align 4
  %232 = load i32, i32* %10, align 4
  %233 = call i64 @format_number(i32 %225, i8* %229, i32 %230, i32 %231, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %223
  %236 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %237 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %236, i32 0, i32 0
  %238 = load i32, i32* @ERANGE, align 4
  %239 = sext i32 %238 to i64
  %240 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %237, i64 %239, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %241 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %241, i32* %15, align 4
  br label %242

242:                                              ; preds = %235, %223
  %243 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %244 = call i32 @archive_entry_mtime(%struct.archive_entry* %243)
  %245 = load i8*, i8** %8, align 8
  %246 = load i32, i32* @V7TAR_mtime_offset, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  %249 = load i32, i32* @V7TAR_mtime_size, align 4
  %250 = load i32, i32* @V7TAR_mtime_max_size, align 4
  %251 = load i32, i32* %10, align 4
  %252 = call i64 @format_number(i32 %244, i8* %248, i32 %249, i32 %250, i32 %251)
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %242
  %255 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %256 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %255, i32 0, i32 0
  %257 = load i32, i32* @ERANGE, align 4
  %258 = sext i32 %257 to i64
  %259 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %256, i64 %258, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0))
  %260 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %260, i32* %15, align 4
  br label %261

261:                                              ; preds = %254, %242
  %262 = load i32, i32* %19, align 4
  %263 = icmp sge i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = load i32, i32* %19, align 4
  %266 = trunc i32 %265 to i8
  %267 = load i8*, i8** %8, align 8
  %268 = load i64, i64* @V7TAR_typeflag_offset, align 8
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8 %266, i8* %269, align 1
  br label %317

270:                                              ; preds = %261
  %271 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %272 = call i32 @archive_entry_filetype(%struct.archive_entry* %271)
  switch i32 %272, label %306 [
    i32 129, label %273
    i32 132, label %273
    i32 130, label %274
    i32 133, label %278
    i32 134, label %285
    i32 131, label %292
    i32 128, label %299
  ]

273:                                              ; preds = %270, %270
  br label %316

274:                                              ; preds = %270
  %275 = load i8*, i8** %8, align 8
  %276 = load i64, i64* @V7TAR_typeflag_offset, align 8
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  store i8 50, i8* %277, align 1
  br label %316

278:                                              ; preds = %270
  %279 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %280 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %279, i32 0, i32 0
  %281 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %282 = sext i32 %281 to i64
  %283 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %280, i64 %282, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %284 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %284, i32* %6, align 4
  br label %347

285:                                              ; preds = %270
  %286 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %287 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %286, i32 0, i32 0
  %288 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %289 = sext i32 %288 to i64
  %290 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %287, i64 %289, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0))
  %291 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %291, i32* %6, align 4
  br label %347

292:                                              ; preds = %270
  %293 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %294 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %293, i32 0, i32 0
  %295 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %296 = sext i32 %295 to i64
  %297 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %294, i64 %296, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.13, i64 0, i64 0))
  %298 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %298, i32* %6, align 4
  br label %347

299:                                              ; preds = %270
  %300 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %301 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %300, i32 0, i32 0
  %302 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %303 = sext i32 %302 to i64
  %304 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %301, i64 %303, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0))
  %305 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %305, i32* %6, align 4
  br label %347

306:                                              ; preds = %270
  %307 = load %struct.archive_write*, %struct.archive_write** %7, align 8
  %308 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %307, i32 0, i32 0
  %309 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %310 = sext i32 %309 to i64
  %311 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %312 = call i32 @archive_entry_mode(%struct.archive_entry* %311)
  %313 = sext i32 %312 to i64
  %314 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %308, i64 %310, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i64 %313)
  %315 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %315, i32* %15, align 4
  br label %316

316:                                              ; preds = %306, %274, %273
  br label %317

317:                                              ; preds = %316, %264
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %318

318:                                              ; preds = %331, %317
  %319 = load i32, i32* %13, align 4
  %320 = icmp slt i32 %319, 512
  br i1 %320, label %321, label %334

321:                                              ; preds = %318
  %322 = load i8*, i8** %8, align 8
  %323 = load i32, i32* %13, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds i8, i8* %322, i64 %324
  %326 = load i8, i8* %325, align 1
  %327 = sext i8 %326 to i32
  %328 = and i32 255, %327
  %329 = load i32, i32* %12, align 4
  %330 = add i32 %329, %328
  store i32 %330, i32* %12, align 4
  br label %331

331:                                              ; preds = %321
  %332 = load i32, i32* %13, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %13, align 4
  br label %318

334:                                              ; preds = %318
  %335 = load i32, i32* %12, align 4
  %336 = load i8*, i8** %8, align 8
  %337 = load i32, i32* @V7TAR_checksum_offset, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i8, i8* %336, i64 %338
  %340 = call i32 @format_octal(i32 %335, i8* %339, i32 6)
  %341 = load i8*, i8** %8, align 8
  %342 = load i32, i32* @V7TAR_checksum_offset, align 4
  %343 = add nsw i32 %342, 6
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i8, i8* %341, i64 %344
  store i8 0, i8* %345, align 1
  %346 = load i32, i32* %15, align 4
  store i32 %346, i32* %6, align 4
  br label %347

347:                                              ; preds = %334, %299, %292, %285, %278, %125, %95, %31
  %348 = load i32, i32* %6, align 4
  ret i32 %348
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @archive_entry_pathname_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*, ...) #1

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_hardlink_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_symlink_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i64 @format_number(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @format_octal(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
