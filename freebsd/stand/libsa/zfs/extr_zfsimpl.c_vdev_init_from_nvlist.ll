; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_vdev_init_from_nvlist.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/zfs/extr_zfsimpl.c_vdev_init_from_nvlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i8*, i32, i32, i32, i32, %struct.TYPE_8__*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, i8*, i8* }

@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@DATA_TYPE_UINT64 = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@DATA_TYPE_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ZFS: can't find vdev details\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@VDEV_TYPE_MIRROR = common dso_local global i8* null, align 8
@VDEV_TYPE_DISK = common dso_local global i8* null, align 8
@VDEV_TYPE_RAIDZ = common dso_local global i8* null, align 8
@VDEV_TYPE_INDIRECT = common dso_local global i8* null, align 8
@VDEV_TYPE_REPLACING = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [71 x i8] c"ZFS: can only boot from disk, mirror, raidz1, raidz2 and raidz3 vdevs\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_OFFLINE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_REMOVED = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_FAULTED = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DEGRADED = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_NOT_PRESENT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@vdev_mirror_read = common dso_local global i32 0, align 4
@vdev_raidz_read = common dso_local global i32 0, align 4
@vdev_replacing_read = common dso_local global i32 0, align 4
@vdev_indirect_read = common dso_local global i32 0, align 4
@VDEV_STATE_HEALTHY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_INDIRECT_OBJECT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_INDIRECT_BIRTHS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PREV_INDIRECT_VDEV = common dso_local global i32 0, align 4
@vdev_disk_read = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ASHIFT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ASIZE = common dso_local global i32 0, align 4
@VDEV_LABEL_START_SIZE = common dso_local global i32 0, align 4
@VDEV_LABEL_END_SIZE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_NPARITY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"raidz\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s%d-%jd\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%s-%jd\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@VDEV_STATE_OFFLINE = common dso_local global i32 0, align 4
@VDEV_STATE_REMOVED = common dso_local global i32 0, align 4
@VDEV_STATE_FAULTED = common dso_local global i32 0, align 4
@VDEV_STATE_DEGRADED = common dso_local global i32 0, align 4
@VDEV_STATE_CANT_OPEN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@DATA_TYPE_NVLIST_ARRAY = common dso_local global i32 0, align 4
@v_childlink = common dso_local global i32 0, align 4
@VDEV_TYPE_FILE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_8__*, %struct.TYPE_8__**, i32)* @vdev_init_from_nvlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_init_from_nvlist(i8* %0, %struct.TYPE_8__* %1, %struct.TYPE_8__** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_8__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.TYPE_8__*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_9__*, align 8
  %31 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %8, align 8
  store i32 %3, i32* %9, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %34 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %35 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %32, i32 %33, i32 %34, i32* null, i32* %11)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %49, label %37

37:                                               ; preds = %4
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* @ZPOOL_CONFIG_ID, align 4
  %40 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %41 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %38, i32 %39, i32 %40, i32* null, i32* %12)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %46 = load i32, i32* @DATA_TYPE_STRING, align 4
  %47 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %44, i32 %45, i32 %46, i32* null, i8** %16)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43, %37, %4
  %50 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @ENOENT, align 4
  store i32 %51, i32* %5, align 4
  br label %386

52:                                               ; preds = %43
  %53 = load i8*, i8** %16, align 8
  %54 = load i8*, i8** @VDEV_TYPE_MIRROR, align 8
  %55 = call i64 @strcmp(i8* %53, i8* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %52
  %58 = load i8*, i8** %16, align 8
  %59 = load i8*, i8** @VDEV_TYPE_DISK, align 8
  %60 = call i64 @strcmp(i8* %58, i8* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %80

62:                                               ; preds = %57
  %63 = load i8*, i8** %16, align 8
  %64 = load i8*, i8** @VDEV_TYPE_RAIDZ, align 8
  %65 = call i64 @strcmp(i8* %63, i8* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load i8*, i8** %16, align 8
  %69 = load i8*, i8** @VDEV_TYPE_INDIRECT, align 8
  %70 = call i64 @strcmp(i8* %68, i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i8*, i8** %16, align 8
  %74 = load i8*, i8** @VDEV_TYPE_REPLACING, align 8
  %75 = call i64 @strcmp(i8* %73, i8* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @EIO, align 4
  store i32 %79, i32* %5, align 4
  br label %386

80:                                               ; preds = %72, %67, %62, %57, %52
  store i32 0, i32* %28, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %27, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %29, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* @ZPOOL_CONFIG_OFFLINE, align 4
  %83 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %84 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %81, i32 %82, i32 %83, i32* null, i32* %24)
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* @ZPOOL_CONFIG_REMOVED, align 4
  %87 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %88 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %85, i32 %86, i32 %87, i32* null, i32* %27)
  %89 = load i8*, i8** %6, align 8
  %90 = load i32, i32* @ZPOOL_CONFIG_FAULTED, align 4
  %91 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %92 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %89, i32 %90, i32 %91, i32* null, i32* %25)
  %93 = load i8*, i8** %6, align 8
  %94 = load i32, i32* @ZPOOL_CONFIG_DEGRADED, align 4
  %95 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %96 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %93, i32 %94, i32 %95, i32* null, i32* %26)
  %97 = load i8*, i8** %6, align 8
  %98 = load i32, i32* @ZPOOL_CONFIG_NOT_PRESENT, align 4
  %99 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %100 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %97, i32 %98, i32 %99, i32* null, i32* %28)
  %101 = load i8*, i8** %6, align 8
  %102 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %103 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %104 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %101, i32 %102, i32 %103, i32* null, i32* %29)
  %105 = load i32, i32* %11, align 4
  %106 = call %struct.TYPE_8__* @vdev_find(i32 %105)
  store %struct.TYPE_8__* %106, %struct.TYPE_8__** %18, align 8
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %108 = icmp ne %struct.TYPE_8__* %107, null
  br i1 %108, label %289, label %109

