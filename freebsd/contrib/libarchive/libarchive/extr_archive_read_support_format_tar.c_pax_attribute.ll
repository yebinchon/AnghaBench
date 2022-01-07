; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_pax_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_pax_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"GNU.sparse\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Non-regular file cannot be sparse\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"GNU.sparse.numblocks\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"GNU.sparse.offset\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"GNU.sparse.numbytes\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"GNU.sparse.size\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"GNU.sparse.map\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"GNU.sparse.major\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"GNU.sparse.minor\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"GNU.sparse.name\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"GNU.sparse.realsize\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"LIBARCHIVE.creationtime\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"LIBARCHIVE.symlinktype\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_SYMLINK_TYPE_FILE = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@AE_SYMLINK_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"LIBARCHIVE.xattr.\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"SCHILY.acl.access\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"SCHILY.acl.default\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_DEFAULT = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [15 x i8] c"SCHILY.acl.ace\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_NFS4 = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"SCHILY.devmajor\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"SCHILY.devminor\00", align 1
@.str.22 = private unnamed_addr constant [14 x i8] c"SCHILY.fflags\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"SCHILY.dev\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"SCHILY.ino\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"SCHILY.nlink\00", align 1
@.str.26 = private unnamed_addr constant [16 x i8] c"SCHILY.realsize\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"SCHILY.xattr.\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"SUN.holesdata\00", align 1
@.str.29 = private unnamed_addr constant [27 x i8] c"Parse error: SUN.holesdata\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"atime\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"ctime\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"charset\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"comment\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"gname\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"hdrcharset\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"BINARY\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c"ISO-IR 10646 2000 UTF-8\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"linkpath\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"mtime\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"path\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.43 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i8*, i64)* @pax_attribute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pax_attribute(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_entry* %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_read*, align 8
  %9 = alloca %struct.tar*, align 8
  %10 = alloca %struct.archive_entry*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %8, align 8
  store %struct.tar* %1, %struct.tar** %9, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %18, i32* %16, align 4
  %19 = load i8*, i8** %12, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  br label %22

22:                                               ; preds = %21, %6
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 0
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  switch i32 %26, label %608 [
    i32 71, label %27
    i32 76, label %219
    i32 83, label %262
    i32 97, label %446
    i32 99, label %458
    i32 103, label %482
    i32 104, label %504
    i32 108, label %525
    i32 109, label %535
    i32 112, label %547
    i32 114, label %557
    i32 115, label %558
    i32 117, label %586
  ]

27:                                               ; preds = %22
  %28 = load i8*, i8** %11, align 8
  %29 = call i32 @strncmp(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 10)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.tar*, %struct.tar** %9, align 8
  %33 = getelementptr inbounds %struct.tar, %struct.tar* %32, i32 0, i32 14
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %38 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %37, i32 0, i32 0
  %39 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %40 = call i32 @archive_set_error(i32* %38, i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %41, i32* %7, align 4
  br label %610

42:                                               ; preds = %31, %27
  %43 = load i8*, i8** %11, align 8
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %42
  %47 = load %struct.tar*, %struct.tar** %9, align 8
  %48 = getelementptr inbounds %struct.tar, %struct.tar* %47, i32 0, i32 0
  store i32 -1, i32* %48, align 8
  %49 = load %struct.tar*, %struct.tar** %9, align 8
  %50 = getelementptr inbounds %struct.tar, %struct.tar* %49, i32 0, i32 1
  store i32 -1, i32* %50, align 4
  %51 = load %struct.tar*, %struct.tar** %9, align 8
  %52 = getelementptr inbounds %struct.tar, %struct.tar* %51, i32 0, i32 2
  store i32 0, i32* %52, align 8
  %53 = load %struct.tar*, %struct.tar** %9, align 8
  %54 = getelementptr inbounds %struct.tar, %struct.tar* %53, i32 0, i32 3
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %46, %42
  %56 = load i8*, i8** %11, align 8
  %57 = call i32 @strcmp(i8* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = load i8*, i8** %12, align 8
  %61 = load i8*, i8** %12, align 8
  %62 = call i32 @strlen(i8* %61)
  %63 = call i8* @tar_atol10(i8* %60, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.tar*, %struct.tar** %9, align 8
  %66 = getelementptr inbounds %struct.tar, %struct.tar* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.tar*, %struct.tar** %9, align 8
  %68 = getelementptr inbounds %struct.tar, %struct.tar* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %90

71:                                               ; preds = %59
  %72 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %73 = load %struct.tar*, %struct.tar** %9, align 8
  %74 = load %struct.tar*, %struct.tar** %9, align 8
  %75 = getelementptr inbounds %struct.tar, %struct.tar* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.tar*, %struct.tar** %9, align 8
  %78 = getelementptr inbounds %struct.tar, %struct.tar* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @gnu_add_sparse_entry(%struct.archive_read* %72, %struct.tar* %73, i32 %76, i32 %79)
  %81 = load i32, i32* @ARCHIVE_OK, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %71
  %84 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %84, i32* %7, align 4
  br label %610

85:                                               ; preds = %71
  %86 = load %struct.tar*, %struct.tar** %9, align 8
  %87 = getelementptr inbounds %struct.tar, %struct.tar* %86, i32 0, i32 0
  store i32 -1, i32* %87, align 8
  %88 = load %struct.tar*, %struct.tar** %9, align 8
  %89 = getelementptr inbounds %struct.tar, %struct.tar* %88, i32 0, i32 1
  store i32 -1, i32* %89, align 4
  br label %90

90:                                               ; preds = %85, %59
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i8*, i8** %11, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %127

95:                                               ; preds = %91
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = call i32 @strlen(i8* %97)
  %99 = call i8* @tar_atol10(i8* %96, i32 %98)
  %100 = ptrtoint i8* %99 to i32
  %101 = load %struct.tar*, %struct.tar** %9, align 8
  %102 = getelementptr inbounds %struct.tar, %struct.tar* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load %struct.tar*, %struct.tar** %9, align 8
  %104 = getelementptr inbounds %struct.tar, %struct.tar* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %126

107:                                              ; preds = %95
  %108 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %109 = load %struct.tar*, %struct.tar** %9, align 8
  %110 = load %struct.tar*, %struct.tar** %9, align 8
  %111 = getelementptr inbounds %struct.tar, %struct.tar* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.tar*, %struct.tar** %9, align 8
  %114 = getelementptr inbounds %struct.tar, %struct.tar* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @gnu_add_sparse_entry(%struct.archive_read* %108, %struct.tar* %109, i32 %112, i32 %115)
  %117 = load i32, i32* @ARCHIVE_OK, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %107
  %120 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %120, i32* %7, align 4
  br label %610

121:                                              ; preds = %107
  %122 = load %struct.tar*, %struct.tar** %9, align 8
  %123 = getelementptr inbounds %struct.tar, %struct.tar* %122, i32 0, i32 0
  store i32 -1, i32* %123, align 8
  %124 = load %struct.tar*, %struct.tar** %9, align 8
  %125 = getelementptr inbounds %struct.tar, %struct.tar* %124, i32 0, i32 1
  store i32 -1, i32* %125, align 4
  br label %126

126:                                              ; preds = %121, %95
  br label %127

127:                                              ; preds = %126, %91
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 @strcmp(i8* %128, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %127
  %132 = load i8*, i8** %12, align 8
  %133 = load i8*, i8** %12, align 8
  %134 = call i32 @strlen(i8* %133)
  %135 = call i8* @tar_atol10(i8* %132, i32 %134)
  %136 = load %struct.tar*, %struct.tar** %9, align 8
  %137 = getelementptr inbounds %struct.tar, %struct.tar* %136, i32 0, i32 9
  store i8* %135, i8** %137, align 8
  %138 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %139 = load %struct.tar*, %struct.tar** %9, align 8
  %140 = getelementptr inbounds %struct.tar, %struct.tar* %139, i32 0, i32 9
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @archive_entry_set_size(%struct.archive_entry* %138, i8* %141)
  %143 = load %struct.tar*, %struct.tar** %9, align 8
  %144 = getelementptr inbounds %struct.tar, %struct.tar* %143, i32 0, i32 4
  store i32 1, i32* %144, align 8
  br label %145

145:                                              ; preds = %131, %127
  %146 = load i8*, i8** %11, align 8
  %147 = call i32 @strcmp(i8* %146, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %145
  %150 = load %struct.tar*, %struct.tar** %9, align 8
  %151 = getelementptr inbounds %struct.tar, %struct.tar* %150, i32 0, i32 2
  store i32 0, i32* %151, align 8
  %152 = load %struct.tar*, %struct.tar** %9, align 8
  %153 = getelementptr inbounds %struct.tar, %struct.tar* %152, i32 0, i32 3
  store i32 1, i32* %153, align 4
  %154 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %155 = load %struct.tar*, %struct.tar** %9, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = call i32 @gnu_sparse_01_parse(%struct.archive_read* %154, %struct.tar* %155, i8* %156)
  %158 = load i32, i32* @ARCHIVE_OK, align 4
  %159 = icmp ne i32 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %149
  %161 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %161, i32* %7, align 4
  br label %610

162:                                              ; preds = %149
  br label %163

163:                                              ; preds = %162, %145
  %164 = load i8*, i8** %11, align 8
  %165 = call i32 @strcmp(i8* %164, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %177

167:                                              ; preds = %163
  %168 = load i8*, i8** %12, align 8
  %169 = load i8*, i8** %12, align 8
  %170 = call i32 @strlen(i8* %169)
  %171 = call i8* @tar_atol10(i8* %168, i32 %170)
  %172 = ptrtoint i8* %171 to i32
  %173 = load %struct.tar*, %struct.tar** %9, align 8
  %174 = getelementptr inbounds %struct.tar, %struct.tar* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.tar*, %struct.tar** %9, align 8
  %176 = getelementptr inbounds %struct.tar, %struct.tar* %175, i32 0, i32 5
  store i32 1, i32* %176, align 4
  br label %177

177:                                              ; preds = %167, %163
  %178 = load i8*, i8** %11, align 8
  %179 = call i32 @strcmp(i8* %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %177
  %182 = load i8*, i8** %12, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = call i32 @strlen(i8* %183)
  %185 = call i8* @tar_atol10(i8* %182, i32 %184)
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.tar*, %struct.tar** %9, align 8
  %188 = getelementptr inbounds %struct.tar, %struct.tar* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load %struct.tar*, %struct.tar** %9, align 8
  %190 = getelementptr inbounds %struct.tar, %struct.tar* %189, i32 0, i32 5
  store i32 1, i32* %190, align 4
  br label %191

191:                                              ; preds = %181, %177
  %192 = load i8*, i8** %11, align 8
  %193 = call i32 @strcmp(i8* %192, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %195, label %200

195:                                              ; preds = %191
  %196 = load %struct.tar*, %struct.tar** %9, align 8
  %197 = getelementptr inbounds %struct.tar, %struct.tar* %196, i32 0, i32 13
  %198 = load i8*, i8** %12, align 8
  %199 = call i32 @archive_strcpy(i32* %197, i8* %198)
  br label %200

200:                                              ; preds = %195, %191
  %201 = load i8*, i8** %11, align 8
  %202 = call i32 @strcmp(i8* %201, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0))
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %218

204:                                              ; preds = %200
  %205 = load i8*, i8** %12, align 8
  %206 = load i8*, i8** %12, align 8
  %207 = call i32 @strlen(i8* %206)
  %208 = call i8* @tar_atol10(i8* %205, i32 %207)
  %209 = load %struct.tar*, %struct.tar** %9, align 8
  %210 = getelementptr inbounds %struct.tar, %struct.tar* %209, i32 0, i32 9
  store i8* %208, i8** %210, align 8
  %211 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %212 = load %struct.tar*, %struct.tar** %9, align 8
  %213 = getelementptr inbounds %struct.tar, %struct.tar* %212, i32 0, i32 9
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @archive_entry_set_size(%struct.archive_entry* %211, i8* %214)
  %216 = load %struct.tar*, %struct.tar** %9, align 8
  %217 = getelementptr inbounds %struct.tar, %struct.tar* %216, i32 0, i32 4
  store i32 1, i32* %217, align 8
  br label %218

218:                                              ; preds = %204, %200
  br label %608

219:                                              ; preds = %22
  %220 = load i8*, i8** %11, align 8
  %221 = call i32 @strcmp(i8* %220, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0))
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %219
  %224 = load i8*, i8** %12, align 8
  %225 = call i32 @pax_time(i8* %224, i32* %14, i64* %15)
  %226 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %227 = load i32, i32* %14, align 4
  %228 = load i64, i64* %15, align 8
  %229 = call i32 @archive_entry_set_birthtime(%struct.archive_entry* %226, i32 %227, i64 %228)
  br label %230

230:                                              ; preds = %223, %219
  %231 = load i8*, i8** %11, align 8
  %232 = call i32 @strcmp(i8* %231, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %252

234:                                              ; preds = %230
  %235 = load i8*, i8** %12, align 8
  %236 = call i32 @strcmp(i8* %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %240 = load i32, i32* @AE_SYMLINK_TYPE_FILE, align 4
  %241 = call i32 @archive_entry_set_symlink_type(%struct.archive_entry* %239, i32 %240)
  br label %251

242:                                              ; preds = %234
  %243 = load i8*, i8** %12, align 8
  %244 = call i32 @strcmp(i8* %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %248 = load i32, i32* @AE_SYMLINK_TYPE_DIRECTORY, align 4
  %249 = call i32 @archive_entry_set_symlink_type(%struct.archive_entry* %247, i32 %248)
  br label %250

250:                                              ; preds = %246, %242
  br label %251

251:                                              ; preds = %250, %238
  br label %252

252:                                              ; preds = %251, %230
  %253 = load i8*, i8** %11, align 8
  %254 = call i32 @memcmp(i8* %253, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 17)
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %252
  %257 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %258 = load i8*, i8** %11, align 8
  %259 = load i8*, i8** %12, align 8
  %260 = call i32 @pax_attribute_xattr(%struct.archive_entry* %257, i8* %258, i8* %259)
  br label %261

261:                                              ; preds = %256, %252
  br label %608

262:                                              ; preds = %22
  %263 = load i8*, i8** %11, align 8
  %264 = call i32 @strcmp(i8* %263, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0))
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %279

266:                                              ; preds = %262
  %267 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %268 = load %struct.tar*, %struct.tar** %9, align 8
  %269 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %270 = load i8*, i8** %12, align 8
  %271 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %272 = call i32 @pax_attribute_acl(%struct.archive_read* %267, %struct.tar* %268, %struct.archive_entry* %269, i8* %270, i32 %271)
  store i32 %272, i32* %17, align 4
  %273 = load i32, i32* %17, align 4
  %274 = load i32, i32* @ARCHIVE_FATAL, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %278

276:                                              ; preds = %266
  %277 = load i32, i32* %17, align 4
  store i32 %277, i32* %7, align 4
  br label %610

278:                                              ; preds = %266
  br label %445

279:                                              ; preds = %262
  %280 = load i8*, i8** %11, align 8
  %281 = call i32 @strcmp(i8* %280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %296

283:                                              ; preds = %279
  %284 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %285 = load %struct.tar*, %struct.tar** %9, align 8
  %286 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %287 = load i8*, i8** %12, align 8
  %288 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DEFAULT, align 4
  %289 = call i32 @pax_attribute_acl(%struct.archive_read* %284, %struct.tar* %285, %struct.archive_entry* %286, i8* %287, i32 %288)
  store i32 %289, i32* %17, align 4
  %290 = load i32, i32* %17, align 4
  %291 = load i32, i32* @ARCHIVE_FATAL, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %295

293:                                              ; preds = %283
  %294 = load i32, i32* %17, align 4
  store i32 %294, i32* %7, align 4
  br label %610

295:                                              ; preds = %283
  br label %444

296:                                              ; preds = %279
  %297 = load i8*, i8** %11, align 8
  %298 = call i32 @strcmp(i8* %297, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i64 0, i64 0))
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %313

300:                                              ; preds = %296
  %301 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %302 = load %struct.tar*, %struct.tar** %9, align 8
  %303 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %304 = load i8*, i8** %12, align 8
  %305 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_NFS4, align 4
  %306 = call i32 @pax_attribute_acl(%struct.archive_read* %301, %struct.tar* %302, %struct.archive_entry* %303, i8* %304, i32 %305)
  store i32 %306, i32* %17, align 4
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* @ARCHIVE_FATAL, align 4
  %309 = icmp eq i32 %307, %308
  br i1 %309, label %310, label %312

310:                                              ; preds = %300
  %311 = load i32, i32* %17, align 4
  store i32 %311, i32* %7, align 4
  br label %610

312:                                              ; preds = %300
  br label %443

313:                                              ; preds = %296
  %314 = load i8*, i8** %11, align 8
  %315 = call i32 @strcmp(i8* %314, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %316 = icmp eq i32 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %313
  %318 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %319 = load i8*, i8** %12, align 8
  %320 = load i8*, i8** %12, align 8
  %321 = call i32 @strlen(i8* %320)
  %322 = call i8* @tar_atol10(i8* %319, i32 %321)
  %323 = ptrtoint i8* %322 to i32
  %324 = call i32 @archive_entry_set_rdevmajor(%struct.archive_entry* %318, i32 %323)
  br label %442

325:                                              ; preds = %313
  %326 = load i8*, i8** %11, align 8
  %327 = call i32 @strcmp(i8* %326, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0))
  %328 = icmp eq i32 %327, 0
  br i1 %328, label %329, label %337

329:                                              ; preds = %325
  %330 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %331 = load i8*, i8** %12, align 8
  %332 = load i8*, i8** %12, align 8
  %333 = call i32 @strlen(i8* %332)
  %334 = call i8* @tar_atol10(i8* %331, i32 %333)
  %335 = ptrtoint i8* %334 to i32
  %336 = call i32 @archive_entry_set_rdevminor(%struct.archive_entry* %330, i32 %335)
  br label %441

337:                                              ; preds = %325
  %338 = load i8*, i8** %11, align 8
  %339 = call i32 @strcmp(i8* %338, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.22, i64 0, i64 0))
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %341, label %345

341:                                              ; preds = %337
  %342 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %343 = load i8*, i8** %12, align 8
  %344 = call i32 @archive_entry_copy_fflags_text(%struct.archive_entry* %342, i8* %343)
  br label %440

345:                                              ; preds = %337
  %346 = load i8*, i8** %11, align 8
  %347 = call i32 @strcmp(i8* %346, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.23, i64 0, i64 0))
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %349, label %357

349:                                              ; preds = %345
  %350 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %351 = load i8*, i8** %12, align 8
  %352 = load i8*, i8** %12, align 8
  %353 = call i32 @strlen(i8* %352)
  %354 = call i8* @tar_atol10(i8* %351, i32 %353)
  %355 = ptrtoint i8* %354 to i32
  %356 = call i32 @archive_entry_set_dev(%struct.archive_entry* %350, i32 %355)
  br label %439

357:                                              ; preds = %345
  %358 = load i8*, i8** %11, align 8
  %359 = call i32 @strcmp(i8* %358, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0))
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %357
  %362 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %363 = load i8*, i8** %12, align 8
  %364 = load i8*, i8** %12, align 8
  %365 = call i32 @strlen(i8* %364)
  %366 = call i8* @tar_atol10(i8* %363, i32 %365)
  %367 = call i32 @archive_entry_set_ino(%struct.archive_entry* %362, i8* %366)
  br label %438

368:                                              ; preds = %357
  %369 = load i8*, i8** %11, align 8
  %370 = call i32 @strcmp(i8* %369, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.25, i64 0, i64 0))
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %372, label %380

372:                                              ; preds = %368
  %373 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %374 = load i8*, i8** %12, align 8
  %375 = load i8*, i8** %12, align 8
  %376 = call i32 @strlen(i8* %375)
  %377 = call i8* @tar_atol10(i8* %374, i32 %376)
  %378 = ptrtoint i8* %377 to i32
  %379 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %373, i32 %378)
  br label %437

380:                                              ; preds = %368
  %381 = load i8*, i8** %11, align 8
  %382 = call i32 @strcmp(i8* %381, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0))
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %398

384:                                              ; preds = %380
  %385 = load i8*, i8** %12, align 8
  %386 = load i8*, i8** %12, align 8
  %387 = call i32 @strlen(i8* %386)
  %388 = call i8* @tar_atol10(i8* %385, i32 %387)
  %389 = load %struct.tar*, %struct.tar** %9, align 8
  %390 = getelementptr inbounds %struct.tar, %struct.tar* %389, i32 0, i32 9
  store i8* %388, i8** %390, align 8
  %391 = load %struct.tar*, %struct.tar** %9, align 8
  %392 = getelementptr inbounds %struct.tar, %struct.tar* %391, i32 0, i32 4
  store i32 1, i32* %392, align 8
  %393 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %394 = load %struct.tar*, %struct.tar** %9, align 8
  %395 = getelementptr inbounds %struct.tar, %struct.tar* %394, i32 0, i32 9
  %396 = load i8*, i8** %395, align 8
  %397 = call i32 @archive_entry_set_size(%struct.archive_entry* %393, i8* %396)
  br label %436

398:                                              ; preds = %380
  %399 = load i8*, i8** %11, align 8
  %400 = call i32 @strncmp(i8* %399, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i32 13)
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %408

402:                                              ; preds = %398
  %403 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %404 = load i8*, i8** %11, align 8
  %405 = load i8*, i8** %12, align 8
  %406 = load i64, i64* %13, align 8
  %407 = call i32 @pax_attribute_schily_xattr(%struct.archive_entry* %403, i8* %404, i8* %405, i64 %406)
  br label %435

408:                                              ; preds = %398
  %409 = load i8*, i8** %11, align 8
  %410 = call i32 @strcmp(i8* %409, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.28, i64 0, i64 0))
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %434

412:                                              ; preds = %408
  %413 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %414 = load %struct.tar*, %struct.tar** %9, align 8
  %415 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %416 = load i8*, i8** %12, align 8
  %417 = call i32 @solaris_sparse_parse(%struct.archive_read* %413, %struct.tar* %414, %struct.archive_entry* %415, i8* %416)
  store i32 %417, i32* %17, align 4
  %418 = load i32, i32* %17, align 4
  %419 = load i32, i32* %16, align 4
  %420 = icmp slt i32 %418, %419
  br i1 %420, label %421, label %433

421:                                              ; preds = %412
  %422 = load i32, i32* %17, align 4
  %423 = load i32, i32* @ARCHIVE_FATAL, align 4
  %424 = icmp eq i32 %422, %423
  br i1 %424, label %425, label %427

425:                                              ; preds = %421
  %426 = load i32, i32* %17, align 4
  store i32 %426, i32* %7, align 4
  br label %610

427:                                              ; preds = %421
  %428 = load i32, i32* %17, align 4
  store i32 %428, i32* %16, align 4
  %429 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %430 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %429, i32 0, i32 0
  %431 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %432 = call i32 @archive_set_error(i32* %430, i32 %431, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.29, i64 0, i64 0))
  br label %433

433:                                              ; preds = %427, %412
  br label %434

434:                                              ; preds = %433, %408
  br label %435

435:                                              ; preds = %434, %402
  br label %436

436:                                              ; preds = %435, %384
  br label %437

437:                                              ; preds = %436, %372
  br label %438

438:                                              ; preds = %437, %361
  br label %439

439:                                              ; preds = %438, %349
  br label %440

440:                                              ; preds = %439, %341
  br label %441

441:                                              ; preds = %440, %329
  br label %442

442:                                              ; preds = %441, %317
  br label %443

443:                                              ; preds = %442, %312
  br label %444

444:                                              ; preds = %443, %295
  br label %445

445:                                              ; preds = %444, %278
  br label %608

446:                                              ; preds = %22
  %447 = load i8*, i8** %11, align 8
  %448 = call i32 @strcmp(i8* %447, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i64 0, i64 0))
  %449 = icmp eq i32 %448, 0
  br i1 %449, label %450, label %457

