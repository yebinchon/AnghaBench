; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_parse_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_mtree.c_parse_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.archive_entry = type { i32 }
%struct.mtree = type { i32, i64, i32, i32, %struct.TYPE_8__, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i8*, i64 }
%struct.mtree_entry = type { i32, i8*, i64, %struct.mtree_entry* }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@AE_IFDIR = common dso_local global i64 0, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"Can't open %s\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Could not fstat %s\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@MTREE_HAS_OPTIONAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [46 x i8] c"mtree specification has different type for %s\00", align 1
@MTREE_HAS_DEVICE = common dso_local global i32 0, align 4
@MTREE_HAS_NOCHANGE = common dso_local global i32 0, align 4
@AE_IFCHR = common dso_local global i64 0, align 8
@AE_IFBLK = common dso_local global i64 0, align 8
@MTREE_HAS_GID = common dso_local global i32 0, align 4
@MTREE_HAS_GNAME = common dso_local global i32 0, align 4
@MTREE_HAS_UID = common dso_local global i32 0, align 4
@MTREE_HAS_UNAME = common dso_local global i32 0, align 4
@MTREE_HAS_MTIME = common dso_local global i32 0, align 4
@MTREE_HAS_NLINK = common dso_local global i32 0, align 4
@MTREE_HAS_PERM = common dso_local global i32 0, align 4
@MTREE_HAS_SIZE = common dso_local global i32 0, align 4
@AE_IFIFO = common dso_local global i64 0, align 8
@AE_IFLNK = common dso_local global i64 0, align 8
@AE_IFSOCK = common dso_local global i64 0, align 8
@S_IFBLK = common dso_local global i32 0, align 4
@S_IFCHR = common dso_local global i32 0, align 4
@S_IFIFO = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IFSOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*, %struct.mtree*, %struct.mtree_entry*, i32*)* @parse_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_file(%struct.archive_read* %0, %struct.archive_entry* %1, %struct.mtree* %2, %struct.mtree_entry* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.archive_entry*, align 8
  %9 = alloca %struct.mtree*, align 8
  %10 = alloca %struct.mtree_entry*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.stat, align 4
  %14 = alloca %struct.stat*, align 8
  %15 = alloca %struct.mtree_entry*, align 8
  %16 = alloca %struct.archive_entry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %8, align 8
  store %struct.mtree* %2, %struct.mtree** %9, align 8
  store %struct.mtree_entry* %3, %struct.mtree_entry** %10, align 8
  store i32* %4, i32** %11, align 8
  %21 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %21, i32* %17, align 4
  %22 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %23 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %25 = load i64, i64* @AE_IFREG, align 8
  %26 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %24, i64 %25)
  %27 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %28 = call i32 @archive_entry_set_size(%struct.archive_entry* %27, i32 0)
  %29 = load %struct.mtree*, %struct.mtree** %9, align 8
  %30 = getelementptr inbounds %struct.mtree, %struct.mtree* %29, i32 0, i32 4
  %31 = call i32 @archive_string_empty(%struct.TYPE_8__* %30)
  store i32 0, i32* %19, align 4
  %32 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %33 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %34 = load %struct.mtree*, %struct.mtree** %9, align 8
  %35 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %36 = call i32 @parse_line(%struct.archive_read* %32, %struct.archive_entry* %33, %struct.mtree* %34, %struct.mtree_entry* %35, i32* %19)
  store i32 %36, i32* %17, align 4
  %37 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %38 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %87

41:                                               ; preds = %5
  %42 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %43 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %44 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %42, i8* %45)
  %47 = load %struct.mtree*, %struct.mtree** %9, align 8
  %48 = getelementptr inbounds %struct.mtree, %struct.mtree* %47, i32 0, i32 7
  %49 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %50 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = call i64 @__archive_rb_tree_find_node(i32* %48, i8* %51)
  %53 = inttoptr i64 %52 to %struct.mtree_entry*
  store %struct.mtree_entry* %53, %struct.mtree_entry** %15, align 8
  br label %54

