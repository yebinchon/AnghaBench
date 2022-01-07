; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_pax.c_archive_write_pax_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.pax = type { i32, i32, i32, i32*, %struct.TYPE_10__, %struct.TYPE_10__, i64, %struct.archive_string_conv* }
%struct.TYPE_10__ = type { i8* }
%struct.archive_string_conv = type { i32 }
%struct.archive_string = type { i8* }
%struct.archive_wstring = type { i8* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Can't record entry in tar file without pathname\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Can't translate linkname '%s' to %s\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Can't allocate pax data\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"tar format cannot archive socket\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"tar format cannot archive this (type=0%lo)\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"._\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"Can't translate pathname '%s' to %s\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Can't translate uname '%s' to %s\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Can't translate gname '%s' to %s\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"hdrcharset\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"BINARY\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"linkpath\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"././@LongHardLink\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"././@LongSymLink\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"gname\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SCHILY.devmajor\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"SCHILY.devminor\00", align 1
@ARCHIVE_FORMAT_TAR_PAX_RESTRICTED = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"LIBARCHIVE.creationtime\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"SCHILY.fflags\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_STYLE_COMPACT = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [17 x i8] c"GNU.sparse.major\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"GNU.sparse.minor\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"GNU.sparse.name\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c"GNU.sparse.realsize\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"%jd\0A%jd\0A\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@AE_SYMLINK_TYPE_FILE = common dso_local global i64 0, align 8
@.str.35 = private unnamed_addr constant [23 x i8] c"LIBARCHIVE.symlinktype\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_SYMLINK_TYPE_DIRECTORY = common dso_local global i64 0, align 8
@.str.37 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE = common dso_local global i64 0, align 8
@.str.38 = private unnamed_addr constant [67 x i8] c"archive_write_pax_header: 'x' header failed?!  This can't happen.\0A\00", align 1
@S_ISGID = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@S_ISVTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*)* @archive_write_pax_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_pax_header(%struct.archive_write* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.pax*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.archive_string_conv*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca [512 x i8], align 16
  %31 = alloca [512 x i8], align 16
  %32 = alloca [256 x i8], align 16
  %33 = alloca [256 x i8], align 16
  %34 = alloca [256 x i8], align 16
  %35 = alloca %struct.archive_string, align 8
  %36 = alloca %struct.archive_string, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i64, align 8
  %41 = alloca %struct.archive_entry*, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca i32, align 4
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca i32, align 4
  %48 = alloca i32, align 4
  %49 = alloca i64, align 8
  %50 = alloca %struct.archive_entry*, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca i32, align 4
  %54 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  store i8* null, i8** %20, align 8
  store i8* null, i8** %21, align 8
  %55 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %55, i32* %11, align 4
  store i32 0, i32* %9, align 4
  %56 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %57 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.pax*
  store %struct.pax* %59, %struct.pax** %16, align 8
  %60 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %61 = call i8* @archive_entry_pathname(%struct.archive_entry* %60)
  %62 = icmp eq i8* %61, null
  br i1 %62, label %63, label %69

63:                                               ; preds = %2
  %64 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %65 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %64, i32 0, i32 0
  %66 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %67 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %65, i32 %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %68, i32* %3, align 4
  br label %1378

69:                                               ; preds = %2
  %70 = load %struct.pax*, %struct.pax** %16, align 8
  %71 = getelementptr inbounds %struct.pax, %struct.pax* %70, i32 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %24, align 8
  br label %97

75:                                               ; preds = %69
  %76 = load %struct.pax*, %struct.pax** %16, align 8
  %77 = getelementptr inbounds %struct.pax, %struct.pax* %76, i32 0, i32 7
  %78 = load %struct.archive_string_conv*, %struct.archive_string_conv** %77, align 8
  %79 = icmp eq %struct.archive_string_conv* %78, null
  br i1 %79, label %80, label %93

80:                                               ; preds = %75
  %81 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %82 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %81, i32 0, i32 0
  %83 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.TYPE_11__* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %84 = load %struct.pax*, %struct.pax** %16, align 8
  %85 = getelementptr inbounds %struct.pax, %struct.pax* %84, i32 0, i32 7
  store %struct.archive_string_conv* %83, %struct.archive_string_conv** %85, align 8
  %86 = load %struct.pax*, %struct.pax** %16, align 8
  %87 = getelementptr inbounds %struct.pax, %struct.pax* %86, i32 0, i32 7
  %88 = load %struct.archive_string_conv*, %struct.archive_string_conv** %87, align 8
  %89 = icmp eq %struct.archive_string_conv* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %80
  %91 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %91, i32* %3, align 4
  br label %1378

92:                                               ; preds = %80
  br label %93

93:                                               ; preds = %92, %75
  %94 = load %struct.pax*, %struct.pax** %16, align 8
  %95 = getelementptr inbounds %struct.pax, %struct.pax* %94, i32 0, i32 7
  %96 = load %struct.archive_string_conv*, %struct.archive_string_conv** %95, align 8
  store %struct.archive_string_conv* %96, %struct.archive_string_conv** %24, align 8
  br label %97

97:                                               ; preds = %93, %74
  %98 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %99 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %100 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %101 = call i32 @get_entry_hardlink(%struct.archive_write* %98, %struct.archive_entry* %99, i8** %17, i64* %25, %struct.archive_string_conv* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @ARCHIVE_FATAL, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %3, align 4
  br label %1378

107:                                              ; preds = %97
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @ARCHIVE_OK, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %129

111:                                              ; preds = %107
  %112 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %113 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %114 = call i32 @get_entry_hardlink(%struct.archive_write* %112, %struct.archive_entry* %113, i8** %17, i64* %25, %struct.archive_string_conv* null)
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @ARCHIVE_FATAL, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %120

118:                                              ; preds = %111
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %1378

120:                                              ; preds = %111
  %121 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %122 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %121, i32 0, i32 0
  %123 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %124 = load i8*, i8** %17, align 8
  %125 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %126 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %125)
  %127 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %122, i32 %123, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %124, i32 %126)
  %128 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %128, i32* %11, align 4
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %24, align 8
  br label %129

129:                                              ; preds = %120, %107
  br label %130

130:                                              ; preds = %129
  %131 = load i8*, i8** %17, align 8
  %132 = icmp eq i8* %131, null
  br i1 %132, label %133, label %207

133:                                              ; preds = %130
  %134 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %135 = call i32 @archive_entry_filetype(%struct.archive_entry* %134)
  switch i32 %135, label %197 [
    i32 134, label %136
    i32 133, label %136
    i32 131, label %136
    i32 130, label %136
    i32 129, label %136
    i32 132, label %137
    i32 128, label %191
  ]

136:                                              ; preds = %133, %133, %133, %133, %133
  br label %206

137:                                              ; preds = %133
  %138 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %139 = call i8* @archive_entry_pathname(%struct.archive_entry* %138)
  store i8* %139, i8** %7, align 8
  %140 = load i8*, i8** %7, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %142, label %190

142:                                              ; preds = %137
  %143 = load i8*, i8** %7, align 8
  %144 = getelementptr inbounds i8, i8* %143, i64 0
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %190

148:                                              ; preds = %142
  %149 = load i8*, i8** %7, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = call i32 @strlen(i8* %150)
  %152 = sub nsw i32 %151, 1
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %149, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = sext i8 %155 to i32
  %157 = icmp ne i32 %156, 47
  br i1 %157, label %158, label %190

158:                                              ; preds = %148
  %159 = bitcast %struct.archive_string* %36 to %struct.archive_wstring*
  %160 = call i32 @archive_string_init(%struct.archive_wstring* %159)
  %161 = load i8*, i8** %7, align 8
  %162 = call i32 @strlen(i8* %161)
  %163 = sext i32 %162 to i64
  store i64 %163, i64* %26, align 8
  %164 = bitcast %struct.archive_string* %36 to %struct.archive_wstring*
  %165 = load i64, i64* %26, align 8
  %166 = add i64 %165, 2
  %167 = call i32* @archive_string_ensure(%struct.archive_wstring* %164, i64 %166)
  %168 = icmp eq i32* %167, null
  br i1 %168, label %169, label %177

169:                                              ; preds = %158
  %170 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %171 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %170, i32 0, i32 0
  %172 = load i32, i32* @ENOMEM, align 4
  %173 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %171, i32 %172, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %174 = bitcast %struct.archive_string* %36 to %struct.archive_wstring*
  %175 = call i32 @archive_string_free(%struct.archive_wstring* %174)
  %176 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %176, i32* %3, align 4
  br label %1378

177:                                              ; preds = %158
  %178 = bitcast %struct.archive_string* %36 to %struct.archive_wstring*
  %179 = load i8*, i8** %7, align 8
  %180 = load i64, i64* %26, align 8
  %181 = call i32 @archive_strncpy(%struct.archive_wstring* %178, i8* %179, i64 %180)
  %182 = bitcast %struct.archive_string* %36 to %struct.archive_wstring*
  %183 = call i32 @archive_strappend_char(%struct.archive_wstring* %182, i8 signext 47)
  %184 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %185 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %36, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %184, i8* %186)
  %188 = bitcast %struct.archive_string* %36 to %struct.archive_wstring*
  %189 = call i32 @archive_string_free(%struct.archive_wstring* %188)
  br label %190

190:                                              ; preds = %177, %148, %142, %137
  br label %206

191:                                              ; preds = %133
  %192 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %193 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %192, i32 0, i32 0
  %194 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %195 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %193, i32 %194, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %196 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %196, i32* %3, align 4
  br label %1378

197:                                              ; preds = %133
  %198 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %199 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %198, i32 0, i32 0
  %200 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %201 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %202 = call i32 @archive_entry_filetype(%struct.archive_entry* %201)
  %203 = sext i32 %202 to i64
  %204 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %199, i32 %200, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0), i64 %203)
  %205 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %205, i32* %3, align 4
  br label %1378

206:                                              ; preds = %190, %136
  br label %207

207:                                              ; preds = %206, %130
  %208 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %209 = call i8* @archive_entry_mac_metadata(%struct.archive_entry* %208, i64* %23)
  store i8* %209, i8** %22, align 8
  %210 = load i8*, i8** %22, align 8
  %211 = icmp ne i8* %210, null
  br i1 %211, label %212, label %366

212:                                              ; preds = %207
  %213 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %214 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %213, i32 0, i32 0
  %215 = call %struct.archive_entry* @archive_entry_new2(%struct.TYPE_11__* %214)
  store %struct.archive_entry* %215, %struct.archive_entry** %41, align 8
  %216 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %217 = call i8* @archive_entry_pathname(%struct.archive_entry* %216)
  store i8* %217, i8** %37, align 8
  %218 = load i8*, i8** %37, align 8
  %219 = call i32 @strlen(i8* %218)
  %220 = sext i32 %219 to i64
  store i64 %220, i64* %40, align 8
  %221 = load i64, i64* %40, align 8
  %222 = add i64 %221, 3
  %223 = call i8* @malloc(i64 %222)
  store i8* %223, i8** %38, align 8
  %224 = load i8*, i8** %38, align 8
  %225 = icmp eq i8* %224, null
  br i1 %225, label %229, label %226