450:                                              ; preds = %446
  %451 = load i8*, i8** %12, align 8
  %452 = call i32 @pax_time(i8* %451, i32* %14, i64* %15)
  %453 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %454 = load i32, i32* %14, align 4
  %455 = load i64, i64* %15, align 8
  %456 = call i32 @archive_entry_set_atime(%struct.archive_entry* %453, i32 %454, i64 %455)
  br label %457

457:                                              ; preds = %450, %446
  br label %608

458:                                              ; preds = %22
  %459 = load i8*, i8** %11, align 8
  %460 = call i32 @strcmp(i8* %459, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.31, i64 0, i64 0))
  %461 = icmp eq i32 %460, 0
  br i1 %461, label %462, label %469

462:                                              ; preds = %458
  %463 = load i8*, i8** %12, align 8
  %464 = call i32 @pax_time(i8* %463, i32* %14, i64* %15)
  %465 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %466 = load i32, i32* %14, align 4
  %467 = load i64, i64* %15, align 8
  %468 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %465, i32 %466, i64 %467)
  br label %481

469:                                              ; preds = %458
  %470 = load i8*, i8** %11, align 8
  %471 = call i32 @strcmp(i8* %470, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i64 0, i64 0))
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %473, label %474

473:                                              ; preds = %469
  br label %480