54:                                               ; preds = %82, %41
  %55 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %56 = icmp ne %struct.mtree_entry* %55, null
  br i1 %56, label %57, label %86

57:                                               ; preds = %54
  %58 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %59 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %64 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %81, label %67

67:                                               ; preds = %62
  %68 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %69 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %71 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %72 = load %struct.mtree*, %struct.mtree** %9, align 8
  %73 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %74 = call i32 @parse_line(%struct.archive_read* %70, %struct.archive_entry* %71, %struct.mtree* %72, %struct.mtree_entry* %73, i32* %19)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %17, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* %18, align 4
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %78, %67
  br label %81

81:                                               ; preds = %80, %62, %57
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.mtree_entry*, %struct.mtree_entry** %15, align 8
  %84 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %83, i32 0, i32 3
  %85 = load %struct.mtree_entry*, %struct.mtree_entry** %84, align 8
  store %struct.mtree_entry* %85, %struct.mtree_entry** %15, align 8
  br label %54

86:                                               ; preds = %54
  br label %120

87:                                               ; preds = %5
  %88 = load %struct.mtree*, %struct.mtree** %9, align 8
  %89 = getelementptr inbounds %struct.mtree, %struct.mtree* %88, i32 0, i32 6
  %90 = call i64 @archive_strlen(%struct.TYPE_8__* %89)
  store i64 %90, i64* %20, align 8
  %91 = load i64, i64* %20, align 8
  %92 = icmp ugt i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.mtree*, %struct.mtree** %9, align 8
  %95 = getelementptr inbounds %struct.mtree, %struct.mtree* %94, i32 0, i32 6
  %96 = call i32 @archive_strcat(%struct.TYPE_8__* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %87
  %98 = load %struct.mtree*, %struct.mtree** %9, align 8
  %99 = getelementptr inbounds %struct.mtree, %struct.mtree* %98, i32 0, i32 6
  %100 = load %struct.mtree_entry*, %struct.mtree_entry** %10, align 8
  %101 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @archive_strcat(%struct.TYPE_8__* %99, i8* %102)
  %104 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %105 = load %struct.mtree*, %struct.mtree** %9, align 8
  %106 = getelementptr inbounds %struct.mtree, %struct.mtree* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %104, i8* %108)
  %110 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %111 = call i64 @archive_entry_filetype(%struct.archive_entry* %110)
  %112 = load i64, i64* @AE_IFDIR, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %119

114:                                              ; preds = %97
  %115 = load i64, i64* %20, align 8
  %116 = load %struct.mtree*, %struct.mtree** %9, align 8
  %117 = getelementptr inbounds %struct.mtree, %struct.mtree* %116, i32 0, i32 6
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 1
  store i64 %115, i64* %118, align 8
  br label %119

119:                                              ; preds = %114, %97
  br label %120

120:                                              ; preds = %119, %86
  %121 = load %struct.mtree*, %struct.mtree** %9, align 8
  %122 = getelementptr inbounds %struct.mtree, %struct.mtree* %121, i32 0, i32 5
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %437

125:                                              ; preds = %120
  %126 = load %struct.mtree*, %struct.mtree** %9, align 8
  %127 = getelementptr inbounds %struct.mtree, %struct.mtree* %126, i32 0, i32 0
  store i32 -1, i32* %127, align 8
  %128 = load %struct.mtree*, %struct.mtree** %9, align 8
  %129 = getelementptr inbounds %struct.mtree, %struct.mtree* %128, i32 0, i32 4
  %130 = call i64 @archive_strlen(%struct.TYPE_8__* %129)
  %131 = icmp ugt i64 %130, 0
  br i1 %131, label %132, label %137

132:                                              ; preds = %125
  %133 = load %struct.mtree*, %struct.mtree** %9, align 8
  %134 = getelementptr inbounds %struct.mtree, %struct.mtree* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  store i8* %136, i8** %12, align 8
  br label %140

137:                                              ; preds = %125
  %138 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %139 = call i8* @archive_entry_pathname(%struct.archive_entry* %138)
  store i8* %139, i8** %12, align 8
  br label %140