226:                                              ; preds = %212
  %227 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %228 = icmp eq %struct.archive_entry* %227, null
  br i1 %228, label %229, label %235

229:                                              ; preds = %226, %212
  %230 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %231 = call i32 @archive_entry_free(%struct.archive_entry* %230)
  %232 = load i8*, i8** %38, align 8
  %233 = call i32 @free(i8* %232)
  %234 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %234, i32* %3, align 4
  br label %1378

235:                                              ; preds = %226
  %236 = load i8*, i8** %38, align 8
  %237 = load i8*, i8** %37, align 8
  %238 = call i32 @strcpy(i8* %236, i8* %237)
  %239 = load i8*, i8** %38, align 8
  %240 = call i8* @strrchr(i8* %239, i8 signext 47)
  store i8* %240, i8** %39, align 8
  br label %241

241:                                              ; preds = %252, %235
  %242 = load i8*, i8** %39, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %250

244:                                              ; preds = %241
  %245 = load i8*, i8** %39, align 8
  %246 = getelementptr inbounds i8, i8* %245, i64 1
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp eq i32 %248, 0
  br label %250

250:                                              ; preds = %244, %241
  %251 = phi i1 [ false, %241 ], [ %249, %244 ]
  br i1 %251, label %252, label %256

252:                                              ; preds = %250
  %253 = load i8*, i8** %39, align 8
  store i8 0, i8* %253, align 1
  %254 = load i8*, i8** %38, align 8
  %255 = call i8* @strrchr(i8* %254, i8 signext 47)
  store i8* %255, i8** %39, align 8
  br label %241

256:                                              ; preds = %250
  %257 = load i8*, i8** %39, align 8
  %258 = icmp eq i8* %257, null
  br i1 %258, label %259, label %269

259:                                              ; preds = %256
  %260 = load i8*, i8** %38, align 8
  %261 = getelementptr inbounds i8, i8* %260, i64 2
  %262 = load i8*, i8** %38, align 8
  %263 = load i64, i64* %40, align 8
  %264 = add i64 %263, 1
  %265 = trunc i64 %264 to i32
  %266 = call i32 @memmove(i8* %261, i8* %262, i32 %265)
  %267 = load i8*, i8** %38, align 8
  %268 = call i32 @memmove(i8* %267, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  br label %281

269:                                              ; preds = %256
  %270 = load i8*, i8** %39, align 8
  %271 = getelementptr inbounds i8, i8* %270, i64 1
  store i8* %271, i8** %39, align 8
  %272 = load i8*, i8** %39, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 2
  %274 = load i8*, i8** %39, align 8
  %275 = load i8*, i8** %39, align 8
  %276 = call i32 @strlen(i8* %275)
  %277 = add nsw i32 %276, 1
  %278 = call i32 @memmove(i8* %273, i8* %274, i32 %277)
  %279 = load i8*, i8** %39, align 8
  %280 = call i32 @memmove(i8* %279, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  br label %281

281:                                              ; preds = %269, %259
  %282 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %283 = load i8*, i8** %38, align 8
  %284 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %282, i8* %283)
  %285 = load i8*, i8** %38, align 8
  %286 = call i32 @free(i8* %285)
  %287 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %288 = load i64, i64* %23, align 8
  %289 = call i32 @archive_entry_set_size(%struct.archive_entry* %287, i64 %288)
  %290 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %291 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %290, i32 129)
  %292 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %293 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %294 = call i32 @archive_entry_perm(%struct.archive_entry* %293)
  %295 = call i32 @archive_entry_set_perm(%struct.archive_entry* %292, i32 %294)
  %296 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %297 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %298 = call i32 @archive_entry_mtime(%struct.archive_entry* %297)
  %299 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %300 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %299)
  %301 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %296, i32 %298, i64 %300)
  %302 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %303 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %304 = call i32 @archive_entry_gid(%struct.archive_entry* %303)
  %305 = call i32 @archive_entry_set_gid(%struct.archive_entry* %302, i32 %304)
  %306 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %307 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %308 = call i32 @archive_entry_gname(%struct.archive_entry* %307)
  %309 = call i32 @archive_entry_set_gname(%struct.archive_entry* %306, i32 %308)
  %310 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %311 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %312 = call i32 @archive_entry_uid(%struct.archive_entry* %311)
  %313 = call i32 @archive_entry_set_uid(%struct.archive_entry* %310, i32 %312)
  %314 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %315 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %316 = call i32 @archive_entry_uname(%struct.archive_entry* %315)
  %317 = call i32 @archive_entry_set_uname(%struct.archive_entry* %314, i32 %316)
  %318 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %319 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %320 = call i32 @archive_write_pax_header(%struct.archive_write* %318, %struct.archive_entry* %319)
  store i32 %320, i32* %10, align 4
  %321 = load %struct.archive_entry*, %struct.archive_entry** %41, align 8
  %322 = call i32 @archive_entry_free(%struct.archive_entry* %321)
  %323 = load i32, i32* %10, align 4
  %324 = load i32, i32* @ARCHIVE_WARN, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %328

326:                                              ; preds = %281
  %327 = load i32, i32* %10, align 4
  store i32 %327, i32* %3, align 4
  br label %1378

328:                                              ; preds = %281
  %329 = load i32, i32* %10, align 4
  %330 = load i32, i32* %11, align 4
  %331 = icmp slt i32 %329, %330
  br i1 %331, label %332, label %334

332:                                              ; preds = %328
  %333 = load i32, i32* %10, align 4
  store i32 %333, i32* %11, align 4
  br label %334

334:                                              ; preds = %332, %328
  %335 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %336 = load i8*, i8** %22, align 8
  %337 = load i64, i64* %23, align 8
  %338 = call i64 @archive_write_pax_data(%struct.archive_write* %335, i8* %336, i64 %337)
  %339 = trunc i64 %338 to i32
  store i32 %339, i32* %10, align 4
  %340 = load i32, i32* %10, align 4
  %341 = load i32, i32* @ARCHIVE_WARN, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %334
  %344 = load i32, i32* %10, align 4
  store i32 %344, i32* %3, align 4
  br label %1378

345:                                              ; preds = %334
  %346 = load i32, i32* %10, align 4
  %347 = load i32, i32* %11, align 4
  %348 = icmp slt i32 %346, %347
  br i1 %348, label %349, label %351

349:                                              ; preds = %345
  %350 = load i32, i32* %10, align 4
  store i32 %350, i32* %11, align 4
  br label %351

351:                                              ; preds = %349, %345
  %352 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %353 = call i32 @archive_write_pax_finish_entry(%struct.archive_write* %352)
  store i32 %353, i32* %10, align 4
  %354 = load i32, i32* %10, align 4
  %355 = load i32, i32* @ARCHIVE_WARN, align 4
  %356 = icmp slt i32 %354, %355
  br i1 %356, label %357, label %359

357:                                              ; preds = %351
  %358 = load i32, i32* %10, align 4
  store i32 %358, i32* %3, align 4
  br label %1378

359:                                              ; preds = %351
  %360 = load i32, i32* %10, align 4
  %361 = load i32, i32* %11, align 4
  %362 = icmp slt i32 %360, %361
  br i1 %362, label %363, label %365

363:                                              ; preds = %359
  %364 = load i32, i32* %10, align 4
  store i32 %364, i32* %11, align 4
  br label %365

365:                                              ; preds = %363, %359
  br label %366

366:                                              ; preds = %365, %207
  %367 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %368 = call %struct.archive_entry* @archive_entry_clone(%struct.archive_entry* %367)
  store %struct.archive_entry* %368, %struct.archive_entry** %6, align 8
  %369 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %370 = icmp eq %struct.archive_entry* %369, null
  br i1 %370, label %371, label %377

371:                                              ; preds = %366
  %372 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %373 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %372, i32 0, i32 0
  %374 = load i32, i32* @ENOMEM, align 4
  %375 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %373, i32 %374, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %376 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %376, i32* %3, align 4
  br label %1378

377:                                              ; preds = %366
  %378 = load %struct.pax*, %struct.pax** %16, align 8
  %379 = getelementptr inbounds %struct.pax, %struct.pax* %378, i32 0, i32 4
  %380 = call i32 @archive_string_empty(%struct.TYPE_10__* %379)
  %381 = load %struct.pax*, %struct.pax** %16, align 8
  %382 = getelementptr inbounds %struct.pax, %struct.pax* %381, i32 0, i32 5
  %383 = call i32 @archive_string_empty(%struct.TYPE_10__* %382)
  store i64 0, i64* %14, align 8
  %384 = load %struct.pax*, %struct.pax** %16, align 8
  %385 = call i32 @sparse_list_clear(%struct.pax* %384)
  %386 = load i8*, i8** %17, align 8
  %387 = icmp eq i8* %386, null
  br i1 %387, label %388, label %395

388:                                              ; preds = %377
  %389 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %390 = call i32 @archive_entry_filetype(%struct.archive_entry* %389)
  %391 = icmp eq i32 %390, 129
  br i1 %391, label %392, label %395

392:                                              ; preds = %388
  %393 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %394 = call i32 @archive_entry_sparse_reset(%struct.archive_entry* %393)
  store i32 %394, i32* %13, align 4
  br label %396

395:                                              ; preds = %388, %377
  store i32 0, i32* %13, align 4
  br label %396

396:                                              ; preds = %395, %392
  %397 = load i32, i32* %13, align 4
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %422

399:                                              ; preds = %396
  store i32 0, i32* %44, align 4
  br label %400

400:                                              ; preds = %405, %399
  %401 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %402 = call i32 @archive_entry_sparse_next(%struct.archive_entry* %401, i32* %42, i32* %43)
  %403 = load i32, i32* @ARCHIVE_OK, align 4
  %404 = icmp eq i32 %402, %403
  br i1 %404, label %405, label %409

405:                                              ; preds = %400
  %406 = load i32, i32* %42, align 4
  %407 = load i32, i32* %43, align 4
  %408 = add nsw i32 %406, %407
  store i32 %408, i32* %44, align 4
  br label %400

409:                                              ; preds = %400
  %410 = load i32, i32* %44, align 4
  %411 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %412 = call i32 @archive_entry_size(%struct.archive_entry* %411)
  %413 = icmp slt i32 %410, %412
  br i1 %413, label %414, label %419

414:                                              ; preds = %409
  %415 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %416 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %417 = call i32 @archive_entry_size(%struct.archive_entry* %416)
  %418 = call i32 @archive_entry_sparse_add_entry(%struct.archive_entry* %415, i32 %417, i32 0)
  br label %419

419:                                              ; preds = %414, %409
  %420 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %421 = call i32 @archive_entry_sparse_reset(%struct.archive_entry* %420)
  store i32 %421, i32* %13, align 4
  br label %422