474:                                              ; preds = %469
  %475 = load i8*, i8** %11, align 8
  %476 = call i32 @strcmp(i8* %475, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.33, i64 0, i64 0))
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %478, label %479

478:                                              ; preds = %474
  br label %479

479:                                              ; preds = %478, %474
  br label %480

480:                                              ; preds = %479, %473
  br label %481

481:                                              ; preds = %480, %462
  br label %608

482:                                              ; preds = %22
  %483 = load i8*, i8** %11, align 8
  %484 = call i32 @strcmp(i8* %483, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.34, i64 0, i64 0))
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %493

486:                                              ; preds = %482
  %487 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %488 = load i8*, i8** %12, align 8
  %489 = load i8*, i8** %12, align 8
  %490 = call i32 @strlen(i8* %489)
  %491 = call i8* @tar_atol10(i8* %488, i32 %490)
  %492 = call i32 @archive_entry_set_gid(%struct.archive_entry* %487, i8* %491)
  br label %503

493:                                              ; preds = %482
  %494 = load i8*, i8** %11, align 8
  %495 = call i32 @strcmp(i8* %494, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i64 0, i64 0))
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %497, label %502

497:                                              ; preds = %493
  %498 = load %struct.tar*, %struct.tar** %9, align 8
  %499 = getelementptr inbounds %struct.tar, %struct.tar* %498, i32 0, i32 12
  %500 = load i8*, i8** %12, align 8
  %501 = call i32 @archive_strcpy(i32* %499, i8* %500)
  br label %502

