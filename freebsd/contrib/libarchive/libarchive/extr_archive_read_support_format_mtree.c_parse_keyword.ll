; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_parse_keyword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_parse_keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.mtree = type { i32 }
%struct.archive_entry = type { i32 }
%struct.mtree_option = type { i8* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nochange\00", align 1
@MTREE_HAS_NOCHANGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"optional\00", align 1
@MTREE_HAS_OPTIONAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ignore\00", align 1
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Malformed attribute \22%s\22 (%d)\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"contents\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"cksum\00", align 1
@__LA_FALLTHROUGH = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@MTREE_HAS_DEVICE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [6 x i8] c"flags\00", align 1
@MTREE_HAS_FFLAGS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"gid\00", align 1
@MTREE_HAS_GID = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [6 x i8] c"gname\00", align 1
@MTREE_HAS_GNAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"inode\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"md5digest\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@MTREE_HAS_PERM = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [44 x i8] c"Symbolic or non-octal mode \22%s\22 unsupported\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"nlink\00", align 1
@MTREE_HAS_NLINK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [10 x i8] c"resdevice\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"rmd160\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"rmd160digest\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"sha1digest\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"sha256digest\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"sha384\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"sha384digest\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"sha512digest\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"tags\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"time\00", align 1
@MTREE_HAS_MTIME = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.33 = private unnamed_addr constant [6 x i8] c"block\00", align 1
@AE_IFBLK = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [5 x i8] c"char\00", align 1
@AE_IFCHR = common dso_local global i32 0, align 4
@.str.35 = private unnamed_addr constant [4 x i8] c"dir\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.36 = private unnamed_addr constant [5 x i8] c"fifo\00", align 1
@AE_IFIFO = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@AE_IFLNK = common dso_local global i32 0, align 4
@.str.38 = private unnamed_addr constant [45 x i8] c"Unrecognized file type \22%s\22; assuming \22file\22\00", align 1
@MTREE_HAS_TYPE = common dso_local global i32 0, align 4
@.str.39 = private unnamed_addr constant [4 x i8] c"uid\00", align 1
@MTREE_HAS_UID = common dso_local global i32 0, align 4
@.str.40 = private unnamed_addr constant [6 x i8] c"uname\00", align 1
@MTREE_HAS_UNAME = common dso_local global i32 0, align 4
@.str.41 = private unnamed_addr constant [23 x i8] c"Unrecognized key %s=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.mtree*, %struct.archive_entry*, %struct.mtree_option*, i32*)* @parse_keyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_keyword(%struct.archive_read* %0, %struct.mtree* %1, %struct.archive_entry* %2, %struct.mtree_option* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.mtree*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca %struct.mtree_option*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.mtree* %1, %struct.mtree** %8, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %9, align 8
  store %struct.mtree_option* %3, %struct.mtree_option** %10, align 8
  store i32* %4, i32** %11, align 8
  %22 = load %struct.mtree_option*, %struct.mtree_option** %10, align 8
  %23 = getelementptr inbounds %struct.mtree_option, %struct.mtree_option* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %30, i32* %6, align 4
  br label %494

31:                                               ; preds = %5
  %32 = load i8*, i8** %13, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i32, i32* @MTREE_HAS_NOCHANGE, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %40, i32* %6, align 4
  br label %494

41:                                               ; preds = %31
  %42 = load i8*, i8** %13, align 8
  %43 = call i64 @strcmp(i8* %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i32, i32* @MTREE_HAS_OPTIONAL, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %46
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %50, i32* %6, align 4
  br label %494

51:                                               ; preds = %41
  %52 = load i8*, i8** %13, align 8
  %53 = call i64 @strcmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %56, i32* %6, align 4
  br label %494

57:                                               ; preds = %51
  %58 = load i8*, i8** %13, align 8
  %59 = call i8* @strchr(i8* %58, i8 signext 61)
  store i8* %59, i8** %12, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = icmp eq i8* %60, null
  br i1 %61, label %62, label %73

62:                                               ; preds = %57
  %63 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %64 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %63, i32 0, i32 0
  %65 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = call i32 (i32*, i32, i8*, i8*, ...) @archive_set_error(i32* %64, i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %66, i32 %70)
  %72 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %72, i32* %6, align 4
  br label %494

73:                                               ; preds = %57
  %74 = load i8*, i8** %12, align 8
  store i8 0, i8* %74, align 1
  %75 = load i8*, i8** %12, align 8
  %76 = getelementptr inbounds i8, i8* %75, i32 1
  store i8* %76, i8** %12, align 8
  %77 = load i8*, i8** %13, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  switch i32 %80, label %484 [
    i32 99, label %81
    i32 100, label %103
    i32 102, label %127
    i32 103, label %141
    i32 105, label %167
    i32 108, label %177
    i32 109, label %187
    i32 110, label %231
    i32 114, label %246
    i32 115, label %275
    i32 116, label %321
    i32 117, label %458
  ]

81:                                               ; preds = %73
  %82 = load i8*, i8** %13, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %81
  %86 = load i8*, i8** %13, align 8
  %87 = call i64 @strcmp(i8* %86, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %85, %81
  %90 = load i8*, i8** %12, align 8
  %91 = call i32 @parse_escapes(i8* %90, i32* null)
  %92 = load %struct.mtree*, %struct.mtree** %8, align 8
  %93 = getelementptr inbounds %struct.mtree, %struct.mtree* %92, i32 0, i32 0
  %94 = load i8*, i8** %12, align 8
  %95 = call i32 @archive_strcpy(i32* %93, i8* %94)
  br label %492

96:                                               ; preds = %85
  %97 = load i8*, i8** %13, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %492

101:                                              ; preds = %96
  %102 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %103

103:                                              ; preds = %73, %101
  %104 = load i8*, i8** %13, align 8
  %105 = call i64 @strcmp(i8* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %103
  %108 = load i32, i32* @MTREE_HAS_DEVICE, align 4
  %109 = load i32*, i32** %11, align 8
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %108
  store i32 %111, i32* %109, align 4
  %112 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %113 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %112, i32 0, i32 0
  %114 = load i8*, i8** %12, align 8
  %115 = call i32 @parse_device(i32* %15, i32* %113, i8* %114)
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* @ARCHIVE_OK, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %107
  %120 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @archive_entry_set_rdev(%struct.archive_entry* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %107
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %6, align 4
  br label %494

125:                                              ; preds = %103
  %126 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %127

127:                                              ; preds = %73, %125
  %128 = load i8*, i8** %13, align 8
  %129 = call i64 @strcmp(i8* %128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load i32, i32* @MTREE_HAS_FFLAGS, align 4
  %133 = load i32*, i32** %11, align 8
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %132
  store i32 %135, i32* %133, align 4
  %136 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %137 = load i8*, i8** %12, align 8
  %138 = call i32 @archive_entry_copy_fflags_text(%struct.archive_entry* %136, i8* %137)
  br label %492

139:                                              ; preds = %127
  %140 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %141

141:                                              ; preds = %73, %139
  %142 = load i8*, i8** %13, align 8
  %143 = call i64 @strcmp(i8* %142, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0))
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %141
  %146 = load i32, i32* @MTREE_HAS_GID, align 4
  %147 = load i32*, i32** %11, align 8
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %146
  store i32 %149, i32* %147, align 4
  %150 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %151 = call i64 @mtree_atol(i8** %12, i32 10)
  %152 = call i32 @archive_entry_set_gid(%struct.archive_entry* %150, i64 %151)
  br label %492

153:                                              ; preds = %141
  %154 = load i8*, i8** %13, align 8
  %155 = call i64 @strcmp(i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %156 = icmp eq i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %153
  %158 = load i32, i32* @MTREE_HAS_GNAME, align 4
  %159 = load i32*, i32** %11, align 8
  %160 = load i32, i32* %159, align 4
  %161 = or i32 %160, %158
  store i32 %161, i32* %159, align 4
  %162 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %163 = load i8*, i8** %12, align 8
  %164 = call i32 @archive_entry_copy_gname(%struct.archive_entry* %162, i8* %163)
  br label %492

165:                                              ; preds = %153
  %166 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %167

167:                                              ; preds = %73, %165
  %168 = load i8*, i8** %13, align 8
  %169 = call i64 @strcmp(i8* %168, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %167
  %172 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %173 = call i64 @mtree_atol(i8** %12, i32 10)
  %174 = call i32 @archive_entry_set_ino(%struct.archive_entry* %172, i64 %173)
  br label %492

175:                                              ; preds = %167
  %176 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %177

177:                                              ; preds = %73, %175
  %178 = load i8*, i8** %13, align 8
  %179 = call i64 @strcmp(i8* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %180 = icmp eq i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %177
  %182 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %183 = load i8*, i8** %12, align 8
  %184 = call i32 @archive_entry_copy_symlink(%struct.archive_entry* %182, i8* %183)
  br label %492

185:                                              ; preds = %177
  %186 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %187

187:                                              ; preds = %73, %185
  %188 = load i8*, i8** %13, align 8
  %189 = call i64 @strcmp(i8* %188, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0))
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %195, label %191

191:                                              ; preds = %187
  %192 = load i8*, i8** %13, align 8
  %193 = call i64 @strcmp(i8* %192, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0))
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %191, %187
  br label %492

196:                                              ; preds = %191
  %197 = load i8*, i8** %13, align 8
  %198 = call i64 @strcmp(i8* %197, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %229

200:                                              ; preds = %196
  %201 = load i8*, i8** %12, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 0
  %203 = load i8, i8* %202, align 1
  %204 = sext i8 %203 to i32
  %205 = icmp sge i32 %204, 48
  br i1 %205, label %206, label %221

206:                                              ; preds = %200
  %207 = load i8*, i8** %12, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  %211 = icmp sle i32 %210, 55
  br i1 %211, label %212, label %221

212:                                              ; preds = %206
  %213 = load i32, i32* @MTREE_HAS_PERM, align 4
  %214 = load i32*, i32** %11, align 8
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %213
  store i32 %216, i32* %214, align 4
  %217 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %218 = call i64 @mtree_atol(i8** %12, i32 8)
  %219 = trunc i64 %218 to i32
  %220 = call i32 @archive_entry_set_perm(%struct.archive_entry* %217, i32 %219)
  br label %228

221:                                              ; preds = %206, %200
  %222 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %223 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %222, i32 0, i32 0
  %224 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %225 = load i8*, i8** %12, align 8
  %226 = call i32 (i32*, i32, i8*, i8*, ...) @archive_set_error(i32* %223, i32 %224, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.16, i64 0, i64 0), i8* %225)
  %227 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %227, i32* %6, align 4
  br label %494

228:                                              ; preds = %212
  br label %492

229:                                              ; preds = %196
  %230 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %231

231:                                              ; preds = %73, %229
  %232 = load i8*, i8** %13, align 8
  %233 = call i64 @strcmp(i8* %232, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0))
  %234 = icmp eq i64 %233, 0
  br i1 %234, label %235, label %244

235:                                              ; preds = %231
  %236 = load i32, i32* @MTREE_HAS_NLINK, align 4
  %237 = load i32*, i32** %11, align 8
  %238 = load i32, i32* %237, align 4
  %239 = or i32 %238, %236
  store i32 %239, i32* %237, align 4
  %240 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %241 = call i64 @mtree_atol(i8** %12, i32 10)
  %242 = trunc i64 %241 to i32
  %243 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %240, i32 %242)
  br label %492

244:                                              ; preds = %231
  %245 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %246

246:                                              ; preds = %73, %244
  %247 = load i8*, i8** %13, align 8
  %248 = call i64 @strcmp(i8* %247, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i64 0, i64 0))
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %246
  %251 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %252 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %251, i32 0, i32 0
  %253 = load i8*, i8** %12, align 8
  %254 = call i32 @parse_device(i32* %17, i32* %252, i8* %253)
  store i32 %254, i32* %16, align 4
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* @ARCHIVE_OK, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %250
  %259 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %260 = load i32, i32* %17, align 4
  %261 = call i32 @archive_entry_set_dev(%struct.archive_entry* %259, i32 %260)
  br label %262

262:                                              ; preds = %258, %250
  %263 = load i32, i32* %16, align 4
  store i32 %263, i32* %6, align 4
  br label %494

264:                                              ; preds = %246
  %265 = load i8*, i8** %13, align 8
  %266 = call i64 @strcmp(i8* %265, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.19, i64 0, i64 0))
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %272, label %268

268:                                              ; preds = %264
  %269 = load i8*, i8** %13, align 8
  %270 = call i64 @strcmp(i8* %269, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %268, %264
  br label %492

273:                                              ; preds = %268
  %274 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %275

275:                                              ; preds = %73, %273
  %276 = load i8*, i8** %13, align 8
  %277 = call i64 @strcmp(i8* %276, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %283, label %279

279:                                              ; preds = %275
  %280 = load i8*, i8** %13, align 8
  %281 = call i64 @strcmp(i8* %280, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %279, %275
  br label %492

284:                                              ; preds = %279
  %285 = load i8*, i8** %13, align 8
  %286 = call i64 @strcmp(i8* %285, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0))
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %292, label %288

288:                                              ; preds = %284
  %289 = load i8*, i8** %13, align 8
  %290 = call i64 @strcmp(i8* %289, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0))
  %291 = icmp eq i64 %290, 0
  br i1 %291, label %292, label %293

292:                                              ; preds = %288, %284
  br label %492

293:                                              ; preds = %288
  %294 = load i8*, i8** %13, align 8
  %295 = call i64 @strcmp(i8* %294, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i64 0, i64 0))
  %296 = icmp eq i64 %295, 0
  br i1 %296, label %301, label %297

297:                                              ; preds = %293
  %298 = load i8*, i8** %13, align 8
  %299 = call i64 @strcmp(i8* %298, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %300 = icmp eq i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %297, %293
  br label %492

302:                                              ; preds = %297
  %303 = load i8*, i8** %13, align 8
  %304 = call i64 @strcmp(i8* %303, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  %305 = icmp eq i64 %304, 0
  br i1 %305, label %310, label %306

306:                                              ; preds = %302
  %307 = load i8*, i8** %13, align 8
  %308 = call i64 @strcmp(i8* %307, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.28, i64 0, i64 0))
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %310, label %311

310:                                              ; preds = %306, %302
  br label %492

311:                                              ; preds = %306
  %312 = load i8*, i8** %13, align 8
  %313 = call i64 @strcmp(i8* %312, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0))
  %314 = icmp eq i64 %313, 0
  br i1 %314, label %315, label %319

315:                                              ; preds = %311
  %316 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %317 = call i64 @mtree_atol(i8** %12, i32 10)
  %318 = call i32 @archive_entry_set_size(%struct.archive_entry* %316, i64 %317)
  br label %492

319:                                              ; preds = %311
  %320 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %321

321:                                              ; preds = %73, %319
  %322 = load i8*, i8** %13, align 8
  %323 = call i64 @strcmp(i8* %322, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0))
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %325, label %326

325:                                              ; preds = %321
  br label %492

326:                                              ; preds = %321
  %327 = load i8*, i8** %13, align 8
  %328 = call i64 @strcmp(i8* %327, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i64 0, i64 0))
  %329 = icmp eq i64 %328, 0
  br i1 %329, label %330, label %374

