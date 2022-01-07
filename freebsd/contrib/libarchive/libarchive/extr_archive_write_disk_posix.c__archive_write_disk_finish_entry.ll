; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c__archive_write_disk_finish_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c__archive_write_disk_finish_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write_disk = type { i32, i64, i64, i32, i32, i64, %struct.TYPE_9__, i32*, i32, i32, i32, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WRITE_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"archive_write_finish_entry\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"Seek failed\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Write to restore size failed\00", align 1
@TODO_APPLEDOUBLE = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@TODO_OWNER = common dso_local global i32 0, align 4
@TODO_SUID = common dso_local global i32 0, align 4
@TODO_SGID = common dso_local global i32 0, align 4
@TODO_XATTR = common dso_local global i32 0, align 4
@TODO_MODE = common dso_local global i32 0, align 4
@TODO_FFLAGS = common dso_local global i32 0, align 4
@TODO_TIMES = common dso_local global i32 0, align 4
@TODO_MAC_METADATA = common dso_local global i32 0, align 4
@TODO_ACLS = common dso_local global i32 0, align 4
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@TODO_HFS_COMPRESSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*)* @_archive_write_disk_finish_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_write_disk_finish_entry(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_write_disk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %3, align 8
  %18 = load %struct.archive*, %struct.archive** %3, align 8
  %19 = bitcast %struct.archive* %18 to %struct.archive_write_disk*
  store %struct.archive_write_disk* %19, %struct.archive_write_disk** %4, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %22 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %21, i32 0, i32 6
  %23 = load i32, i32* @ARCHIVE_WRITE_DISK_MAGIC, align 4
  %24 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %25 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @archive_check_magic(%struct.TYPE_9__* %22, i32 %23, i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %29 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %36, i32* %2, align 4
  br label %387

37:                                               ; preds = %1
  %38 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %39 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %38, i32 0, i32 6
  %40 = call i32 @archive_clear_error(%struct.TYPE_9__* %39)
  %41 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %42 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %114

46:                                               ; preds = %37
  %47 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %48 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %113

52:                                               ; preds = %46
  %53 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %54 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %57 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %52
  br label %112

61:                                               ; preds = %52
  %62 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %63 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %62, i32 0, i32 12
  store i32* null, i32** %63, align 8
  %64 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %65 = call i32 @lazy_stat(%struct.archive_write_disk* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* @ARCHIVE_OK, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %387

70:                                               ; preds = %61
  %71 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %72 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %71, i32 0, i32 13
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %76 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %74, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %70
  store i8 0, i8* %6, align 1
  %80 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %81 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %84 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, 1
  %87 = load i32, i32* @SEEK_SET, align 4
  %88 = call i64 @lseek(i32 %82, i64 %86, i32 %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %79
  %91 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %92 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %91, i32 0, i32 6
  %93 = load i32, i32* @errno, align 4
  %94 = call i32 @archive_set_error(%struct.TYPE_9__* %92, i32 %93, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %95, i32* %2, align 4
  br label %387

96:                                               ; preds = %79
  %97 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %98 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i64 @write(i32 %99, i8* %6, i32 1)
  %101 = icmp slt i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %104 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %103, i32 0, i32 6
  %105 = load i32, i32* @errno, align 4
  %106 = call i32 @archive_set_error(%struct.TYPE_9__* %104, i32 %105, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %107, i32* %2, align 4
  br label %387

108:                                              ; preds = %96
  %109 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %110 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %109, i32 0, i32 12
  store i32* null, i32** %110, align 8
  br label %111

111:                                              ; preds = %108, %70
  br label %112

112:                                              ; preds = %111, %60
  br label %113

113:                                              ; preds = %112, %51
  br label %114

114:                                              ; preds = %113, %45
  %115 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %116 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @TODO_APPLEDOUBLE, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %138

121:                                              ; preds = %114
  %122 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %123 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %124 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @fixup_appledouble(%struct.archive_write_disk* %122, i32 %125)
  store i32 %126, i32* %7, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @ARCHIVE_EOF, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %121
  br label %363

131:                                              ; preds = %121
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* %7, align 4
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %135, %131
  br label %138

138:                                              ; preds = %137, %114
  %139 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %140 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @TODO_OWNER, align 4
  %143 = load i32, i32* @TODO_SUID, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @TODO_SGID, align 4
  %146 = or i32 %144, %145
  %147 = and i32 %141, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %163

149:                                              ; preds = %138
  %150 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %151 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %150, i32 0, i32 6
  %152 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %153 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %152, i32 0, i32 7
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @archive_entry_uname(i32* %154)
  %156 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %157 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %156, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @archive_entry_uid(i32* %158)
  %160 = call i32 @archive_write_disk_uid(%struct.TYPE_9__* %151, i32 %155, i32 %159)
  %161 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %162 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %161, i32 0, i32 10
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %149, %138
  %164 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %165 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @TODO_OWNER, align 4
  %168 = load i32, i32* @TODO_SGID, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @TODO_SUID, align 4
  %171 = or i32 %169, %170
  %172 = and i32 %166, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %188

174:                                              ; preds = %163
  %175 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %176 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %175, i32 0, i32 6
  %177 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %178 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %177, i32 0, i32 7
  %179 = load i32*, i32** %178, align 8
  %180 = call i32 @archive_entry_gname(i32* %179)
  %181 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %182 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %181, i32 0, i32 7
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @archive_entry_gid(i32* %183)
  %185 = call i32 @archive_write_disk_gid(%struct.TYPE_9__* %176, i32 %180, i32 %184)
  %186 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %187 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %186, i32 0, i32 9
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %174, %163
  %189 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %190 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @TODO_OWNER, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %188
  %196 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %197 = call i32 @set_ownership(%struct.archive_write_disk* %196)
  store i32 %197, i32* %8, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %5, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %195
  %202 = load i32, i32* %8, align 4
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %201, %195
  br label %204

204:                                              ; preds = %203, %188
  %205 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %206 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %225

209:                                              ; preds = %204
  %210 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %211 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @TODO_XATTR, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %209
  %217 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %218 = call i32 @set_xattrs(%struct.archive_write_disk* %217)
  store i32 %218, i32* %9, align 4
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* %5, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %216
  %223 = load i32, i32* %9, align 4
  store i32 %223, i32* %5, align 4
  br label %224

224:                                              ; preds = %222, %216
  br label %225

225:                                              ; preds = %224, %209, %204
  %226 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %227 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @TODO_MODE, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %244

232:                                              ; preds = %225
  %233 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %234 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %235 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %234, i32 0, i32 8
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @set_mode(%struct.archive_write_disk* %233, i32 %236)
  store i32 %237, i32* %10, align 4
  %238 = load i32, i32* %10, align 4
  %239 = load i32, i32* %5, align 4
  %240 = icmp slt i32 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %232
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %241, %232
  br label %244

244:                                              ; preds = %243, %225
  %245 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %246 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %245, i32 0, i32 5
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %249, label %265

249:                                              ; preds = %244
  %250 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %251 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %250, i32 0, i32 3
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @TODO_XATTR, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %265

256:                                              ; preds = %249
  %257 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %258 = call i32 @set_xattrs(%struct.archive_write_disk* %257)
  store i32 %258, i32* %11, align 4
  %259 = load i32, i32* %11, align 4
  %260 = load i32, i32* %5, align 4
  %261 = icmp slt i32 %259, %260
  br i1 %261, label %262, label %264

262:                                              ; preds = %256
  %263 = load i32, i32* %11, align 4
  store i32 %263, i32* %5, align 4
  br label %264

264:                                              ; preds = %262, %256
  br label %265

265:                                              ; preds = %264, %249, %244
  %266 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %267 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = load i32, i32* @TODO_FFLAGS, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %265
  %273 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %274 = call i32 @set_fflags(%struct.archive_write_disk* %273)
  store i32 %274, i32* %12, align 4
  %275 = load i32, i32* %12, align 4
  %276 = load i32, i32* %5, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %272
  %279 = load i32, i32* %12, align 4
  store i32 %279, i32* %5, align 4
  br label %280

280:                                              ; preds = %278, %272
  br label %281

281:                                              ; preds = %280, %265
  %282 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %283 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @TODO_TIMES, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %297

288:                                              ; preds = %281
  %289 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %290 = call i32 @set_times_from_entry(%struct.archive_write_disk* %289)
  store i32 %290, i32* %13, align 4
  %291 = load i32, i32* %13, align 4
  %292 = load i32, i32* %5, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %296

294:                                              ; preds = %288
  %295 = load i32, i32* %13, align 4
  store i32 %295, i32* %5, align 4
  br label %296

296:                                              ; preds = %294, %288
  br label %297

297:                                              ; preds = %296, %281
  %298 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %299 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* @TODO_MAC_METADATA, align 4
  %302 = and i32 %300, %301
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %330

304:                                              ; preds = %297
  %305 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %306 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %305, i32 0, i32 7
  %307 = load i32*, i32** %306, align 8
  %308 = call i8* @archive_entry_mac_metadata(i32* %307, i64* %15)
  store i8* %308, i8** %14, align 8
  %309 = load i8*, i8** %14, align 8
  %310 = icmp ne i8* %309, null
  br i1 %310, label %311, label %329

311:                                              ; preds = %304
  %312 = load i64, i64* %15, align 8
  %313 = icmp ugt i64 %312, 0
  br i1 %313, label %314, label %329

314:                                              ; preds = %311
  %315 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %316 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %317 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %316, i32 0, i32 7
  %318 = load i32*, i32** %317, align 8
  %319 = call i32 @archive_entry_pathname(i32* %318)
  %320 = load i8*, i8** %14, align 8
  %321 = load i64, i64* %15, align 8
  %322 = call i32 @set_mac_metadata(%struct.archive_write_disk* %315, i32 %319, i8* %320, i64 %321)
  store i32 %322, i32* %16, align 4
  %323 = load i32, i32* %16, align 4
  %324 = load i32, i32* %5, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %328

326:                                              ; preds = %314
  %327 = load i32, i32* %16, align 4
  store i32 %327, i32* %5, align 4
  br label %328

328:                                              ; preds = %326, %314
  br label %329

329:                                              ; preds = %328, %311, %304
  br label %330

330:                                              ; preds = %329, %297
  %331 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %332 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %331, i32 0, i32 3
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @TODO_ACLS, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %362

337:                                              ; preds = %330
  %338 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %339 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %338, i32 0, i32 6
  %340 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %341 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %344 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %343, i32 0, i32 7
  %345 = load i32*, i32** %344, align 8
  %346 = call i32 @archive_entry_pathname(i32* %345)
  %347 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %348 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %347, i32 0, i32 7
  %349 = load i32*, i32** %348, align 8
  %350 = call i32 @archive_entry_acl(i32* %349)
  %351 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %352 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %351, i32 0, i32 7
  %353 = load i32*, i32** %352, align 8
  %354 = call i32 @archive_entry_mode(i32* %353)
  %355 = call i32 @archive_write_disk_set_acls(%struct.TYPE_9__* %339, i32 %342, i32 %346, i32 %350, i32 %354)
  store i32 %355, i32* %17, align 4
  %356 = load i32, i32* %17, align 4
  %357 = load i32, i32* %5, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %361

359:                                              ; preds = %337
  %360 = load i32, i32* %17, align 4
  store i32 %360, i32* %5, align 4
  br label %361

361:                                              ; preds = %359, %337
  br label %362

362:                                              ; preds = %361, %330
  br label %363

363:                                              ; preds = %362, %130
  %364 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %365 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = icmp sge i32 %366, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %363
  %369 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %370 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = call i32 @close(i32 %371)
  %373 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %374 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %373, i32 0, i32 0
  store i32 -1, i32* %374, align 8
  br label %375

375:                                              ; preds = %368, %363
  %376 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %377 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %376, i32 0, i32 7
  %378 = load i32*, i32** %377, align 8
  %379 = call i32 @archive_entry_free(i32* %378)
  %380 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %381 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %380, i32 0, i32 7
  store i32* null, i32** %381, align 8
  %382 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %383 = load %struct.archive_write_disk*, %struct.archive_write_disk** %4, align 8
  %384 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %383, i32 0, i32 6
  %385 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %384, i32 0, i32 0
  store i32 %382, i32* %385, align 8
  %386 = load i32, i32* %5, align 4
  store i32 %386, i32* %2, align 4
  br label %387

387:                                              ; preds = %375, %102, %90, %68, %35
  %388 = load i32, i32* %2, align 4
  ret i32 %388
}

declare dso_local i32 @archive_check_magic(%struct.TYPE_9__*, i32, i32, i8*) #1

declare dso_local i32 @archive_clear_error(%struct.TYPE_9__*) #1

declare dso_local i32 @lazy_stat(%struct.archive_write_disk*) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_9__*, i32, i8*) #1

declare dso_local i64 @write(i32, i8*, i32) #1

declare dso_local i32 @fixup_appledouble(%struct.archive_write_disk*, i32) #1

declare dso_local i32 @archive_write_disk_uid(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @archive_entry_uname(i32*) #1

declare dso_local i32 @archive_entry_uid(i32*) #1

declare dso_local i32 @archive_write_disk_gid(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @archive_entry_gname(i32*) #1

declare dso_local i32 @archive_entry_gid(i32*) #1

declare dso_local i32 @set_ownership(%struct.archive_write_disk*) #1

declare dso_local i32 @set_xattrs(%struct.archive_write_disk*) #1

declare dso_local i32 @set_mode(%struct.archive_write_disk*, i32) #1

declare dso_local i32 @set_fflags(%struct.archive_write_disk*) #1

declare dso_local i32 @set_times_from_entry(%struct.archive_write_disk*) #1

declare dso_local i8* @archive_entry_mac_metadata(i32*, i64*) #1

declare dso_local i32 @set_mac_metadata(%struct.archive_write_disk*, i32, i8*, i64) #1

declare dso_local i32 @archive_entry_pathname(i32*) #1

declare dso_local i32 @archive_write_disk_set_acls(%struct.TYPE_9__*, i32, i32, i32, i32) #1

declare dso_local i32 @archive_entry_acl(i32*) #1

declare dso_local i32 @archive_entry_mode(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @archive_entry_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