502:                                              ; preds = %497, %493
  br label %503

503:                                              ; preds = %502, %486
  br label %608

504:                                              ; preds = %22
  %505 = load i8*, i8** %11, align 8
  %506 = call i32 @strcmp(i8* %505, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i64 0, i64 0))
  %507 = icmp eq i32 %506, 0
  br i1 %507, label %508, label %524

508:                                              ; preds = %504
  %509 = load i8*, i8** %12, align 8
  %510 = call i32 @strcmp(i8* %509, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i64 0, i64 0))
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %515

512:                                              ; preds = %508
  %513 = load %struct.tar*, %struct.tar** %9, align 8
  %514 = getelementptr inbounds %struct.tar, %struct.tar* %513, i32 0, i32 6
  store i32 1, i32* %514, align 8
  br label %523

515:                                              ; preds = %508
  %516 = load i8*, i8** %12, align 8
  %517 = call i32 @strcmp(i8* %516, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0))
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %522

519:                                              ; preds = %515
  %520 = load %struct.tar*, %struct.tar** %9, align 8
  %521 = getelementptr inbounds %struct.tar, %struct.tar* %520, i32 0, i32 6
  store i32 0, i32* %521, align 8
  br label %522

522:                                              ; preds = %519, %515
  br label %523

523:                                              ; preds = %522, %512
  br label %524