330:                                              ; preds = %326
  %331 = call i64 (...) @get_time_t_max()
  store i64 %331, i64* %19, align 8
  %332 = call i64 (...) @get_time_t_min()
  store i64 %332, i64* %20, align 8
  store i64 0, i64* %21, align 8
  %333 = load i32, i32* @MTREE_HAS_MTIME, align 4
  %334 = load i32*, i32** %11, align 8
  %335 = load i32, i32* %334, align 4
  %336 = or i32 %335, %333
  store i32 %336, i32* %334, align 4
  %337 = call i64 @mtree_atol(i8** %12, i32 10)
  store i64 %337, i64* %18, align 8
  %338 = load i8*, i8** %12, align 8
  %339 = load i8, i8* %338, align 1
  %340 = sext i8 %339 to i32
  %341 = icmp eq i32 %340, 46
  br i1 %341, label %342, label %355

342:                                              ; preds = %330
  %343 = load i8*, i8** %12, align 8
  %344 = getelementptr inbounds i8, i8* %343, i32 1
  store i8* %344, i8** %12, align 8
  %345 = call i64 @mtree_atol(i8** %12, i32 10)
  store i64 %345, i64* %21, align 8
  %346 = load i64, i64* %21, align 8
  %347 = icmp slt i64 %346, 0
  br i1 %347, label %348, label %349

