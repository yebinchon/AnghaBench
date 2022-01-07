; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_config_generate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_config_generate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i8*, i8*, i8*, i8*, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_10__, i64, i64, i64, i64, i64, i32, i64, %struct.TYPE_12__**, %struct.TYPE_11__*, %struct.TYPE_9__*, i32, i32*, i32*, %struct.TYPE_12__*, i32*, i64, i64, %struct.TYPE_13__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i8*, i32 }
%struct.TYPE_9__ = type { i64, i32* }
%struct.TYPE_13__ = type { i32, i32, i32 }

@ZPOOL_CONFIG_TYPE = common dso_local global i32 0, align 4
@VDEV_CONFIG_SPARE = common dso_local global i32 0, align 4
@VDEV_CONFIG_L2CACHE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DEVID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PHYS_PATH = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_FRU = common dso_local global i32 0, align 4
@VDEV_TYPE_RAIDZ = common dso_local global i32 0, align 4
@SPA_VERSION_RAIDZ2 = common dso_local global i64 0, align 8
@SPA_VERSION_RAIDZ3 = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_NPARITY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_WHOLE_DISK = common dso_local global i32 0, align 4
@VDEV_CONFIG_MISSING = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_NOT_PRESENT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_SPARE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_METASLAB_ARRAY = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_METASLAB_SHIFT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ASHIFT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ASIZE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_LOG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_REMOVING = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DTL = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_INDIRECT_OBJECT = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_INDIRECT_BIRTHS = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_PREV_INDIRECT_VDEV = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CREATE_TXG = common dso_local global i32 0, align 4
@VDEV_CONFIG_MOS = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_LEAF_ZAP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_TOP_ZAP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VDEV_STATS = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_INDIRECT_SIZE = common dso_local global i32 0, align 4
@ZFS_FRAG_INVALID = common dso_local global i64 0, align 8
@RANGE_TREE_HISTOGRAM_SIZE = common dso_local global i32 0, align 4
@vdev_removal_max_span = common dso_local global i32 0, align 4
@zfs_remove_max_segment = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@VDEV_CONFIG_REMOVING = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CHILDREN = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_OFFLINE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_RESILVER_TXG = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_FAULTED = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_DEGRADED = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_REMOVED = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_UNSPARE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_HOLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"err_exceeded\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"external\00", align 1
@ZPOOL_CONFIG_AUX_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_ORIG_GUID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @vdev_config_generate(i32* %0, %struct.TYPE_12__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32* null, i32** %9, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 39
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %10, align 8
  %23 = call i32* (...) @fnvlist_alloc()
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @ZPOOL_CONFIG_TYPE, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 30
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @fnvlist_add_string(i32* %24, i32 %25, i8* %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @VDEV_CONFIG_SPARE, align 4
  %34 = load i32, i32* @VDEV_CONFIG_L2CACHE, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* @ZPOOL_CONFIG_ID, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @fnvlist_add_uint64(i32* %39, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %38, %4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @fnvlist_add_uint64(i32* %46, i32 %47, i32 %50)
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %45
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* @ZPOOL_CONFIG_PATH, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @fnvlist_add_string(i32* %57, i32 %58, i8* %61)
  br label %63

63:                                               ; preds = %56, %45
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 3
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load i32*, i32** %9, align 8
  %70 = load i32, i32* @ZPOOL_CONFIG_DEVID, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 3
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @fnvlist_add_string(i32* %69, i32 %70, i8* %73)
  br label %75

75:                                               ; preds = %68, %63
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* @ZPOOL_CONFIG_PHYS_PATH, align 4
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 4
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @fnvlist_add_string(i32* %81, i32 %82, i8* %85)
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %87
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* @ZPOOL_CONFIG_FRU, align 4
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 5
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @fnvlist_add_string(i32* %93, i32 %94, i8* %97)
  br label %99

99:                                               ; preds = %92, %87
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %151

104:                                              ; preds = %99
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 30
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @VDEV_TYPE_RAIDZ, align 4
  %111 = call i64 @strcmp(i8* %109, i32 %110)
  %112 = icmp eq i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @ASSERT(i32 %113)
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 6
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 1
  br i1 %118, label %141, label %119

119:                                              ; preds = %104
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 6
  %122 = load i32, i32* %121, align 8
  %123 = icmp sle i32 %122, 2
  br i1 %123, label %124, label %129

124:                                              ; preds = %119
  %125 = load i32*, i32** %5, align 8
  %126 = call i64 @spa_version(i32* %125)
  %127 = load i64, i64* @SPA_VERSION_RAIDZ2, align 8
  %128 = icmp sge i64 %126, %127
  br i1 %128, label %141, label %129

129:                                              ; preds = %124, %119
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 8
  %133 = icmp sle i32 %132, 3
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i32*, i32** %5, align 8
  %136 = call i64 @spa_version(i32* %135)
  %137 = load i64, i64* @SPA_VERSION_RAIDZ3, align 8
  %138 = icmp sge i64 %136, %137
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i1 [ false, %129 ], [ %138, %134 ]
  br label %141

141:                                              ; preds = %139, %124, %104
  %142 = phi i1 [ true, %124 ], [ true, %104 ], [ %140, %139 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 @ASSERT(i32 %143)
  %145 = load i32*, i32** %9, align 8
  %146 = load i32, i32* @ZPOOL_CONFIG_NPARITY, align 4
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @fnvlist_add_uint64(i32* %145, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %141, %99
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 7
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, -1
  br i1 %155, label %156, label %164

156:                                              ; preds = %151
  %157 = load i32*, i32** %9, align 8
  %158 = load i32, i32* @ZPOOL_CONFIG_WHOLE_DISK, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 7
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 @fnvlist_add_uint64(i32* %157, i32 %158, i32 %162)
  br label %164

164:                                              ; preds = %156, %151
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 38
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %164
  %170 = load i32, i32* %8, align 4
  %171 = load i32, i32* @VDEV_CONFIG_MISSING, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %178, label %174

174:                                              ; preds = %169
  %175 = load i32*, i32** %9, align 8
  %176 = load i32, i32* @ZPOOL_CONFIG_NOT_PRESENT, align 4
  %177 = call i32 @fnvlist_add_uint64(i32* %175, i32 %176, i32 1)
  br label %178

178:                                              ; preds = %174, %169, %164
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 37
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %178
  %184 = load i32*, i32** %9, align 8
  %185 = load i32, i32* @ZPOOL_CONFIG_IS_SPARE, align 4
  %186 = call i32 @fnvlist_add_uint64(i32* %184, i32 %185, i32 1)
  br label %187

187:                                              ; preds = %183, %178
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @VDEV_CONFIG_SPARE, align 4
  %190 = load i32, i32* @VDEV_CONFIG_L2CACHE, align 4
  %191 = or i32 %189, %190
  %192 = and i32 %188, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %243, label %194

194:                                              ; preds = %187
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %196 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 35
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %197, align 8
  %199 = icmp eq %struct.TYPE_12__* %195, %198
  br i1 %199, label %200, label %243

200:                                              ; preds = %194
  %201 = load i32*, i32** %9, align 8
  %202 = load i32, i32* @ZPOOL_CONFIG_METASLAB_ARRAY, align 4
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 8
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @fnvlist_add_uint64(i32* %201, i32 %202, i32 %205)
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* @ZPOOL_CONFIG_METASLAB_SHIFT, align 4
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 9
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @fnvlist_add_uint64(i32* %207, i32 %208, i32 %211)
  %213 = load i32*, i32** %9, align 8
  %214 = load i32, i32* @ZPOOL_CONFIG_ASHIFT, align 4
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 10
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @fnvlist_add_uint64(i32* %213, i32 %214, i32 %217)
  %219 = load i32*, i32** %9, align 8
  %220 = load i32, i32* @ZPOOL_CONFIG_ASIZE, align 4
  %221 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %221, i32 0, i32 11
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @fnvlist_add_uint64(i32* %219, i32 %220, i32 %223)
  %225 = load i32*, i32** %9, align 8
  %226 = load i32, i32* @ZPOOL_CONFIG_IS_LOG, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 12
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @fnvlist_add_uint64(i32* %225, i32 %226, i32 %229)
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 13
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %200
  %236 = load i32*, i32** %9, align 8
  %237 = load i32, i32* @ZPOOL_CONFIG_REMOVING, align 4
  %238 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 13
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @fnvlist_add_uint64(i32* %236, i32 %237, i32 %240)
  br label %242

242:                                              ; preds = %235, %200
  br label %243

243:                                              ; preds = %242, %194, %187
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 36
  %246 = load i32*, i32** %245, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %256

248:                                              ; preds = %243
  %249 = load i32*, i32** %9, align 8
  %250 = load i32, i32* @ZPOOL_CONFIG_DTL, align 4
  %251 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %251, i32 0, i32 36
  %253 = load i32*, i32** %252, align 8
  %254 = call i32 @space_map_object(i32* %253)
  %255 = call i32 @fnvlist_add_uint64(i32* %249, i32 %250, i32 %254)
  br label %256

256:                                              ; preds = %248, %243
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %256
  %262 = load i32*, i32** %9, align 8
  %263 = load i32, i32* @ZPOOL_CONFIG_INDIRECT_OBJECT, align 4
  %264 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @fnvlist_add_uint64(i32* %262, i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %261, %256
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %280

273:                                              ; preds = %268
  %274 = load i32*, i32** %9, align 8
  %275 = load i32, i32* @ZPOOL_CONFIG_INDIRECT_BIRTHS, align 4
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 1
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @fnvlist_add_uint64(i32* %274, i32 %275, i32 %278)
  br label %280

280:                                              ; preds = %273, %268
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* @UINT64_MAX, align 4
  %285 = icmp ne i32 %283, %284
  br i1 %285, label %286, label %293

286:                                              ; preds = %280
  %287 = load i32*, i32** %9, align 8
  %288 = load i32, i32* @ZPOOL_CONFIG_PREV_INDIRECT_VDEV, align 4
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 2
  %291 = load i32, i32* %290, align 4
  %292 = call i32 @fnvlist_add_uint64(i32* %287, i32 %288, i32 %291)
  br label %293

293:                                              ; preds = %286, %280
  %294 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %295 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %294, i32 0, i32 14
  %296 = load i32, i32* %295, align 8
  %297 = icmp ne i32 %296, 0
  br i1 %297, label %298, label %305

298:                                              ; preds = %293
  %299 = load i32*, i32** %9, align 8
  %300 = load i32, i32* @ZPOOL_CONFIG_CREATE_TXG, align 4
  %301 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %302 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %301, i32 0, i32 14
  %303 = load i32, i32* %302, align 8
  %304 = call i32 @fnvlist_add_uint64(i32* %299, i32 %300, i32 %303)
  br label %305

305:                                              ; preds = %298, %293
  %306 = load i32, i32* %8, align 4
  %307 = load i32, i32* @VDEV_CONFIG_MOS, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %348

310:                                              ; preds = %305
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i32 0, i32 15
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %328

315:                                              ; preds = %310
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 30
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @ASSERT(i32 %320)
  %322 = load i32*, i32** %9, align 8
  %323 = load i32, i32* @ZPOOL_CONFIG_VDEV_LEAF_ZAP, align 4
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 15
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @fnvlist_add_uint64(i32* %322, i32 %323, i32 %326)
  br label %328

328:                                              ; preds = %315, %310
  %329 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %330 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %329, i32 0, i32 16
  %331 = load i32, i32* %330, align 8
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %347

333:                                              ; preds = %328
  %334 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %335 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %335, i32 0, i32 35
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %336, align 8
  %338 = icmp eq %struct.TYPE_12__* %334, %337
  %339 = zext i1 %338 to i32
  %340 = call i32 @ASSERT(i32 %339)
  %341 = load i32*, i32** %9, align 8
  %342 = load i32, i32* @ZPOOL_CONFIG_VDEV_TOP_ZAP, align 4
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 16
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @fnvlist_add_uint64(i32* %341, i32 %342, i32 %345)
  br label %347

347:                                              ; preds = %333, %328
  br label %348

348:                                              ; preds = %347, %305
  %349 = load i64, i64* %7, align 8
  %350 = icmp ne i64 %349, 0
  br i1 %350, label %351, label %461

351:                                              ; preds = %348
  %352 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %353 = call i32 @vdev_get_stats(%struct.TYPE_12__* %352, i32* %11)
  %354 = load i32*, i32** %9, align 8
  %355 = load i32, i32* @ZPOOL_CONFIG_VDEV_STATS, align 4
  %356 = call i32 @fnvlist_add_uint64_array(i32* %354, i32 %355, i32* %11, i32 1)
  %357 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %358 = load i32*, i32** %9, align 8
  %359 = call i32 @root_vdev_actions_getprogress(%struct.TYPE_12__* %357, i32* %358)
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 32
  %362 = load i32, i32* @RW_READER, align 4
  %363 = call i32 @rw_enter(i32* %361, i32 %362)
  %364 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %365 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %364, i32 0, i32 33
  %366 = load i32*, i32** %365, align 8
  %367 = icmp ne i32* %366, null
  br i1 %367, label %368, label %383

368:                                              ; preds = %351
  %369 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %369, i32 0, i32 34
  %371 = load i32*, i32** %370, align 8
  %372 = icmp ne i32* %371, null
  %373 = zext i1 %372 to i32
  %374 = call i32 @ASSERT(i32 %373)
  %375 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %376 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %375, i32 0, i32 33
  %377 = load i32*, i32** %376, align 8
  store i32* %377, i32** %12, align 8
  %378 = load i32*, i32** %9, align 8
  %379 = load i32, i32* @ZPOOL_CONFIG_INDIRECT_SIZE, align 4
  %380 = load i32*, i32** %12, align 8
  %381 = call i32 @vdev_indirect_mapping_size(i32* %380)
  %382 = call i32 @fnvlist_add_uint64(i32* %378, i32 %379, i32 %381)
  br label %383

383:                                              ; preds = %368, %351
  %384 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %384, i32 0, i32 32
  %386 = call i32 @rw_exit(i32* %385)
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 31
  %389 = load %struct.TYPE_9__*, %struct.TYPE_9__** %388, align 8
  %390 = icmp ne %struct.TYPE_9__* %389, null
  br i1 %390, label %391, label %460

391:                                              ; preds = %383
  %392 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %393 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %392, i32 0, i32 31
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 0
  %396 = load i64, i64* %395, align 8
  %397 = load i64, i64* @ZFS_FRAG_INVALID, align 8
  %398 = icmp ne i64 %396, %397
  br i1 %398, label %399, label %460

399:                                              ; preds = %391
  store i32 0, i32* %13, align 4
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 21
  %402 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 8
  store i32 %403, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %404

404:                                              ; preds = %444, %399
  %405 = load i32, i32* %15, align 4
  %406 = load i32, i32* @RANGE_TREE_HISTOGRAM_SIZE, align 4
  %407 = icmp slt i32 %405, %406
  br i1 %407, label %408, label %447

408:                                              ; preds = %404
  %409 = load i32, i32* %15, align 4
  %410 = add nsw i32 %409, 1
  %411 = zext i32 %410 to i64
  %412 = shl i64 1, %411
  %413 = load i32, i32* @vdev_removal_max_span, align 4
  %414 = sext i32 %413 to i64
  %415 = icmp ult i64 %412, %414
  br i1 %415, label %416, label %431

416:                                              ; preds = %408
  %417 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %417, i32 0, i32 31
  %419 = load %struct.TYPE_9__*, %struct.TYPE_9__** %418, align 8
  %420 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %419, i32 0, i32 1
  %421 = load i32*, i32** %420, align 8
  %422 = load i32, i32* %15, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds i32, i32* %421, i64 %423
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* %15, align 4
  %427 = add nsw i32 %426, 1
  %428 = shl i32 %425, %427
  %429 = load i32, i32* %14, align 4
  %430 = add nsw i32 %429, %428
  store i32 %430, i32* %14, align 4
  br label %443

431:                                              ; preds = %408
  %432 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %433 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %432, i32 0, i32 31
  %434 = load %struct.TYPE_9__*, %struct.TYPE_9__** %433, align 8
  %435 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %434, i32 0, i32 1
  %436 = load i32*, i32** %435, align 8
  %437 = load i32, i32* %15, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* %13, align 4
  %442 = add nsw i32 %441, %440
  store i32 %442, i32* %13, align 4
  br label %443

443:                                              ; preds = %431, %416
  br label %444

444:                                              ; preds = %443
  %445 = load i32, i32* %15, align 4
  %446 = add nsw i32 %445, 1
  store i32 %446, i32* %15, align 4
  br label %404

447:                                              ; preds = %404
  %448 = load i32, i32* %14, align 4
  %449 = load i32, i32* @zfs_remove_max_segment, align 4
  %450 = sdiv i32 %448, %449
  %451 = load i32, i32* %13, align 4
  %452 = add nsw i32 %451, %450
  store i32 %452, i32* %13, align 4
  %453 = load i32*, i32** %9, align 8
  %454 = load i32, i32* @ZPOOL_CONFIG_INDIRECT_SIZE, align 4
  %455 = load i32, i32* %13, align 4
  %456 = sext i32 %455 to i64
  %457 = mul i64 %456, 4
  %458 = trunc i64 %457 to i32
  %459 = call i32 @fnvlist_add_uint64(i32* %453, i32 %454, i32 %458)
  br label %460

460:                                              ; preds = %447, %391, %383
  br label %461

461:                                              ; preds = %460, %348
  %462 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %463 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %462, i32 0, i32 30
  %464 = load %struct.TYPE_11__*, %struct.TYPE_11__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %555, label %468

468:                                              ; preds = %461
  %469 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i32 0, i32 22
  %471 = load i64, i64* %470, align 8
  %472 = icmp ne i64 %471, 0
  %473 = xor i1 %472, true
  %474 = zext i1 %473 to i32
  %475 = call i32 @ASSERT(i32 %474)
  %476 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %476, i32 0, i32 17
  %478 = load i32, i32* %477, align 4
  %479 = sext i32 %478 to i64
  %480 = mul i64 %479, 8
  %481 = trunc i64 %480 to i32
  %482 = load i32, i32* @KM_SLEEP, align 4
  %483 = call i32** @kmem_alloc(i32 %481, i32 %482)
  store i32** %483, i32*** %16, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %484

484:                                              ; preds = %519, %468
  %485 = load i32, i32* %17, align 4
  %486 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %487 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %486, i32 0, i32 17
  %488 = load i32, i32* %487, align 4
  %489 = icmp slt i32 %485, %488
  br i1 %489, label %490, label %522

490:                                              ; preds = %484
  %491 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %492 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %491, i32 0, i32 29
  %493 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %492, align 8
  %494 = load i32, i32* %17, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %493, i64 %495
  %497 = load %struct.TYPE_12__*, %struct.TYPE_12__** %496, align 8
  store %struct.TYPE_12__* %497, %struct.TYPE_12__** %19, align 8
  %498 = load i32, i32* %8, align 4
  %499 = load i32, i32* @VDEV_CONFIG_REMOVING, align 4
  %500 = and i32 %498, %499
  %501 = icmp ne i32 %500, 0
  br i1 %501, label %502, label %508

502:                                              ; preds = %490
  %503 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %504 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %503, i32 0, i32 13
  %505 = load i32, i32* %504, align 4
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %508, label %507

507:                                              ; preds = %502
  br label %519

508:                                              ; preds = %502, %490
  %509 = load i32*, i32** %5, align 8
  %510 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %511 = load i64, i64* %7, align 8
  %512 = load i32, i32* %8, align 4
  %513 = call i32* @vdev_config_generate(i32* %509, %struct.TYPE_12__* %510, i64 %511, i32 %512)
  %514 = load i32**, i32*** %16, align 8
  %515 = load i32, i32* %18, align 4
  %516 = add nsw i32 %515, 1
  store i32 %516, i32* %18, align 4
  %517 = sext i32 %515 to i64
  %518 = getelementptr inbounds i32*, i32** %514, i64 %517
  store i32* %513, i32** %518, align 8
  br label %519

519:                                              ; preds = %508, %507
  %520 = load i32, i32* %17, align 4
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %17, align 4
  br label %484

522:                                              ; preds = %484
  %523 = load i32, i32* %18, align 4
  %524 = icmp ne i32 %523, 0
  br i1 %524, label %525, label %531

525:                                              ; preds = %522
  %526 = load i32*, i32** %9, align 8
  %527 = load i32, i32* @ZPOOL_CONFIG_CHILDREN, align 4
  %528 = load i32**, i32*** %16, align 8
  %529 = load i32, i32* %18, align 4
  %530 = call i32 @fnvlist_add_nvlist_array(i32* %526, i32 %527, i32** %528, i32 %529)
  br label %531

531:                                              ; preds = %525, %522
  store i32 0, i32* %17, align 4
  br label %532

532:                                              ; preds = %543, %531
  %533 = load i32, i32* %17, align 4
  %534 = load i32, i32* %18, align 4
  %535 = icmp slt i32 %533, %534
  br i1 %535, label %536, label %546

536:                                              ; preds = %532
  %537 = load i32**, i32*** %16, align 8
  %538 = load i32, i32* %17, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32*, i32** %537, i64 %539
  %541 = load i32*, i32** %540, align 8
  %542 = call i32 @nvlist_free(i32* %541)
  br label %543

543:                                              ; preds = %536
  %544 = load i32, i32* %17, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %17, align 4
  br label %532

546:                                              ; preds = %532
  %547 = load i32**, i32*** %16, align 8
  %548 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %549 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %548, i32 0, i32 17
  %550 = load i32, i32* %549, align 4
  %551 = sext i32 %550 to i64
  %552 = mul i64 %551, 8
  %553 = trunc i64 %552 to i32
  %554 = call i32 @kmem_free(i32** %547, i32 %553)
  br label %666

555:                                              ; preds = %461
  store i8* null, i8** %20, align 8
  %556 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %557 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %556, i32 0, i32 28
  %558 = load i64, i64* %557, align 8
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %570

560:                                              ; preds = %555
  %561 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %562 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %561, i32 0, i32 27
  %563 = load i32, i32* %562, align 8
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %570, label %565

565:                                              ; preds = %560
  %566 = load i32*, i32** %9, align 8
  %567 = load i32, i32* @ZPOOL_CONFIG_OFFLINE, align 4
  %568 = load i32, i32* @B_TRUE, align 4
  %569 = call i32 @fnvlist_add_uint64(i32* %566, i32 %567, i32 %568)
  br label %570

570:                                              ; preds = %565, %560, %555
  %571 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %572 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %571, i32 0, i32 18
  %573 = load i32, i32* %572, align 8
  %574 = icmp ne i32 %573, 0
  br i1 %574, label %575, label %582

575:                                              ; preds = %570
  %576 = load i32*, i32** %9, align 8
  %577 = load i32, i32* @ZPOOL_CONFIG_RESILVER_TXG, align 4
  %578 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %579 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %578, i32 0, i32 18
  %580 = load i32, i32* %579, align 8
  %581 = call i32 @fnvlist_add_uint64(i32* %576, i32 %577, i32 %580)
  br label %582

582:                                              ; preds = %575, %570
  %583 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %584 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %583, i32 0, i32 26
  %585 = load i64, i64* %584, align 8
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %592

587:                                              ; preds = %582
  %588 = load i32*, i32** %9, align 8
  %589 = load i32, i32* @ZPOOL_CONFIG_FAULTED, align 4
  %590 = load i32, i32* @B_TRUE, align 4
  %591 = call i32 @fnvlist_add_uint64(i32* %588, i32 %589, i32 %590)
  br label %592

592:                                              ; preds = %587, %582
  %593 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %594 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %593, i32 0, i32 25
  %595 = load i64, i64* %594, align 8
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %597, label %602

597:                                              ; preds = %592
  %598 = load i32*, i32** %9, align 8
  %599 = load i32, i32* @ZPOOL_CONFIG_DEGRADED, align 4
  %600 = load i32, i32* @B_TRUE, align 4
  %601 = call i32 @fnvlist_add_uint64(i32* %598, i32 %599, i32 %600)
  br label %602

602:                                              ; preds = %597, %592
  %603 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %604 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %603, i32 0, i32 24
  %605 = load i64, i64* %604, align 8
  %606 = icmp ne i64 %605, 0
  br i1 %606, label %607, label %612

607:                                              ; preds = %602
  %608 = load i32*, i32** %9, align 8
  %609 = load i32, i32* @ZPOOL_CONFIG_REMOVED, align 4
  %610 = load i32, i32* @B_TRUE, align 4
  %611 = call i32 @fnvlist_add_uint64(i32* %608, i32 %609, i32 %610)
  br label %612

612:                                              ; preds = %607, %602
  %613 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %614 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %613, i32 0, i32 23
  %615 = load i64, i64* %614, align 8
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %622

617:                                              ; preds = %612
  %618 = load i32*, i32** %9, align 8
  %619 = load i32, i32* @ZPOOL_CONFIG_UNSPARE, align 4
  %620 = load i32, i32* @B_TRUE, align 4
  %621 = call i32 @fnvlist_add_uint64(i32* %618, i32 %619, i32 %620)
  br label %622

622:                                              ; preds = %617, %612
  %623 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %624 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %623, i32 0, i32 22
  %625 = load i64, i64* %624, align 8
  %626 = icmp ne i64 %625, 0
  br i1 %626, label %627, label %632

627:                                              ; preds = %622
  %628 = load i32*, i32** %9, align 8
  %629 = load i32, i32* @ZPOOL_CONFIG_IS_HOLE, align 4
  %630 = load i32, i32* @B_TRUE, align 4
  %631 = call i32 @fnvlist_add_uint64(i32* %628, i32 %629, i32 %630)
  br label %632

632:                                              ; preds = %627, %622
  %633 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %634 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %633, i32 0, i32 21
  %635 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %634, i32 0, i32 1
  %636 = load i32, i32* %635, align 4
  switch i32 %636, label %639 [
    i32 129, label %637
    i32 128, label %638
  ]

637:                                              ; preds = %632
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  br label %639

638:                                              ; preds = %632
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  br label %639

639:                                              ; preds = %632, %638, %637
  %640 = load i8*, i8** %20, align 8
  %641 = icmp ne i8* %640, null
  br i1 %641, label %642, label %647

642:                                              ; preds = %639
  %643 = load i32*, i32** %9, align 8
  %644 = load i32, i32* @ZPOOL_CONFIG_AUX_STATE, align 4
  %645 = load i8*, i8** %20, align 8
  %646 = call i32 @fnvlist_add_string(i32* %643, i32 %644, i8* %645)
  br label %647

647:                                              ; preds = %642, %639
  %648 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %649 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %648, i32 0, i32 20
  %650 = load i64, i64* %649, align 8
  %651 = icmp ne i64 %650, 0
  br i1 %651, label %652, label %665

652:                                              ; preds = %647
  %653 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %654 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %653, i32 0, i32 19
  %655 = load i64, i64* %654, align 8
  %656 = icmp ne i64 %655, 0
  br i1 %656, label %657, label %665

657:                                              ; preds = %652
  %658 = load i32*, i32** %9, align 8
  %659 = load i32, i32* @ZPOOL_CONFIG_ORIG_GUID, align 4
  %660 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %661 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %660, i32 0, i32 19
  %662 = load i64, i64* %661, align 8
  %663 = trunc i64 %662 to i32
  %664 = call i32 @fnvlist_add_uint64(i32* %658, i32 %659, i32 %663)
  br label %665

665:                                              ; preds = %657, %652, %647
  br label %666

666:                                              ; preds = %665, %546
  %667 = load i32*, i32** %9, align 8
  ret i32* %667
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_string(i32*, i32, i8*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @space_map_object(i32*) #1

declare dso_local i32 @vdev_get_stats(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @fnvlist_add_uint64_array(i32*, i32, i32*, i32) #1

declare dso_local i32 @root_vdev_actions_getprogress(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @vdev_indirect_mapping_size(i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

declare dso_local i32** @kmem_alloc(i32, i32) #1

declare dso_local i32 @fnvlist_add_nvlist_array(i32*, i32, i32**, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @kmem_free(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