524:                                              ; preds = %523, %504
  br label %608

525:                                              ; preds = %22
  %526 = load i8*, i8** %11, align 8
  %527 = call i32 @strcmp(i8* %526, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.39, i64 0, i64 0))
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %534

529:                                              ; preds = %525
  %530 = load %struct.tar*, %struct.tar** %9, align 8
  %531 = getelementptr inbounds %struct.tar, %struct.tar* %530, i32 0, i32 11
  %532 = load i8*, i8** %12, align 8
  %533 = call i32 @archive_strcpy(i32* %531, i8* %532)
  br label %534

534:                                              ; preds = %529, %525
  br label %608

535:                                              ; preds = %22
  %536 = load i8*, i8** %11, align 8
  %537 = call i32 @strcmp(i8* %536, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0))
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %539, label %546

539:                                              ; preds = %535
  %540 = load i8*, i8** %12, align 8
  %541 = call i32 @pax_time(i8* %540, i32* %14, i64* %15)
  %542 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %543 = load i32, i32* %14, align 4
  %544 = load i64, i64* %15, align 8
  %545 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %542, i32 %543, i64 %544)
  br label %546

546:                                              ; preds = %539, %535
  br label %608

547:                                              ; preds = %22
  %548 = load i8*, i8** %11, align 8
  %549 = call i32 @strcmp(i8* %548, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.41, i64 0, i64 0))
  %550 = icmp eq i32 %549, 0
  br i1 %550, label %551, label %556

