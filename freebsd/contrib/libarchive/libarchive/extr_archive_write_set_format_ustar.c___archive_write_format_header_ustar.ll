; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ustar.c___archive_write_format_header_ustar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_ustar.c___archive_write_format_header_ustar.c"
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
@USTAR_name_size = common dso_local global i64 0, align 8
@USTAR_name_offset = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Pathname too long\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@USTAR_prefix_size = common dso_local global i32 0, align 4
@USTAR_prefix_offset = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"Can't allocate memory for Linkname\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Can't translate linkname '%s' to %s\00", align 1
@USTAR_linkname_size = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"Link contents too long\00", align 1
@USTAR_linkname_offset = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"Can't allocate memory for Uname\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"Can't translate uname '%s' to %s\00", align 1
@USTAR_uname_size = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Username too long\00", align 1
@USTAR_uname_offset = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [32 x i8] c"Can't allocate memory for Gname\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"Can't translate gname '%s' to %s\00", align 1
@USTAR_gname_size = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [20 x i8] c"Group name too long\00", align 1
@USTAR_gname_offset = common dso_local global i32 0, align 4
@USTAR_mode_offset = common dso_local global i32 0, align 4
@USTAR_mode_size = common dso_local global i32 0, align 4
@USTAR_mode_max_size = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [23 x i8] c"Numeric mode too large\00", align 1
@USTAR_uid_offset = common dso_local global i32 0, align 4
@USTAR_uid_size = common dso_local global i32 0, align 4
@USTAR_uid_max_size = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [26 x i8] c"Numeric user ID too large\00", align 1
@USTAR_gid_offset = common dso_local global i32 0, align 4
@USTAR_gid_size = common dso_local global i32 0, align 4
@USTAR_gid_max_size = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"Numeric group ID too large\00", align 1
@USTAR_size_offset = common dso_local global i32 0, align 4
@USTAR_size_size = common dso_local global i32 0, align 4
@USTAR_size_max_size = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [23 x i8] c"File size out of range\00", align 1
@USTAR_mtime_offset = common dso_local global i32 0, align 4
@USTAR_mtime_size = common dso_local global i32 0, align 4
@USTAR_mtime_max_size = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [33 x i8] c"File modification time too large\00", align 1
@USTAR_rdevmajor_offset = common dso_local global i32 0, align 4
@USTAR_rdevmajor_size = common dso_local global i32 0, align 4
@USTAR_rdevmajor_max_size = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [30 x i8] c"Major device number too large\00", align 1
@USTAR_rdevminor_offset = common dso_local global i32 0, align 4
@USTAR_rdevminor_size = common dso_local global i32 0, align 4
@USTAR_rdevminor_max_size = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [30 x i8] c"Minor device number too large\00", align 1
@USTAR_typeflag_offset = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [33 x i8] c"tar format cannot archive socket\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c"tar format cannot archive this (mode=0%lo)\00", align 1
@USTAR_checksum_offset = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_write_format_header_ustar(%struct.archive_write* %0, i8* %1, %struct.archive_entry* %2, i32 %3, i32 %4, %struct.archive_string_conv* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_write*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.archive_entry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.archive_string_conv*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %8, align 8
  store i8* %1, i8** %9, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.archive_string_conv* %5, %struct.archive_string_conv** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %21, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = call i32 @memcpy(i8* %22, i8* @template_header, i64 512)
  %24 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %25 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %26 = call i32 @archive_entry_pathname_l(%struct.archive_entry* %24, i8** %20, i64* %18, %struct.archive_string_conv* %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %49

29:                                               ; preds = %6
  %30 = load i64, i64* @errno, align 8
  %31 = load i64, i64* @ENOMEM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %35 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %34, i32 0, i32 0
  %36 = load i64, i64* @ENOMEM, align 8
  %37 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %35, i64 %36, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %38, i32* %7, align 4
  br label %560

39:                                               ; preds = %29
  %40 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %41 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %40, i32 0, i32 0
  %42 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %43 = sext i32 %42 to i64
  %44 = load i8*, i8** %20, align 8
  %45 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %46 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %45)
  %47 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %41, i64 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %46)
  %48 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %48, i32* %17, align 4
  br label %49

