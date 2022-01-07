; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/cloudabi/extr_cloudabi_file.c_cloudabi_sys_file_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32*, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.cloudabi_sys_file_open_args = type { i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.filecaps = type { i32, i32 }
%struct.nameidata = type { %struct.vnode*, i32 }
%struct.vnode = type { i32 }
%struct.file = type { i32, i32, i32*, %struct.vnode* }

@CAP_LOOKUP = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FD_READ = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_READDIR = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_MEM_MAP_EXEC = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FD_DATASYNC = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FD_WRITE = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_ALLOCATE = common dso_local global i32 0, align 4
@CLOUDABI_RIGHT_FILE_STAT_FPUT_SIZE = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@CLOUDABI_O_CREAT = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@CAP_CREATE = common dso_local global i32 0, align 4
@CLOUDABI_O_DIRECTORY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@CLOUDABI_O_EXCL = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@CLOUDABI_O_TRUNC = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@CAP_FTRUNCATE = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_APPEND = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_NONBLOCK = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_SYNC = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_DSYNC = common dso_local global i32 0, align 4
@CLOUDABI_FDFLAG_RSYNC = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@CAP_FSYNC = common dso_local global i32 0, align 4
@CLOUDABI_LOOKUP_SYMLINK_FOLLOW = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@CAP_SEEK = common dso_local global i32 0, align 4
@FMASK = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@badfileops = common dso_local global i32 0, align 4
@EMLINK = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@NDF_ONLY_PNBUF = common dso_local global i32 0, align 4
@FHASLOCK = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i32 0, align 4
@vnops = common dso_local global i32 0, align 4
@CAP_FCNTL_SETFL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cloudabi_sys_file_open(%struct.thread* %0, %struct.cloudabi_sys_file_open_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.cloudabi_sys_file_open_args*, align 8
  %6 = alloca %struct.TYPE_9__, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.filecaps, align 4
  %9 = alloca %struct.nameidata, align 8
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.cloudabi_sys_file_open_args* %1, %struct.cloudabi_sys_file_open_args** %5, align 8
  %18 = bitcast %struct.filecaps* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %5, align 8
  %20 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @copyin(i32 %21, %struct.TYPE_9__* %6, i32 12)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %3, align 4
  br label %351

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %29, %31
  %33 = call i32 @cloudabi_convert_rights(i32 %32, i32* %7)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %13, align 4
  store i32 %37, i32* %3, align 4
  br label %351

38:                                               ; preds = %27
  %39 = load i32, i32* @CAP_LOOKUP, align 4
  %40 = call i32 @cap_rights_set(i32* %7, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CLOUDABI_RIGHT_FD_READ, align 4
  %44 = load i32, i32* @CLOUDABI_RIGHT_FILE_READDIR, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CLOUDABI_RIGHT_MEM_MAP_EXEC, align 4
  %47 = or i32 %45, %46
  %48 = and i32 %42, %47
  %49 = icmp ne i32 %48, 0
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %16, align 4
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @CLOUDABI_RIGHT_FD_DATASYNC, align 4
  %54 = load i32, i32* @CLOUDABI_RIGHT_FD_WRITE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @CLOUDABI_RIGHT_FILE_ALLOCATE, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @CLOUDABI_RIGHT_FILE_STAT_FPUT_SIZE, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %52, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %17, align 4
  %63 = load i32, i32* %17, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %38
  %66 = load i32, i32* %16, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* @FREAD, align 4
  %70 = load i32, i32* @FWRITE, align 4
  %71 = or i32 %69, %70
  br label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @FWRITE, align 4
  br label %74

74:                                               ; preds = %72, %68
  %75 = phi i32 [ %71, %68 ], [ %73, %72 ]
  br label %78

76:                                               ; preds = %38
  %77 = load i32, i32* @FREAD, align 4
  br label %78

78:                                               ; preds = %76, %74
  %79 = phi i32 [ %75, %74 ], [ %77, %76 ]
  store i32 %79, i32* %15, align 4
  %80 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %5, align 8
  %81 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @CLOUDABI_O_CREAT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %78
  %87 = load i32, i32* @O_CREAT, align 4
  %88 = load i32, i32* %15, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* @CAP_CREATE, align 4
  %91 = call i32 @cap_rights_set(i32* %7, i32 %90)
  br label %92

92:                                               ; preds = %86, %78
  %93 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %5, align 8
  %94 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @CLOUDABI_O_DIRECTORY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* @O_DIRECTORY, align 4
  %101 = load i32, i32* %15, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %15, align 4
  br label %103

103:                                              ; preds = %99, %92
  %104 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %5, align 8
  %105 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CLOUDABI_O_EXCL, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %103
  %111 = load i32, i32* @O_EXCL, align 4
  %112 = load i32, i32* %15, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %110, %103
  %115 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %5, align 8
  %116 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @CLOUDABI_O_TRUNC, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load i32, i32* @O_TRUNC, align 4
  %123 = load i32, i32* %15, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %15, align 4
  %125 = load i32, i32* @CAP_FTRUNCATE, align 4
  %126 = call i32 @cap_rights_set(i32* %7, i32 %125)
  br label %127

127:                                              ; preds = %121, %114
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @CLOUDABI_FDFLAG_APPEND, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  %134 = load i32, i32* @O_APPEND, align 4
  %135 = load i32, i32* %15, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %15, align 4
  br label %137

137:                                              ; preds = %133, %127
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @CLOUDABI_FDFLAG_NONBLOCK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %137
  %144 = load i32, i32* @O_NONBLOCK, align 4
  %145 = load i32, i32* %15, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %143, %137
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CLOUDABI_FDFLAG_SYNC, align 4
  %151 = load i32, i32* @CLOUDABI_FDFLAG_DSYNC, align 4
  %152 = or i32 %150, %151
  %153 = load i32, i32* @CLOUDABI_FDFLAG_RSYNC, align 4
  %154 = or i32 %152, %153
  %155 = and i32 %149, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %147
  %158 = load i32, i32* @O_SYNC, align 4
  %159 = load i32, i32* %15, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* @CAP_FSYNC, align 4
  %162 = call i32 @cap_rights_set(i32* %7, i32 %161)
  br label %163

163:                                              ; preds = %157, %147
  %164 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %5, align 8
  %165 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @CLOUDABI_LOOKUP_SYMLINK_FOLLOW, align 4
  %169 = and i32 %167, %168
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %163
  %172 = load i32, i32* @O_NOFOLLOW, align 4
  %173 = load i32, i32* %15, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %15, align 4
  br label %175

175:                                              ; preds = %171, %163
  %176 = load i32, i32* %17, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %188

178:                                              ; preds = %175
  %179 = load i32, i32* %15, align 4
  %180 = load i32, i32* @O_APPEND, align 4
  %181 = load i32, i32* @O_TRUNC, align 4
  %182 = or i32 %180, %181
  %183 = and i32 %179, %182
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = load i32, i32* @CAP_SEEK, align 4
  %187 = call i32 @cap_rights_set(i32* %7, i32 %186)
  br label %188

188:                                              ; preds = %185, %178, %175
  %189 = load %struct.thread*, %struct.thread** %4, align 8
  %190 = call i32 @falloc_noinstall(%struct.thread* %189, %struct.file** %10)
  store i32 %190, i32* %13, align 4
  %191 = load i32, i32* %13, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = load i32, i32* %13, align 4
  store i32 %194, i32* %3, align 4
  br label %351

195:                                              ; preds = %188
  %196 = load i32, i32* %15, align 4
  %197 = load i32, i32* @FMASK, align 4
  %198 = and i32 %196, %197
  %199 = load %struct.file*, %struct.file** %10, align 8
  %200 = getelementptr inbounds %struct.file, %struct.file* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  %201 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %5, align 8
  %202 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %5, align 8
  %205 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @copyin_path(i32 %203, i32 %206, i8** %12)
  store i32 %207, i32* %13, align 4
  %208 = load i32, i32* %13, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %195
  %211 = load %struct.file*, %struct.file** %10, align 8
  %212 = load %struct.thread*, %struct.thread** %4, align 8
  %213 = call i32 @fdrop(%struct.file* %211, %struct.thread* %212)
  %214 = load i32, i32* %13, align 4
  store i32 %214, i32* %3, align 4
  br label %351

215:                                              ; preds = %195
  %216 = load i32, i32* @LOOKUP, align 4
  %217 = load i32, i32* @FOLLOW, align 4
  %218 = load i32, i32* @UIO_SYSSPACE, align 4
  %219 = load i8*, i8** %12, align 8
  %220 = load %struct.cloudabi_sys_file_open_args*, %struct.cloudabi_sys_file_open_args** %5, align 8
  %221 = getelementptr inbounds %struct.cloudabi_sys_file_open_args, %struct.cloudabi_sys_file_open_args* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.thread*, %struct.thread** %4, align 8
  %225 = call i32 @NDINIT_ATRIGHTS(%struct.nameidata* %9, i32 %216, i32 %217, i32 %218, i8* %219, i32 %223, i32* %7, %struct.thread* %224)
  %226 = load %struct.thread*, %struct.thread** %4, align 8
  %227 = getelementptr inbounds %struct.thread, %struct.thread* %226, i32 0, i32 2
  %228 = load %struct.TYPE_8__*, %struct.TYPE_8__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = xor i32 %232, -1
  %234 = and i32 511, %233
  %235 = load %struct.file*, %struct.file** %10, align 8
  %236 = call i32 @vn_open(%struct.nameidata* %9, i32* %15, i32 %234, %struct.file* %235)
  store i32 %236, i32* %13, align 4
  %237 = load i8*, i8** %12, align 8
  %238 = call i32 @cloudabi_freestr(i8* %237)
  %239 = load i32, i32* %13, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %262

241:                                              ; preds = %215
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* @ENXIO, align 4
  %244 = icmp eq i32 %242, %243
  br i1 %244, label %245, label %251

245:                                              ; preds = %241
  %246 = load %struct.file*, %struct.file** %10, align 8
  %247 = getelementptr inbounds %struct.file, %struct.file* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = icmp ne i32* %248, @badfileops
  br i1 %249, label %250, label %251

250:                                              ; preds = %245
  br label %314

251:                                              ; preds = %245, %241
  %252 = load i32, i32* %13, align 4
  %253 = load i32, i32* @EMLINK, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %257

255:                                              ; preds = %251
  %256 = load i32, i32* @ELOOP, align 4
  store i32 %256, i32* %13, align 4
  br label %257

257:                                              ; preds = %255, %251
  %258 = load %struct.file*, %struct.file** %10, align 8
  %259 = load %struct.thread*, %struct.thread** %4, align 8
  %260 = call i32 @fdrop(%struct.file* %258, %struct.thread* %259)
  %261 = load i32, i32* %13, align 4
  store i32 %261, i32* %3, align 4
  br label %351

262:                                              ; preds = %215
  %263 = load i32, i32* @NDF_ONLY_PNBUF, align 4
  %264 = call i32 @NDFREE(%struct.nameidata* %9, i32 %263)
  %265 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 1
  %266 = call i32 @filecaps_free(i32* %265)
  %267 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %268 = load %struct.vnode*, %struct.vnode** %267, align 8
  store %struct.vnode* %268, %struct.vnode** %11, align 8
  %269 = load %struct.file*, %struct.file** %10, align 8
  %270 = getelementptr inbounds %struct.file, %struct.file* %269, i32 0, i32 3
  store %struct.vnode* %268, %struct.vnode** %270, align 8
  %271 = load %struct.file*, %struct.file** %10, align 8
  %272 = getelementptr inbounds %struct.file, %struct.file* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = icmp eq i32* %273, @badfileops
  br i1 %274, label %275, label %291

275:                                              ; preds = %262
  %276 = load %struct.file*, %struct.file** %10, align 8
  %277 = getelementptr inbounds %struct.file, %struct.file* %276, i32 0, i32 1
  store i32 1, i32* %277, align 4
  %278 = load %struct.file*, %struct.file** %10, align 8
  %279 = load i32, i32* %15, align 4
  %280 = load i32, i32* @FMASK, align 4
  %281 = and i32 %279, %280
  %282 = load %struct.file*, %struct.file** %10, align 8
  %283 = getelementptr inbounds %struct.file, %struct.file* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @FHASLOCK, align 4
  %286 = and i32 %284, %285
  %287 = or i32 %281, %286
  %288 = load i32, i32* @DTYPE_VNODE, align 4
  %289 = load %struct.vnode*, %struct.vnode** %11, align 8
  %290 = call i32 @finit(%struct.file* %278, i32 %287, i32 %288, %struct.vnode* %289, i32* @vnops)
  br label %291

291:                                              ; preds = %275, %262
  %292 = load %struct.vnode*, %struct.vnode** %11, align 8
  %293 = call i32 @VOP_UNLOCK(%struct.vnode* %292, i32 0)
  %294 = load i32, i32* %15, align 4
  %295 = load i32, i32* @O_TRUNC, align 4
  %296 = and i32 %294, %295
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %313

298:                                              ; preds = %291
  %299 = load %struct.file*, %struct.file** %10, align 8
  %300 = load %struct.thread*, %struct.thread** %4, align 8
  %301 = getelementptr inbounds %struct.thread, %struct.thread* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.thread*, %struct.thread** %4, align 8
  %304 = call i32 @fo_truncate(%struct.file* %299, i32 0, i32 %302, %struct.thread* %303)
  store i32 %304, i32* %13, align 4
  %305 = load i32, i32* %13, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %312

307:                                              ; preds = %298
  %308 = load %struct.file*, %struct.file** %10, align 8
  %309 = load %struct.thread*, %struct.thread** %4, align 8
  %310 = call i32 @fdrop(%struct.file* %308, %struct.thread* %309)
  %311 = load i32, i32* %13, align 4
  store i32 %311, i32* %3, align 4
  br label %351

312:                                              ; preds = %298
  br label %313

313:                                              ; preds = %312, %291
  br label %314

314:                                              ; preds = %313, %250
  %315 = load %struct.file*, %struct.file** %10, align 8
  %316 = call i32 @cloudabi_convert_filetype(%struct.file* %315)
  %317 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %319 = call i32 @cloudabi_remove_conflicting_rights(i32 %316, i32* %317, i32* %318)
  %320 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %321, %323
  %325 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %8, i32 0, i32 1
  %326 = call i32 @cloudabi_convert_rights(i32 %324, i32* %325)
  %327 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %8, i32 0, i32 1
  %328 = call i64 @cap_rights_is_set(i32* %327)
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %314
  %331 = load i32, i32* @CAP_FCNTL_SETFL, align 4
  %332 = getelementptr inbounds %struct.filecaps, %struct.filecaps* %8, i32 0, i32 0
  store i32 %331, i32* %332, align 4
  br label %333

333:                                              ; preds = %330, %314
  %334 = load %struct.thread*, %struct.thread** %4, align 8
  %335 = load %struct.file*, %struct.file** %10, align 8
  %336 = load i32, i32* %15, align 4
  %337 = call i32 @finstall(%struct.thread* %334, %struct.file* %335, i32* %14, i32 %336, %struct.filecaps* %8)
  store i32 %337, i32* %13, align 4
  %338 = load %struct.file*, %struct.file** %10, align 8
  %339 = load %struct.thread*, %struct.thread** %4, align 8
  %340 = call i32 @fdrop(%struct.file* %338, %struct.thread* %339)
  %341 = load i32, i32* %13, align 4
  %342 = icmp ne i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %333
  %344 = load i32, i32* %13, align 4
  store i32 %344, i32* %3, align 4
  br label %351

345:                                              ; preds = %333
  %346 = load i32, i32* %14, align 4
  %347 = load %struct.thread*, %struct.thread** %4, align 8
  %348 = getelementptr inbounds %struct.thread, %struct.thread* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 0
  store i32 %346, i32* %350, align 4
  store i32 0, i32* %3, align 4
  br label %351

351:                                              ; preds = %345, %343, %307, %257, %210, %193, %36, %25
  %352 = load i32, i32* %3, align 4
  ret i32 %352
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @copyin(i32, %struct.TYPE_9__*, i32) #2

declare dso_local i32 @cloudabi_convert_rights(i32, i32*) #2

declare dso_local i32 @cap_rights_set(i32*, i32) #2

declare dso_local i32 @falloc_noinstall(%struct.thread*, %struct.file**) #2

declare dso_local i32 @copyin_path(i32, i32, i8**) #2

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #2

declare dso_local i32 @NDINIT_ATRIGHTS(%struct.nameidata*, i32, i32, i32, i8*, i32, i32*, %struct.thread*) #2

declare dso_local i32 @vn_open(%struct.nameidata*, i32*, i32, %struct.file*) #2

declare dso_local i32 @cloudabi_freestr(i8*) #2

declare dso_local i32 @NDFREE(%struct.nameidata*, i32) #2

declare dso_local i32 @filecaps_free(i32*) #2

declare dso_local i32 @finit(%struct.file*, i32, i32, %struct.vnode*, i32*) #2

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #2

declare dso_local i32 @fo_truncate(%struct.file*, i32, i32, %struct.thread*) #2

declare dso_local i32 @cloudabi_remove_conflicting_rights(i32, i32*, i32*) #2

declare dso_local i32 @cloudabi_convert_filetype(%struct.file*) #2

declare dso_local i64 @cap_rights_is_set(i32*) #2

declare dso_local i32 @finstall(%struct.thread*, %struct.file*, i32*, i32, %struct.filecaps*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