551:                                              ; preds = %547
  %552 = load %struct.tar*, %struct.tar** %9, align 8
  %553 = getelementptr inbounds %struct.tar, %struct.tar* %552, i32 0, i32 10
  %554 = load i8*, i8** %12, align 8
  %555 = call i32 @archive_strcpy(i32* %553, i8* %554)
  br label %556

556:                                              ; preds = %551, %547
  br label %608

557:                                              ; preds = %22
  br label %608

558:                                              ; preds = %22
  %559 = load i8*, i8** %11, align 8
  %560 = call i32 @strcmp(i8* %559, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.42, i64 0, i64 0))
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %562, label %585

562:                                              ; preds = %558
  %563 = load i8*, i8** %12, align 8
  %564 = load i8*, i8** %12, align 8
  %565 = call i32 @strlen(i8* %564)
  %566 = call i8* @tar_atol10(i8* %563, i32 %565)
  %567 = load %struct.tar*, %struct.tar** %9, align 8
  %568 = getelementptr inbounds %struct.tar, %struct.tar* %567, i32 0, i32 8
  store i8* %566, i8** %568, align 8
  %569 = load %struct.tar*, %struct.tar** %9, align 8
  %570 = getelementptr inbounds %struct.tar, %struct.tar* %569, i32 0, i32 4
  %571 = load i32, i32* %570, align 8
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %584, label %573