49:                                               ; preds = %39, %6
  %50 = load i64, i64* %18, align 8
  %51 = load i64, i64* @USTAR_name_size, align 8
  %52 = icmp ule i64 %50, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %49
  %54 = load i8*, i8** %9, align 8
  %55 = load i32, i32* @USTAR_name_offset, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %54, i64 %56
  %58 = load i8*, i8** %20, align 8
  %59 = load i64, i64* %18, align 8
  %60 = call i32 @memcpy(i8* %57, i8* %58, i64 %59)
  br label %144

61:                                               ; preds = %49
  %62 = load i8*, i8** %20, align 8
  %63 = load i64, i64* %18, align 8
  %64 = getelementptr inbounds i8, i8* %62, i64 %63
  %65 = load i64, i64* @USTAR_name_size, align 8
  %66 = sub i64 0, %65
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = getelementptr inbounds i8, i8* %67, i64 -1
  %69 = call i8* @strchr(i8* %68, i8 signext 47)
  store i8* %69, i8** %19, align 8
  %70 = load i8*, i8** %19, align 8
  %71 = load i8*, i8** %20, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %61
  %74 = load i8*, i8** %19, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = call i8* @strchr(i8* %75, i8 signext 47)
  store i8* %76, i8** %19, align 8
  br label %77

77:                                               ; preds = %73, %61
  %78 = load i8*, i8** %19, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %77
  %81 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %82 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %81, i32 0, i32 0
  %83 = load i32, i32* @ENAMETOOLONG, align 4
  %84 = sext i32 %83 to i64
  %85 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %82, i64 %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %86 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %86, i32* %17, align 4
  br label %143

87:                                               ; preds = %77
  %88 = load i8*, i8** %19, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %95 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %94, i32 0, i32 0
  %96 = load i32, i32* @ENAMETOOLONG, align 4
  %97 = sext i32 %96 to i64
  %98 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %95, i64 %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %99, i32* %17, align 4
  br label %142

100:                                              ; preds = %87
  %101 = load i8*, i8** %19, align 8
  %102 = load i8*, i8** %20, align 8
  %103 = load i32, i32* @USTAR_prefix_size, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = icmp ugt i8* %101, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %109 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %108, i32 0, i32 0
  %110 = load i32, i32* @ENAMETOOLONG, align 4
  %111 = sext i32 %110 to i64
  %112 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %109, i64 %111, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %113 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %113, i32* %17, align 4
  br label %141

114:                                              ; preds = %100
  %115 = load i8*, i8** %9, align 8
  %116 = load i32, i32* @USTAR_prefix_offset, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %115, i64 %117
  %119 = load i8*, i8** %20, align 8
  %120 = load i8*, i8** %19, align 8
  %121 = load i8*, i8** %20, align 8
  %122 = ptrtoint i8* %120 to i64
  %123 = ptrtoint i8* %121 to i64
  %124 = sub i64 %122, %123
  %125 = call i32 @memcpy(i8* %118, i8* %119, i64 %124)
  %126 = load i8*, i8** %9, align 8
  %127 = load i32, i32* @USTAR_name_offset, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i8, i8* %126, i64 %128
  %130 = load i8*, i8** %19, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8*, i8** %20, align 8
  %133 = load i64, i64* %18, align 8
  %134 = getelementptr inbounds i8, i8* %132, i64 %133
  %135 = load i8*, i8** %19, align 8
  %136 = ptrtoint i8* %134 to i64
  %137 = ptrtoint i8* %135 to i64
  %138 = sub i64 %136, %137
  %139 = sub nsw i64 %138, 1
  %140 = call i32 @memcpy(i8* %129, i8* %131, i64 %139)
  br label %141

141:                                              ; preds = %114, %107
  br label %142

142:                                              ; preds = %141, %93
  br label %143

143:                                              ; preds = %142, %80
  br label %144