422:                                              ; preds = %419, %396
  %423 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %424 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %425 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %426 = call i32 @get_entry_pathname(%struct.archive_write* %423, %struct.archive_entry* %424, i8** %18, i64* %26, %struct.archive_string_conv* %425)
  store i32 %426, i32* %10, align 4
  %427 = load i32, i32* %10, align 4
  %428 = load i32, i32* @ARCHIVE_FATAL, align 4
  %429 = icmp eq i32 %427, %428
  br i1 %429, label %430, label %432

430:                                              ; preds = %422
  %431 = load i32, i32* %10, align 4
  store i32 %431, i32* %3, align 4
  br label %1378

432:                                              ; preds = %422
  %433 = load i32, i32* %10, align 4
  %434 = load i32, i32* @ARCHIVE_OK, align 4
  %435 = icmp ne i32 %433, %434
  br i1 %435, label %436, label %454

436:                                              ; preds = %432
  %437 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %438 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %439 = call i32 @get_entry_pathname(%struct.archive_write* %437, %struct.archive_entry* %438, i8** %18, i64* %26, %struct.archive_string_conv* null)
  store i32 %439, i32* %10, align 4
  %440 = load i32, i32* %10, align 4
  %441 = load i32, i32* @ARCHIVE_FATAL, align 4
  %442 = icmp eq i32 %440, %441
  br i1 %442, label %443, label %445

443:                                              ; preds = %436
  %444 = load i32, i32* %10, align 4
  store i32 %444, i32* %3, align 4
  br label %1378

445:                                              ; preds = %436
  %446 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %447 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %446, i32 0, i32 0
  %448 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %449 = load i8*, i8** %18, align 8
  %450 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %451 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %450)
  %452 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %447, i32 %448, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i8* %449, i32 %451)
  %453 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %453, i32* %11, align 4
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %24, align 8
  br label %454

454:                                              ; preds = %445, %432
  br label %455

455:                                              ; preds = %454
  %456 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %457 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %458 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %459 = call i32 @get_entry_uname(%struct.archive_write* %456, %struct.archive_entry* %457, i8** %20, i64* %28, %struct.archive_string_conv* %458)
  store i32 %459, i32* %10, align 4
  %460 = load i32, i32* %10, align 4
  %461 = load i32, i32* @ARCHIVE_FATAL, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %465

463:                                              ; preds = %455
  %464 = load i32, i32* %10, align 4
  store i32 %464, i32* %3, align 4
  br label %1378

465:                                              ; preds = %455
  %466 = load i32, i32* %10, align 4
  %467 = load i32, i32* @ARCHIVE_OK, align 4
  %468 = icmp ne i32 %466, %467
  br i1 %468, label %469, label %487

469:                                              ; preds = %465
  %470 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %471 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %472 = call i32 @get_entry_uname(%struct.archive_write* %470, %struct.archive_entry* %471, i8** %20, i64* %28, %struct.archive_string_conv* null)
  store i32 %472, i32* %10, align 4
  %473 = load i32, i32* %10, align 4
  %474 = load i32, i32* @ARCHIVE_FATAL, align 4
  %475 = icmp eq i32 %473, %474
  br i1 %475, label %476, label %478

476:                                              ; preds = %469
  %477 = load i32, i32* %10, align 4
  store i32 %477, i32* %3, align 4
  br label %1378

478:                                              ; preds = %469
  %479 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %480 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %479, i32 0, i32 0
  %481 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %482 = load i8*, i8** %20, align 8
  %483 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %484 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %483)
  %485 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %480, i32 %481, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i8* %482, i32 %484)
  %486 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %486, i32* %11, align 4
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %24, align 8
  br label %487

487:                                              ; preds = %478, %465
  br label %488

488:                                              ; preds = %487
  %489 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %490 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %491 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %492 = call i32 @get_entry_gname(%struct.archive_write* %489, %struct.archive_entry* %490, i8** %21, i64* %29, %struct.archive_string_conv* %491)
  store i32 %492, i32* %10, align 4
  %493 = load i32, i32* %10, align 4
  %494 = load i32, i32* @ARCHIVE_FATAL, align 4
  %495 = icmp eq i32 %493, %494
  br i1 %495, label %496, label %498

496:                                              ; preds = %488
  %497 = load i32, i32* %10, align 4
  store i32 %497, i32* %3, align 4
  br label %1378

498:                                              ; preds = %488
  %499 = load i32, i32* %10, align 4
  %500 = load i32, i32* @ARCHIVE_OK, align 4
  %501 = icmp ne i32 %499, %500
  br i1 %501, label %502, label %520

502:                                              ; preds = %498
  %503 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %504 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %505 = call i32 @get_entry_gname(%struct.archive_write* %503, %struct.archive_entry* %504, i8** %21, i64* %29, %struct.archive_string_conv* null)
  store i32 %505, i32* %10, align 4
  %506 = load i32, i32* %10, align 4
  %507 = load i32, i32* @ARCHIVE_FATAL, align 4
  %508 = icmp eq i32 %506, %507
  br i1 %508, label %509, label %511

509:                                              ; preds = %502
  %510 = load i32, i32* %10, align 4
  store i32 %510, i32* %3, align 4
  br label %1378

511:                                              ; preds = %502
  %512 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %513 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %512, i32 0, i32 0
  %514 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %515 = load i8*, i8** %21, align 8
  %516 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %517 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %516)
  %518 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %513, i32 %514, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i8* %515, i32 %517)
  %519 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %519, i32* %11, align 4
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %24, align 8
  br label %520

520:                                              ; preds = %511, %498
  br label %521

521:                                              ; preds = %520
  %522 = load i8*, i8** %17, align 8
  store i8* %522, i8** %19, align 8
  %523 = load i64, i64* %25, align 8
  store i64 %523, i64* %27, align 8
  %524 = load i8*, i8** %19, align 8
  %525 = icmp eq i8* %524, null
  br i1 %525, label %526, label %560

526:                                              ; preds = %521
  %527 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %528 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %529 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %530 = call i32 @get_entry_symlink(%struct.archive_write* %527, %struct.archive_entry* %528, i8** %19, i64* %27, %struct.archive_string_conv* %529)
  store i32 %530, i32* %10, align 4
  %531 = load i32, i32* %10, align 4
  %532 = load i32, i32* @ARCHIVE_FATAL, align 4
  %533 = icmp eq i32 %531, %532
  br i1 %533, label %534, label %536

534:                                              ; preds = %526
  %535 = load i32, i32* %10, align 4
  store i32 %535, i32* %3, align 4
  br label %1378

536:                                              ; preds = %526
  %537 = load i32, i32* %10, align 4
  %538 = load i32, i32* @ARCHIVE_OK, align 4
  %539 = icmp ne i32 %537, %538
  br i1 %539, label %540, label %558

540:                                              ; preds = %536
  %541 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %542 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %543 = call i32 @get_entry_symlink(%struct.archive_write* %541, %struct.archive_entry* %542, i8** %19, i64* %27, %struct.archive_string_conv* null)
  store i32 %543, i32* %10, align 4
  %544 = load i32, i32* %10, align 4
  %545 = load i32, i32* @ARCHIVE_FATAL, align 4
  %546 = icmp eq i32 %544, %545
  br i1 %546, label %547, label %549

547:                                              ; preds = %540
  %548 = load i32, i32* %10, align 4
  store i32 %548, i32* %3, align 4
  br label %1378

549:                                              ; preds = %540
  %550 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %551 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %550, i32 0, i32 0
  %552 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %553 = load i8*, i8** %19, align 8
  %554 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %555 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %554)
  %556 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %551, i32 %552, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %553, i32 %555)
  %557 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %557, i32* %11, align 4
  store %struct.archive_string_conv* null, %struct.archive_string_conv** %24, align 8
  br label %558

558:                                              ; preds = %549, %536
  br label %559

559:                                              ; preds = %558
  br label %560

560:                                              ; preds = %559, %521
  %561 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %562 = icmp eq %struct.archive_string_conv* %561, null
  br i1 %562, label %563, label %611

563:                                              ; preds = %560
  %564 = load %struct.pax*, %struct.pax** %16, align 8
  %565 = getelementptr inbounds %struct.pax, %struct.pax* %564, i32 0, i32 6
  %566 = load i64, i64* %565, align 8
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %611, label %568

568:                                              ; preds = %563
  %569 = load i8*, i8** %17, align 8
  %570 = icmp ne i8* %569, null
  br i1 %570, label %571, label %583

571:                                              ; preds = %568
  %572 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %573 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %574 = call i32 @get_entry_hardlink(%struct.archive_write* %572, %struct.archive_entry* %573, i8** %17, i64* %25, %struct.archive_string_conv* null)
  store i32 %574, i32* %10, align 4
  %575 = load i32, i32* %10, align 4
  %576 = load i32, i32* @ARCHIVE_FATAL, align 4
  %577 = icmp eq i32 %575, %576
  br i1 %577, label %578, label %580

578:                                              ; preds = %571
  %579 = load i32, i32* %10, align 4
  store i32 %579, i32* %3, align 4
  br label %1378

580:                                              ; preds = %571
  %581 = load i8*, i8** %17, align 8
  store i8* %581, i8** %19, align 8
  %582 = load i64, i64* %25, align 8
  store i64 %582, i64* %27, align 8
  br label %583

583:                                              ; preds = %580, %568
  %584 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %585 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %586 = call i32 @get_entry_pathname(%struct.archive_write* %584, %struct.archive_entry* %585, i8** %18, i64* %26, %struct.archive_string_conv* null)
  store i32 %586, i32* %10, align 4
  %587 = load i32, i32* %10, align 4
  %588 = load i32, i32* @ARCHIVE_FATAL, align 4
  %589 = icmp eq i32 %587, %588
  br i1 %589, label %590, label %592

590:                                              ; preds = %583
  %591 = load i32, i32* %10, align 4
  store i32 %591, i32* %3, align 4
  br label %1378

592:                                              ; preds = %583
  %593 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %594 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %595 = call i32 @get_entry_uname(%struct.archive_write* %593, %struct.archive_entry* %594, i8** %20, i64* %28, %struct.archive_string_conv* null)
  store i32 %595, i32* %10, align 4
  %596 = load i32, i32* %10, align 4
  %597 = load i32, i32* @ARCHIVE_FATAL, align 4
  %598 = icmp eq i32 %596, %597
  br i1 %598, label %599, label %601

599:                                              ; preds = %592
  %600 = load i32, i32* %10, align 4
  store i32 %600, i32* %3, align 4
  br label %1378

601:                                              ; preds = %592
  %602 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %603 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %604 = call i32 @get_entry_gname(%struct.archive_write* %602, %struct.archive_entry* %603, i8** %21, i64* %29, %struct.archive_string_conv* null)
  store i32 %604, i32* %10, align 4
  %605 = load i32, i32* %10, align 4
  %606 = load i32, i32* @ARCHIVE_FATAL, align 4
  %607 = icmp eq i32 %605, %606
  br i1 %607, label %608, label %610