348:                                              ; preds = %342
  store i64 0, i64* %21, align 8
  br label %354

349:                                              ; preds = %342
  %350 = load i64, i64* %21, align 8
  %351 = icmp sgt i64 %350, 999999999
  br i1 %351, label %352, label %353

352:                                              ; preds = %349
  store i64 999999999, i64* %21, align 8
  br label %353

353:                                              ; preds = %352, %349
  br label %354

354:                                              ; preds = %353, %348
  br label %355

355:                                              ; preds = %354, %330
  %356 = load i64, i64* %18, align 8
  %357 = load i64, i64* %19, align 8
  %358 = icmp sgt i64 %356, %357
  br i1 %358, label %359, label %361

359:                                              ; preds = %355
  %360 = load i64, i64* %19, align 8
  store i64 %360, i64* %18, align 8
  br label %368

361:                                              ; preds = %355
  %362 = load i64, i64* %18, align 8
  %363 = load i64, i64* %20, align 8
  %364 = icmp slt i64 %362, %363
  br i1 %364, label %365, label %367

365:                                              ; preds = %361
  %366 = load i64, i64* %20, align 8
  store i64 %366, i64* %18, align 8
  br label %367

367:                                              ; preds = %365, %361
  br label %368

368:                                              ; preds = %367, %359
  %369 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %370 = load i64, i64* %18, align 8
  %371 = trunc i64 %370 to i32
  %372 = load i64, i64* %21, align 8
  %373 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %369, i32 %371, i64 %372)
  br label %492