140:                                              ; preds = %137, %132
  %141 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %142 = call i64 @archive_entry_filetype(%struct.archive_entry* %141)
  %143 = load i64, i64* @AE_IFREG, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %147 = call i64 @archive_entry_filetype(%struct.archive_entry* %146)
  %148 = load i64, i64* @AE_IFDIR, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %185

150:                                              ; preds = %145, %140
  %151 = load i8*, i8** %12, align 8
  %152 = load i32, i32* @O_RDONLY, align 4
  %153 = load i32, i32* @O_BINARY, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @O_CLOEXEC, align 4
  %156 = or i32 %154, %155
  %157 = call i32 @open(i8* %151, i32 %156)
  %158 = load %struct.mtree*, %struct.mtree** %9, align 8
  %159 = getelementptr inbounds %struct.mtree, %struct.mtree* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  %160 = load %struct.mtree*, %struct.mtree** %9, align 8
  %161 = getelementptr inbounds %struct.mtree, %struct.mtree* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @__archive_ensure_cloexec_flag(i32 %162)
  %164 = load %struct.mtree*, %struct.mtree** %9, align 8
  %165 = getelementptr inbounds %struct.mtree, %struct.mtree* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %184

168:                                              ; preds = %150
  %169 = load i64, i64* @errno, align 8
  %170 = load i64, i64* @ENOENT, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %177, label %172

172:                                              ; preds = %168
  %173 = load %struct.mtree*, %struct.mtree** %9, align 8
  %174 = getelementptr inbounds %struct.mtree, %struct.mtree* %173, i32 0, i32 4
  %175 = call i64 @archive_strlen(%struct.TYPE_8__* %174)
  %176 = icmp ugt i64 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %172, %168
  %178 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %179 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %178, i32 0, i32 0
  %180 = load i64, i64* @errno, align 8
  %181 = load i8*, i8** %12, align 8
  %182 = call i32 @archive_set_error(i32* %179, i64 %180, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %181)
  %183 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %183, i32* %17, align 4
  br label %184

184:                                              ; preds = %177, %172, %150
  br label %185

185:                                              ; preds = %184, %145
  store %struct.stat* %13, %struct.stat** %14, align 8
  %186 = load %struct.mtree*, %struct.mtree** %9, align 8
  %187 = getelementptr inbounds %struct.mtree, %struct.mtree* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp sge i32 %188, 0
  br i1 %189, label %190, label %211

190:                                              ; preds = %185
  %191 = load %struct.mtree*, %struct.mtree** %9, align 8
  %192 = getelementptr inbounds %struct.mtree, %struct.mtree* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.stat*, %struct.stat** %14, align 8
  %195 = call i32 @fstat(i32 %193, %struct.stat* %194)
  %196 = icmp eq i32 %195, -1
  br i1 %196, label %197, label %210

197:                                              ; preds = %190
  %198 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %199 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %198, i32 0, i32 0
  %200 = load i64, i64* @errno, align 8
  %201 = load i8*, i8** %12, align 8
  %202 = call i32 @archive_set_error(i32* %199, i64 %200, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %201)
  %203 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %203, i32* %17, align 4
  %204 = load %struct.mtree*, %struct.mtree** %9, align 8
  %205 = getelementptr inbounds %struct.mtree, %struct.mtree* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @close(i32 %206)
  %208 = load %struct.mtree*, %struct.mtree** %9, align 8
  %209 = getelementptr inbounds %struct.mtree, %struct.mtree* %208, i32 0, i32 0
  store i32 -1, i32* %209, align 8
  store %struct.stat* null, %struct.stat** %14, align 8
  br label %210

210:                                              ; preds = %197, %190
  br label %218

211:                                              ; preds = %185
  %212 = load i8*, i8** %12, align 8
  %213 = load %struct.stat*, %struct.stat** %14, align 8
  %214 = call i32 @lstat(i8* %212, %struct.stat* %213)
  %215 = icmp eq i32 %214, -1
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  store %struct.stat* null, %struct.stat** %14, align 8
  br label %217

217:                                              ; preds = %216, %211
  br label %218