608:                                              ; preds = %601
  %609 = load i32, i32* %10, align 4
  store i32 %609, i32* %3, align 4
  br label %1378

610:                                              ; preds = %601
  br label %611

611:                                              ; preds = %610, %563, %560
  %612 = load %struct.archive_string_conv*, %struct.archive_string_conv** %24, align 8
  %613 = icmp eq %struct.archive_string_conv* %612, null
  br i1 %613, label %614, label %618

614:                                              ; preds = %611
  %615 = load %struct.pax*, %struct.pax** %16, align 8
  %616 = getelementptr inbounds %struct.pax, %struct.pax* %615, i32 0, i32 4
  %617 = call i32 @add_pax_attr(%struct.TYPE_10__* %616, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  br label %618

618:                                              ; preds = %614, %611
  %619 = load i8*, i8** %18, align 8
  %620 = call i64 @has_non_ASCII(i8* %619)
  %621 = icmp ne i64 %620, 0
  br i1 %621, label %622, label %633

622:                                              ; preds = %618
  %623 = load %struct.pax*, %struct.pax** %16, align 8
  %624 = getelementptr inbounds %struct.pax, %struct.pax* %623, i32 0, i32 4
  %625 = load i8*, i8** %18, align 8
  %626 = call i32 @add_pax_attr(%struct.TYPE_10__* %624, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %625)
  %627 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %628 = getelementptr inbounds [256 x i8], [256 x i8]* %32, i64 0, i64 0
  %629 = load i8*, i8** %18, align 8
  %630 = load i64, i64* %26, align 8
  %631 = call i32 @build_ustar_entry_name(i8* %628, i8* %629, i64 %630, i32* null)
  %632 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %627, i32 %631)
  store i32 1, i32* %9, align 4
  br label %680

633:                                              ; preds = %618
  %634 = load i64, i64* %26, align 8
  %635 = icmp ule i64 %634, 100
  br i1 %635, label %636, label %637

636:                                              ; preds = %633
  br label %679

637:                                              ; preds = %633
  %638 = load i8*, i8** %18, align 8
  %639 = load i64, i64* %26, align 8
  %640 = getelementptr inbounds i8, i8* %638, i64 %639
  %641 = getelementptr inbounds i8, i8* %640, i64 -100
  %642 = getelementptr inbounds i8, i8* %641, i64 -1
  %643 = call i8* @strchr(i8* %642, i8 signext 47)
  store i8* %643, i8** %8, align 8
  %644 = load i8*, i8** %8, align 8
  %645 = load i8*, i8** %18, align 8
  %646 = icmp eq i8* %644, %645
  br i1 %646, label %647, label %651

647:                                              ; preds = %637
  %648 = load i8*, i8** %8, align 8
  %649 = getelementptr inbounds i8, i8* %648, i64 1
  %650 = call i8* @strchr(i8* %649, i8 signext 47)
  store i8* %650, i8** %8, align 8
  br label %651

651:                                              ; preds = %647, %637
  %652 = load i8*, i8** %8, align 8
  %653 = icmp eq i8* %652, null
  br i1 %653, label %667, label %654

654:                                              ; preds = %651
  %655 = load i8*, i8** %8, align 8
  %656 = getelementptr inbounds i8, i8* %655, i64 1
  %657 = load i8, i8* %656, align 1
  %658 = sext i8 %657 to i32
  %659 = icmp eq i32 %658, 0
  br i1 %659, label %667, label %660

660:                                              ; preds = %654
  %661 = load i8*, i8** %8, align 8
  %662 = load i8*, i8** %18, align 8
  %663 = ptrtoint i8* %661 to i64
  %664 = ptrtoint i8* %662 to i64
  %665 = sub i64 %663, %664
  %666 = icmp sgt i64 %665, 155
  br i1 %666, label %667, label %678

667:                                              ; preds = %660, %654, %651
  %668 = load %struct.pax*, %struct.pax** %16, align 8
  %669 = getelementptr inbounds %struct.pax, %struct.pax* %668, i32 0, i32 4
  %670 = load i8*, i8** %18, align 8
  %671 = call i32 @add_pax_attr(%struct.TYPE_10__* %669, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i8* %670)
  %672 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %673 = getelementptr inbounds [256 x i8], [256 x i8]* %32, i64 0, i64 0
  %674 = load i8*, i8** %18, align 8
  %675 = load i64, i64* %26, align 8
  %676 = call i32 @build_ustar_entry_name(i8* %673, i8* %674, i64 %675, i32* null)
  %677 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %672, i32 %676)
  store i32 1, i32* %9, align 4
  br label %678

678:                                              ; preds = %667, %660
  br label %679

679:                                              ; preds = %678, %636
  br label %680

680:                                              ; preds = %679, %622
  %681 = load i8*, i8** %19, align 8
  %682 = icmp ne i8* %681, null
  br i1 %682, label %683, label %709

683:                                              ; preds = %680
  %684 = load i64, i64* %27, align 8
  %685 = icmp ugt i64 %684, 100
  br i1 %685, label %690, label %686

686:                                              ; preds = %683
  %687 = load i8*, i8** %19, align 8
  %688 = call i64 @has_non_ASCII(i8* %687)
  %689 = icmp ne i64 %688, 0
  br i1 %689, label %690, label %708

690:                                              ; preds = %686, %683
  %691 = load %struct.pax*, %struct.pax** %16, align 8
  %692 = getelementptr inbounds %struct.pax, %struct.pax* %691, i32 0, i32 4
  %693 = load i8*, i8** %19, align 8
  %694 = call i32 @add_pax_attr(%struct.TYPE_10__* %692, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.13, i64 0, i64 0), i8* %693)
  %695 = load i64, i64* %27, align 8
  %696 = icmp ugt i64 %695, 100
  br i1 %696, label %697, label %707

697:                                              ; preds = %690
  %698 = load i8*, i8** %17, align 8
  %699 = icmp ne i8* %698, null
  br i1 %699, label %700, label %703

700:                                              ; preds = %697
  %701 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %702 = call i32 @archive_entry_set_hardlink(%struct.archive_entry* %701, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0))
  br label %706

703:                                              ; preds = %697
  %704 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %705 = call i32 @archive_entry_set_symlink(%struct.archive_entry* %704, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %706

706:                                              ; preds = %703, %700
  br label %707

707:                                              ; preds = %706, %690
  store i32 1, i32* %9, align 4
  br label %708

708:                                              ; preds = %707, %686
  br label %709

709:                                              ; preds = %708, %680
  %710 = bitcast %struct.archive_string* %35 to %struct.archive_wstring*
  %711 = call i32 @archive_string_init(%struct.archive_wstring* %710)
  %712 = bitcast %struct.archive_string* %35 to %struct.archive_wstring*
  %713 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %714 = call i8* @archive_entry_pathname(%struct.archive_entry* %713)
  %715 = call i32 @archive_strcpy(%struct.archive_wstring* %712, i8* %714)
  %716 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %717 = call i32 @archive_entry_size(%struct.archive_entry* %716)
  %718 = icmp sge i32 %717, undef
  br i1 %718, label %719, label %725

719:                                              ; preds = %709
  %720 = load %struct.pax*, %struct.pax** %16, align 8
  %721 = getelementptr inbounds %struct.pax, %struct.pax* %720, i32 0, i32 4
  %722 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %723 = call i32 @archive_entry_size(%struct.archive_entry* %722)
  %724 = call i32 @add_pax_attr_int(%struct.TYPE_10__* %721, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i32 %723)
  store i32 1, i32* %9, align 4
  br label %725

725:                                              ; preds = %719, %709
  %726 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %727 = call i32 @archive_entry_gid(%struct.archive_entry* %726)
  %728 = icmp uge i32 %727, 262144
  br i1 %728, label %729, label %735

729:                                              ; preds = %725
  %730 = load %struct.pax*, %struct.pax** %16, align 8
  %731 = getelementptr inbounds %struct.pax, %struct.pax* %730, i32 0, i32 4
  %732 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %733 = call i32 @archive_entry_gid(%struct.archive_entry* %732)
  %734 = call i32 @add_pax_attr_int(%struct.TYPE_10__* %731, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %733)
  store i32 1, i32* %9, align 4
  br label %735

735:                                              ; preds = %729, %725
  %736 = load i8*, i8** %21, align 8
  %737 = icmp ne i8* %736, null
  br i1 %737, label %738, label %751

738:                                              ; preds = %735
  %739 = load i64, i64* %29, align 8
  %740 = icmp ugt i64 %739, 31
  br i1 %740, label %745, label %741

741:                                              ; preds = %738
  %742 = load i8*, i8** %21, align 8
  %743 = call i64 @has_non_ASCII(i8* %742)
  %744 = icmp ne i64 %743, 0
  br i1 %744, label %745, label %750

745:                                              ; preds = %741, %738
  %746 = load %struct.pax*, %struct.pax** %16, align 8
  %747 = getelementptr inbounds %struct.pax, %struct.pax* %746, i32 0, i32 4
  %748 = load i8*, i8** %21, align 8
  %749 = call i32 @add_pax_attr(%struct.TYPE_10__* %747, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.18, i64 0, i64 0), i8* %748)
  store i32 1, i32* %9, align 4
  br label %750

750:                                              ; preds = %745, %741
  br label %751

751:                                              ; preds = %750, %735
  %752 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %753 = call i32 @archive_entry_uid(%struct.archive_entry* %752)
  %754 = icmp uge i32 %753, 262144
  br i1 %754, label %755, label %761

755:                                              ; preds = %751
  %756 = load %struct.pax*, %struct.pax** %16, align 8
  %757 = getelementptr inbounds %struct.pax, %struct.pax* %756, i32 0, i32 4
  %758 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %759 = call i32 @archive_entry_uid(%struct.archive_entry* %758)
  %760 = call i32 @add_pax_attr_int(%struct.TYPE_10__* %757, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i64 0, i64 0), i32 %759)
  store i32 1, i32* %9, align 4
  br label %761

761:                                              ; preds = %755, %751
  %762 = load i8*, i8** %20, align 8
  %763 = icmp ne i8* %762, null
  br i1 %763, label %764, label %777

764:                                              ; preds = %761
  %765 = load i64, i64* %28, align 8
  %766 = icmp ugt i64 %765, 31
  br i1 %766, label %771, label %767

767:                                              ; preds = %764
  %768 = load i8*, i8** %20, align 8
  %769 = call i64 @has_non_ASCII(i8* %768)
  %770 = icmp ne i64 %769, 0
  br i1 %770, label %771, label %776

771:                                              ; preds = %767, %764
  %772 = load %struct.pax*, %struct.pax** %16, align 8
  %773 = getelementptr inbounds %struct.pax, %struct.pax* %772, i32 0, i32 4
  %774 = load i8*, i8** %20, align 8
  %775 = call i32 @add_pax_attr(%struct.TYPE_10__* %773, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i8* %774)
  store i32 1, i32* %9, align 4
  br label %776