573:                                              ; preds = %562
  %574 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %575 = load %struct.tar*, %struct.tar** %9, align 8
  %576 = getelementptr inbounds %struct.tar, %struct.tar* %575, i32 0, i32 8
  %577 = load i8*, i8** %576, align 8
  %578 = call i32 @archive_entry_set_size(%struct.archive_entry* %574, i8* %577)
  %579 = load %struct.tar*, %struct.tar** %9, align 8
  %580 = getelementptr inbounds %struct.tar, %struct.tar* %579, i32 0, i32 8
  %581 = load i8*, i8** %580, align 8
  %582 = load %struct.tar*, %struct.tar** %9, align 8
  %583 = getelementptr inbounds %struct.tar, %struct.tar* %582, i32 0, i32 9
  store i8* %581, i8** %583, align 8
  br label %584

584:                                              ; preds = %573, %562
  br label %585

585:                                              ; preds = %584, %558
  br label %608

586:                                              ; preds = %22
  %587 = load i8*, i8** %11, align 8
  %588 = call i32 @strcmp(i8* %587, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.43, i64 0, i64 0))
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %590, label %597

590:                                              ; preds = %586
  %591 = load %struct.archive_entry*, %struct.archive_entry** %10, align 8
  %592 = load i8*, i8** %12, align 8
  %593 = load i8*, i8** %12, align 8
  %594 = call i32 @strlen(i8* %593)
  %595 = call i8* @tar_atol10(i8* %592, i32 %594)
  %596 = call i32 @archive_entry_set_uid(%struct.archive_entry* %591, i8* %595)
  br label %607