109:                                              ; preds = %80
  store i32 1, i32* %23, align 4
  %110 = load i8*, i8** %16, align 8
  %111 = load i8*, i8** @VDEV_TYPE_MIRROR, align 8
  %112 = call i64 @strcmp(i8* %110, i8* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %109
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* @vdev_mirror_read, align 4
  %117 = call %struct.TYPE_8__* @vdev_create(i32 %115, i32 %116)
  store %struct.TYPE_8__* %117, %struct.TYPE_8__** %18, align 8
  br label %175

118:                                              ; preds = %109
  %119 = load i8*, i8** %16, align 8
  %120 = load i8*, i8** @VDEV_TYPE_RAIDZ, align 8
  %121 = call i64 @strcmp(i8* %119, i8* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* %11, align 4
  %125 = load i32, i32* @vdev_raidz_read, align 4
  %126 = call %struct.TYPE_8__* @vdev_create(i32 %124, i32 %125)
  store %struct.TYPE_8__* %126, %struct.TYPE_8__** %18, align 8
  br label %174

127:                                              ; preds = %118
  %128 = load i8*, i8** %16, align 8
  %129 = load i8*, i8** @VDEV_TYPE_REPLACING, align 8
  %130 = call i64 @strcmp(i8* %128, i8* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %127
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @vdev_replacing_read, align 4
  %135 = call %struct.TYPE_8__* @vdev_create(i32 %133, i32 %134)
  store %struct.TYPE_8__* %135, %struct.TYPE_8__** %18, align 8
  br label %173

136:                                              ; preds = %127
  %137 = load i8*, i8** %16, align 8
  %138 = load i8*, i8** @VDEV_TYPE_INDIRECT, align 8
  %139 = call i64 @strcmp(i8* %137, i8* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %168, label %141

141:                                              ; preds = %136
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @vdev_indirect_read, align 4
  %144 = call %struct.TYPE_8__* @vdev_create(i32 %142, i32 %143)
  store %struct.TYPE_8__* %144, %struct.TYPE_8__** %18, align 8
  %145 = load i32, i32* @VDEV_STATE_HEALTHY, align 4
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 8
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 10
  store %struct.TYPE_9__* %149, %struct.TYPE_9__** %30, align 8
  %150 = load i8*, i8** %6, align 8
  %151 = load i32, i32* @ZPOOL_CONFIG_INDIRECT_OBJECT, align 4
  %152 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 0
  %155 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %150, i32 %151, i32 %152, i32* null, i8** %154)
  %156 = load i8*, i8** %6, align 8
  %157 = load i32, i32* @ZPOOL_CONFIG_INDIRECT_BIRTHS, align 4
  %158 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %156, i32 %157, i32 %158, i32* null, i8** %160)
  %162 = load i8*, i8** %6, align 8
  %163 = load i32, i32* @ZPOOL_CONFIG_PREV_INDIRECT_VDEV, align 4
  %164 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %165 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 2
  %167 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %162, i32 %163, i32 %164, i32* null, i8** %166)
  br label %172

168:                                              ; preds = %136
  %169 = load i32, i32* %11, align 4
  %170 = load i32, i32* @vdev_disk_read, align 4
  %171 = call %struct.TYPE_8__* @vdev_create(i32 %169, i32 %170)
  store %struct.TYPE_8__* %171, %struct.TYPE_8__** %18, align 8
  br label %172

172:                                              ; preds = %168, %141
  br label %173

173:                                              ; preds = %172, %132
  br label %174

174:                                              ; preds = %173, %123
  br label %175

175:                                              ; preds = %174, %114
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 8
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %180 = icmp ne %struct.TYPE_8__* %179, null
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  br label %185

183:                                              ; preds = %175
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi %struct.TYPE_8__* [ %182, %181 ], [ %184, %183 ]
  %187 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 9
  store %struct.TYPE_8__* %186, %struct.TYPE_8__** %188, align 8
  %189 = load i8*, i8** %6, align 8
  %190 = load i32, i32* @ZPOOL_CONFIG_ASHIFT, align 4
  %191 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %192 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %189, i32 %190, i32 %191, i32* null, i32* %13)
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %185
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  br label %201