776:                                              ; preds = %771, %767
  br label %777

777:                                              ; preds = %776, %761
  %778 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %779 = call i32 @archive_entry_filetype(%struct.archive_entry* %778)
  %780 = icmp eq i32 %779, 134
  br i1 %780, label %785, label %781

781:                                              ; preds = %777
  %782 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %783 = call i32 @archive_entry_filetype(%struct.archive_entry* %782)
  %784 = icmp eq i32 %783, 133
  br i1 %784, label %785, label %806

785:                                              ; preds = %781, %777
  %786 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %787 = call i32 @archive_entry_rdevmajor(%struct.archive_entry* %786)
  store i32 %787, i32* %45, align 4
  %788 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %789 = call i32 @archive_entry_rdevminor(%struct.archive_entry* %788)
  store i32 %789, i32* %46, align 4
  %790 = load i32, i32* %45, align 4
  %791 = icmp sge i32 %790, 262144
  br i1 %791, label %792, label %797

792:                                              ; preds = %785
  %793 = load %struct.pax*, %struct.pax** %16, align 8
  %794 = getelementptr inbounds %struct.pax, %struct.pax* %793, i32 0, i32 4
  %795 = load i32, i32* %45, align 4
  %796 = call i32 @add_pax_attr_int(%struct.TYPE_10__* %794, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i32 %795)
  store i32 1, i32* %9, align 4
  br label %797

797:                                              ; preds = %792, %785
  %798 = load i32, i32* %46, align 4
  %799 = icmp sge i32 %798, 262144
  br i1 %799, label %800, label %805

800:                                              ; preds = %797
  %801 = load %struct.pax*, %struct.pax** %16, align 8
  %802 = getelementptr inbounds %struct.pax, %struct.pax* %801, i32 0, i32 4
  %803 = load i32, i32* %46, align 4
  %804 = call i32 @add_pax_attr_int(%struct.TYPE_10__* %802, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i64 0, i64 0), i32 %803)
  store i32 1, i32* %9, align 4
  br label %805

805:                                              ; preds = %800, %797
  br label %806

806:                                              ; preds = %805, %781
  %807 = load i32, i32* %9, align 4
  %808 = icmp ne i32 %807, 0
  br i1 %808, label %818, label %809

809:                                              ; preds = %806
  %810 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %811 = call i32 @archive_entry_mtime(%struct.archive_entry* %810)
  %812 = icmp slt i32 %811, 0
  br i1 %812, label %817, label %813

813:                                              ; preds = %809
  %814 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %815 = call i32 @archive_entry_mtime(%struct.archive_entry* %814)
  %816 = icmp sge i32 %815, 2147483647
  br i1 %816, label %817, label %818

817:                                              ; preds = %813, %809
  store i32 1, i32* %9, align 4
  br label %818

818:                                              ; preds = %817, %813, %806
  %819 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %820 = call i8* @archive_entry_fflags_text(%struct.archive_entry* %819)
  store i8* %820, i8** %7, align 8
  %821 = load i32, i32* %9, align 4
  %822 = icmp ne i32 %821, 0
  br i1 %822, label %832, label %823

823:                                              ; preds = %818
  %824 = load i8*, i8** %7, align 8
  %825 = icmp ne i8* %824, null
  br i1 %825, label %826, label %832

826:                                              ; preds = %823
  %827 = load i8*, i8** %7, align 8
  %828 = load i8, i8* %827, align 1
  %829 = sext i8 %828 to i32
  %830 = icmp ne i32 %829, 0
  br i1 %830, label %831, label %832

831:                                              ; preds = %826
  store i32 1, i32* %9, align 4
  br label %832

832:                                              ; preds = %831, %826, %823, %818
  %833 = load i32, i32* %9, align 4
  %834 = icmp ne i32 %833, 0
  br i1 %834, label %840, label %835

835:                                              ; preds = %832
  %836 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %837 = call i64 @archive_entry_xattr_count(%struct.archive_entry* %836)
  %838 = icmp sgt i64 %837, 0
  br i1 %838, label %839, label %840

839:                                              ; preds = %835
  store i32 1, i32* %9, align 4
  br label %840

840:                                              ; preds = %839, %835, %832
  %841 = load i32, i32* %9, align 4
  %842 = icmp ne i32 %841, 0
  br i1 %842, label %847, label %843

843:                                              ; preds = %840
  %844 = load i32, i32* %13, align 4
  %845 = icmp sgt i32 %844, 0
  br i1 %845, label %846, label %847

846:                                              ; preds = %843
  store i32 1, i32* %9, align 4
  br label %847

847:                                              ; preds = %846, %843, %840
  %848 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %849 = call i32 @archive_entry_acl_types(%struct.archive_entry* %848)
  store i32 %849, i32* %12, align 4
  %850 = load i32, i32* %9, align 4
  %851 = icmp ne i32 %850, 0
  br i1 %851, label %856, label %852

852:                                              ; preds = %847
  %853 = load i32, i32* %12, align 4
  %854 = icmp ne i32 %853, 0
  br i1 %854, label %855, label %856

855:                                              ; preds = %852
  store i32 1, i32* %9, align 4
  br label %856

856:                                              ; preds = %855, %852, %847
  %857 = load i32, i32* %9, align 4
  %858 = icmp ne i32 %857, 0
  br i1 %858, label %864, label %859

859:                                              ; preds = %856
  %860 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %861 = call i64 @archive_entry_symlink_type(%struct.archive_entry* %860)
  %862 = icmp sgt i64 %861, 0
  br i1 %862, label %863, label %864

863:                                              ; preds = %859
  store i32 1, i32* %9, align 4
  br label %864

864:                                              ; preds = %863, %859, %856
  %865 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %866 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %865, i32 0, i32 0
  %867 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %866, i32 0, i32 0
  %868 = load i64, i64* %867, align 8
  %869 = load i64, i64* @ARCHIVE_FORMAT_TAR_PAX_RESTRICTED, align 8
  %870 = icmp ne i64 %868, %869
  br i1 %870, label %871, label %922

871:                                              ; preds = %864
  %872 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %873 = call i32 @archive_entry_ctime(%struct.archive_entry* %872)
  %874 = icmp ne i32 %873, 0
  br i1 %874, label %879, label %875

875:                                              ; preds = %871
  %876 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %877 = call i64 @archive_entry_ctime_nsec(%struct.archive_entry* %876)
  %878 = icmp ne i64 %877, 0
  br i1 %878, label %879, label %887

879:                                              ; preds = %875, %871
  %880 = load %struct.pax*, %struct.pax** %16, align 8
  %881 = getelementptr inbounds %struct.pax, %struct.pax* %880, i32 0, i32 4
  %882 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %883 = call i32 @archive_entry_ctime(%struct.archive_entry* %882)
  %884 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %885 = call i64 @archive_entry_ctime_nsec(%struct.archive_entry* %884)
  %886 = call i32 @add_pax_attr_time(%struct.TYPE_10__* %881, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i64 0, i64 0), i32 %883, i64 %885)
  br label %887

887:                                              ; preds = %879, %875
  %888 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %889 = call i32 @archive_entry_atime(%struct.archive_entry* %888)
  %890 = icmp ne i32 %889, 0
  br i1 %890, label %895, label %891

891:                                              ; preds = %887
  %892 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %893 = call i64 @archive_entry_atime_nsec(%struct.archive_entry* %892)
  %894 = icmp ne i64 %893, 0
  br i1 %894, label %895, label %903

895:                                              ; preds = %891, %887
  %896 = load %struct.pax*, %struct.pax** %16, align 8
  %897 = getelementptr inbounds %struct.pax, %struct.pax* %896, i32 0, i32 4
  %898 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %899 = call i32 @archive_entry_atime(%struct.archive_entry* %898)
  %900 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %901 = call i64 @archive_entry_atime_nsec(%struct.archive_entry* %900)
  %902 = call i32 @add_pax_attr_time(%struct.TYPE_10__* %897, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i64 0, i64 0), i32 %899, i64 %901)
  br label %903

903:                                              ; preds = %895, %891
  %904 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %905 = call i64 @archive_entry_birthtime_is_set(%struct.archive_entry* %904)
  %906 = icmp ne i64 %905, 0
  br i1 %906, label %907, label %921

907:                                              ; preds = %903
  %908 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %909 = call i32 @archive_entry_birthtime(%struct.archive_entry* %908)
  %910 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %911 = call i32 @archive_entry_mtime(%struct.archive_entry* %910)
  %912 = icmp slt i32 %909, %911
  br i1 %912, label %913, label %921

913:                                              ; preds = %907
  %914 = load %struct.pax*, %struct.pax** %16, align 8
  %915 = getelementptr inbounds %struct.pax, %struct.pax* %914, i32 0, i32 4
  %916 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %917 = call i32 @archive_entry_birthtime(%struct.archive_entry* %916)
  %918 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %919 = call i64 @archive_entry_birthtime_nsec(%struct.archive_entry* %918)
  %920 = call i32 @add_pax_attr_time(%struct.TYPE_10__* %915, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.25, i64 0, i64 0), i32 %917, i64 %919)
  br label %921

921:                                              ; preds = %913, %907, %903
  br label %922

922:                                              ; preds = %921, %864
  %923 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %924 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %923, i32 0, i32 0
  %925 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %924, i32 0, i32 0
  %926 = load i64, i64* %925, align 8
  %927 = load i64, i64* @ARCHIVE_FORMAT_TAR_PAX_RESTRICTED, align 8
  %928 = icmp ne i64 %926, %927
  br i1 %928, label %932, label %929

929:                                              ; preds = %922
  %930 = load i32, i32* %9, align 4
  %931 = icmp ne i32 %930, 0
  br i1 %931, label %932, label %1126

932:                                              ; preds = %929, %922
  %933 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %934 = call i32 @archive_entry_mtime(%struct.archive_entry* %933)
  %935 = icmp slt i32 %934, 0
  br i1 %935, label %944, label %936

936:                                              ; preds = %932
  %937 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %938 = call i32 @archive_entry_mtime(%struct.archive_entry* %937)
  %939 = icmp sge i32 %938, 2147483647
  br i1 %939, label %944, label %940

940:                                              ; preds = %936
  %941 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %942 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %941)
  %943 = icmp ne i64 %942, 0
  br i1 %943, label %944, label %952

944:                                              ; preds = %940, %936, %932
  %945 = load %struct.pax*, %struct.pax** %16, align 8
  %946 = getelementptr inbounds %struct.pax, %struct.pax* %945, i32 0, i32 4
  %947 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %948 = call i32 @archive_entry_mtime(%struct.archive_entry* %947)
  %949 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %950 = call i64 @archive_entry_mtime_nsec(%struct.archive_entry* %949)
  %951 = call i32 @add_pax_attr_time(%struct.TYPE_10__* %946, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0), i32 %948, i64 %950)
  br label %952

