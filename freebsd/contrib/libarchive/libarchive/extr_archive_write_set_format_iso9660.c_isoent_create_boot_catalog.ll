; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_create_boot_catalog.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_create_boot_catalog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_12__, i8*, %struct.TYPE_11__*, %struct.isoent*, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.archive_entry* }
%struct.archive_entry = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.isoent = type { i32 }
%struct.isofile = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i64 0, align 8
@BOOT_CATALOG = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@FD_1_2M_SIZE = common dso_local global i32 0, align 4
@BOOT_MEDIA_1_2M_DISKETTE = common dso_local global i8* null, align 8
@FD_1_44M_SIZE = common dso_local global i32 0, align 4
@BOOT_MEDIA_1_44M_DISKETTE = common dso_local global i8* null, align 8
@FD_2_88M_SIZE = common dso_local global i32 0, align 4
@BOOT_MEDIA_2_88M_DISKETTE = common dso_local global i8* null, align 8
@BOOT_MEDIA_NO_EMULATION = common dso_local global i8* null, align 8
@BOOT_MEDIA_HARD_DISK = common dso_local global i8* null, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Boot image file(``%s'') size is too big for fd type.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.isoent*)* @isoent_create_boot_catalog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_create_boot_catalog(%struct.archive_write* %0, %struct.isoent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.isoent*, align 8
  %6 = alloca %struct.iso9660*, align 8
  %7 = alloca %struct.isofile*, align 8
  %8 = alloca %struct.isoent*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.isoent* %1, %struct.isoent** %5, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 1
  %12 = load %struct.iso9660*, %struct.iso9660** %11, align 8
  store %struct.iso9660* %12, %struct.iso9660** %6, align 8
  %13 = load %struct.isoent*, %struct.isoent** %5, align 8
  %14 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %15 = call %struct.isofile* @isofile_new(%struct.archive_write* %14, i32* null)
  store %struct.isofile* %15, %struct.isofile** %7, align 8
  %16 = load %struct.isofile*, %struct.isofile** %7, align 8
  %17 = icmp eq %struct.isofile* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %20 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %19, i32 0, i32 0
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %20, i32 %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %23, i32* %3, align 4
  br label %256

24:                                               ; preds = %2
  %25 = load %struct.isofile*, %struct.isofile** %7, align 8
  %26 = getelementptr inbounds %struct.isofile, %struct.isofile* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %29 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 6
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @archive_entry_set_pathname(i32 %27, i32 %32)
  %34 = load %struct.isofile*, %struct.isofile** %7, align 8
  %35 = getelementptr inbounds %struct.isofile, %struct.isofile* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %38 = call i32 @archive_entry_set_size(i32 %36, i32 %37)
  %39 = load %struct.isofile*, %struct.isofile** %7, align 8
  %40 = getelementptr inbounds %struct.isofile, %struct.isofile* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %43 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @archive_entry_set_mtime(i32 %41, i32 %44, i32 0)
  %46 = load %struct.isofile*, %struct.isofile** %7, align 8
  %47 = getelementptr inbounds %struct.isofile, %struct.isofile* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %50 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @archive_entry_set_atime(i32 %48, i32 %51, i32 0)
  %53 = load %struct.isofile*, %struct.isofile** %7, align 8
  %54 = getelementptr inbounds %struct.isofile, %struct.isofile* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %57 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @archive_entry_set_ctime(i32 %55, i32 %58, i32 0)
  %60 = load %struct.isofile*, %struct.isofile** %7, align 8
  %61 = getelementptr inbounds %struct.isofile, %struct.isofile* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (...) @getuid()
  %64 = call i32 @archive_entry_set_uid(i32 %62, i32 %63)
  %65 = load %struct.isofile*, %struct.isofile** %7, align 8
  %66 = getelementptr inbounds %struct.isofile, %struct.isofile* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 (...) @getgid()
  %69 = call i32 @archive_entry_set_gid(i32 %67, i32 %68)
  %70 = load %struct.isofile*, %struct.isofile** %7, align 8
  %71 = getelementptr inbounds %struct.isofile, %struct.isofile* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AE_IFREG, align 4
  %74 = or i32 %73, 292
  %75 = call i32 @archive_entry_set_mode(i32 %72, i32 %74)
  %76 = load %struct.isofile*, %struct.isofile** %7, align 8
  %77 = getelementptr inbounds %struct.isofile, %struct.isofile* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @archive_entry_set_nlink(i32 %78, i32 1)
  %80 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %81 = load %struct.isofile*, %struct.isofile** %7, align 8
  %82 = call i64 @isofile_gen_utility_names(%struct.archive_write* %80, %struct.isofile* %81)
  %83 = load i64, i64* @ARCHIVE_WARN, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %24
  %86 = load %struct.isofile*, %struct.isofile** %7, align 8
  %87 = call i32 @isofile_free(%struct.isofile* %86)
  %88 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %88, i32* %3, align 4
  br label %256

89:                                               ; preds = %24
  %90 = load i32, i32* @BOOT_CATALOG, align 4
  %91 = load %struct.isofile*, %struct.isofile** %7, align 8
  %92 = getelementptr inbounds %struct.isofile, %struct.isofile* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %94 = load %struct.isofile*, %struct.isofile** %7, align 8
  %95 = getelementptr inbounds %struct.isofile, %struct.isofile* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %98 = load %struct.isofile*, %struct.isofile** %7, align 8
  %99 = call i32 @isofile_add_entry(%struct.iso9660* %97, %struct.isofile* %98)
  %100 = load %struct.isofile*, %struct.isofile** %7, align 8
  %101 = call %struct.isoent* @isoent_new(%struct.isofile* %100)
  store %struct.isoent* %101, %struct.isoent** %8, align 8
  %102 = load %struct.isoent*, %struct.isoent** %8, align 8
  %103 = icmp eq %struct.isoent* %102, null
  br i1 %103, label %104, label %110

104:                                              ; preds = %89
  %105 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %106 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %105, i32 0, i32 0
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %106, i32 %107, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %109 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %109, i32* %3, align 4
  br label %256

110:                                              ; preds = %89
  %111 = load %struct.isoent*, %struct.isoent** %8, align 8
  %112 = getelementptr inbounds %struct.isoent, %struct.isoent* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  %113 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %114 = call i64 @isoent_tree(%struct.archive_write* %113, %struct.isoent** %8)
  %115 = load i64, i64* @ARCHIVE_OK, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %119

117:                                              ; preds = %110
  %118 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %118, i32* %3, align 4
  br label %256

119:                                              ; preds = %110
  %120 = load %struct.isoent*, %struct.isoent** %8, align 8
  %121 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %122 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 5
  store %struct.isoent* %120, %struct.isoent** %123, align 8
  %124 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %125 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  switch i32 %127, label %128 [
    i32 131, label %129
    i32 128, label %175
    i32 129, label %180
    i32 130, label %185
  ]

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %119, %128
  %130 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %131 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 4
  %133 = load %struct.TYPE_11__*, %struct.TYPE_11__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load %struct.archive_entry*, %struct.archive_entry** %136, align 8
  store %struct.archive_entry* %137, %struct.archive_entry** %9, align 8
  %138 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %139 = call i32 @archive_entry_size(%struct.archive_entry* %138)
  %140 = load i32, i32* @FD_1_2M_SIZE, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %147

142:                                              ; preds = %129
  %143 = load i8*, i8** @BOOT_MEDIA_1_2M_DISKETTE, align 8
  %144 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %145 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 3
  store i8* %143, i8** %146, align 8
  br label %174

147:                                              ; preds = %129
  %148 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %149 = call i32 @archive_entry_size(%struct.archive_entry* %148)
  %150 = load i32, i32* @FD_1_44M_SIZE, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %147
  %153 = load i8*, i8** @BOOT_MEDIA_1_44M_DISKETTE, align 8
  %154 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %155 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  store i8* %153, i8** %156, align 8
  br label %173

157:                                              ; preds = %147
  %158 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %159 = call i32 @archive_entry_size(%struct.archive_entry* %158)
  %160 = load i32, i32* @FD_2_88M_SIZE, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %157
  %163 = load i8*, i8** @BOOT_MEDIA_2_88M_DISKETTE, align 8
  %164 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %165 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 3
  store i8* %163, i8** %166, align 8
  br label %172

167:                                              ; preds = %157
  %168 = load i8*, i8** @BOOT_MEDIA_NO_EMULATION, align 8
  %169 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %170 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 3
  store i8* %168, i8** %171, align 8
  br label %172

172:                                              ; preds = %167, %162
  br label %173

173:                                              ; preds = %172, %152
  br label %174

174:                                              ; preds = %173, %142
  br label %237

175:                                              ; preds = %119
  %176 = load i8*, i8** @BOOT_MEDIA_NO_EMULATION, align 8
  %177 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %178 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 3
  store i8* %176, i8** %179, align 8
  br label %237

180:                                              ; preds = %119
  %181 = load i8*, i8** @BOOT_MEDIA_HARD_DISK, align 8
  %182 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %183 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %183, i32 0, i32 3
  store i8* %181, i8** %184, align 8
  br label %237

185:                                              ; preds = %119
  %186 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %187 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 4
  %189 = load %struct.TYPE_11__*, %struct.TYPE_11__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 0
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load %struct.archive_entry*, %struct.archive_entry** %192, align 8
  store %struct.archive_entry* %193, %struct.archive_entry** %9, align 8
  %194 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %195 = call i32 @archive_entry_size(%struct.archive_entry* %194)
  %196 = load i32, i32* @FD_1_2M_SIZE, align 4
  %197 = icmp sle i32 %195, %196
  br i1 %197, label %198, label %203

198:                                              ; preds = %185
  %199 = load i8*, i8** @BOOT_MEDIA_1_2M_DISKETTE, align 8
  %200 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %201 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %201, i32 0, i32 3
  store i8* %199, i8** %202, align 8
  br label %236

203:                                              ; preds = %185
  %204 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %205 = call i32 @archive_entry_size(%struct.archive_entry* %204)
  %206 = load i32, i32* @FD_1_44M_SIZE, align 4
  %207 = icmp sle i32 %205, %206
  br i1 %207, label %208, label %213

208:                                              ; preds = %203
  %209 = load i8*, i8** @BOOT_MEDIA_1_44M_DISKETTE, align 8
  %210 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %211 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 3
  store i8* %209, i8** %212, align 8
  br label %235

213:                                              ; preds = %203
  %214 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %215 = call i32 @archive_entry_size(%struct.archive_entry* %214)
  %216 = load i32, i32* @FD_2_88M_SIZE, align 4
  %217 = icmp sle i32 %215, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %213
  %219 = load i8*, i8** @BOOT_MEDIA_2_88M_DISKETTE, align 8
  %220 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %221 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %221, i32 0, i32 3
  store i8* %219, i8** %222, align 8
  br label %234

223:                                              ; preds = %213
  %224 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %225 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %224, i32 0, i32 0
  %226 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %227 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %228 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %225, i32 %226, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %231)
  %233 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %233, i32* %3, align 4
  br label %256

