; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_write_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_write_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { i32, i64, i64, i64, %struct.isofile*, %struct.TYPE_3__ }
%struct.isofile = type { i64, %struct.archive_entry*, %struct.TYPE_4__, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32 }
%struct.archive_entry = type { i32 }
%struct.isoent = type { %struct.isofile* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFLNK = common dso_local global i64 0, align 8
@OPT_RR_DISABLED = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Ignore symlink file.\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i64 0, align 8
@MULTI_EXTENT_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [50 x i8] c"Ignore over %lld bytes file. This file too large.\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Can't allocate data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Couldn't create temporary file\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*)* @iso9660_write_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso9660_write_header(%struct.archive_write* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.iso9660*, align 8
  %7 = alloca %struct.isofile*, align 8
  %8 = alloca %struct.isoent*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %11 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %13 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %12, i32 0, i32 1
  %14 = load %struct.iso9660*, %struct.iso9660** %13, align 8
  store %struct.iso9660* %14, %struct.iso9660** %6, align 8
  %15 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %16 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %15, i32 0, i32 4
  store %struct.isofile* null, %struct.isofile** %16, align 8
  %17 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %18 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %20 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %22 = call i64 @archive_entry_filetype(%struct.archive_entry* %21)
  %23 = load i64, i64* @AE_IFLNK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %2
  %26 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %27 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @OPT_RR_DISABLED, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %25
  %33 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %34 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %33, i32 0, i32 0
  %35 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %36 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %34, i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %38 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %37, i32 0, i32 4
  store %struct.isofile* null, %struct.isofile** %38, align 8
  %39 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %39, i32* %3, align 4
  br label %234

40:                                               ; preds = %25, %2
  %41 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %42 = call i64 @archive_entry_filetype(%struct.archive_entry* %41)
  %43 = load i64, i64* @AE_IFREG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %47 = call i64 @archive_entry_size(%struct.archive_entry* %46)
  %48 = load i64, i64* @MULTI_EXTENT_SIZE, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %45
  %51 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %52 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 3
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %58 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %57, i32 0, i32 0
  %59 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %60 = load i64, i64* @MULTI_EXTENT_SIZE, align 8
  %61 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %58, i32 %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %63 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %62, i32 0, i32 4
  store %struct.isofile* null, %struct.isofile** %63, align 8
  %64 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %64, i32* %3, align 4
  br label %234

65:                                               ; preds = %50
  %66 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %67 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %65, %45, %40
  %69 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %70 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %71 = call %struct.isofile* @isofile_new(%struct.archive_write* %69, %struct.archive_entry* %70)
  store %struct.isofile* %71, %struct.isofile** %7, align 8
  %72 = load %struct.isofile*, %struct.isofile** %7, align 8
  %73 = icmp eq %struct.isofile* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %76 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %75, i32 0, i32 0
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %76, i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %79, i32* %3, align 4
  br label %234

80:                                               ; preds = %68
  %81 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %82 = load %struct.isofile*, %struct.isofile** %7, align 8
  %83 = call i32 @isofile_gen_utility_names(%struct.archive_write* %81, %struct.isofile* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* @ARCHIVE_WARN, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load %struct.isofile*, %struct.isofile** %7, align 8
  %89 = call i32 @isofile_free(%struct.isofile* %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %234

91:                                               ; preds = %80
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %95, %91
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.isofile*, %struct.isofile** %7, align 8
  %100 = getelementptr inbounds %struct.isofile, %struct.isofile* %99, i32 0, i32 5
  %101 = call i64 @archive_strlen(i32* %100)
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %98
  %104 = load %struct.isofile*, %struct.isofile** %7, align 8
  %105 = getelementptr inbounds %struct.isofile, %struct.isofile* %104, i32 0, i32 4
  %106 = call i64 @archive_strlen(i32* %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load %struct.isofile*, %struct.isofile** %7, align 8
  %110 = call i32 @isofile_free(%struct.isofile* %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %3, align 4
  br label %234

112:                                              ; preds = %103, %98
  %113 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %114 = load %struct.isofile*, %struct.isofile** %7, align 8
  %115 = call i32 @isofile_add_entry(%struct.iso9660* %113, %struct.isofile* %114)
  %116 = load %struct.isofile*, %struct.isofile** %7, align 8
  %117 = call %struct.isoent* @isoent_new(%struct.isofile* %116)
  store %struct.isoent* %117, %struct.isoent** %8, align 8
  %118 = load %struct.isoent*, %struct.isoent** %8, align 8
  %119 = icmp eq %struct.isoent* %118, null
  br i1 %119, label %120, label %126

120:                                              ; preds = %112
  %121 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %122 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %121, i32 0, i32 0
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %122, i32 %123, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %125 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %125, i32* %3, align 4
  br label %234

126:                                              ; preds = %112
  %127 = load %struct.isoent*, %struct.isoent** %8, align 8
  %128 = getelementptr inbounds %struct.isoent, %struct.isoent* %127, i32 0, i32 0
  %129 = load %struct.isofile*, %struct.isofile** %128, align 8
  %130 = getelementptr inbounds %struct.isofile, %struct.isofile* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %133 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = icmp sgt i64 %131, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %126
  %137 = load %struct.isoent*, %struct.isoent** %8, align 8
  %138 = getelementptr inbounds %struct.isoent, %struct.isoent* %137, i32 0, i32 0
  %139 = load %struct.isofile*, %struct.isofile** %138, align 8
  %140 = getelementptr inbounds %struct.isofile, %struct.isofile* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %143 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %142, i32 0, i32 1
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %136, %126
  %145 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %146 = call i32 @isoent_tree(%struct.archive_write* %145, %struct.isoent** %8)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* @ARCHIVE_OK, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %3, align 4
  br label %234

152:                                              ; preds = %144
  %153 = load %struct.isoent*, %struct.isoent** %8, align 8
  %154 = getelementptr inbounds %struct.isoent, %struct.isoent* %153, i32 0, i32 0
  %155 = load %struct.isofile*, %struct.isofile** %154, align 8
  %156 = load %struct.isofile*, %struct.isofile** %7, align 8
  %157 = icmp ne %struct.isofile* %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %152
  %159 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %159, i32* %3, align 4
  br label %234

160:                                              ; preds = %152
  %161 = load %struct.isofile*, %struct.isofile** %7, align 8
  %162 = getelementptr inbounds %struct.isofile, %struct.isofile* %161, i32 0, i32 1
  %163 = load %struct.archive_entry*, %struct.archive_entry** %162, align 8
  %164 = call i64 @archive_entry_filetype(%struct.archive_entry* %163)
  %165 = load i64, i64* @AE_IFREG, align 8
  %166 = icmp ne i64 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %160
  %168 = load i32, i32* %10, align 4
  store i32 %168, i32* %3, align 4
  br label %234

169:                                              ; preds = %160
  %170 = load %struct.isofile*, %struct.isofile** %7, align 8
  %171 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %172 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %171, i32 0, i32 4
  store %struct.isofile* %170, %struct.isofile** %172, align 8
  %173 = load %struct.isofile*, %struct.isofile** %7, align 8
  %174 = getelementptr inbounds %struct.isofile, %struct.isofile* %173, i32 0, i32 1
  %175 = load %struct.archive_entry*, %struct.archive_entry** %174, align 8
  %176 = call i32 @archive_entry_nlink(%struct.archive_entry* %175)
  %177 = icmp sgt i32 %176, 1
  br i1 %177, label %178, label %188

178:                                              ; preds = %169
  %179 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %180 = load %struct.isofile*, %struct.isofile** %7, align 8
  %181 = call i32 @isofile_register_hardlink(%struct.archive_write* %179, %struct.isofile* %180)
  store i32 %181, i32* %9, align 4
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @ARCHIVE_OK, align 4
  %184 = icmp ne i32 %182, %183
  br i1 %184, label %185, label %187

185:                                              ; preds = %178
  %186 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %186, i32* %3, align 4
  br label %234

187:                                              ; preds = %178
  br label %188

188:                                              ; preds = %187, %169
  %189 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %190 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp slt i64 %191, 0
  br i1 %192, label %193, label %208

193:                                              ; preds = %188
  %194 = call i64 @__archive_mktemp(i32* null)
  %195 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %196 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %195, i32 0, i32 2
  store i64 %194, i64* %196, align 8
  %197 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %198 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %193
  %202 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %203 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %202, i32 0, i32 0
  %204 = load i32, i32* @errno, align 4
  %205 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %203, i32 %204, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %206 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %206, i32* %3, align 4
  br label %234

207:                                              ; preds = %193
  br label %208

208:                                              ; preds = %207, %188
  %209 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %210 = call i32 @wb_offset(%struct.archive_write* %209)
  %211 = load %struct.isofile*, %struct.isofile** %7, align 8
  %212 = getelementptr inbounds %struct.isofile, %struct.isofile* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 8
  %214 = load %struct.isofile*, %struct.isofile** %7, align 8
  %215 = getelementptr inbounds %struct.isofile, %struct.isofile* %214, i32 0, i32 2
  %216 = load %struct.isofile*, %struct.isofile** %7, align 8
  %217 = getelementptr inbounds %struct.isofile, %struct.isofile* %216, i32 0, i32 3
  store %struct.TYPE_4__* %215, %struct.TYPE_4__** %217, align 8
  %218 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %219 = load %struct.isofile*, %struct.isofile** %7, align 8
  %220 = call i32 @zisofs_init(%struct.archive_write* %218, %struct.isofile* %219)
  store i32 %220, i32* %9, align 4
  %221 = load i32, i32* %9, align 4
  %222 = load i32, i32* %10, align 4
  %223 = icmp slt i32 %221, %222
  br i1 %223, label %224, label %226

224:                                              ; preds = %208
  %225 = load i32, i32* %9, align 4
  store i32 %225, i32* %10, align 4
  br label %226

226:                                              ; preds = %224, %208
  %227 = load %struct.isofile*, %struct.isofile** %7, align 8
  %228 = getelementptr inbounds %struct.isofile, %struct.isofile* %227, i32 0, i32 1
  %229 = load %struct.archive_entry*, %struct.archive_entry** %228, align 8
  %230 = call i64 @archive_entry_size(%struct.archive_entry* %229)
  %231 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %232 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %231, i32 0, i32 3
  store i64 %230, i64* %232, align 8
  %233 = load i32, i32* %10, align 4
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %226, %201, %185, %167, %158, %150, %120, %108, %87, %74, %56, %32
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i64 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local %struct.isofile* @isofile_new(%struct.archive_write*, %struct.archive_entry*) #1

declare dso_local i32 @isofile_gen_utility_names(%struct.archive_write*, %struct.isofile*) #1

declare dso_local i32 @isofile_free(%struct.isofile*) #1

declare dso_local i64 @archive_strlen(i32*) #1

declare dso_local i32 @isofile_add_entry(%struct.iso9660*, %struct.isofile*) #1

declare dso_local %struct.isoent* @isoent_new(%struct.isofile*) #1

declare dso_local i32 @isoent_tree(%struct.archive_write*, %struct.isoent**) #1

declare dso_local i32 @archive_entry_nlink(%struct.archive_entry*) #1

declare dso_local i32 @isofile_register_hardlink(%struct.archive_write*, %struct.isofile*) #1

declare dso_local i64 @__archive_mktemp(i32*) #1

declare dso_local i32 @wb_offset(%struct.archive_write*) #1

declare dso_local i32 @zisofs_init(%struct.archive_write*, %struct.isofile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