952:                                              ; preds = %944, %940
  %953 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %954 = call i8* @archive_entry_fflags_text(%struct.archive_entry* %953)
  store i8* %954, i8** %7, align 8
  %955 = load i8*, i8** %7, align 8
  %956 = icmp ne i8* %955, null
  br i1 %956, label %957, label %967

957:                                              ; preds = %952
  %958 = load i8*, i8** %7, align 8
  %959 = load i8, i8* %958, align 1
  %960 = sext i8 %959 to i32
  %961 = icmp ne i32 %960, 0
  br i1 %961, label %962, label %967

962:                                              ; preds = %957
  %963 = load %struct.pax*, %struct.pax** %16, align 8
  %964 = getelementptr inbounds %struct.pax, %struct.pax* %963, i32 0, i32 4
  %965 = load i8*, i8** %7, align 8
  %966 = call i32 @add_pax_attr(%struct.TYPE_10__* %964, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* %965)
  br label %967

967:                                              ; preds = %962, %957, %952
  %968 = load i32, i32* %12, align 4
  %969 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %970 = and i32 %968, %969
  %971 = icmp ne i32 %970, 0
  br i1 %971, label %972, label %988

972:                                              ; preds = %967
  %973 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %974 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %975 = load %struct.pax*, %struct.pax** %16, align 8
  %976 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID, align 4
  %977 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA, align 4
  %978 = or i32 %976, %977
  %979 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_COMPACT, align 4
  %980 = or i32 %978, %979
  %981 = call i32 @add_pax_acl(%struct.archive_write* %973, %struct.archive_entry* %974, %struct.pax* %975, i32 %980)
  store i32 %981, i32* %11, align 4
  %982 = load i32, i32* %11, align 4
  %983 = load i32, i32* @ARCHIVE_FATAL, align 4
  %984 = icmp eq i32 %982, %983
  br i1 %984, label %985, label %987

985:                                              ; preds = %972
  %986 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %986, i32* %3, align 4
  br label %1378

987:                                              ; preds = %972
  br label %988

988:                                              ; preds = %987, %967
  %989 = load i32, i32* %12, align 4
  %990 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %991 = and i32 %989, %990
  %992 = icmp ne i32 %991, 0
  br i1 %992, label %993, label %1009

993:                                              ; preds = %988
  %994 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %995 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %996 = load %struct.pax*, %struct.pax** %16, align 8
  %997 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %998 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID, align 4
  %999 = or i32 %997, %998
  %1000 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA, align 4
  %1001 = or i32 %999, %1000
  %1002 = call i32 @add_pax_acl(%struct.archive_write* %994, %struct.archive_entry* %995, %struct.pax* %996, i32 %1001)
  store i32 %1002, i32* %11, align 4
  %1003 = load i32, i32* %11, align 4
  %1004 = load i32, i32* @ARCHIVE_FATAL, align 4
  %1005 = icmp eq i32 %1003, %1004
  br i1 %1005, label %1006, label %1008

1006:                                             ; preds = %993
  %1007 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1007, i32* %3, align 4
  br label %1378

1008:                                             ; preds = %993
  br label %1009

1009:                                             ; preds = %1008, %988
  %1010 = load i32, i32* %12, align 4
  %1011 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DEFAULT, align 4
  %1012 = and i32 %1010, %1011
  %1013 = icmp ne i32 %1012, 0
  br i1 %1013, label %1014, label %1030

1014:                                             ; preds = %1009
  %1015 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1016 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %1017 = load %struct.pax*, %struct.pax** %16, align 8
  %1018 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DEFAULT, align 4
  %1019 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_EXTRA_ID, align 4
  %1020 = or i32 %1018, %1019
  %1021 = load i32, i32* @ARCHIVE_ENTRY_ACL_STYLE_SEPARATOR_COMMA, align 4
  %1022 = or i32 %1020, %1021
  %1023 = call i32 @add_pax_acl(%struct.archive_write* %1015, %struct.archive_entry* %1016, %struct.pax* %1017, i32 %1022)
  store i32 %1023, i32* %11, align 4
  %1024 = load i32, i32* %11, align 4
  %1025 = load i32, i32* @ARCHIVE_FATAL, align 4
  %1026 = icmp eq i32 %1024, %1025
  br i1 %1026, label %1027, label %1029

1027:                                             ; preds = %1014
  %1028 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1028, i32* %3, align 4
  br label %1378

1029:                                             ; preds = %1014
  br label %1030

1030:                                             ; preds = %1029, %1009
  %1031 = load i32, i32* %13, align 4
  %1032 = icmp sgt i32 %1031, 0
  br i1 %1032, label %1033, label %1093

1033:                                             ; preds = %1030
  %1034 = load %struct.pax*, %struct.pax** %16, align 8
  %1035 = getelementptr inbounds %struct.pax, %struct.pax* %1034, i32 0, i32 4
  %1036 = call i32 @add_pax_attr_int(%struct.TYPE_10__* %1035, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i32 1)
  %1037 = load %struct.pax*, %struct.pax** %16, align 8
  %1038 = getelementptr inbounds %struct.pax, %struct.pax* %1037, i32 0, i32 4
  %1039 = call i32 @add_pax_attr_int(%struct.TYPE_10__* %1038, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i32 0)
  %1040 = load %struct.pax*, %struct.pax** %16, align 8
  %1041 = getelementptr inbounds %struct.pax, %struct.pax* %1040, i32 0, i32 4
  %1042 = load i8*, i8** %18, align 8
  %1043 = call i32 @add_pax_attr(%struct.TYPE_10__* %1041, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8* %1042)
  %1044 = load %struct.pax*, %struct.pax** %16, align 8
  %1045 = getelementptr inbounds %struct.pax, %struct.pax* %1044, i32 0, i32 4
  %1046 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1047 = call i32 @archive_entry_size(%struct.archive_entry* %1046)
  %1048 = call i32 @add_pax_attr_int(%struct.TYPE_10__* %1045, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0), i32 %1047)
  %1049 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1050 = getelementptr inbounds [256 x i8], [256 x i8]* %34, i64 0, i64 0
  %1051 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %35, i32 0, i32 0
  %1052 = load i8*, i8** %1051, align 8
  %1053 = call i32 @build_gnu_sparse_name(i8* %1050, i8* %1052)
  %1054 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %1049, i32 %1053)
  %1055 = load %struct.pax*, %struct.pax** %16, align 8
  %1056 = getelementptr inbounds %struct.pax, %struct.pax* %1055, i32 0, i32 5
  %1057 = load i32, i32* %13, align 4
  %1058 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @archive_string_sprintf(%struct.TYPE_10__* %1056, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i32 %1057)
  br label %1059

1059:                                             ; preds = %1091, %1033
  %1060 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1061 = call i32 @archive_entry_sparse_next(%struct.archive_entry* %1060, i32* %47, i32* %48)
  %1062 = load i32, i32* @ARCHIVE_OK, align 4
  %1063 = icmp eq i32 %1061, %1062
  br i1 %1063, label %1064, label %1092

1064:                                             ; preds = %1059
  %1065 = load %struct.pax*, %struct.pax** %16, align 8
  %1066 = getelementptr inbounds %struct.pax, %struct.pax* %1065, i32 0, i32 5
  %1067 = load i32, i32* %47, align 4
  %1068 = load i32, i32* %48, align 4
  %1069 = call i32 (%struct.TYPE_10__*, i8*, i32, ...) @archive_string_sprintf(%struct.TYPE_10__* %1066, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i64 0, i64 0), i32 %1067, i32 %1068)
  %1070 = load i32, i32* %48, align 4
  %1071 = sext i32 %1070 to i64
  %1072 = load i64, i64* %14, align 8
  %1073 = add i64 %1072, %1071
  store i64 %1073, i64* %14, align 8
  %1074 = load %struct.pax*, %struct.pax** %16, align 8
  %1075 = load i32, i32* %47, align 4
  %1076 = load i32, i32* %48, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = call i32 @sparse_list_add(%struct.pax* %1074, i32 %1075, i64 %1077)
  %1079 = load i32, i32* @ARCHIVE_OK, align 4
  %1080 = icmp ne i32 %1078, %1079
  br i1 %1080, label %1081, label %1091

1081:                                             ; preds = %1064
  %1082 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1083 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %1082, i32 0, i32 0
  %1084 = load i32, i32* @ENOMEM, align 4
  %1085 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %1083, i32 %1084, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0))
  %1086 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1087 = call i32 @archive_entry_free(%struct.archive_entry* %1086)
  %1088 = bitcast %struct.archive_string* %35 to %struct.archive_wstring*
  %1089 = call i32 @archive_string_free(%struct.archive_wstring* %1088)
  %1090 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1090, i32* %3, align 4
  br label %1378

1091:                                             ; preds = %1064
  br label %1059

1092:                                             ; preds = %1059
  br label %1093

1093:                                             ; preds = %1092, %1030
  %1094 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1095 = load %struct.pax*, %struct.pax** %16, align 8
  %1096 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %1097 = call i32 @archive_write_pax_header_xattrs(%struct.archive_write* %1094, %struct.pax* %1095, %struct.archive_entry* %1096)
  %1098 = load i32, i32* @ARCHIVE_FATAL, align 4
  %1099 = icmp eq i32 %1097, %1098
  br i1 %1099, label %1100, label %1106

1100:                                             ; preds = %1093
  %1101 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1102 = call i32 @archive_entry_free(%struct.archive_entry* %1101)
  %1103 = bitcast %struct.archive_string* %35 to %struct.archive_wstring*
  %1104 = call i32 @archive_string_free(%struct.archive_wstring* %1103)
  %1105 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1105, i32* %3, align 4
  br label %1378

1106:                                             ; preds = %1093
  %1107 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1108 = call i64 @archive_entry_symlink_type(%struct.archive_entry* %1107)
  %1109 = load i64, i64* @AE_SYMLINK_TYPE_FILE, align 8
  %1110 = icmp eq i64 %1108, %1109
  br i1 %1110, label %1111, label %1115

1111:                                             ; preds = %1106
  %1112 = load %struct.pax*, %struct.pax** %16, align 8
  %1113 = getelementptr inbounds %struct.pax, %struct.pax* %1112, i32 0, i32 4
  %1114 = call i32 @add_pax_attr(%struct.TYPE_10__* %1113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0))
  br label %1125

1115:                                             ; preds = %1106
  %1116 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1117 = call i64 @archive_entry_symlink_type(%struct.archive_entry* %1116)
  %1118 = load i64, i64* @AE_SYMLINK_TYPE_DIRECTORY, align 8
  %1119 = icmp eq i64 %1117, %1118
  br i1 %1119, label %1120, label %1124

1120:                                             ; preds = %1115
  %1121 = load %struct.pax*, %struct.pax** %16, align 8
  %1122 = getelementptr inbounds %struct.pax, %struct.pax* %1121, i32 0, i32 4
  %1123 = call i32 @add_pax_attr(%struct.TYPE_10__* %1122, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0))
  br label %1124