198:                                              ; preds = %185
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 1
  store i32 0, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %194
  %202 = load i8*, i8** %6, align 8
  %203 = load i32, i32* @ZPOOL_CONFIG_ASIZE, align 4
  %204 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %205 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %202, i32 %203, i32 %204, i32* null, i32* %14)
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %215

207:                                              ; preds = %201
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* @VDEV_LABEL_START_SIZE, align 4
  %210 = add nsw i32 %208, %209
  %211 = load i32, i32* @VDEV_LABEL_END_SIZE, align 4
  %212 = add nsw i32 %210, %211
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  br label %215

215:                                              ; preds = %207, %201
  %216 = load i8*, i8** %6, align 8
  %217 = load i32, i32* @ZPOOL_CONFIG_NPARITY, align 4
  %218 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %219 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %216, i32 %217, i32 %218, i32* null, i32* %15)
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %215
  %222 = load i32, i32* %15, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 3
  store i32 %222, i32* %224, align 4
  br label %228

225:                                              ; preds = %215
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 3
  store i32 0, i32* %227, align 4
  br label %228

228:                                              ; preds = %225, %221
  %229 = load i8*, i8** %6, align 8
  %230 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %231 = load i32, i32* @DATA_TYPE_STRING, align 4
  %232 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %229, i32 %230, i32 %231, i32* null, i8** %17)
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %246

234:                                              ; preds = %228
  %235 = load i8*, i8** %17, align 8
  %236 = call i64 @strncmp(i8* %235, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %241

238:                                              ; preds = %234
  %239 = load i8*, i8** %17, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 5
  store i8* %240, i8** %17, align 8
  br label %241

241:                                              ; preds = %238, %234
  %242 = load i8*, i8** %17, align 8
  %243 = call i8* @strdup(i8* %242)
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %245 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %244, i32 0, i32 4
  store i8* %243, i8** %245, align 8
  br label %283

246:                                              ; preds = %228
  %247 = load i8*, i8** %16, align 8
  %248 = call i64 @strcmp(i8* %247, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %270, label %250

250:                                              ; preds = %246
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = icmp slt i32 %253, 1
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 4
  %259 = icmp sgt i32 %258, 3
  br i1 %259, label %260, label %263

260:                                              ; preds = %255, %250
  %261 = call i32 @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0))
  %262 = load i32, i32* @EIO, align 4
  store i32 %262, i32* %5, align 4
  br label %386

263:                                              ; preds = %255
  %264 = load i8*, i8** %16, align 8
  %265 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* %12, align 4
  %269 = call i32 (i8**, i8*, i8*, i32, ...) @asprintf(i8** %31, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %264, i32 %267, i32 %268)
  br label %274

270:                                              ; preds = %246
  %271 = load i8*, i8** %16, align 8
  %272 = load i32, i32* %12, align 4
  %273 = call i32 (i8**, i8*, i8*, i32, ...) @asprintf(i8** %31, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %271, i32 %272)
  br label %274

274:                                              ; preds = %270, %263
  %275 = load i8*, i8** %31, align 8
  %276 = icmp eq i8* %275, null
  br i1 %276, label %277, label %279

277:                                              ; preds = %274
  %278 = load i32, i32* @ENOMEM, align 4
  store i32 %278, i32* %5, align 4
  br label %386

279:                                              ; preds = %274
  %280 = load i8*, i8** %31, align 8
  %281 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 4
  store i8* %280, i8** %282, align 8
  br label %283

283:                                              ; preds = %279, %241
  %284 = load i32, i32* %29, align 4
  %285 = icmp eq i32 %284, 1
  %286 = zext i1 %285 to i32
  %287 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 5
  store i32 %286, i32* %288, align 8
  br label %290

289:                                              ; preds = %80
  store i32 0, i32* %23, align 4
  br label %290

290:                                              ; preds = %289, %283
  %291 = load i32, i32* %23, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %296, label %293

293:                                              ; preds = %290
  %294 = load i32, i32* %9, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %336