597:                                              ; preds = %586
  %598 = load i8*, i8** %11, align 8
  %599 = call i32 @strcmp(i8* %598, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.44, i64 0, i64 0))
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %601, label %606

601:                                              ; preds = %597
  %602 = load %struct.tar*, %struct.tar** %9, align 8
  %603 = getelementptr inbounds %struct.tar, %struct.tar* %602, i32 0, i32 7
  %604 = load i8*, i8** %12, align 8
  %605 = call i32 @archive_strcpy(i32* %603, i8* %604)
  br label %606

606:                                              ; preds = %601, %597
  br label %607

607:                                              ; preds = %606, %590
  br label %608

608:                                              ; preds = %22, %607, %585, %557, %556, %546, %534, %524, %503, %481, %457, %445, %261, %218
  %609 = load i32, i32* %16, align 4
  store i32 %609, i32* %7, align 4
  br label %610

610:                                              ; preds = %608, %425, %310, %293, %276, %160, %119, %83, %36
  %611 = load i32, i32* %7, align 4
  ret i32 %611
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @tar_atol10(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @gnu_add_sparse_entry(%struct.archive_read*, %struct.tar*, i32, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i8*) #1

declare dso_local i32 @gnu_sparse_01_parse(%struct.archive_read*, %struct.tar*, i8*) #1

declare dso_local i32 @archive_strcpy(i32*, i8*) #1

declare dso_local i32 @pax_time(i8*, i32*, i64*) #1

declare dso_local i32 @archive_entry_set_birthtime(%struct.archive_entry*, i32, i64) #1

declare dso_local i32 @archive_entry_set_symlink_type(%struct.archive_entry*, i32) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @pax_attribute_xattr(%struct.archive_entry*, i8*, i8*) #1

declare dso_local i32 @pax_attribute_acl(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*, i32) #1

declare dso_local i32 @archive_entry_set_rdevmajor(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_rdevminor(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_copy_fflags_text(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_dev(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_ino(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_nlink(%struct.archive_entry*, i32) #1

declare dso_local i32 @pax_attribute_schily_xattr(%struct.archive_entry*, i8*, i8*, i64) #1

declare dso_local i32 @solaris_sparse_parse(%struct.archive_read*, %struct.tar*, %struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i64) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i64) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i64) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