374:                                              ; preds = %326
  %375 = load i8*, i8** %13, align 8
  %376 = call i64 @strcmp(i8* %375, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.32, i64 0, i64 0))
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %378, label %456

378:                                              ; preds = %374
  %379 = load i8*, i8** %12, align 8
  %380 = getelementptr inbounds i8, i8* %379, i64 0
  %381 = load i8, i8* %380, align 1
  %382 = sext i8 %381 to i32
  switch i32 %382, label %441 [
    i32 98, label %383
    i32 99, label %393
    i32 100, label %403
    i32 102, label %413
    i32 108, label %431
  ]

383:                                              ; preds = %378
  %384 = load i8*, i8** %12, align 8
  %385 = call i64 @strcmp(i8* %384, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.33, i64 0, i64 0))
  %386 = icmp eq i64 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %383
  %388 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %389 = load i32, i32* @AE_IFBLK, align 4
  %390 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %388, i32 %389)
  br label %451

391:                                              ; preds = %383
  %392 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %393

393:                                              ; preds = %378, %391
  %394 = load i8*, i8** %12, align 8
  %395 = call i64 @strcmp(i8* %394, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i64 0, i64 0))
  %396 = icmp eq i64 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %393
  %398 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %399 = load i32, i32* @AE_IFCHR, align 4
  %400 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %398, i32 %399)
  br label %451

