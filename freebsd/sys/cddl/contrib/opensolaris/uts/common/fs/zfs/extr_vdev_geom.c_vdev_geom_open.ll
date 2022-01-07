; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_geom.c_vdev_geom_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, i64, i32, %struct.TYPE_14__, %struct.TYPE_13__*, i32, %struct.g_consumer* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.g_consumer = type { i64, %struct.g_provider*, i32* }
%struct.g_provider = type { i64, i8*, i32, i32, i64 }
%struct.consumer_priv_t = type { i32 }
%struct.consumer_vdev_elem = type { %struct.TYPE_15__* }

@zfs_geom_probe_vdev_key = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"/dev/\00", align 1
@VDEV_AUX_BAD_LABEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VDEV_STATE_UNKNOWN = common dso_local global i64 0, align 8
@SPA_LOAD_NONE = common dso_local global i64 0, align 8
@SPA_LOAD_CREATE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"Vdev %s not found.\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@elems = common dso_local global i32 0, align 4
@VDEV_PAD_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Provider %s has unsupported sectorsize.\00", align 1
@FWRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"vdev\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [56 x i8] c"ZFS WARNING: Unable to open %s for writing (error=%d).\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"GEOM::physpath\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@VDEV_AUX_OPEN_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"vdev_geom_open: failed to open [error=%d]\00", align 1
@SPA_MINBLOCKSIZE = common dso_local global i32 0, align 4
@SPA_MAXASHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32*, i32*, i32*, i32*)* @vdev_geom_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_geom_open(%struct.TYPE_15__* %0, i32* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.g_provider*, align 8
  %13 = alloca %struct.g_consumer*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.consumer_priv_t*, align 8
  %17 = alloca %struct.consumer_vdev_elem*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load i32, i32* @zfs_geom_probe_vdev_key, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = call i64 @tsd_set(i32 %20, %struct.TYPE_15__* %21)
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @VERIFY(i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %5
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @strncmp(i8* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30, %5
  %37 = load i32, i32* @VDEV_AUX_BAD_LABEL, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %6, align 4
  br label %291

42:                                               ; preds = %30
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 6
  %45 = load %struct.g_consumer*, %struct.g_consumer** %44, align 8
  store %struct.g_consumer* %45, %struct.g_consumer** %13, align 8
  %46 = icmp ne %struct.g_consumer* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ASSERT(i32 %50)
  br label %236

52:                                               ; preds = %42
  %53 = call i32 (...) @DROP_GIANT()
  %54 = call i32 (...) @g_topology_lock()
  store i32 0, i32* %15, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 4
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %83, label %61

61:                                               ; preds = %52
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @VDEV_STATE_UNKNOWN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 4
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @SPA_LOAD_NONE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %83, label %75

75:                                               ; preds = %67, %61
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SPA_LOAD_CREATE, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %75, %67, %52
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %85 = call %struct.g_consumer* @vdev_geom_open_by_path(%struct.TYPE_15__* %84, i32 0)
  store %struct.g_consumer* %85, %struct.g_consumer** %13, align 8
  br label %95

86:                                               ; preds = %75
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %88 = call %struct.g_consumer* @vdev_geom_open_by_path(%struct.TYPE_15__* %87, i32 1)
  store %struct.g_consumer* %88, %struct.g_consumer** %13, align 8
  %89 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %90 = icmp eq %struct.g_consumer* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %93 = call %struct.g_consumer* @vdev_geom_open_by_guids(%struct.TYPE_15__* %92)
  store %struct.g_consumer* %93, %struct.g_consumer** %13, align 8
  br label %94

94:                                               ; preds = %91, %86
  br label %95

95:                                               ; preds = %94, %83
  %96 = load i32, i32* @zfs_geom_probe_vdev_key, align 4
  %97 = call i64 @tsd_set(i32 %96, %struct.TYPE_15__* null)
  %98 = icmp eq i64 %97, 0
  %99 = zext i1 %98 to i32
  %100 = call i32 @VERIFY(i32 %99)
  %101 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %102 = icmp eq %struct.g_consumer* %101, null
  br i1 %102, label %103, label %109

103:                                              ; preds = %95
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = call i32 @ZFS_LOG(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %106)
  %108 = load i32, i32* @ENOENT, align 4
  store i32 %108, i32* %15, align 4
  br label %208

109:                                              ; preds = %95
  %110 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %111 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %110, i32 0, i32 2
  %112 = bitcast i32** %111 to %struct.consumer_priv_t*
  store %struct.consumer_priv_t* %112, %struct.consumer_priv_t** %16, align 8
  %113 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %114 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %109
  %118 = load %struct.consumer_priv_t*, %struct.consumer_priv_t** %16, align 8
  %119 = call i32 @SLIST_INIT(%struct.consumer_priv_t* %118)
  br label %120

120:                                              ; preds = %117, %109
  %121 = load i32, i32* @M_WAITOK, align 4
  %122 = load i32, i32* @M_ZERO, align 4
  %123 = or i32 %121, %122
  %124 = call %struct.consumer_vdev_elem* @g_malloc(i32 8, i32 %123)
  store %struct.consumer_vdev_elem* %124, %struct.consumer_vdev_elem** %17, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %126 = load %struct.consumer_vdev_elem*, %struct.consumer_vdev_elem** %17, align 8
  %127 = getelementptr inbounds %struct.consumer_vdev_elem, %struct.consumer_vdev_elem* %126, i32 0, i32 0
  store %struct.TYPE_15__* %125, %struct.TYPE_15__** %127, align 8
  %128 = load %struct.consumer_priv_t*, %struct.consumer_priv_t** %16, align 8
  %129 = load %struct.consumer_vdev_elem*, %struct.consumer_vdev_elem** %17, align 8
  %130 = load i32, i32* @elems, align 4
  %131 = call i32 @SLIST_INSERT_HEAD(%struct.consumer_priv_t* %128, %struct.consumer_vdev_elem* %129, i32 %130)
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 4
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = call i32 @spa_mode(%struct.TYPE_13__* %134)
  store i32 %135, i32* %18, align 4
  %136 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %137 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %136, i32 0, i32 1
  %138 = load %struct.g_provider*, %struct.g_provider** %137, align 8
  %139 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @VDEV_PAD_SIZE, align 8
  %142 = icmp sgt i64 %140, %141
  br i1 %142, label %152, label %143

143:                                              ; preds = %120
  %144 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %145 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %144, i32 0, i32 1
  %146 = load %struct.g_provider*, %struct.g_provider** %145, align 8
  %147 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i64 @ISP2(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %143, %120
  %153 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %154 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %153, i32 0, i32 1
  %155 = load %struct.g_provider*, %struct.g_provider** %154, align 8
  %156 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @ZFS_LOG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %157)
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %160 = call i32 @vdev_geom_close_locked(%struct.TYPE_15__* %159)
  %161 = load i32, i32* @EINVAL, align 4
  store i32 %161, i32* %15, align 4
  store %struct.g_consumer* null, %struct.g_consumer** %13, align 8
  br label %207

162:                                              ; preds = %143
  %163 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %164 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %167, label %206

167:                                              ; preds = %162
  %168 = load i32, i32* %18, align 4
  %169 = load i32, i32* @FWRITE, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %206

172:                                              ; preds = %167
  store i32 0, i32* %19, align 4
  br label %173

173:                                              ; preds = %189, %172
  %174 = load i32, i32* %19, align 4
  %175 = icmp slt i32 %174, 5
  br i1 %175, label %176, label %192

176:                                              ; preds = %173
  %177 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %178 = call i32 @g_access(%struct.g_consumer* %177, i32 0, i32 1, i32 0)
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %176
  br label %192

182:                                              ; preds = %176
  %183 = call i32 (...) @g_topology_unlock()
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %185 = load i32, i32* @hz, align 4
  %186 = sdiv i32 %185, 2
  %187 = call i32 @tsleep(%struct.TYPE_15__* %184, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %186)
  %188 = call i32 (...) @g_topology_lock()
  br label %189

189:                                              ; preds = %182
  %190 = load i32, i32* %19, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %19, align 4
  br label %173

192:                                              ; preds = %181, %173
  %193 = load i32, i32* %15, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %205

195:                                              ; preds = %192
  %196 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %197 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %196, i32 0, i32 1
  %198 = load %struct.g_provider*, %struct.g_provider** %197, align 8
  %199 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* %15, align 4
  %202 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i8* %200, i32 %201)
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %204 = call i32 @vdev_geom_close_locked(%struct.TYPE_15__* %203)
  store %struct.g_consumer* null, %struct.g_consumer** %13, align 8
  br label %205

205:                                              ; preds = %195, %192
  br label %206

206:                                              ; preds = %205, %167, %162
  br label %207

207:                                              ; preds = %206, %152
  br label %208

208:                                              ; preds = %207, %103
  %209 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %210 = icmp ne %struct.g_consumer* %209, null
  br i1 %210, label %211, label %221

211:                                              ; preds = %208
  %212 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %213 = call i32 @vdev_geom_attrchanged(%struct.g_consumer* %212, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %215 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %216 = load i32, i32* @B_FALSE, align 4
  %217 = call i32 @vdev_geom_set_physpath(%struct.TYPE_15__* %214, %struct.g_consumer* %215, i32 %216)
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %219 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %220 = call i32 @vdev_geom_set_rotation_rate(%struct.TYPE_15__* %218, %struct.g_consumer* %219)
  br label %221

221:                                              ; preds = %211, %208
  %222 = call i32 (...) @g_topology_unlock()
  %223 = call i32 (...) @PICKUP_GIANT()
  %224 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %225 = icmp eq %struct.g_consumer* %224, null
  br i1 %225, label %226, label %235

226:                                              ; preds = %221
  %227 = load i32, i32* @VDEV_AUX_OPEN_FAILED, align 4
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 3
  %230 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %229, i32 0, i32 0
  store i32 %227, i32* %230, align 4
  %231 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %232 = load i32, i32* %15, align 4
  %233 = call i32 @vdev_dbgmsg(%struct.TYPE_15__* %231, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %232)
  %234 = load i32, i32* %15, align 4
  store i32 %234, i32* %6, align 4
  br label %291

235:                                              ; preds = %221
  br label %236

236:                                              ; preds = %235, %47
  %237 = load %struct.g_consumer*, %struct.g_consumer** %13, align 8
  %238 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %237, i32 0, i32 1
  %239 = load %struct.g_provider*, %struct.g_provider** %238, align 8
  store %struct.g_provider* %239, %struct.g_provider** %12, align 8
  %240 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %241 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 8
  %243 = load i32*, i32** %8, align 8
  store i32 %242, i32* %243, align 4
  %244 = load i32*, i32** %9, align 8
  store i32 %242, i32* %244, align 4
  %245 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %246 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = trunc i64 %247 to i32
  %249 = load i32, i32* @SPA_MINBLOCKSIZE, align 4
  %250 = call i32 @MAX(i32 %248, i32 %249)
  %251 = call i32 @highbit(i32 %250)
  %252 = sub nsw i32 %251, 1
  %253 = load i32*, i32** %10, align 8
  store i32 %252, i32* %253, align 4
  %254 = load i32*, i32** %11, align 8
  store i32 0, i32* %254, align 4
  %255 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %256 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %255, i32 0, i32 3
  %257 = load i32, i32* %256, align 4
  %258 = load i32*, i32** %10, align 8
  %259 = load i32, i32* %258, align 4
  %260 = shl i32 1, %259
  %261 = icmp sgt i32 %257, %260
  br i1 %261, label %262, label %287

262:                                              ; preds = %236
  %263 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %264 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @ISP2(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %287

268:                                              ; preds = %262
  %269 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %270 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load i32, i32* @SPA_MAXASHIFT, align 4
  %273 = shl i32 1, %272
  %274 = icmp sle i32 %271, %273
  br i1 %274, label %275, label %287

275:                                              ; preds = %268
  %276 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %277 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %276, i32 0, i32 4
  %278 = load i64, i64* %277, align 8
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %287

280:                                              ; preds = %275
  %281 = load %struct.g_provider*, %struct.g_provider** %12, align 8
  %282 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 4
  %284 = call i32 @highbit(i32 %283)
  %285 = sub nsw i32 %284, 1
  %286 = load i32*, i32** %11, align 8
  store i32 %285, i32* %286, align 4
  br label %287

287:                                              ; preds = %280, %275, %268, %262, %236
  %288 = load i32, i32* @B_FALSE, align 4
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 8
  store i32 0, i32* %6, align 4
  br label %291

291:                                              ; preds = %287, %226, %36
  %292 = load i32, i32* %6, align 4
  ret i32 %292
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @tsd_set(i32, %struct.TYPE_15__*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @g_topology_lock(...) #1

declare dso_local %struct.g_consumer* @vdev_geom_open_by_path(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.g_consumer* @vdev_geom_open_by_guids(%struct.TYPE_15__*) #1

declare dso_local i32 @ZFS_LOG(i32, i8*, i8*) #1

declare dso_local i32 @SLIST_INIT(%struct.consumer_priv_t*) #1

declare dso_local %struct.consumer_vdev_elem* @g_malloc(i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(%struct.consumer_priv_t*, %struct.consumer_vdev_elem*, i32) #1

declare dso_local i32 @spa_mode(%struct.TYPE_13__*) #1

declare dso_local i64 @ISP2(i32) #1

declare dso_local i32 @vdev_geom_close_locked(%struct.TYPE_15__*) #1

declare dso_local i32 @g_access(%struct.g_consumer*, i32, i32, i32) #1

declare dso_local i32 @g_topology_unlock(...) #1

declare dso_local i32 @tsleep(%struct.TYPE_15__*, i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i32 @vdev_geom_attrchanged(%struct.g_consumer*, i8*) #1

declare dso_local i32 @vdev_geom_set_physpath(%struct.TYPE_15__*, %struct.g_consumer*, i32) #1

declare dso_local i32 @vdev_geom_set_rotation_rate(%struct.TYPE_15__*, %struct.g_consumer*) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

declare dso_local i32 @vdev_dbgmsg(%struct.TYPE_15__*, i8*, i32) #1

declare dso_local i32 @highbit(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