144:                                              ; preds = %143, %53
  %145 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %146 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %147 = call i32 @archive_entry_hardlink_l(%struct.archive_entry* %145, i8** %19, i64* %18, %struct.archive_string_conv* %146)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %170

150:                                              ; preds = %144
  %151 = load i64, i64* @errno, align 8
  %152 = load i64, i64* @ENOMEM, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %150
  %155 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %156 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %155, i32 0, i32 0
  %157 = load i64, i64* @ENOMEM, align 8
  %158 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %156, i64 %157, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %159 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %159, i32* %7, align 4
  br label %560

160:                                              ; preds = %150
  %161 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %162 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %161, i32 0, i32 0
  %163 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %164 = sext i32 %163 to i64
  %165 = load i8*, i8** %19, align 8
  %166 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %167 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %166)
  %168 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %162, i64 %164, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %165, i32 %167)
  %169 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %169, i32* %17, align 4
  br label %170

170:                                              ; preds = %160, %144
  %171 = load i64, i64* %18, align 8
  %172 = icmp ugt i64 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  store i32 49, i32* %21, align 4
  br label %201

174:                                              ; preds = %170
  %175 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %176 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %177 = call i32 @archive_entry_symlink_l(%struct.archive_entry* %175, i8** %19, i64* %18, %struct.archive_string_conv* %176)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %200

180:                                              ; preds = %174
  %181 = load i64, i64* @errno, align 8
  %182 = load i64, i64* @ENOMEM, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %180
  %185 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %186 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %185, i32 0, i32 0
  %187 = load i64, i64* @ENOMEM, align 8
  %188 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %186, i64 %187, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %189 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %189, i32* %7, align 4
  br label %560

190:                                              ; preds = %180
  %191 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %192 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %191, i32 0, i32 0
  %193 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %194 = sext i32 %193 to i64
  %195 = load i8*, i8** %19, align 8
  %196 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %197 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %196)
  %198 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %192, i64 %194, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %195, i32 %197)
  %199 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %199, i32* %17, align 4
  br label %200

200:                                              ; preds = %190, %174
  br label %201

201:                                              ; preds = %200, %173
  %202 = load i64, i64* %18, align 8
  %203 = icmp ugt i64 %202, 0
  br i1 %203, label %204, label %224

204:                                              ; preds = %201
  %205 = load i64, i64* %18, align 8
  %206 = load i64, i64* @USTAR_linkname_size, align 8
  %207 = icmp ugt i64 %205, %206
  br i1 %207, label %208, label %216

208:                                              ; preds = %204
  %209 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %210 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %209, i32 0, i32 0
  %211 = load i32, i32* @ENAMETOOLONG, align 4
  %212 = sext i32 %211 to i64
  %213 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %210, i64 %212, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %214 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %214, i32* %17, align 4
  %215 = load i64, i64* @USTAR_linkname_size, align 8
  store i64 %215, i64* %18, align 8
  br label %216

216:                                              ; preds = %208, %204
  %217 = load i8*, i8** %9, align 8
  %218 = load i32, i32* @USTAR_linkname_offset, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8*, i8** %19, align 8
  %222 = load i64, i64* %18, align 8
  %223 = call i32 @memcpy(i8* %220, i8* %221, i64 %222)
  br label %224

224:                                              ; preds = %216, %201
  %225 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %226 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %227 = call i32 @archive_entry_uname_l(%struct.archive_entry* %225, i8** %19, i64* %18, %struct.archive_string_conv* %226)
  store i32 %227, i32* %16, align 4
  %228 = load i32, i32* %16, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %250

230:                                              ; preds = %224
  %231 = load i64, i64* @errno, align 8
  %232 = load i64, i64* @ENOMEM, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %230
  %235 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %236 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %235, i32 0, i32 0
  %237 = load i64, i64* @ENOMEM, align 8
  %238 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %236, i64 %237, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %239 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %239, i32* %7, align 4
  br label %560

240:                                              ; preds = %230
  %241 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %242 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %241, i32 0, i32 0
  %243 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %244 = sext i32 %243 to i64
  %245 = load i8*, i8** %19, align 8
  %246 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %247 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %246)
  %248 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %242, i64 %244, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i8* %245, i32 %247)
  %249 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %249, i32* %17, align 4
  br label %250

