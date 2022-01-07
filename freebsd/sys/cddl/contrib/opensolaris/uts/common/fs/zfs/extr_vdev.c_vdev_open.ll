; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_20__*, i64*, i64*, i64*, i64*)*, i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_17__*, i32*, i32, %struct.TYPE_20__*, i64, i64, i64, i32*, %struct.TYPE_18__**, i8*, i64, i64, i64, i8*, %struct.TYPE_19__, i8*, i64, i8*, i8*, %struct.TYPE_21__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_21__ = type { i64, i64, i32, i64 }

@curthread = common dso_local global i64 0, align 8
@SCL_STATE_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@VDEV_STATE_CLOSED = common dso_local global i64 0, align 8
@VDEV_STATE_CANT_OPEN = common dso_local global i64 0, align 8
@VDEV_STATE_OFFLINE = common dso_local global i64 0, align 8
@VDEV_AUX_NONE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i8* null, align 8
@VDEV_AUX_ERR_EXCEEDED = common dso_local global i64 0, align 8
@VDEV_AUX_EXTERNAL = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@VDEV_STATE_FAULTED = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@zio_injection_enabled = common dso_local global i64 0, align 8
@VDEV_AUX_OPEN_FAILED = common dso_local global i64 0, align 8
@VDEV_AUX_CHILDREN_OFFLINE = common dso_local global i64 0, align 8
@VDEV_STATE_DEGRADED = common dso_local global i64 0, align 8
@VDEV_STATE_HEALTHY = common dso_local global i64 0, align 8
@vdev_missing_ops = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@zfs_trim_enabled = common dso_local global i64 0, align 8
@SPA_MINDEVSIZE = common dso_local global i64 0, align 8
@VDEV_AUX_TOO_SMALL = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@VDEV_LABEL_START_SIZE = common dso_local global i64 0, align 8
@VDEV_LABEL_END_SIZE = common dso_local global i64 0, align 8
@VDEV_AUX_BAD_LABEL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SPA_MAXASHIFT = common dso_local global i64 0, align 8
@VDEV_AUX_ASHIFT_TOO_BIG = common dso_local global i64 0, align 8
@SPA_ASYNC_RESILVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_open(%struct.TYPE_20__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %14, i32 0, i32 28
  %16 = load %struct.TYPE_21__*, %struct.TYPE_21__** %15, align 8
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @curthread, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %1
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %24 = load i64, i64* @SCL_STATE_ALL, align 8
  %25 = load i32, i32* @RW_WRITER, align 4
  %26 = call i64 @spa_config_held(%struct.TYPE_21__* %23, i64 %24, i32 %25)
  %27 = load i64, i64* @SCL_STATE_ALL, align 8
  %28 = icmp eq i64 %26, %27
  br label %29

29:                                               ; preds = %22, %1
  %30 = phi i1 [ true, %1 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VDEV_STATE_CLOSED, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %29
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VDEV_STATE_OFFLINE, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %44, %38, %29
  %51 = phi i1 [ true, %38 ], [ true, %29 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load i64, i64* @VDEV_AUX_NONE, align 8
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 23
  %57 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load i8*, i8** @B_FALSE, align 8
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 27
  store i8* %58, i8** %60, align 8
  %61 = load i8*, i8** @B_FALSE, align 8
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i32 0, i32 26
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** @B_FALSE, align 8
  %65 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %65, i32 0, i32 18
  store i8* %64, i8** %66, align 8
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = call i64 @vdev_get_min_asize(%struct.TYPE_20__* %67)
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 2
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %71, i32 0, i32 22
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %111, label %75

75:                                               ; preds = %50
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 21
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %111

80:                                               ; preds = %75
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i32 @ASSERT(i32 %85)
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 4
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @VDEV_AUX_ERR_EXCEEDED, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %80
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @VDEV_AUX_EXTERNAL, align 8
  %97 = icmp eq i64 %95, %96
  br label %98

98:                                               ; preds = %92, %80
  %99 = phi i1 [ true, %80 ], [ %97, %92 ]
  %100 = zext i1 %99 to i32
  %101 = call i32 @ASSERT(i32 %100)
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %103 = load i32, i32* @B_TRUE, align 4
  %104 = load i64, i64* @VDEV_STATE_FAULTED, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @vdev_set_state(%struct.TYPE_20__* %102, i32 %103, i64 %104, i64 %107)
  %109 = load i32, i32* @ENXIO, align 4
  %110 = call i32 @SET_ERROR(i32 %109)
  store i32 %110, i32* %2, align 4
  br label %594

111:                                              ; preds = %75, %50
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 25
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp eq i64 %119, 0
  %121 = zext i1 %120 to i32
  %122 = call i32 @ASSERT(i32 %121)
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %124 = load i32, i32* @B_TRUE, align 4
  %125 = load i64, i64* @VDEV_STATE_OFFLINE, align 8
  %126 = load i64, i64* @VDEV_AUX_NONE, align 8
  %127 = call i32 @vdev_set_state(%struct.TYPE_20__* %123, i32 %124, i64 %125, i64 %126)
  %128 = load i32, i32* @ENXIO, align 4
  %129 = call i32 @SET_ERROR(i32 %128)
  store i32 %129, i32* %2, align 4
  br label %594

130:                                              ; preds = %111
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 9
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32 (%struct.TYPE_20__*, i64*, i64*, i64*, i64*)*, i32 (%struct.TYPE_20__*, i64*, i64*, i64*, i64*)** %135, align 8
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %138 = call i32 %136(%struct.TYPE_20__* %137, i64* %6, i64* %7, i64* %11, i64* %12)
  store i32 %138, i32* %5, align 4
  %139 = load i8*, i8** @B_FALSE, align 8
  %140 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %141 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %140, i32 0, i32 24
  store i8* %139, i8** %141, align 8
  %142 = load i64, i64* @zio_injection_enabled, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %131
  %145 = load i32, i32* %5, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %151

147:                                              ; preds = %144
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %149 = load i32, i32* @ENXIO, align 4
  %150 = call i32 @zio_handle_device_injection(%struct.TYPE_20__* %148, i32* null, i32 %149)
  store i32 %150, i32* %5, align 4
  br label %151

151:                                              ; preds = %147, %144, %131
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %197

154:                                              ; preds = %151
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 22
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %159, label %170

159:                                              ; preds = %154
  %160 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %160, i32 0, i32 23
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @VDEV_AUX_OPEN_FAILED, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = load i8*, i8** @B_FALSE, align 8
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 22
  store i8* %167, i8** %169, align 8
  br label %170

170:                                              ; preds = %166, %159, %154
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 23
  %173 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @VDEV_AUX_CHILDREN_OFFLINE, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %177, label %186

177:                                              ; preds = %170
  %178 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %179 = load i32, i32* @B_TRUE, align 4
  %180 = load i64, i64* @VDEV_STATE_OFFLINE, align 8
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 23
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @vdev_set_state(%struct.TYPE_20__* %178, i32 %179, i64 %180, i64 %184)
  br label %195

186:                                              ; preds = %170
  %187 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %188 = load i32, i32* @B_TRUE, align 4
  %189 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 23
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @vdev_set_state(%struct.TYPE_20__* %187, i32 %188, i64 %189, i64 %193)
  br label %195

195:                                              ; preds = %186, %177
  %196 = load i32, i32* %5, align 4
  store i32 %196, i32* %2, align 4
  br label %594

197:                                              ; preds = %151
  %198 = load i8*, i8** @B_FALSE, align 8
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %200 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %199, i32 0, i32 22
  store i8* %198, i8** %200, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %201, i32 0, i32 21
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %236

205:                                              ; preds = %197
  %206 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = icmp eq i64 %208, 0
  %210 = zext i1 %209 to i32
  %211 = call i32 @ASSERT(i32 %210)
  %212 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %212, i32 0, i32 4
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @VDEV_AUX_ERR_EXCEEDED, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %223, label %217

217:                                              ; preds = %205
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %219 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @VDEV_AUX_EXTERNAL, align 8
  %222 = icmp eq i64 %220, %221
  br label %223

223:                                              ; preds = %217, %205
  %224 = phi i1 [ true, %205 ], [ %222, %217 ]
  %225 = zext i1 %224 to i32
  %226 = call i32 @ASSERT(i32 %225)
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %228 = load i32, i32* @B_TRUE, align 4
  %229 = load i64, i64* @VDEV_STATE_FAULTED, align 8
  %230 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %231 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %230, i32 0, i32 4
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @vdev_set_state(%struct.TYPE_20__* %227, i32 %228, i64 %229, i64 %232)
  %234 = load i32, i32* @ENXIO, align 4
  %235 = call i32 @SET_ERROR(i32 %234)
  store i32 %235, i32* %2, align 4
  br label %594

236:                                              ; preds = %197
  %237 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %237, i32 0, i32 20
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %253

241:                                              ; preds = %236
  %242 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %243 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = icmp eq i64 %244, 0
  %246 = zext i1 %245 to i32
  %247 = call i32 @ASSERT(i32 %246)
  %248 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %249 = load i32, i32* @B_TRUE, align 4
  %250 = load i64, i64* @VDEV_STATE_DEGRADED, align 8
  %251 = load i64, i64* @VDEV_AUX_ERR_EXCEEDED, align 8
  %252 = call i32 @vdev_set_state(%struct.TYPE_20__* %248, i32 %249, i64 %250, i64 %251)
  br label %258

253:                                              ; preds = %236
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %255 = load i32, i32* @B_TRUE, align 4
  %256 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %257 = call i32 @vdev_set_state(%struct.TYPE_20__* %254, i32 %255, i64 %256, i64 0)
  br label %258

258:                                              ; preds = %253, %241
  %259 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %260 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %259, i32 0, i32 19
  %261 = load i64, i64* %260, align 8
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %268, label %263

263:                                              ; preds = %258
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %265 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %264, i32 0, i32 9
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %265, align 8
  %267 = icmp eq %struct.TYPE_17__* %266, @vdev_missing_ops
  br i1 %267, label %268, label %269

268:                                              ; preds = %263, %258
  store i32 0, i32* %2, align 4
  br label %594

269:                                              ; preds = %263
  %270 = load i64, i64* @zfs_trim_enabled, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %287

272:                                              ; preds = %269
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 18
  %275 = load i8*, i8** %274, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %287, label %277

277:                                              ; preds = %272
  %278 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %279 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %278, i32 0, i32 9
  %280 = load %struct.TYPE_17__*, %struct.TYPE_17__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %280, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %287

284:                                              ; preds = %277
  %285 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %286 = call i32 @trim_map_create(%struct.TYPE_20__* %285)
  br label %287

287:                                              ; preds = %284, %277, %272, %269
  store i32 0, i32* %13, align 4
  br label %288

288:                                              ; preds = %314, %287
  %289 = load i32, i32* %13, align 4
  %290 = sext i32 %289 to i64
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 3
  %293 = load i64, i64* %292, align 8
  %294 = icmp slt i64 %290, %293
  br i1 %294, label %295, label %317

295:                                              ; preds = %288
  %296 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %296, i32 0, i32 17
  %298 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %297, align 8
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %298, i64 %300
  %302 = load %struct.TYPE_18__*, %struct.TYPE_18__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %302, i32 0, i32 0
  %304 = load i64, i64* %303, align 8
  %305 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %306 = icmp ne i64 %304, %305
  br i1 %306, label %307, label %313

307:                                              ; preds = %295
  %308 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %309 = load i32, i32* @B_TRUE, align 4
  %310 = load i64, i64* @VDEV_STATE_DEGRADED, align 8
  %311 = load i64, i64* @VDEV_AUX_NONE, align 8
  %312 = call i32 @vdev_set_state(%struct.TYPE_20__* %308, i32 %309, i64 %310, i64 %311)
  br label %317

313:                                              ; preds = %295
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %13, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %13, align 4
  br label %288

317:                                              ; preds = %307, %288
  %318 = load i64, i64* %6, align 8
  %319 = call i64 @P2ALIGN(i64 %318, i64 4)
  store i64 %319, i64* %6, align 8
  %320 = load i64, i64* %7, align 8
  %321 = call i64 @P2ALIGN(i64 %320, i64 4)
  store i64 %321, i64* %7, align 8
  %322 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %323 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %322, i32 0, i32 3
  %324 = load i64, i64* %323, align 8
  %325 = icmp eq i64 %324, 0
  br i1 %325, label %326, label %350

326:                                              ; preds = %317
  %327 = load i64, i64* %6, align 8
  %328 = load i64, i64* @SPA_MINDEVSIZE, align 8
  %329 = icmp slt i64 %327, %328
  br i1 %329, label %330, label %338

330:                                              ; preds = %326
  %331 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %332 = load i32, i32* @B_TRUE, align 4
  %333 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %334 = load i64, i64* @VDEV_AUX_TOO_SMALL, align 8
  %335 = call i32 @vdev_set_state(%struct.TYPE_20__* %331, i32 %332, i64 %333, i64 %334)
  %336 = load i32, i32* @EOVERFLOW, align 4
  %337 = call i32 @SET_ERROR(i32 %336)
  store i32 %337, i32* %2, align 4
  br label %594

338:                                              ; preds = %326
  %339 = load i64, i64* %6, align 8
  store i64 %339, i64* %10, align 8
  %340 = load i64, i64* %6, align 8
  %341 = load i64, i64* @VDEV_LABEL_START_SIZE, align 8
  %342 = load i64, i64* @VDEV_LABEL_END_SIZE, align 8
  %343 = add nsw i64 %341, %342
  %344 = sub nsw i64 %340, %343
  store i64 %344, i64* %8, align 8
  %345 = load i64, i64* %7, align 8
  %346 = load i64, i64* @VDEV_LABEL_START_SIZE, align 8
  %347 = load i64, i64* @VDEV_LABEL_END_SIZE, align 8
  %348 = add nsw i64 %346, %347
  %349 = sub nsw i64 %345, %348
  store i64 %349, i64* %9, align 8
  br label %374

350:                                              ; preds = %317
  %351 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %352 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %351, i32 0, i32 16
  %353 = load i32*, i32** %352, align 8
  %354 = icmp ne i32* %353, null
  br i1 %354, label %355, label %371

355:                                              ; preds = %350
  %356 = load i64, i64* %6, align 8
  %357 = load i64, i64* @SPA_MINDEVSIZE, align 8
  %358 = load i64, i64* @VDEV_LABEL_START_SIZE, align 8
  %359 = load i64, i64* @VDEV_LABEL_END_SIZE, align 8
  %360 = add nsw i64 %358, %359
  %361 = sub nsw i64 %357, %360
  %362 = icmp slt i64 %356, %361
  br i1 %362, label %363, label %371

363:                                              ; preds = %355
  %364 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %365 = load i32, i32* @B_TRUE, align 4
  %366 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %367 = load i64, i64* @VDEV_AUX_TOO_SMALL, align 8
  %368 = call i32 @vdev_set_state(%struct.TYPE_20__* %364, i32 %365, i64 %366, i64 %367)
  %369 = load i32, i32* @EOVERFLOW, align 4
  %370 = call i32 @SET_ERROR(i32 %369)
  store i32 %370, i32* %2, align 4
  br label %594

371:                                              ; preds = %355, %350
  store i64 0, i64* %10, align 8
  %372 = load i64, i64* %6, align 8
  store i64 %372, i64* %8, align 8
  %373 = load i64, i64* %7, align 8
  store i64 %373, i64* %9, align 8
  br label %374

374:                                              ; preds = %371, %338
  %375 = load i64, i64* %10, align 8
  %376 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %377 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %376, i32 0, i32 15
  store i64 %375, i64* %377, align 8
  %378 = load i64, i64* %8, align 8
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 2
  %381 = load i64, i64* %380, align 8
  %382 = icmp slt i64 %378, %381
  br i1 %382, label %383, label %391

383:                                              ; preds = %374
  %384 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %385 = load i32, i32* @B_TRUE, align 4
  %386 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %387 = load i64, i64* @VDEV_AUX_BAD_LABEL, align 8
  %388 = call i32 @vdev_set_state(%struct.TYPE_20__* %384, i32 %385, i64 %386, i64 %387)
  %389 = load i32, i32* @EINVAL, align 4
  %390 = call i32 @SET_ERROR(i32 %389)
  store i32 %390, i32* %2, align 4
  br label %594

391:                                              ; preds = %374
  %392 = load i64, i64* %12, align 8
  %393 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %394 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %393, i32 0, i32 5
  %395 = load i64, i64* %394, align 8
  %396 = call i8* @MAX(i64 %392, i64 %395)
  %397 = ptrtoint i8* %396 to i64
  %398 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %399 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %398, i32 0, i32 5
  store i64 %397, i64* %399, align 8
  %400 = load i64, i64* %11, align 8
  %401 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %402 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %401, i32 0, i32 6
  %403 = load i64, i64* %402, align 8
  %404 = call i8* @MAX(i64 %400, i64 %403)
  %405 = ptrtoint i8* %404 to i64
  %406 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %407 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %406, i32 0, i32 6
  store i64 %405, i64* %407, align 8
  %408 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %408, i32 0, i32 6
  %410 = load i64, i64* %409, align 8
  %411 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %412 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %411, i32 0, i32 7
  %413 = load i64, i64* %412, align 8
  %414 = call i8* @MAX(i64 %410, i64 %413)
  %415 = ptrtoint i8* %414 to i64
  %416 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 7
  store i64 %415, i64* %417, align 8
  %418 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %419 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %418, i32 0, i32 6
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @SPA_MAXASHIFT, align 8
  %422 = icmp sgt i64 %420, %421
  br i1 %422, label %423, label %430

423:                                              ; preds = %391
  %424 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %425 = load i32, i32* @B_TRUE, align 4
  %426 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %427 = load i64, i64* @VDEV_AUX_ASHIFT_TOO_BIG, align 8
  %428 = call i32 @vdev_set_state(%struct.TYPE_20__* %424, i32 %425, i64 %426, i64 %427)
  %429 = load i32, i32* @EINVAL, align 4
  store i32 %429, i32* %2, align 4
  br label %594

430:                                              ; preds = %391
  %431 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %431, i32 0, i32 8
  %433 = load i64, i64* %432, align 8
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %442

435:                                              ; preds = %430
  %436 = load i64, i64* %8, align 8
  %437 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %438 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %437, i32 0, i32 8
  store i64 %436, i64* %438, align 8
  %439 = load i64, i64* %9, align 8
  %440 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %440, i32 0, i32 14
  store i64 %439, i64* %441, align 8
  br label %470

442:                                              ; preds = %430
  %443 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %444 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %443, i32 0, i32 7
  %445 = load i64, i64* %444, align 8
  %446 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %446, i32 0, i32 12
  %448 = load %struct.TYPE_20__*, %struct.TYPE_20__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %448, i32 0, i32 7
  %450 = load i64, i64* %449, align 8
  %451 = icmp sgt i64 %445, %450
  br i1 %451, label %452, label %466

452:                                              ; preds = %442
  %453 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %454 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %453, i32 0, i32 9
  %455 = load %struct.TYPE_17__*, %struct.TYPE_17__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %466

459:                                              ; preds = %452
  %460 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %461 = load i32, i32* @B_TRUE, align 4
  %462 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %463 = load i64, i64* @VDEV_AUX_BAD_LABEL, align 8
  %464 = call i32 @vdev_set_state(%struct.TYPE_20__* %460, i32 %461, i64 %462, i64 %463)
  %465 = load i32, i32* @EINVAL, align 4
  store i32 %465, i32* %2, align 4
  br label %594

466:                                              ; preds = %452, %442
  %467 = load i64, i64* %9, align 8
  %468 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %469 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %468, i32 0, i32 14
  store i64 %467, i64* %469, align 8
  br label %470

470:                                              ; preds = %466, %435
  %471 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %472 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %471, i32 0, i32 1
  %473 = load i64, i64* %472, align 8
  %474 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %475 = icmp eq i64 %473, %474
  br i1 %475, label %476, label %502

476:                                              ; preds = %470
  %477 = load i64, i64* %8, align 8
  %478 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %478, i32 0, i32 8
  %480 = load i64, i64* %479, align 8
  %481 = icmp sgt i64 %477, %480
  br i1 %481, label %482, label %492

482:                                              ; preds = %476
  %483 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %484 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %483, i32 0, i32 13
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %498, label %487

487:                                              ; preds = %482
  %488 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %489 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i32 0, i32 3
  %490 = load i64, i64* %489, align 8
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %498, label %492

492:                                              ; preds = %487, %476
  %493 = load i64, i64* %8, align 8
  %494 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %495 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %494, i32 0, i32 8
  %496 = load i64, i64* %495, align 8
  %497 = icmp slt i64 %493, %496
  br i1 %497, label %498, label %502

498:                                              ; preds = %492, %487, %482
  %499 = load i64, i64* %8, align 8
  %500 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %500, i32 0, i32 8
  store i64 %499, i64* %501, align 8
  br label %502

502:                                              ; preds = %498, %492, %470
  %503 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %504 = call i32 @vdev_set_min_asize(%struct.TYPE_20__* %503)
  %505 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %506 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %505, i32 0, i32 9
  %507 = load %struct.TYPE_17__*, %struct.TYPE_17__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %507, i32 0, i32 1
  %509 = load i64, i64* %508, align 8
  %510 = icmp ne i64 %509, 0
  br i1 %510, label %511, label %523

511:                                              ; preds = %502
  %512 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %513 = call i32 @vdev_probe(%struct.TYPE_20__* %512, i32* null)
  %514 = call i32 @zio_wait(i32 %513)
  store i32 %514, i32* %5, align 4
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %523

516:                                              ; preds = %511
  %517 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %518 = load i32, i32* @B_TRUE, align 4
  %519 = load i64, i64* @VDEV_STATE_FAULTED, align 8
  %520 = load i64, i64* @VDEV_AUX_ERR_EXCEEDED, align 8
  %521 = call i32 @vdev_set_state(%struct.TYPE_20__* %517, i32 %518, i64 %519, i64 %520)
  %522 = load i32, i32* %5, align 4
  store i32 %522, i32* %2, align 4
  br label %594

523:                                              ; preds = %511, %502
  %524 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %525 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %524, i32 0, i32 12
  %526 = load %struct.TYPE_20__*, %struct.TYPE_20__** %525, align 8
  %527 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %528 = icmp eq %struct.TYPE_20__* %526, %527
  br i1 %528, label %529, label %573

529:                                              ; preds = %523
  %530 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %531 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %530, i32 0, i32 7
  %532 = load i64, i64* %531, align 8
  %533 = icmp ne i64 %532, 0
  br i1 %533, label %534, label %573

534:                                              ; preds = %529
  %535 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %536 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %535, i32 0, i32 11
  %537 = load i32, i32* %536, align 8
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %573, label %539

539:                                              ; preds = %534
  %540 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %541 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %540, i32 0, i32 10
  %542 = load i32*, i32** %541, align 8
  %543 = icmp eq i32* %542, null
  br i1 %543, label %544, label %573

544:                                              ; preds = %539
  %545 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %546 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %545, i32 0, i32 7
  %547 = load i64, i64* %546, align 8
  %548 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %549 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %548, i32 0, i32 0
  %550 = load i64, i64* %549, align 8
  %551 = icmp sgt i64 %547, %550
  br i1 %551, label %552, label %558

552:                                              ; preds = %544
  %553 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %554 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %553, i32 0, i32 7
  %555 = load i64, i64* %554, align 8
  %556 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %557 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %556, i32 0, i32 0
  store i64 %555, i64* %557, align 8
  br label %558

558:                                              ; preds = %552, %544
  %559 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %560 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %559, i32 0, i32 7
  %561 = load i64, i64* %560, align 8
  %562 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %563 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %562, i32 0, i32 1
  %564 = load i64, i64* %563, align 8
  %565 = icmp slt i64 %561, %564
  br i1 %565, label %566, label %572

566:                                              ; preds = %558
  %567 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %568 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %567, i32 0, i32 7
  %569 = load i64, i64* %568, align 8
  %570 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %571 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %570, i32 0, i32 1
  store i64 %569, i64* %571, align 8
  br label %572

572:                                              ; preds = %566, %558
  br label %573

573:                                              ; preds = %572, %539, %534, %529, %523
  %574 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %575 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %574, i32 0, i32 9
  %576 = load %struct.TYPE_17__*, %struct.TYPE_17__** %575, align 8
  %577 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %576, i32 0, i32 1
  %578 = load i64, i64* %577, align 8
  %579 = icmp ne i64 %578, 0
  br i1 %579, label %580, label %593

580:                                              ; preds = %573
  %581 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %582 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %581, i32 0, i32 2
  %583 = load i32, i32* %582, align 8
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %593, label %585

585:                                              ; preds = %580
  %586 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %587 = call i64 @vdev_resilver_needed(%struct.TYPE_20__* %586, i32* null, i32* null)
  %588 = icmp ne i64 %587, 0
  br i1 %588, label %589, label %593

589:                                              ; preds = %585
  %590 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %591 = load i32, i32* @SPA_ASYNC_RESILVER, align 4
  %592 = call i32 @spa_async_request(%struct.TYPE_21__* %590, i32 %591)
  br label %593

593:                                              ; preds = %589, %585, %580, %573
  store i32 0, i32* %2, align 4
  br label %594

594:                                              ; preds = %593, %516, %459, %423, %383, %363, %330, %268, %223, %195, %116, %98
  %595 = load i32, i32* %2, align 4
  ret i32 %595
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_21__*, i64, i32) #1

declare dso_local i64 @vdev_get_min_asize(%struct.TYPE_20__*) #1

declare dso_local i32 @vdev_set_state(%struct.TYPE_20__*, i32, i64, i64) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zio_handle_device_injection(%struct.TYPE_20__*, i32*, i32) #1

declare dso_local i32 @trim_map_create(%struct.TYPE_20__*) #1

declare dso_local i64 @P2ALIGN(i64, i64) #1

declare dso_local i8* @MAX(i64, i64) #1

declare dso_local i32 @vdev_set_min_asize(%struct.TYPE_20__*) #1

declare dso_local i32 @zio_wait(i32) #1

declare dso_local i32 @vdev_probe(%struct.TYPE_20__*, i32*) #1

declare dso_local i64 @vdev_resilver_needed(%struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @spa_async_request(%struct.TYPE_21__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