296:                                              ; preds = %293, %290
  %297 = load i32, i32* %24, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load i32, i32* @VDEV_STATE_OFFLINE, align 4
  %301 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 8
  store i32 %300, i32* %302, align 4
  br label %335

303:                                              ; preds = %296
  %304 = load i32, i32* %27, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %310

306:                                              ; preds = %303
  %307 = load i32, i32* @VDEV_STATE_REMOVED, align 4
  %308 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %309 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %308, i32 0, i32 8
  store i32 %307, i32* %309, align 4
  br label %334

310:                                              ; preds = %303
  %311 = load i32, i32* %25, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %310
  %314 = load i32, i32* @VDEV_STATE_FAULTED, align 4
  %315 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %316 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %315, i32 0, i32 8
  store i32 %314, i32* %316, align 4
  br label %333

317:                                              ; preds = %310
  %318 = load i32, i32* %26, align 4
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %317
  %321 = load i32, i32* @VDEV_STATE_DEGRADED, align 4
  %322 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %323 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %322, i32 0, i32 8
  store i32 %321, i32* %323, align 4
  br label %332

324:                                              ; preds = %317
  %325 = load i32, i32* %28, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %331

327:                                              ; preds = %324
  %328 = load i32, i32* @VDEV_STATE_CANT_OPEN, align 4
  %329 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %330 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %329, i32 0, i32 8
  store i32 %328, i32* %330, align 4
  br label %331

331:                                              ; preds = %327, %324
  br label %332

332:                                              ; preds = %331, %320
  br label %333

333:                                              ; preds = %332, %313
  br label %334

334:                                              ; preds = %333, %306
  br label %335

335:                                              ; preds = %334, %299
  br label %336

336:                                              ; preds = %335, %293
  %337 = load i8*, i8** %6, align 8
  %338 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %339 = load i32, i32* @DATA_TYPE_NVLIST_ARRAY, align 4
  %340 = call i32 (i8*, i32, i32, i32*, ...) @nvlist_find(i8* %337, i32 %338, i32 %339, i32* %21, i8** %20)
  store i32 %340, i32* %10, align 4
  %341 = load i32, i32* %10, align 4
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %376

343:                                              ; preds = %336
  %344 = load i32, i32* %21, align 4
  %345 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %346 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %345, i32 0, i32 6
  store i32 %344, i32* %346, align 4
  store i32 0, i32* %22, align 4
  br label %347

347:                                              ; preds = %372, %343
  %348 = load i32, i32* %22, align 4
  %349 = load i32, i32* %21, align 4
  %350 = icmp slt i32 %348, %349
  br i1 %350, label %351, label %375

351:                                              ; preds = %347
  %352 = load i8*, i8** %20, align 8
  %353 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %354 = load i32, i32* %9, align 4
  %355 = call i32 @vdev_init_from_nvlist(i8* %352, %struct.TYPE_8__* %353, %struct.TYPE_8__** %19, i32 %354)
  store i32 %355, i32* %10, align 4
  %356 = load i32, i32* %10, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %351
  %359 = load i32, i32* %10, align 4
  store i32 %359, i32* %5, align 4
  br label %386

360:                                              ; preds = %351
  %361 = load i32, i32* %23, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %369

363:                                              ; preds = %360
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 7
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %367 = load i32, i32* @v_childlink, align 4
  %368 = call i32 @STAILQ_INSERT_TAIL(i32* %365, %struct.TYPE_8__* %366, i32 %367)
  br label %369

369:                                              ; preds = %363, %360
  %370 = load i8*, i8** %20, align 8
  %371 = call i8* @nvlist_next(i8* %370)
  store i8* %371, i8** %20, align 8
  br label %372

372:                                              ; preds = %369
  %373 = load i32, i32* %22, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %22, align 4
  br label %347

375:                                              ; preds = %347
  br label %379

376:                                              ; preds = %336
  %377 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 6
  store i32 0, i32* %378, align 4
  br label %379

379:                                              ; preds = %376, %375
  %380 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  %381 = icmp ne %struct.TYPE_8__** %380, null
  br i1 %381, label %382, label %385

382:                                              ; preds = %379
  %383 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %384 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %8, align 8
  store %struct.TYPE_8__* %383, %struct.TYPE_8__** %384, align 8
  br label %385

385:                                              ; preds = %382, %379
  store i32 0, i32* %5, align 4
  br label %386

386:                                              ; preds = %385, %358, %277, %260, %77, %49
  %387 = load i32, i32* %5, align 4
  ret i32 %387
}

declare dso_local i32 @nvlist_find(i8*, i32, i32, i32*, ...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_8__* @vdev_find(i32) #1

declare dso_local %struct.TYPE_8__* @vdev_create(i32, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32, ...) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i8* @nvlist_next(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
