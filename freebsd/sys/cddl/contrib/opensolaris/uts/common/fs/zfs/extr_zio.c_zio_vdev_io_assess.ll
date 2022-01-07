; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_vdev_io_assess.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_vdev_io_assess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i64, i64, i32, i64, i64, i32, i32 (i32)*, i32, i32, i32*, %struct.TYPE_14__*, i32, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { i32 (%struct.TYPE_16__*)* }
%struct.TYPE_17__ = type { %struct.TYPE_15__*, i8*, i8* }
%struct.TYPE_15__ = type { i64 }

@ZIO_CHILD_VDEV_BIT = common dso_local global i32 0, align 4
@ZIO_WAIT_DONE = common dso_local global i32 0, align 4
@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@SCL_ZIO = common dso_local global i32 0, align 4
@zio_injection_enabled = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ZIO_TYPE_FREE = common dso_local global i64 0, align 8
@ZIO_PRIORITY_NOW = common dso_local global i64 0, align 8
@bytes = common dso_local global i32 0, align 4
@success = common dso_local global i32 0, align 4
@unsupported = common dso_local global i32 0, align 4
@failed = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_RETRY = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_RETRY = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_QUEUE = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_BYPASS = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_CACHE = common dso_local global i32 0, align 4
@ZIO_FLAG_DONT_AGGREGATE = common dso_local global i32 0, align 4
@ZIO_STAGE_VDEV_IO_START = common dso_local global i32 0, align 4
@ZIO_TASKQ_ISSUE = common dso_local global i32 0, align 4
@zio_requeue_io_start_cut_in_line = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i8* null, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@ZIO_TYPE_IOCTL = common dso_local global i64 0, align 8
@DKIOCFLUSHWRITECACHE = common dso_local global i64 0, align 8
@ZIO_INTERLOCK_PIPELINE = common dso_local global i32 0, align 4
@ZIO_FLAG_DELEGATED = common dso_local global i32 0, align 4
@ZIO_CHILD_VDEV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (%struct.TYPE_16__*)* @zio_vdev_io_assess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @zio_vdev_io_assess(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %5 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 14
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %4, align 8
  %8 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %9 = load i32, i32* @ZIO_CHILD_VDEV_BIT, align 4
  %10 = load i32, i32* @ZIO_WAIT_DONE, align 4
  %11 = call i64 @zio_wait_for_children(%struct.TYPE_16__* %8, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %278

14:                                               ; preds = %1
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = icmp eq %struct.TYPE_17__* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %17
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 13
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SCL_ZIO, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %30 = call i32 @spa_config_exit(i32 %27, i32 %28, %struct.TYPE_16__* %29)
  br label %31

31:                                               ; preds = %24, %17, %14
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %32, i32 0, i32 11
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 12
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = call i32 %41(%struct.TYPE_16__* %42)
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 11
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %36, %31
  %47 = load i64, i64* @zio_injection_enabled, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %46
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = load i32, i32* @EIO, align 4
  %57 = call i32 @zio_handle_fault_injection(%struct.TYPE_16__* %55, i32 %56)
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %54, %49, %46
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ZIO_TYPE_FREE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %91

66:                                               ; preds = %60
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ZIO_PRIORITY_NOW, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %91

72:                                               ; preds = %66
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %87 [
    i32 0, label %76
    i32 128, label %84
  ]

76:                                               ; preds = %72
  %77 = load i32, i32* @bytes, align 4
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 10
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ZIO_TRIM_STAT_INCR(i32 %77, i32 %80)
  %82 = load i32, i32* @success, align 4
  %83 = call i32 @ZIO_TRIM_STAT_BUMP(i32 %82)
  br label %90

84:                                               ; preds = %72
  %85 = load i32, i32* @unsupported, align 4
  %86 = call i32 @ZIO_TRIM_STAT_BUMP(i32 %85)
  br label %90

87:                                               ; preds = %72
  %88 = load i32, i32* @failed, align 4
  %89 = call i32 @ZIO_TRIM_STAT_BUMP(i32 %88)
  br label %90

90:                                               ; preds = %87, %84, %76
  br label %91

91:                                               ; preds = %90, %66, %60
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %146

96:                                               ; preds = %91
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = icmp eq %struct.TYPE_17__* %97, null
  br i1 %98, label %99, label %146

99:                                               ; preds = %96
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ZIO_FLAG_DONT_RETRY, align 4
  %104 = load i32, i32* @ZIO_FLAG_IO_RETRY, align 4
  %105 = or i32 %103, %104
  %106 = and i32 %102, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %146, label %108

108:                                              ; preds = %99
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ZIO_FLAG_DONT_QUEUE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  %115 = xor i1 %114, true
  %116 = zext i1 %115 to i32
  %117 = call i32 @ASSERT(i32 %116)
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @ZIO_FLAG_IO_BYPASS, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @ASSERT(i32 %125)
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  store i32 0, i32* %128, align 4
  %129 = load i32, i32* @ZIO_FLAG_IO_RETRY, align 4
  %130 = load i32, i32* @ZIO_FLAG_DONT_CACHE, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @ZIO_FLAG_DONT_AGGREGATE, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load i32, i32* @ZIO_STAGE_VDEV_IO_START, align 4
  %139 = ashr i32 %138, 1
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %143 = load i32, i32* @ZIO_TASKQ_ISSUE, align 4
  %144 = load i32, i32* @zio_requeue_io_start_cut_in_line, align 4
  %145 = call i32 @zio_taskq_dispatch(%struct.TYPE_16__* %142, i32 %143, i32 %144)
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %278

146:                                              ; preds = %99, %96, %91
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %171

151:                                              ; preds = %146
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %153 = icmp ne %struct.TYPE_17__* %152, null
  br i1 %153, label %154, label %171

154:                                              ; preds = %151
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %171

161:                                              ; preds = %154
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %164 = call i32 @vdev_accessible(%struct.TYPE_17__* %162, %struct.TYPE_16__* %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = load i32, i32* @ENXIO, align 4
  %168 = call i32 @SET_ERROR(i32 %167)
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %166, %161, %154, %151, %146
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @ENXIO, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %197

177:                                              ; preds = %171
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %197

183:                                              ; preds = %177
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %185 = icmp ne %struct.TYPE_17__* %184, null
  br i1 %185, label %186, label %197

186:                                              ; preds = %183
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %197, label %193

193:                                              ; preds = %186
  %194 = load i8*, i8** @B_TRUE, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 2
  store i8* %194, i8** %196, align 8
  br label %197

197:                                              ; preds = %193, %186, %183, %177, %171
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @ENOTSUP, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %209, label %203

203:                                              ; preds = %197
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @ENOTTY, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %209, label %228

209:                                              ; preds = %203, %197
  %210 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %210, i32 0, i32 2
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @ZIO_TYPE_IOCTL, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %228

215:                                              ; preds = %209
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 5
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @DKIOCFLUSHWRITECACHE, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %228

221:                                              ; preds = %215
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %223 = icmp ne %struct.TYPE_17__* %222, null
  br i1 %223, label %224, label %228

224:                                              ; preds = %221
  %225 = load i8*, i8** @B_TRUE, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  store i8* %225, i8** %227, align 8
  br label %228

228:                                              ; preds = %224, %221, %215, %209, %203
  %229 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %237

233:                                              ; preds = %228
  %234 = load i32, i32* @ZIO_INTERLOCK_PIPELINE, align 4
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 9
  store i32 %234, i32* %236, align 8
  br label %237

237:                                              ; preds = %233, %228
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %239 = icmp ne %struct.TYPE_17__* %238, null
  br i1 %239, label %240, label %276

240:                                              ; preds = %237
  %241 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i32 0, i32 0
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %276

247:                                              ; preds = %240
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 8
  %250 = load i32 (i32)*, i32 (i32)** %249, align 8
  %251 = icmp ne i32 (i32)* %250, null
  br i1 %251, label %252, label %276

252:                                              ; preds = %247
  %253 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* @ZIO_FLAG_DELEGATED, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  %259 = xor i1 %258, true
  %260 = zext i1 %259 to i32
  %261 = call i32 @ASSERT(i32 %260)
  %262 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %263 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %262, i32 0, i32 6
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @ZIO_CHILD_VDEV, align 8
  %266 = icmp eq i64 %264, %265
  %267 = zext i1 %266 to i32
  %268 = call i32 @ASSERT(i32 %267)
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 8
  %271 = load i32 (i32)*, i32 (i32)** %270, align 8
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 7
  %274 = load i32, i32* %273, align 8
  %275 = call i32 %271(i32 %274)
  br label %276

276:                                              ; preds = %252, %247, %240, %237
  %277 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  store %struct.TYPE_16__* %277, %struct.TYPE_16__** %2, align 8
  br label %278

278:                                              ; preds = %276, %108, %13
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %279
}

declare dso_local i64 @zio_wait_for_children(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @spa_config_exit(i32, i32, %struct.TYPE_16__*) #1

declare dso_local i32 @zio_handle_fault_injection(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ZIO_TRIM_STAT_INCR(i32, i32) #1

declare dso_local i32 @ZIO_TRIM_STAT_BUMP(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zio_taskq_dispatch(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @vdev_accessible(%struct.TYPE_17__*, %struct.TYPE_16__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