401:                                              ; preds = %393
  %402 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %403

403:                                              ; preds = %378, %401
  %404 = load i8*, i8** %12, align 8
  %405 = call i64 @strcmp(i8* %404, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.35, i64 0, i64 0))
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %411

407:                                              ; preds = %403
  %408 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %409 = load i32, i32* @AE_IFDIR, align 4
  %410 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %408, i32 %409)
  br label %451

411:                                              ; preds = %403
  %412 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %413

413:                                              ; preds = %378, %411
  %414 = load i8*, i8** %12, align 8
  %415 = call i64 @strcmp(i8* %414, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i64 0, i64 0))
  %416 = icmp eq i64 %415, 0
  br i1 %416, label %417, label %421

417:                                              ; preds = %413
  %418 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %419 = load i32, i32* @AE_IFIFO, align 4
  %420 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %418, i32 %419)
  br label %451

421:                                              ; preds = %413
  %422 = load i8*, i8** %12, align 8
  %423 = call i64 @strcmp(i8* %422, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i64 0, i64 0))
  %424 = icmp eq i64 %423, 0
  br i1 %424, label %425, label %429

425:                                              ; preds = %421
  %426 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %427 = load i32, i32* @AE_IFREG, align 4
  %428 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %426, i32 %427)
  br label %451

429:                                              ; preds = %421
  %430 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %431