1124:                                             ; preds = %1120, %1115
  br label %1125

1125:                                             ; preds = %1124, %1111
  br label %1126

1126:                                             ; preds = %1125, %929
  %1127 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1128 = call i32 @archive_entry_filetype(%struct.archive_entry* %1127)
  %1129 = icmp ne i32 %1128, 129
  br i1 %1129, label %1130, label %1133

1130:                                             ; preds = %1126
  %1131 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1132 = call i32 @archive_entry_set_size(%struct.archive_entry* %1131, i64 0)
  br label %1133

1133:                                             ; preds = %1130, %1126
  %1134 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1135 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %1134, i32 0, i32 0
  %1136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %1135, i32 0, i32 0
  %1137 = load i64, i64* %1136, align 8
  %1138 = load i64, i64* @ARCHIVE_FORMAT_TAR_PAX_INTERCHANGE, align 8
  %1139 = icmp ne i64 %1137, %1138
  br i1 %1139, label %1140, label %1146

1140:                                             ; preds = %1133
  %1141 = load i8*, i8** %17, align 8
  %1142 = icmp ne i8* %1141, null
  br i1 %1142, label %1143, label %1146

1143:                                             ; preds = %1140
  %1144 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1145 = call i32 @archive_entry_set_size(%struct.archive_entry* %1144, i64 0)
  br label %1146

1146:                                             ; preds = %1143, %1140, %1133
  %1147 = load i8*, i8** %17, align 8
  %1148 = icmp ne i8* %1147, null
  br i1 %1148, label %1149, label %1152

1149:                                             ; preds = %1146
  %1150 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1151 = call i32 @archive_entry_set_size(%struct.archive_entry* %1150, i64 0)
  br label %1152

1152:                                             ; preds = %1149, %1146
  %1153 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1154 = call i32 @archive_entry_size(%struct.archive_entry* %1153)
  %1155 = sext i32 %1154 to i64
  store i64 %1155, i64* %15, align 8
  %1156 = load %struct.pax*, %struct.pax** %16, align 8
  %1157 = getelementptr inbounds %struct.pax, %struct.pax* %1156, i32 0, i32 5
  %1158 = call i32 @archive_strlen(%struct.TYPE_10__* %1157)
  %1159 = icmp ne i32 %1158, 0
  br i1 %1159, label %1160, label %1181

1160:                                             ; preds = %1152
  %1161 = load %struct.pax*, %struct.pax** %16, align 8
  %1162 = getelementptr inbounds %struct.pax, %struct.pax* %1161, i32 0, i32 5
  %1163 = call i32 @archive_strlen(%struct.TYPE_10__* %1162)
  %1164 = sext i32 %1163 to i64
  store i64 %1164, i64* %49, align 8
  %1165 = load i64, i64* %49, align 8
  %1166 = trunc i64 %1165 to i32
  %1167 = sub nsw i32 0, %1166
  %1168 = and i32 511, %1167
  %1169 = load %struct.pax*, %struct.pax** %16, align 8
  %1170 = getelementptr inbounds %struct.pax, %struct.pax* %1169, i32 0, i32 0
  store i32 %1168, i32* %1170, align 8
  %1171 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1172 = load i64, i64* %49, align 8
  %1173 = load %struct.pax*, %struct.pax** %16, align 8
  %1174 = getelementptr inbounds %struct.pax, %struct.pax* %1173, i32 0, i32 0
  %1175 = load i32, i32* %1174, align 8
  %1176 = sext i32 %1175 to i64
  %1177 = add i64 %1172, %1176
  %1178 = load i64, i64* %14, align 8
  %1179 = add i64 %1177, %1178
  %1180 = call i32 @archive_entry_set_size(%struct.archive_entry* %1171, i64 %1179)
  br label %1181

1181:                                             ; preds = %1160, %1152
  %1182 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1183 = getelementptr inbounds [512 x i8], [512 x i8]* %31, i64 0, i64 0
  %1184 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1185 = call i32 @__archive_write_format_header_ustar(%struct.archive_write* %1182, i8* %1183, %struct.archive_entry* %1184, i8 signext -1, i32 0, i32* null)
  %1186 = load i32, i32* @ARCHIVE_FATAL, align 4
  %1187 = icmp eq i32 %1185, %1186
  br i1 %1187, label %1188, label %1190

1188:                                             ; preds = %1181
  %1189 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1189, i32* %3, align 4
  br label %1378

1190:                                             ; preds = %1181
  %1191 = load %struct.pax*, %struct.pax** %16, align 8
  %1192 = getelementptr inbounds %struct.pax, %struct.pax* %1191, i32 0, i32 4
  %1193 = call i32 @archive_strlen(%struct.TYPE_10__* %1192)
  %1194 = icmp sgt i32 %1193, 0
  br i1 %1194, label %1195, label %1341

1195:                                             ; preds = %1190
  %1196 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1197 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %1196, i32 0, i32 0
  %1198 = call %struct.archive_entry* @archive_entry_new2(%struct.TYPE_11__* %1197)
  store %struct.archive_entry* %1198, %struct.archive_entry** %50, align 8
  %1199 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %35, i32 0, i32 0
  %1200 = load i8*, i8** %1199, align 8
  store i8* %1200, i8** %7, align 8
  %1201 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1202 = getelementptr inbounds [256 x i8], [256 x i8]* %33, i64 0, i64 0
  %1203 = load i8*, i8** %7, align 8
  %1204 = call i32 @build_pax_attribute_name(i8* %1202, i8* %1203)
  %1205 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %1201, i32 %1204)
  %1206 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1207 = load %struct.pax*, %struct.pax** %16, align 8
  %1208 = getelementptr inbounds %struct.pax, %struct.pax* %1207, i32 0, i32 4
  %1209 = call i32 @archive_strlen(%struct.TYPE_10__* %1208)
  %1210 = sext i32 %1209 to i64
  %1211 = call i32 @archive_entry_set_size(%struct.archive_entry* %1206, i64 %1210)
  %1212 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1213 = call i32 @archive_entry_uid(%struct.archive_entry* %1212)
  store i32 %1213, i32* %52, align 4
  %1214 = load i32, i32* %52, align 4
  %1215 = icmp sge i32 %1214, 262144
  br i1 %1215, label %1216, label %1217

1216:                                             ; preds = %1195
  store i32 262143, i32* %52, align 4
  br label %1217

1217:                                             ; preds = %1216, %1195
  %1218 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1219 = load i32, i32* %52, align 4
  %1220 = call i32 @archive_entry_set_uid(%struct.archive_entry* %1218, i32 %1219)
  %1221 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1222 = call i32 @archive_entry_gid(%struct.archive_entry* %1221)
  store i32 %1222, i32* %53, align 4
  %1223 = load i32, i32* %53, align 4
  %1224 = icmp sge i32 %1223, 262144
  br i1 %1224, label %1225, label %1226

1225:                                             ; preds = %1217
  store i32 262143, i32* %53, align 4
  br label %1226

1226:                                             ; preds = %1225, %1217
  %1227 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1228 = load i32, i32* %53, align 4
  %1229 = call i32 @archive_entry_set_gid(%struct.archive_entry* %1227, i32 %1228)
  %1230 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1231 = call i32 @archive_entry_mode(%struct.archive_entry* %1230)
  store i32 %1231, i32* %54, align 4
  %1232 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1233 = load i32, i32* %54, align 4
  %1234 = call i32 @archive_entry_set_mode(%struct.archive_entry* %1232, i32 %1233)
  %1235 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1236 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1237 = call i32 @archive_entry_uname(%struct.archive_entry* %1236)
  %1238 = call i32 @archive_entry_set_uname(%struct.archive_entry* %1235, i32 %1237)
  %1239 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1240 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1241 = call i32 @archive_entry_gname(%struct.archive_entry* %1240)
  %1242 = call i32 @archive_entry_set_gname(%struct.archive_entry* %1239, i32 %1241)
  %1243 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1244 = call i32 @archive_entry_mtime(%struct.archive_entry* %1243)
  store i32 %1244, i32* %51, align 4
  %1245 = load i32, i32* %51, align 4
  %1246 = icmp slt i32 %1245, 0
  br i1 %1246, label %1247, label %1248

1247:                                             ; preds = %1226
  store i32 0, i32* %51, align 4
  br label %1248

1248:                                             ; preds = %1247, %1226
  %1249 = load i32, i32* %51, align 4
  %1250 = icmp sge i32 %1249, 2147483647
  br i1 %1250, label %1251, label %1252

1251:                                             ; preds = %1248
  store i32 2147483647, i32* %51, align 4
  br label %1252

1252:                                             ; preds = %1251, %1248
  %1253 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1254 = load i32, i32* %51, align 4
  %1255 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %1253, i32 %1254, i64 0)
  %1256 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1257 = call i32 @archive_entry_set_atime(%struct.archive_entry* %1256, i32 0, i32 0)
  %1258 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1259 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %1258, i32 0, i32 0)
  %1260 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1261 = getelementptr inbounds [512 x i8], [512 x i8]* %30, i64 0, i64 0
  %1262 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1263 = call i32 @__archive_write_format_header_ustar(%struct.archive_write* %1260, i8* %1261, %struct.archive_entry* %1262, i8 signext 120, i32 1, i32* null)
  store i32 %1263, i32* %10, align 4
  %1264 = load %struct.archive_entry*, %struct.archive_entry** %50, align 8
  %1265 = call i32 @archive_entry_free(%struct.archive_entry* %1264)
  %1266 = load i32, i32* %10, align 4
  %1267 = load i32, i32* @ARCHIVE_WARN, align 4
  %1268 = icmp slt i32 %1266, %1267
  br i1 %1268, label %1269, label %1275

1269:                                             ; preds = %1252
  %1270 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1271 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %1270, i32 0, i32 0
  %1272 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %1273 = call i32 (%struct.TYPE_11__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_11__* %1271, i32 %1272, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.38, i64 0, i64 0))
  %1274 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1274, i32* %3, align 4
  br label %1378

1275:                                             ; preds = %1252
  %1276 = load i32, i32* %10, align 4
  %1277 = load i32, i32* %11, align 4
  %1278 = icmp slt i32 %1276, %1277
  br i1 %1278, label %1279, label %1281

1279:                                             ; preds = %1275
  %1280 = load i32, i32* %10, align 4
  store i32 %1280, i32* %11, align 4
  br label %1281

1281:                                             ; preds = %1279, %1275
  br label %1282

1282:                                             ; preds = %1281
  %1283 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1284 = getelementptr inbounds [512 x i8], [512 x i8]* %30, i64 0, i64 0
  %1285 = call i32 @__archive_write_output(%struct.archive_write* %1283, i8* %1284, i32 512)
  store i32 %1285, i32* %10, align 4
  %1286 = load i32, i32* %10, align 4
  %1287 = load i32, i32* @ARCHIVE_OK, align 4
  %1288 = icmp ne i32 %1286, %1287
  br i1 %1288, label %1289, label %1297

