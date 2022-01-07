; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_online.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i32, i32, i32, i64, i32, i32*, i64, i32, %struct.TYPE_17__**, %struct.TYPE_17__*, %struct.TYPE_19__*, i8*, i8*, %struct.TYPE_17__* }

@SCL_NONE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@ZFS_ONLINE_CHECKREMOVE = common dso_local global i32 0, align 4
@ZFS_ONLINE_FORCEFAULT = common dso_local global i32 0, align 4
@ZFS_ONLINE_EXPAND = common dso_local global i32 0, align 4
@ZFS_ONLINE_UNSPARE = common dso_local global i32 0, align 4
@vdev_spare_ops = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@SPA_ASYNC_CONFIG_UPDATE = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_ACTIVE = common dso_local global i64 0, align 8
@VDEV_STATE_DEGRADED = common dso_local global i64 0, align 8
@ESC_ZFS_VDEV_ONLINE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_online(%struct.TYPE_18__* %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  store %struct.TYPE_17__* %18, %struct.TYPE_17__** %13, align 8
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %20 = load i32, i32* @SCL_NONE, align 4
  %21 = call i32 @spa_vdev_state_enter(%struct.TYPE_18__* %19, i32 %20)
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @B_TRUE, align 4
  %25 = call %struct.TYPE_17__* @spa_lookup_by_guid(%struct.TYPE_18__* %22, i32 %23, i32 %24)
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %10, align 8
  %26 = icmp eq %struct.TYPE_17__* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %4
  %28 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %29 = load i32, i32* @ENODEV, align 4
  %30 = call i32 @spa_vdev_state_exit(%struct.TYPE_18__* %28, %struct.TYPE_17__* null, i32 %29)
  store i32 %30, i32* %5, align 4
  br label %252

31:                                               ; preds = %4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 11
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %40 = load i32, i32* @ENOTSUP, align 4
  %41 = call i32 @spa_vdev_state_exit(%struct.TYPE_18__* %39, %struct.TYPE_17__* null, i32 %40)
  store i32 %41, i32* %5, align 4
  br label %252

42:                                               ; preds = %31
  %43 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 13
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 12
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br label %52

52:                                               ; preds = %47, %42
  %53 = phi i1 [ true, %42 ], [ %51, %47 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %15, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 14
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %59, align 8
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %11, align 8
  %61 = load i8*, i8** @B_FALSE, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 13
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @B_FALSE, align 8
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 12
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @ZFS_ONLINE_CHECKREMOVE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @ZFS_ONLINE_FORCEFAULT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 7
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %52
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %90, %struct.TYPE_17__** %12, align 8
  br label %91

91:                                               ; preds = %105, %89
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %94 = icmp ne %struct.TYPE_17__* %92, %93
  br i1 %94, label %95, label %109

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @ZFS_ONLINE_EXPAND, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  br label %105

105:                                              ; preds = %95
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 10
  %108 = load %struct.TYPE_17__*, %struct.TYPE_17__** %107, align 8
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %12, align 8
  br label %91

109:                                              ; preds = %91
  br label %110

110:                                              ; preds = %109, %52
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %112 = call i32 @vdev_reopen(%struct.TYPE_17__* %111)
  %113 = load i8*, i8** @B_FALSE, align 8
  %114 = ptrtoint i8* %113 to i32
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %117, i32 0, i32 1
  store i32 %114, i32* %118, align 8
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %110
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %124, %struct.TYPE_17__** %12, align 8
  br label %125

125:                                              ; preds = %134, %123
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %127 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %128 = icmp ne %struct.TYPE_17__* %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i8*, i8** @B_FALSE, align 8
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 3
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %129
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 10
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %136, align 8
  store %struct.TYPE_17__* %137, %struct.TYPE_17__** %12, align 8
  br label %125

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138, %110
  %140 = load i64*, i64** %9, align 8
  %141 = icmp ne i64* %140, null
  br i1 %141, label %142, label %147

142:                                              ; preds = %139
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64*, i64** %9, align 8
  store i64 %145, i64* %146, align 8
  br label %147

147:                                              ; preds = %142, %139
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* @ZFS_ONLINE_UNSPARE, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %182

152:                                              ; preds = %147
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %154 = call i32 @vdev_is_dead(%struct.TYPE_17__* %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %182, label %156

156:                                              ; preds = %152
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 10
  %159 = load %struct.TYPE_17__*, %struct.TYPE_17__** %158, align 8
  %160 = icmp ne %struct.TYPE_17__* %159, null
  br i1 %160, label %161, label %182

161:                                              ; preds = %156
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 10
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 11
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %165, align 8
  %167 = icmp eq %struct.TYPE_19__* %166, @vdev_spare_ops
  br i1 %167, label %168, label %182

168:                                              ; preds = %161
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %169, i32 0, i32 10
  %171 = load %struct.TYPE_17__*, %struct.TYPE_17__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %171, i32 0, i32 9
  %173 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %173, i64 0
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %174, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %177 = icmp eq %struct.TYPE_17__* %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %168
  %179 = load i32, i32* @B_TRUE, align 4
  %180 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %180, i32 0, i32 8
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %178, %168, %161, %156, %152, %147
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @ZFS_ONLINE_EXPAND, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %192, label %187

187:                                              ; preds = %182
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %206

192:                                              ; preds = %187, %182
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 7
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %192
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %199 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %200 = load i32, i32* @ENOTSUP, align 4
  %201 = call i32 @spa_vdev_state_exit(%struct.TYPE_18__* %198, %struct.TYPE_17__* %199, i32 %200)
  store i32 %201, i32* %5, align 4
  br label %252

202:                                              ; preds = %192
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %204 = load i32, i32* @SPA_ASYNC_CONFIG_UPDATE, align 4
  %205 = call i32 @spa_async_request(%struct.TYPE_18__* %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %187
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 5
  %209 = call i32 @mutex_enter(i32* %208)
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %211 = call i64 @vdev_writeable(%struct.TYPE_17__* %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %227

213:                                              ; preds = %206
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  %217 = icmp eq i32* %216, null
  br i1 %217, label %218, label %227

218:                                              ; preds = %213
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @VDEV_INITIALIZE_ACTIVE, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %226 = call i32 @vdev_initialize(%struct.TYPE_17__* %225)
  br label %227

227:                                              ; preds = %224, %218, %213, %206
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %228, i32 0, i32 5
  %230 = call i32 @mutex_exit(i32* %229)
  %231 = load i32, i32* %14, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %243, label %233

233:                                              ; preds = %227
  %234 = load i64, i64* %15, align 8
  %235 = load i64, i64* @VDEV_STATE_DEGRADED, align 8
  %236 = icmp slt i64 %234, %235
  br i1 %236, label %237, label %248

237:                                              ; preds = %233
  %238 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @VDEV_STATE_DEGRADED, align 8
  %242 = icmp sge i64 %240, %241
  br i1 %242, label %243, label %248

243:                                              ; preds = %237, %227
  %244 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %245 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %246 = load i32, i32* @ESC_ZFS_VDEV_ONLINE, align 4
  %247 = call i32 @spa_event_notify(%struct.TYPE_18__* %244, %struct.TYPE_17__* %245, i32* null, i32 %246)
  br label %248

248:                                              ; preds = %243, %237, %233
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %251 = call i32 @spa_vdev_state_exit(%struct.TYPE_18__* %249, %struct.TYPE_17__* %250, i32 0)
  store i32 %251, i32* %5, align 4
  br label %252

252:                                              ; preds = %248, %197, %38, %27
  %253 = load i32, i32* %5, align 4
  ret i32 %253
}

declare dso_local i32 @spa_vdev_state_enter(%struct.TYPE_18__*, i32) #1

declare dso_local %struct.TYPE_17__* @spa_lookup_by_guid(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @spa_vdev_state_exit(%struct.TYPE_18__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @vdev_reopen(%struct.TYPE_17__*) #1

declare dso_local i32 @vdev_is_dead(%struct.TYPE_17__*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @vdev_writeable(%struct.TYPE_17__*) #1

declare dso_local i32 @vdev_initialize(%struct.TYPE_17__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_18__*, %struct.TYPE_17__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