431:                                              ; preds = %378, %429
  %432 = load i8*, i8** %12, align 8
  %433 = call i64 @strcmp(i8* %432, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %431
  %436 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %437 = load i32, i32* @AE_IFLNK, align 4
  %438 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %436, i32 %437)
  br label %451

439:                                              ; preds = %431
  %440 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %441

441:                                              ; preds = %378, %439
  %442 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %443 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %442, i32 0, i32 0
  %444 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %445 = load i8*, i8** %12, align 8
  %446 = call i32 (i32*, i32, i8*, i8*, ...) @archive_set_error(i32* %443, i32 %444, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.38, i64 0, i64 0), i8* %445)
  %447 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %448 = load i32, i32* @AE_IFREG, align 4
  %449 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %447, i32 %448)
  %450 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %450, i32* %6, align 4
  br label %494

451:                                              ; preds = %435, %425, %417, %407, %397, %387
  %452 = load i32, i32* @MTREE_HAS_TYPE, align 4
  %453 = load i32*, i32** %11, align 8
  %454 = load i32, i32* %453, align 4
  %455 = or i32 %454, %452
  store i32 %455, i32* %453, align 4
  br label %492

456:                                              ; preds = %374
  %457 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %458

458:                                              ; preds = %73, %456
  %459 = load i8*, i8** %13, align 8
  %460 = call i64 @strcmp(i8* %459, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i64 0, i64 0))
  %461 = icmp eq i64 %460, 0
  br i1 %461, label %462, label %470

462:                                              ; preds = %458
  %463 = load i32, i32* @MTREE_HAS_UID, align 4
  %464 = load i32*, i32** %11, align 8
  %465 = load i32, i32* %464, align 4
  %466 = or i32 %465, %463
  store i32 %466, i32* %464, align 4
  %467 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %468 = call i64 @mtree_atol(i8** %12, i32 10)
  %469 = call i32 @archive_entry_set_uid(%struct.archive_entry* %467, i64 %468)
  br label %492

470:                                              ; preds = %458
  %471 = load i8*, i8** %13, align 8
  %472 = call i64 @strcmp(i8* %471, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.40, i64 0, i64 0))
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %474, label %482

474:                                              ; preds = %470
  %475 = load i32, i32* @MTREE_HAS_UNAME, align 4
  %476 = load i32*, i32** %11, align 8
  %477 = load i32, i32* %476, align 4
  %478 = or i32 %477, %475
  store i32 %478, i32* %476, align 4
  %479 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %480 = load i8*, i8** %12, align 8
  %481 = call i32 @archive_entry_copy_uname(%struct.archive_entry* %479, i8* %480)
  br label %492

482:                                              ; preds = %470
  %483 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %484

484:                                              ; preds = %73, %482
  %485 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %486 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %485, i32 0, i32 0
  %487 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %488 = load i8*, i8** %13, align 8
  %489 = load i8*, i8** %12, align 8
  %490 = call i32 (i32*, i32, i8*, i8*, ...) @archive_set_error(i32* %486, i32 %487, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.41, i64 0, i64 0), i8* %488, i8* %489)
  %491 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %491, i32* %6, align 4
  br label %494

492:                                              ; preds = %474, %462, %451, %368, %325, %315, %310, %301, %292, %283, %272, %235, %228, %195, %181, %171, %157, %145, %131, %100, %89
  %493 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %493, i32* %6, align 4
  br label %494

494:                                              ; preds = %492, %484, %441, %262, %221, %123, %62, %55, %45, %35, %29
  %495 = load i32, i32* %6, align 4
  ret i32 %495
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i8*, ...) #1

declare dso_local i32 @parse_escapes(i8*, i32*) #1

declare dso_local i32 @archive_strcpy(i32*, i8*) #1

declare dso_local i32 @parse_device(i32*, i32*, i8*) #1

declare dso_local i32 @archive_entry_set_rdev(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_copy_fflags_text(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i64) #1

declare dso_local i64 @mtree_atol(i8**, i32) #1

declare dso_local i32 @archive_entry_copy_gname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_ino(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_copy_symlink(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_perm(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_nlink(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_dev(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #1

declare dso_local i64 @get_time_t_max(...) #1

declare dso_local i64 @get_time_t_min(...) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i64) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_copy_uname(%struct.archive_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