218:                                              ; preds = %217, %210
  %219 = load %struct.stat*, %struct.stat** %14, align 8
  %220 = icmp ne %struct.stat* %219, null
  br i1 %220, label %221, label %283

221:                                              ; preds = %218
  %222 = load %struct.stat*, %struct.stat** %14, align 8
  %223 = getelementptr inbounds %struct.stat, %struct.stat* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @S_IFMT, align 4
  %226 = and i32 %224, %225
  %227 = load i32, i32* @S_IFREG, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %234

229:                                              ; preds = %221
  %230 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %231 = call i64 @archive_entry_filetype(%struct.archive_entry* %230)
  %232 = load i64, i64* @AE_IFREG, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %247, label %234

234:                                              ; preds = %229, %221
  %235 = load %struct.stat*, %struct.stat** %14, align 8
  %236 = getelementptr inbounds %struct.stat, %struct.stat* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @S_IFMT, align 4
  %239 = and i32 %237, %238
  %240 = load i32, i32* @S_IFDIR, align 4
  %241 = icmp eq i32 %239, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %234
  %243 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %244 = call i64 @archive_entry_filetype(%struct.archive_entry* %243)
  %245 = load i64, i64* @AE_IFDIR, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %242, %229
  br label %282

248:                                              ; preds = %242, %234
  %249 = load %struct.mtree*, %struct.mtree** %9, align 8
  %250 = getelementptr inbounds %struct.mtree, %struct.mtree* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp sge i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %248
  %254 = load %struct.mtree*, %struct.mtree** %9, align 8
  %255 = getelementptr inbounds %struct.mtree, %struct.mtree* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @close(i32 %256)
  br label %258

258:                                              ; preds = %253, %248
  %259 = load %struct.mtree*, %struct.mtree** %9, align 8
  %260 = getelementptr inbounds %struct.mtree, %struct.mtree* %259, i32 0, i32 0
  store i32 -1, i32* %260, align 8
  %261 = load i32, i32* %19, align 4
  %262 = load i32, i32* @MTREE_HAS_OPTIONAL, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %267

265:                                              ; preds = %258
  %266 = load i32*, i32** %11, align 8
  store i32 1, i32* %266, align 4
  br label %280

267:                                              ; preds = %258
  %268 = load i32, i32* %17, align 4
  %269 = load i32, i32* @ARCHIVE_OK, align 4
  %270 = icmp eq i32 %268, %269
  br i1 %270, label %271, label %279

271:                                              ; preds = %267
  %272 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %273 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %272, i32 0, i32 0
  %274 = load i64, i64* @ARCHIVE_ERRNO_MISC, align 8
  %275 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %276 = call i8* @archive_entry_pathname(%struct.archive_entry* %275)
  %277 = call i32 @archive_set_error(i32* %273, i64 %274, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i8* %276)
  %278 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %278, i32* %17, align 4
  br label %279

279:                                              ; preds = %271, %267
  br label %280

280:                                              ; preds = %279, %265
  %281 = load i32, i32* %17, align 4
  store i32 %281, i32* %6, align 4
  br label %445

282:                                              ; preds = %247
  br label %283

283:                                              ; preds = %282, %218
  %284 = load %struct.stat*, %struct.stat** %14, align 8
  %285 = icmp ne %struct.stat* %284, null
  br i1 %285, label %286, label %427

286:                                              ; preds = %283
  %287 = load i32, i32* %19, align 4
  %288 = load i32, i32* @MTREE_HAS_DEVICE, align 4
  %289 = and i32 %287, %288
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %296, label %291

291:                                              ; preds = %286
  %292 = load i32, i32* %19, align 4
  %293 = load i32, i32* @MTREE_HAS_NOCHANGE, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %312

296:                                              ; preds = %291, %286
  %297 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %298 = call i64 @archive_entry_filetype(%struct.archive_entry* %297)
  %299 = load i64, i64* @AE_IFCHR, align 8
  %300 = icmp eq i64 %298, %299
  br i1 %300, label %306, label %301

301:                                              ; preds = %296
  %302 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %303 = call i64 @archive_entry_filetype(%struct.archive_entry* %302)
  %304 = load i64, i64* @AE_IFBLK, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %312