250:                                              ; preds = %240, %224
  %251 = load i64, i64* %18, align 8
  %252 = icmp ugt i64 %251, 0
  br i1 %252, label %253, label %273

253:                                              ; preds = %250
  %254 = load i64, i64* %18, align 8
  %255 = load i64, i64* @USTAR_uname_size, align 8
  %256 = icmp ugt i64 %254, %255
  br i1 %256, label %257, label %265

257:                                              ; preds = %253
  %258 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %259 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %258, i32 0, i32 0
  %260 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %261 = sext i32 %260 to i64
  %262 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %259, i64 %261, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %263 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %263, i32* %17, align 4
  %264 = load i64, i64* @USTAR_uname_size, align 8
  store i64 %264, i64* %18, align 8
  br label %265

265:                                              ; preds = %257, %253
  %266 = load i8*, i8** %9, align 8
  %267 = load i32, i32* @USTAR_uname_offset, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i8*, i8** %19, align 8
  %271 = load i64, i64* %18, align 8
  %272 = call i32 @memcpy(i8* %269, i8* %270, i64 %271)
  br label %273

273:                                              ; preds = %265, %250
  %274 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %275 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %276 = call i32 @archive_entry_gname_l(%struct.archive_entry* %274, i8** %19, i64* %18, %struct.archive_string_conv* %275)
  store i32 %276, i32* %16, align 4
  %277 = load i32, i32* %16, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %299

279:                                              ; preds = %273
  %280 = load i64, i64* @errno, align 8
  %281 = load i64, i64* @ENOMEM, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %289

283:                                              ; preds = %279
  %284 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %285 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %284, i32 0, i32 0
  %286 = load i64, i64* @ENOMEM, align 8
  %287 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %285, i64 %286, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %288 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %288, i32* %7, align 4
  br label %560

289:                                              ; preds = %279
  %290 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %291 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %290, i32 0, i32 0
  %292 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %293 = sext i32 %292 to i64
  %294 = load i8*, i8** %19, align 8
  %295 = load %struct.archive_string_conv*, %struct.archive_string_conv** %13, align 8
  %296 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %295)
  %297 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %291, i64 %293, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i8* %294, i32 %296)
  %298 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %298, i32* %17, align 4
  br label %299

299:                                              ; preds = %289, %273
  %300 = load i64, i64* %18, align 8
  %301 = icmp ugt i64 %300, 0
  br i1 %301, label %302, label %323

302:                                              ; preds = %299
  %303 = load i8*, i8** %19, align 8
  %304 = call i64 @strlen(i8* %303)
  %305 = load i64, i64* @USTAR_gname_size, align 8
  %306 = icmp ugt i64 %304, %305
  br i1 %306, label %307, label %315

307:                                              ; preds = %302
  %308 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %309 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %308, i32 0, i32 0
  %310 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %311 = sext i32 %310 to i64
  %312 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %309, i64 %311, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %313 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %313, i32* %17, align 4
  %314 = load i64, i64* @USTAR_gname_size, align 8
  store i64 %314, i64* %18, align 8
  br label %315

315:                                              ; preds = %307, %302
  %316 = load i8*, i8** %9, align 8
  %317 = load i32, i32* @USTAR_gname_offset, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8, i8* %316, i64 %318
  %320 = load i8*, i8** %19, align 8
  %321 = load i64, i64* %18, align 8
  %322 = call i32 @memcpy(i8* %319, i8* %320, i64 %321)
  br label %323