1289:                                             ; preds = %1282
  %1290 = load %struct.pax*, %struct.pax** %16, align 8
  %1291 = call i32 @sparse_list_clear(%struct.pax* %1290)
  %1292 = load %struct.pax*, %struct.pax** %16, align 8
  %1293 = getelementptr inbounds %struct.pax, %struct.pax* %1292, i32 0, i32 1
  store i32 0, i32* %1293, align 4
  %1294 = load %struct.pax*, %struct.pax** %16, align 8
  %1295 = getelementptr inbounds %struct.pax, %struct.pax* %1294, i32 0, i32 2
  store i32 0, i32* %1295, align 8
  %1296 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1296, i32* %3, align 4
  br label %1378

1297:                                             ; preds = %1282
  %1298 = load %struct.pax*, %struct.pax** %16, align 8
  %1299 = getelementptr inbounds %struct.pax, %struct.pax* %1298, i32 0, i32 4
  %1300 = call i32 @archive_strlen(%struct.TYPE_10__* %1299)
  %1301 = load %struct.pax*, %struct.pax** %16, align 8
  %1302 = getelementptr inbounds %struct.pax, %struct.pax* %1301, i32 0, i32 1
  store i32 %1300, i32* %1302, align 4
  %1303 = load %struct.pax*, %struct.pax** %16, align 8
  %1304 = getelementptr inbounds %struct.pax, %struct.pax* %1303, i32 0, i32 1
  %1305 = load i32, i32* %1304, align 4
  %1306 = sub nsw i32 0, %1305
  %1307 = and i32 511, %1306
  %1308 = load %struct.pax*, %struct.pax** %16, align 8
  %1309 = getelementptr inbounds %struct.pax, %struct.pax* %1308, i32 0, i32 2
  store i32 %1307, i32* %1309, align 8
  %1310 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1311 = load %struct.pax*, %struct.pax** %16, align 8
  %1312 = getelementptr inbounds %struct.pax, %struct.pax* %1311, i32 0, i32 4
  %1313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %1312, i32 0, i32 0
  %1314 = load i8*, i8** %1313, align 8
  %1315 = load %struct.pax*, %struct.pax** %16, align 8
  %1316 = getelementptr inbounds %struct.pax, %struct.pax* %1315, i32 0, i32 4
  %1317 = call i32 @archive_strlen(%struct.TYPE_10__* %1316)
  %1318 = call i32 @__archive_write_output(%struct.archive_write* %1310, i8* %1314, i32 %1317)
  store i32 %1318, i32* %10, align 4
  %1319 = load i32, i32* %10, align 4
  %1320 = load i32, i32* @ARCHIVE_OK, align 4
  %1321 = icmp ne i32 %1319, %1320
  br i1 %1321, label %1322, label %1324

1322:                                             ; preds = %1297
  %1323 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1323, i32* %3, align 4
  br label %1378

1324:                                             ; preds = %1297
  %1325 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1326 = load %struct.pax*, %struct.pax** %16, align 8
  %1327 = getelementptr inbounds %struct.pax, %struct.pax* %1326, i32 0, i32 2
  %1328 = load i32, i32* %1327, align 8
  %1329 = sext i32 %1328 to i64
  %1330 = call i32 @__archive_write_nulls(%struct.archive_write* %1325, i64 %1329)
  store i32 %1330, i32* %10, align 4
  %1331 = load i32, i32* %10, align 4
  %1332 = load i32, i32* @ARCHIVE_OK, align 4
  %1333 = icmp ne i32 %1331, %1332
  br i1 %1333, label %1334, label %1336

1334:                                             ; preds = %1324
  %1335 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %1335, i32* %3, align 4
  br label %1378

1336:                                             ; preds = %1324
  %1337 = load %struct.pax*, %struct.pax** %16, align 8
  %1338 = getelementptr inbounds %struct.pax, %struct.pax* %1337, i32 0, i32 2
  store i32 0, i32* %1338, align 8
  %1339 = load %struct.pax*, %struct.pax** %16, align 8
  %1340 = getelementptr inbounds %struct.pax, %struct.pax* %1339, i32 0, i32 1
  store i32 0, i32* %1340, align 4
  br label %1341

1341:                                             ; preds = %1336, %1190
  %1342 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %1343 = getelementptr inbounds [512 x i8], [512 x i8]* %31, i64 0, i64 0
  %1344 = call i32 @__archive_write_output(%struct.archive_write* %1342, i8* %1343, i32 512)
  store i32 %1344, i32* %10, align 4
  %1345 = load i32, i32* %10, align 4
  %1346 = load i32, i32* @ARCHIVE_OK, align 4
  %1347 = icmp ne i32 %1345, %1346
  br i1 %1347, label %1348, label %1350

1348:                                             ; preds = %1341
  %1349 = load i32, i32* %10, align 4
  store i32 %1349, i32* %3, align 4
  br label %1378

1350:                                             ; preds = %1341
  %1351 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %1352 = load i64, i64* %15, align 8
  %1353 = call i32 @archive_entry_set_size(%struct.archive_entry* %1351, i64 %1352)
  %1354 = load %struct.pax*, %struct.pax** %16, align 8
  %1355 = getelementptr inbounds %struct.pax, %struct.pax* %1354, i32 0, i32 3
  %1356 = load i32*, i32** %1355, align 8
  %1357 = icmp eq i32* %1356, null
  br i1 %1357, label %1358, label %1366

1358:                                             ; preds = %1350
  %1359 = load i64, i64* %15, align 8
  %1360 = icmp ugt i64 %1359, 0
  br i1 %1360, label %1361, label %1366

1361:                                             ; preds = %1358
  %1362 = load %struct.pax*, %struct.pax** %16, align 8
  %1363 = load i64, i64* %15, align 8
  %1364 = call i32 @sparse_list_add(%struct.pax* %1362, i32 0, i64 %1363)
  %1365 = load i64, i64* %15, align 8
  store i64 %1365, i64* %14, align 8
  br label %1366

1366:                                             ; preds = %1361, %1358, %1350
  %1367 = load i64, i64* %14, align 8
  %1368 = trunc i64 %1367 to i32
  %1369 = sub nsw i32 0, %1368
  %1370 = and i32 511, %1369
  %1371 = load %struct.pax*, %struct.pax** %16, align 8
  %1372 = getelementptr inbounds %struct.pax, %struct.pax* %1371, i32 0, i32 2
  store i32 %1370, i32* %1372, align 8
  %1373 = load %struct.archive_entry*, %struct.archive_entry** %6, align 8
  %1374 = call i32 @archive_entry_free(%struct.archive_entry* %1373)
  %1375 = bitcast %struct.archive_string* %35 to %struct.archive_wstring*
  %1376 = call i32 @archive_string_free(%struct.archive_wstring* %1375)
  %1377 = load i32, i32* %11, align 4
  store i32 %1377, i32* %3, align 4
  br label %1378

1378:                                             ; preds = %1366, %1348, %1334, %1322, %1289, %1269, %1188, %1100, %1081, %1027, %1006, %985, %608, %599, %590, %578, %547, %534, %509, %496, %476, %463, %443, %430, %371, %357, %343, %326, %229, %197, %191, %169, %118, %105, %90, %63
  %1379 = load i32, i32* %3, align 4
  ret i32 %1379
}

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_11__*, i32, i8*, ...) #1

declare dso_local %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i32 @get_entry_hardlink(%struct.archive_write*, %struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @archive_string_init(%struct.archive_wstring*) #1

declare dso_local i32* @archive_string_ensure(%struct.archive_wstring*, i64) #1

declare dso_local i32 @archive_string_free(%struct.archive_wstring*) #1

declare dso_local i32 @archive_strncpy(%struct.archive_wstring*, i8*, i64) #1

declare dso_local i32 @archive_strappend_char(%struct.archive_wstring*, i8 signext) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i8* @archive_entry_mac_metadata(%struct.archive_entry*, i64*) #1

declare dso_local %struct.archive_entry* @archive_entry_new2(%struct.TYPE_11__*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_perm(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_perm(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i64) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_gid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_gname(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_gname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_uid(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_uname(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_uname(%struct.archive_entry*) #1

declare dso_local i64 @archive_write_pax_data(%struct.archive_write*, i8*, i64) #1

declare dso_local i32 @archive_write_pax_finish_entry(%struct.archive_write*) #1

declare dso_local %struct.archive_entry* @archive_entry_clone(%struct.archive_entry*) #1

declare dso_local i32 @archive_string_empty(%struct.TYPE_10__*) #1

declare dso_local i32 @sparse_list_clear(%struct.pax*) #1

declare dso_local i32 @archive_entry_sparse_reset(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_sparse_next(%struct.archive_entry*, i32*, i32*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_sparse_add_entry(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @get_entry_pathname(%struct.archive_write*, %struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @get_entry_uname(%struct.archive_write*, %struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @get_entry_gname(%struct.archive_write*, %struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @get_entry_symlink(%struct.archive_write*, %struct.archive_entry*, i8**, i64*, %struct.archive_string_conv*) #1

declare dso_local i32 @add_pax_attr(%struct.TYPE_10__*, i8*, i8*) #1

declare dso_local i64 @has_non_ASCII(i8*) #1

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i32) #1

declare dso_local i32 @build_ustar_entry_name(i8*, i8*, i64, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @archive_entry_set_hardlink(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_symlink(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_strcpy(%struct.archive_wstring*, i8*) #1

declare dso_local i32 @add_pax_attr_int(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @archive_entry_rdevmajor(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_rdevminor(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_fflags_text(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_xattr_count(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_acl_types(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_symlink_type(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_ctime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @add_pax_attr_time(%struct.TYPE_10__*, i8*, i32, i64) #1

declare dso_local i32 @archive_entry_atime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_atime_nsec(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_birthtime_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_birthtime(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_birthtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @add_pax_acl(%struct.archive_write*, %struct.archive_entry*, %struct.pax*, i32) #1

declare dso_local i32 @build_gnu_sparse_name(i8*, i8*) #1

declare dso_local i32 @archive_string_sprintf(%struct.TYPE_10__*, i8*, i32, ...) #1

declare dso_local i32 @sparse_list_add(%struct.pax*, i32, i64) #1

declare dso_local i32 @archive_write_pax_header_xattrs(%struct.archive_write*, %struct.pax*, %struct.archive_entry*) #1

declare dso_local i32 @archive_strlen(%struct.TYPE_10__*) #1

declare dso_local i32 @__archive_write_format_header_ustar(%struct.archive_write*, i8*, %struct.archive_entry*, i8 signext, i32, i32*) #1

declare dso_local i32 @build_pax_attribute_name(i8*, i8*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i8*, i32) #1

declare dso_local i32 @__archive_write_nulls(%struct.archive_write*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