306:                                              ; preds = %301, %296
  %307 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %308 = load %struct.stat*, %struct.stat** %14, align 8
  %309 = getelementptr inbounds %struct.stat, %struct.stat* %308, i32 0, i32 13
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @archive_entry_set_rdev(%struct.archive_entry* %307, i32 %310)
  br label %312

312:                                              ; preds = %306, %301, %291
  %313 = load i32, i32* %19, align 4
  %314 = load i32, i32* @MTREE_HAS_GID, align 4
  %315 = load i32, i32* @MTREE_HAS_GNAME, align 4
  %316 = or i32 %314, %315
  %317 = and i32 %313, %316
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %324, label %319

319:                                              ; preds = %312
  %320 = load i32, i32* %19, align 4
  %321 = load i32, i32* @MTREE_HAS_NOCHANGE, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %330

324:                                              ; preds = %319, %312
  %325 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %326 = load %struct.stat*, %struct.stat** %14, align 8
  %327 = getelementptr inbounds %struct.stat, %struct.stat* %326, i32 0, i32 12
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @archive_entry_set_gid(%struct.archive_entry* %325, i32 %328)
  br label %330

330:                                              ; preds = %324, %319
  %331 = load i32, i32* %19, align 4
  %332 = load i32, i32* @MTREE_HAS_UID, align 4
  %333 = load i32, i32* @MTREE_HAS_UNAME, align 4
  %334 = or i32 %332, %333
  %335 = and i32 %331, %334
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %342, label %337

337:                                              ; preds = %330
  %338 = load i32, i32* %19, align 4
  %339 = load i32, i32* @MTREE_HAS_NOCHANGE, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %348

342:                                              ; preds = %337, %330
  %343 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %344 = load %struct.stat*, %struct.stat** %14, align 8
  %345 = getelementptr inbounds %struct.stat, %struct.stat* %344, i32 0, i32 11
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @archive_entry_set_uid(%struct.archive_entry* %343, i32 %346)
  br label %348

348:                                              ; preds = %342, %337
  %349 = load i32, i32* %19, align 4
  %350 = load i32, i32* @MTREE_HAS_MTIME, align 4
  %351 = and i32 %349, %350
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %358, label %353

353:                                              ; preds = %348
  %354 = load i32, i32* %19, align 4
  %355 = load i32, i32* @MTREE_HAS_NOCHANGE, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %353, %348
  %359 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %360 = load %struct.stat*, %struct.stat** %14, align 8
  %361 = getelementptr inbounds %struct.stat, %struct.stat* %360, i32 0, i32 8
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %359, i32 %362, i32 0)
  br label %364

364:                                              ; preds = %358, %353
  %365 = load i32, i32* %19, align 4
  %366 = load i32, i32* @MTREE_HAS_NLINK, align 4
  %367 = and i32 %365, %366
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %374, label %369

369:                                              ; preds = %364
  %370 = load i32, i32* %19, align 4
  %371 = load i32, i32* @MTREE_HAS_NOCHANGE, align 4
  %372 = and i32 %370, %371
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %380

374:                                              ; preds = %369, %364
  %375 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %376 = load %struct.stat*, %struct.stat** %14, align 8
  %377 = getelementptr inbounds %struct.stat, %struct.stat* %376, i32 0, i32 7
  %378 = load i32, i32* %377, align 4
  %379 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %375, i32 %378)
  br label %380

380:                                              ; preds = %374, %369
  %381 = load i32, i32* %19, align 4
  %382 = load i32, i32* @MTREE_HAS_PERM, align 4
  %383 = and i32 %381, %382
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %390, label %385

385:                                              ; preds = %380
  %386 = load i32, i32* %19, align 4
  %387 = load i32, i32* @MTREE_HAS_NOCHANGE, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %396

390:                                              ; preds = %385, %380
  %391 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %392 = load %struct.stat*, %struct.stat** %14, align 8
  %393 = getelementptr inbounds %struct.stat, %struct.stat* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = call i32 @archive_entry_set_perm(%struct.archive_entry* %391, i32 %394)
  br label %396