323:                                              ; preds = %315, %299
  %324 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %325 = call i32 @archive_entry_mode(%struct.archive_entry* %324)
  %326 = and i32 %325, 4095
  %327 = load i8*, i8** %9, align 8
  %328 = load i32, i32* @USTAR_mode_offset, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i8, i8* %327, i64 %329
  %331 = load i32, i32* @USTAR_mode_size, align 4
  %332 = load i32, i32* @USTAR_mode_max_size, align 4
  %333 = load i32, i32* %12, align 4
  %334 = call i64 @format_number(i32 %326, i8* %330, i32 %331, i32 %332, i32 %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %323
  %337 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %338 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %337, i32 0, i32 0
  %339 = load i32, i32* @ERANGE, align 4
  %340 = sext i32 %339 to i64
  %341 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %338, i64 %340, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %342 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %342, i32* %17, align 4
  br label %343

343:                                              ; preds = %336, %323
  %344 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %345 = call i32 @archive_entry_uid(%struct.archive_entry* %344)
  %346 = load i8*, i8** %9, align 8
  %347 = load i32, i32* @USTAR_uid_offset, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i32, i32* @USTAR_uid_size, align 4
  %351 = load i32, i32* @USTAR_uid_max_size, align 4
  %352 = load i32, i32* %12, align 4
  %353 = call i64 @format_number(i32 %345, i8* %349, i32 %350, i32 %351, i32 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %343
  %356 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %357 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %356, i32 0, i32 0
  %358 = load i32, i32* @ERANGE, align 4
  %359 = sext i32 %358 to i64
  %360 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %357, i64 %359, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0))
  %361 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %361, i32* %17, align 4
  br label %362

362:                                              ; preds = %355, %343
  %363 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %364 = call i32 @archive_entry_gid(%struct.archive_entry* %363)
  %365 = load i8*, i8** %9, align 8
  %366 = load i32, i32* @USTAR_gid_offset, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8, i8* %365, i64 %367
  %369 = load i32, i32* @USTAR_gid_size, align 4
  %370 = load i32, i32* @USTAR_gid_max_size, align 4
  %371 = load i32, i32* %12, align 4
  %372 = call i64 @format_number(i32 %364, i8* %368, i32 %369, i32 %370, i32 %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %362
  %375 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %376 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %375, i32 0, i32 0
  %377 = load i32, i32* @ERANGE, align 4
  %378 = sext i32 %377 to i64
  %379 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %376, i64 %378, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0))
  %380 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %380, i32* %17, align 4
  br label %381

381:                                              ; preds = %374, %362
  %382 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %383 = call i32 @archive_entry_size(%struct.archive_entry* %382)
  %384 = load i8*, i8** %9, align 8
  %385 = load i32, i32* @USTAR_size_offset, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i8, i8* %384, i64 %386
  %388 = load i32, i32* @USTAR_size_size, align 4
  %389 = load i32, i32* @USTAR_size_max_size, align 4
  %390 = load i32, i32* %12, align 4
  %391 = call i64 @format_number(i32 %383, i8* %387, i32 %388, i32 %389, i32 %390)
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %400

393:                                              ; preds = %381
  %394 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %395 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %394, i32 0, i32 0
  %396 = load i32, i32* @ERANGE, align 4
  %397 = sext i32 %396 to i64
  %398 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %395, i64 %397, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0))
  %399 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %399, i32* %17, align 4
  br label %400

400:                                              ; preds = %393, %381
  %401 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %402 = call i32 @archive_entry_mtime(%struct.archive_entry* %401)
  %403 = load i8*, i8** %9, align 8
  %404 = load i32, i32* @USTAR_mtime_offset, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i8, i8* %403, i64 %405
  %407 = load i32, i32* @USTAR_mtime_size, align 4
  %408 = load i32, i32* @USTAR_mtime_max_size, align 4
  %409 = load i32, i32* %12, align 4
  %410 = call i64 @format_number(i32 %402, i8* %406, i32 %407, i32 %408, i32 %409)
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %419

412:                                              ; preds = %400
  %413 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %414 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %413, i32 0, i32 0
  %415 = load i32, i32* @ERANGE, align 4
  %416 = sext i32 %415 to i64
  %417 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %414, i64 %416, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %418 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %418, i32* %17, align 4
  br label %419

419:                                              ; preds = %412, %400
  %420 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %421 = call i32 @archive_entry_filetype(%struct.archive_entry* %420)
  %422 = icmp eq i32 %421, 134
  br i1 %422, label %427, label %423