234:                                              ; preds = %218
  br label %235

235:                                              ; preds = %234, %208
  br label %236

236:                                              ; preds = %235, %198
  br label %237

237:                                              ; preds = %236, %180, %175, %174
  %238 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %239 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 1
  store i64 0, i64* %240, align 8
  %241 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %242 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %237
  %247 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %248 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %248, i32 0, i32 0
  %250 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %251 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %250, i32 0, i32 0
  %252 = call i32 @archive_string_copy(i32* %249, i32* %251)
  br label %253

253:                                              ; preds = %246, %237
  %254 = load i64, i64* @ARCHIVE_OK, align 8
  %255 = trunc i64 %254 to i32
  store i32 %255, i32* %3, align 4
  br label %256

256:                                              ; preds = %253, %223, %117, %104, %85, %18
  %257 = load i32, i32* %3, align 4
  ret i32 %257
}

declare dso_local %struct.isofile* @isofile_new(%struct.archive_write*, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @archive_entry_set_pathname(i32, i32) #1

declare dso_local i32 @archive_entry_set_size(i32, i32) #1

declare dso_local i32 @archive_entry_set_mtime(i32, i32, i32) #1

declare dso_local i32 @archive_entry_set_atime(i32, i32, i32) #1

declare dso_local i32 @archive_entry_set_ctime(i32, i32, i32) #1

declare dso_local i32 @archive_entry_set_uid(i32, i32) #1

declare dso_local i32 @getuid(...) #1

declare dso_local i32 @archive_entry_set_gid(i32, i32) #1

declare dso_local i32 @getgid(...) #1

declare dso_local i32 @archive_entry_set_mode(i32, i32) #1

declare dso_local i32 @archive_entry_set_nlink(i32, i32) #1

declare dso_local i64 @isofile_gen_utility_names(%struct.archive_write*, %struct.isofile*) #1

declare dso_local i32 @isofile_free(%struct.isofile*) #1

declare dso_local i32 @isofile_add_entry(%struct.iso9660*, %struct.isofile*) #1

declare dso_local %struct.isoent* @isoent_new(%struct.isofile*) #1

declare dso_local i64 @isoent_tree(%struct.archive_write*, %struct.isoent**) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i32 @archive_string_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