396:                                              ; preds = %390, %385
  %397 = load i32, i32* %19, align 4
  %398 = load i32, i32* @MTREE_HAS_SIZE, align 4
  %399 = and i32 %397, %398
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %406, label %401

401:                                              ; preds = %396
  %402 = load i32, i32* %19, align 4
  %403 = load i32, i32* @MTREE_HAS_NOCHANGE, align 4
  %404 = and i32 %402, %403
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %412

406:                                              ; preds = %401, %396
  %407 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %408 = load %struct.stat*, %struct.stat** %14, align 8
  %409 = getelementptr inbounds %struct.stat, %struct.stat* %408, i32 0, i32 6
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @archive_entry_set_size(%struct.archive_entry* %407, i32 %410)
  br label %412

412:                                              ; preds = %406, %401
  %413 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %414 = load %struct.stat*, %struct.stat** %14, align 8
  %415 = getelementptr inbounds %struct.stat, %struct.stat* %414, i32 0, i32 5
  %416 = load i32, i32* %415, align 4
  %417 = call i32 @archive_entry_set_ino(%struct.archive_entry* %413, i32 %416)
  %418 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %419 = load %struct.stat*, %struct.stat** %14, align 8
  %420 = getelementptr inbounds %struct.stat, %struct.stat* %419, i32 0, i32 4
  %421 = load i32, i32* %420, align 4
  %422 = call i32 @archive_entry_set_dev(%struct.archive_entry* %418, i32 %421)
  %423 = load %struct.mtree*, %struct.mtree** %9, align 8
  %424 = getelementptr inbounds %struct.mtree, %struct.mtree* %423, i32 0, i32 3
  %425 = load i32, i32* %424, align 4
  %426 = call i32 @archive_entry_linkify(i32 %425, %struct.archive_entry** %8, %struct.archive_entry** %16)
  br label %436

427:                                              ; preds = %283
  %428 = load i32, i32* %19, align 4
  %429 = load i32, i32* @MTREE_HAS_OPTIONAL, align 4
  %430 = and i32 %428, %429
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %435

432:                                              ; preds = %427
  %433 = load i32*, i32** %11, align 8
  store i32 1, i32* %433, align 4
  %434 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %434, i32* %6, align 4
  br label %445

435:                                              ; preds = %427
  br label %436

436:                                              ; preds = %435, %412
  br label %437

437:                                              ; preds = %436, %120
  %438 = load %struct.archive_entry*, %struct.archive_entry** %8, align 8
  %439 = call i32 @archive_entry_size(%struct.archive_entry* %438)
  %440 = load %struct.mtree*, %struct.mtree** %9, align 8
  %441 = getelementptr inbounds %struct.mtree, %struct.mtree* %440, i32 0, i32 2
  store i32 %439, i32* %441, align 8
  %442 = load %struct.mtree*, %struct.mtree** %9, align 8
  %443 = getelementptr inbounds %struct.mtree, %struct.mtree* %442, i32 0, i32 1
  store i64 0, i64* %443, align 8
  %444 = load i32, i32* %17, align 4
  store i32 %444, i32* %6, align 4
  br label %445

445:                                              ; preds = %437, %432, %280
  %446 = load i32, i32* %6, align 4
  ret i32 %446
}

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_string_empty(%struct.TYPE_8__*) #1

declare dso_local i32 @parse_line(%struct.archive_read*, %struct.archive_entry*, %struct.mtree*, %struct.mtree_entry*, i32*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i64 @__archive_rb_tree_find_node(i32*, i8*) #1

declare dso_local i64 @archive_strlen(%struct.TYPE_8__*) #1

declare dso_local i32 @archive_strcat(%struct.TYPE_8__*, i8*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @__archive_ensure_cloexec_flag(i32) #1

declare dso_local i32 @archive_set_error(i32*, i64, i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.stat*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @archive_entry_set_rdev(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_nlink(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_perm(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_ino(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_dev(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_linkify(i32, %struct.archive_entry**, %struct.archive_entry**) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