423:                                              ; preds = %419
  %424 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %425 = call i32 @archive_entry_filetype(%struct.archive_entry* %424)
  %426 = icmp eq i32 %425, 133
  br i1 %426, label %427, label %466

427:                                              ; preds = %423, %419
  %428 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %429 = call i32 @archive_entry_rdevmajor(%struct.archive_entry* %428)
  %430 = load i8*, i8** %9, align 8
  %431 = load i32, i32* @USTAR_rdevmajor_offset, align 4
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds i8, i8* %430, i64 %432
  %434 = load i32, i32* @USTAR_rdevmajor_size, align 4
  %435 = load i32, i32* @USTAR_rdevmajor_max_size, align 4
  %436 = load i32, i32* %12, align 4
  %437 = call i64 @format_number(i32 %429, i8* %433, i32 %434, i32 %435, i32 %436)
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %446

439:                                              ; preds = %427
  %440 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %441 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %440, i32 0, i32 0
  %442 = load i32, i32* @ERANGE, align 4
  %443 = sext i32 %442 to i64
  %444 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %441, i64 %443, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.17, i64 0, i64 0))
  %445 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %445, i32* %17, align 4
  br label %446

446:                                              ; preds = %439, %427
  %447 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %448 = call i32 @archive_entry_rdevminor(%struct.archive_entry* %447)
  %449 = load i8*, i8** %9, align 8
  %450 = load i32, i32* @USTAR_rdevminor_offset, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i8, i8* %449, i64 %451
  %453 = load i32, i32* @USTAR_rdevminor_size, align 4
  %454 = load i32, i32* @USTAR_rdevminor_max_size, align 4
  %455 = load i32, i32* %12, align 4
  %456 = call i64 @format_number(i32 %448, i8* %452, i32 %453, i32 %454, i32 %455)
  %457 = icmp ne i64 %456, 0
  br i1 %457, label %458, label %465

458:                                              ; preds = %446
  %459 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %460 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %459, i32 0, i32 0
  %461 = load i32, i32* @ERANGE, align 4
  %462 = sext i32 %461 to i64
  %463 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %460, i64 %462, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  %464 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %464, i32* %17, align 4
  br label %465

465:                                              ; preds = %458, %446
  br label %466

466:                                              ; preds = %465, %423
  %467 = load i32, i32* %11, align 4
  %468 = icmp sge i32 %467, 0
  br i1 %468, label %469, label %475

469:                                              ; preds = %466
  %470 = load i32, i32* %11, align 4
  %471 = trunc i32 %470 to i8
  %472 = load i8*, i8** %9, align 8
  %473 = load i64, i64* @USTAR_typeflag_offset, align 8
  %474 = getelementptr inbounds i8, i8* %472, i64 %473
  store i8 %471, i8* %474, align 1
  br label %530

475:                                              ; preds = %466
  %476 = load i32, i32* %21, align 4
  %477 = icmp sge i32 %476, 0
  br i1 %477, label %478, label %484

478:                                              ; preds = %475
  %479 = load i32, i32* %21, align 4
  %480 = trunc i32 %479 to i8
  %481 = load i8*, i8** %9, align 8
  %482 = load i64, i64* @USTAR_typeflag_offset, align 8
  %483 = getelementptr inbounds i8, i8* %481, i64 %482
  store i8 %480, i8* %483, align 1
  br label %529

484:                                              ; preds = %475
  %485 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %486 = call i32 @archive_entry_filetype(%struct.archive_entry* %485)
  switch i32 %486, label %518 [
    i32 129, label %487
    i32 130, label %491
    i32 133, label %495
    i32 134, label %499
    i32 132, label %503
    i32 131, label %507
    i32 128, label %511
  ]

487:                                              ; preds = %484
  %488 = load i8*, i8** %9, align 8
  %489 = load i64, i64* @USTAR_typeflag_offset, align 8
  %490 = getelementptr inbounds i8, i8* %488, i64 %489
  store i8 48, i8* %490, align 1
  br label %528

491:                                              ; preds = %484
  %492 = load i8*, i8** %9, align 8
  %493 = load i64, i64* @USTAR_typeflag_offset, align 8
  %494 = getelementptr inbounds i8, i8* %492, i64 %493
  store i8 50, i8* %494, align 1
  br label %528

