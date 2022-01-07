; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_restore_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_restore_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_disk = type { i32, i64, i32, i32, i32*, i32*, %struct.TYPE_6__, %struct.TYPE_5__, i64, i64, i64, i32 }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64, i64, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_UNLINK = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Could not unlink\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_NO_AUTODIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Hard-link target '%s' does not exist.\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ARCHIVE_EXTRACT_NO_OVERWRITE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Can't remove already-existing dir\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Can't stat existing object\00", align 1
@ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Refusing to overwrite archive\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Can't unlink already-existing object\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Can't replace existing directory with non-directory\00", align 1
@TODO_MODE_FORCE = common dso_local global i32 0, align 4
@TODO_MODE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"Can't create '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_disk*)* @restore_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @restore_entry(%struct.archive_write_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write_disk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %3, align 8
  %7 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %9 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @ARCHIVE_EXTRACT_UNLINK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %1
  %15 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %16 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i64 @S_ISDIR(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %62, label %20

20:                                               ; preds = %14
  %21 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %22 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %29 = call i32 @clear_nochange_fflags(%struct.archive_write_disk* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %32 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @unlink(i32* %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %38 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %37, i32 0, i32 4
  store i32* null, i32** %38, align 8
  br label %61

39:                                               ; preds = %30
  %40 = load i32, i32* @errno, align 4
  %41 = load i32, i32* @ENOENT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  br label %60

44:                                               ; preds = %39
  %45 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %46 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @rmdir(i32* %47)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %52 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %51, i32 0, i32 4
  store i32* null, i32** %52, align 8
  br label %59

53:                                               ; preds = %44
  %54 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %55 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %54, i32 0, i32 6
  %56 = load i32, i32* @errno, align 4
  %57 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_6__* %55, i32 %56, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %58, i32* %2, align 4
  br label %375

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %43
  br label %61

61:                                               ; preds = %60, %36
  br label %62

62:                                               ; preds = %61, %14, %1
  %63 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %64 = call i32 @create_filesystem_object(%struct.archive_write_disk* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @ENOTDIR, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @ENOENT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68, %62
  %73 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %74 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ARCHIVE_EXTRACT_NO_AUTODIR, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %72
  %80 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %81 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %82 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %81, i32 0, i32 5
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @create_parent_dir(%struct.archive_write_disk* %80, i32* %83)
  %85 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %86 = call i32 @create_filesystem_object(%struct.archive_write_disk* %85)
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %79, %72, %68
  %88 = load i32, i32* %5, align 4
  %89 = load i32, i32* @ENOENT, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %107

91:                                               ; preds = %87
  %92 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %93 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 8
  %95 = call i32* @archive_entry_hardlink(i32 %94)
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %91
  %98 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %99 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %98, i32 0, i32 6
  %100 = load i32, i32* %5, align 4
  %101 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %102 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %101, i32 0, i32 11
  %103 = load i32, i32* %102, align 8
  %104 = call i32* @archive_entry_hardlink(i32 %103)
  %105 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_6__* %99, i32 %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32* %104)
  %106 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %106, i32* %2, align 4
  br label %375

107:                                              ; preds = %91, %87
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @EISDIR, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %115, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @EEXIST, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %137

115:                                              ; preds = %111, %107
  %116 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %117 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ARCHIVE_EXTRACT_NO_OVERWRITE, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %115
  %123 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %124 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @S_ISDIR(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %130 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %129, i32 0, i32 2
  store i32 0, i32* %130, align 8
  br label %131

131:                                              ; preds = %128, %122
  %132 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %133 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @archive_entry_unset_size(i32 %134)
  %136 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %136, i32* %2, align 4
  br label %375

137:                                              ; preds = %115, %111
  %138 = load i32, i32* %5, align 4
  %139 = load i32, i32* @EISDIR, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %137
  %142 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %143 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %142, i32 0, i32 5
  %144 = load i32*, i32** %143, align 8
  %145 = call i64 @rmdir(i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %141
  %148 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %149 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %148, i32 0, i32 6
  %150 = load i32, i32* @errno, align 4
  %151 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_6__* %149, i32 %150, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %152 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %152, i32* %2, align 4
  br label %375

153:                                              ; preds = %141
  %154 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %155 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %154, i32 0, i32 4
  store i32* null, i32** %155, align 8
  %156 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %157 = call i32 @create_filesystem_object(%struct.archive_write_disk* %156)
  store i32 %157, i32* %5, align 4
  br label %352

158:                                              ; preds = %137
  %159 = load i32, i32* %5, align 4
  %160 = load i32, i32* @EEXIST, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %351

162:                                              ; preds = %158
  store i32 0, i32* %6, align 4
  %163 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %164 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = call i64 @S_ISDIR(i64 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %162
  %169 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %170 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %169, i32 0, i32 5
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %173 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %172, i32 0, i32 7
  %174 = call i32 @la_stat(i32* %171, %struct.TYPE_5__* %173)
  store i32 %174, i32* %6, align 4
  br label %175

175:                                              ; preds = %168, %162
  %176 = load i32, i32* %6, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %184, label %178

178:                                              ; preds = %175
  %179 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %180 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = call i64 @S_ISDIR(i64 %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %191, label %184

184:                                              ; preds = %178, %175
  %185 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %186 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %185, i32 0, i32 5
  %187 = load i32*, i32** %186, align 8
  %188 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %189 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %188, i32 0, i32 7
  %190 = call i32 @lstat(i32* %187, %struct.TYPE_5__* %189)
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %184, %178
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %196 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %195, i32 0, i32 6
  %197 = load i32, i32* @errno, align 4
  %198 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_6__* %196, i32 %197, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %199 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %199, i32* %2, align 4
  br label %375

200:                                              ; preds = %191
  %201 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %202 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @ARCHIVE_EXTRACT_NO_OVERWRITE_NEWER, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %229

207:                                              ; preds = %200
  %208 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %209 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %208, i32 0, i32 7
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = call i64 @S_ISDIR(i64 %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %229, label %214

214:                                              ; preds = %207
  %215 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %216 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %215, i32 0, i32 7
  %217 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %218 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %217, i32 0, i32 11
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @older(%struct.TYPE_5__* %216, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %228, label %222

222:                                              ; preds = %214
  %223 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %224 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %223, i32 0, i32 11
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @archive_entry_unset_size(i32 %225)
  %227 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %227, i32* %2, align 4
  br label %375

228:                                              ; preds = %214
  br label %229

229:                                              ; preds = %228, %207, %200
  %230 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %231 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %230, i32 0, i32 10
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %257

234:                                              ; preds = %229
  %235 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %236 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %235, i32 0, i32 7
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %240 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %239, i32 0, i32 9
  %241 = load i64, i64* %240, align 8
  %242 = icmp eq i64 %238, %241
  br i1 %242, label %243, label %257

243:                                              ; preds = %234
  %244 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %245 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %244, i32 0, i32 7
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %249 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %248, i32 0, i32 8
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %247, %250
  br i1 %251, label %252, label %257

252:                                              ; preds = %243
  %253 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %254 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %253, i32 0, i32 6
  %255 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_6__* %254, i32 0, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %256 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %256, i32* %2, align 4
  br label %375

257:                                              ; preds = %243, %234, %229
  %258 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %259 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %258, i32 0, i32 7
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i64, i64* %260, align 8
  %262 = call i64 @S_ISDIR(i64 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %291, label %264

264:                                              ; preds = %257
  %265 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %266 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %273 = call i32 @clear_nochange_fflags(%struct.archive_write_disk* %272)
  br label %274

274:                                              ; preds = %271, %264
  %275 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %276 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %275, i32 0, i32 5
  %277 = load i32*, i32** %276, align 8
  %278 = call i64 @unlink(i32* %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %274
  %281 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %282 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %281, i32 0, i32 6
  %283 = load i32, i32* @errno, align 4
  %284 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_6__* %282, i32 %283, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %285 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %285, i32* %2, align 4
  br label %375

286:                                              ; preds = %274
  %287 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %288 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %287, i32 0, i32 4
  store i32* null, i32** %288, align 8
  %289 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %290 = call i32 @create_filesystem_object(%struct.archive_write_disk* %289)
  store i32 %290, i32* %5, align 4
  br label %350

291:                                              ; preds = %257
  %292 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %293 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %292, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = call i64 @S_ISDIR(i64 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %322, label %297

297:                                              ; preds = %291
  %298 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %299 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @ARCHIVE_EXTRACT_CLEAR_NOCHANGE_FFLAGS, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %307

304:                                              ; preds = %297
  %305 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %306 = call i32 @clear_nochange_fflags(%struct.archive_write_disk* %305)
  br label %307

307:                                              ; preds = %304, %297
  %308 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %309 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %308, i32 0, i32 5
  %310 = load i32*, i32** %309, align 8
  %311 = call i64 @rmdir(i32* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %319

313:                                              ; preds = %307
  %314 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %315 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %314, i32 0, i32 6
  %316 = load i32, i32* @errno, align 4
  %317 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_6__* %315, i32 %316, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %318 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %318, i32* %2, align 4
  br label %375

319:                                              ; preds = %307
  %320 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %321 = call i32 @create_filesystem_object(%struct.archive_write_disk* %320)
  store i32 %321, i32* %5, align 4
  br label %349

322:                                              ; preds = %291
  %323 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %324 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %327 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %326, i32 0, i32 7
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %325, %329
  br i1 %330, label %331, label %348

331:                                              ; preds = %322
  %332 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %333 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %332, i32 0, i32 2
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @TODO_MODE_FORCE, align 4
  %336 = and i32 %334, %335
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %348

338:                                              ; preds = %331
  %339 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %340 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @TODO_MODE, align 4
  %343 = and i32 %341, %342
  %344 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %345 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = or i32 %346, %343
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %338, %331, %322
  store i32 0, i32* %5, align 4
  br label %349

349:                                              ; preds = %348, %319
  br label %350

350:                                              ; preds = %349, %286
  br label %351

351:                                              ; preds = %350, %158
  br label %352

352:                                              ; preds = %351, %153
  %353 = load i32, i32* %5, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %371

355:                                              ; preds = %352
  %356 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %357 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %356, i32 0, i32 6
  %358 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %357, i32 0, i32 0
  %359 = load i32*, i32** %358, align 8
  %360 = icmp eq i32* %359, null
  br i1 %360, label %361, label %369

361:                                              ; preds = %355
  %362 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %363 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %362, i32 0, i32 6
  %364 = load i32, i32* %5, align 4
  %365 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %366 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %365, i32 0, i32 5
  %367 = load i32*, i32** %366, align 8
  %368 = call i32 (%struct.TYPE_6__*, i32, i8*, ...) @archive_set_error(%struct.TYPE_6__* %363, i32 %364, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32* %367)
  br label %369

369:                                              ; preds = %361, %355
  %370 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %370, i32* %2, align 4
  br label %375

371:                                              ; preds = %352
  %372 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %373 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %372, i32 0, i32 4
  store i32* null, i32** %373, align 8
  %374 = load i32, i32* %4, align 4
  store i32 %374, i32* %2, align 4
  br label %375

375:                                              ; preds = %371, %369, %313, %280, %252, %222, %194, %147, %131, %97, %53
  %376 = load i32, i32* %2, align 4
  ret i32 %376
}

declare dso_local i64 @S_ISDIR(i64) #1

declare dso_local i32 @clear_nochange_fflags(%struct.archive_write_disk*) #1

declare dso_local i64 @unlink(i32*) #1

declare dso_local i64 @rmdir(i32*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_6__*, i32, i8*, ...) #1

declare dso_local i32 @create_filesystem_object(%struct.archive_write_disk*) #1

declare dso_local i32 @create_parent_dir(%struct.archive_write_disk*, i32*) #1

declare dso_local i32* @archive_entry_hardlink(i32) #1

declare dso_local i32 @archive_entry_unset_size(i32) #1

declare dso_local i32 @la_stat(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @lstat(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @older(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