495:                                              ; preds = %484
  %496 = load i8*, i8** %9, align 8
  %497 = load i64, i64* @USTAR_typeflag_offset, align 8
  %498 = getelementptr inbounds i8, i8* %496, i64 %497
  store i8 51, i8* %498, align 1
  br label %528

499:                                              ; preds = %484
  %500 = load i8*, i8** %9, align 8
  %501 = load i64, i64* @USTAR_typeflag_offset, align 8
  %502 = getelementptr inbounds i8, i8* %500, i64 %501
  store i8 52, i8* %502, align 1
  br label %528

503:                                              ; preds = %484
  %504 = load i8*, i8** %9, align 8
  %505 = load i64, i64* @USTAR_typeflag_offset, align 8
  %506 = getelementptr inbounds i8, i8* %504, i64 %505
  store i8 53, i8* %506, align 1
  br label %528

507:                                              ; preds = %484
  %508 = load i8*, i8** %9, align 8
  %509 = load i64, i64* @USTAR_typeflag_offset, align 8
  %510 = getelementptr inbounds i8, i8* %508, i64 %509
  store i8 54, i8* %510, align 1
  br label %528

511:                                              ; preds = %484
  %512 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %513 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %512, i32 0, i32 0
  %514 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %515 = sext i32 %514 to i64
  %516 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %513, i64 %515, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0))
  %517 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %517, i32* %7, align 4
  br label %560

518:                                              ; preds = %484
  %519 = load %struct.archive_write*, %struct.archive_write** %8, align 8
  %520 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %519, i32 0, i32 0
  %521 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %522 = sext i32 %521 to i64
  %523 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %524 = call i32 @archive_entry_mode(%struct.archive_entry* %523)
  %525 = sext i32 %524 to i64
  %526 = call i32 (i32*, i64, i8*, ...) @archive_set_error(i32* %520, i64 %522, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i64 %525)
  %527 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %527, i32* %17, align 4
  br label %528

528:                                              ; preds = %518, %507, %503, %499, %495, %491, %487
  br label %529

529:                                              ; preds = %528, %478
  br label %530

530:                                              ; preds = %529, %469
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %531

531:                                              ; preds = %544, %530
  %532 = load i32, i32* %15, align 4
  %533 = icmp slt i32 %532, 512
  br i1 %533, label %534, label %547

534:                                              ; preds = %531
  %535 = load i8*, i8** %9, align 8
  %536 = load i32, i32* %15, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i8, i8* %535, i64 %537
  %539 = load i8, i8* %538, align 1
  %540 = sext i8 %539 to i32
  %541 = and i32 255, %540
  %542 = load i32, i32* %14, align 4
  %543 = add i32 %542, %541
  store i32 %543, i32* %14, align 4
  br label %544

544:                                              ; preds = %534
  %545 = load i32, i32* %15, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %15, align 4
  br label %531

547:                                              ; preds = %531
  %548 = load i8*, i8** %9, align 8
  %549 = load i32, i32* @USTAR_checksum_offset, align 4
  %550 = add nsw i32 %549, 6
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i8, i8* %548, i64 %551
  store i8 0, i8* %552, align 1
  %553 = load i32, i32* %14, align 4
  %554 = load i8*, i8** %9, align 8
  %555 = load i32, i32* @USTAR_checksum_offset, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i8, i8* %554, i64 %556
  %558 = call i32 @format_octal(i32 %553, i8* %557, i32 6)
  %559 = load i32, i32* %17, align 4
  store i32 %559, i32* %7, align 4
  br label %560

560:                                              ; preds = %547, %511, %283, %234, %184, %154, %33
  %561 = load i32, i32* %7, align 4
  ret i32 %561
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @archive_entry_pathname_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*, ...) #1

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @archive_entry_hardlink_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_symlink_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_uname_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_gname_l(%struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @format_number(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_rdevmajor(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_rdevminor(%struct.archive_entry*) #1

declare dso_local i32 @format_octal(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
