; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_mirror.c_vdev_mirror_io_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_mirror.c_vdev_mirror_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32, i32, i32, i32, i32, i32, i8*, i32, i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_15__*, i64, i32 }
%struct.TYPE_15__ = type { i32* }

@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@ZIO_TYPE_FREE = common dso_local global i64 0, align 8
@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@vdev_mirror_child_done = common dso_local global i32* null, align 8
@ZIO_FLAG_RESILVER = common dso_local global i32 0, align 4
@ZIO_FLAG_SCRUB = common dso_local global i32 0, align 4
@vdev_indirect_ops = common dso_local global i32 0, align 4
@DTL_PARTIAL = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_WRITE = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_REPAIR = common dso_local global i32 0, align 4
@ZIO_FLAG_SELF_HEAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @vdev_mirror_io_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_mirror_io_done(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 10
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = icmp eq %struct.TYPE_13__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %281

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %51, %14
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %54

21:                                               ; preds = %15
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i64 %26
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %4, align 8
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %21
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %37, %32
  br label %50

41:                                               ; preds = %21
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %41
  br label %50

50:                                               ; preds = %49, %40
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %15

54:                                               ; preds = %15
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %81

60:                                               ; preds = %54
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 9
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %69, %66
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %76 = call i8* @vdev_mirror_worst_error(%struct.TYPE_13__* %75)
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 7
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %74, %69
  br label %80

80:                                               ; preds = %79, %60
  br label %281

81:                                               ; preds = %54
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ZIO_TYPE_FREE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %81
  br label %281

88:                                               ; preds = %81
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @ZIO_TYPE_READ, align 8
  %94 = icmp eq i64 %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %148

99:                                               ; preds = %89
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %101 = call i32 @vdev_mirror_child_select(%struct.TYPE_12__* %100)
  store i32 %101, i32* %5, align 4
  %102 = icmp ne i32 %101, -1
  br i1 %102, label %103, label %148

103:                                              ; preds = %99
  %104 = load i32, i32* %5, align 4
  %105 = icmp sge i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp slt i32 %107, %110
  br label %112

112:                                              ; preds = %106, %103
  %113 = phi i1 [ false, %103 ], [ %111, %106 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @ASSERT(i32 %114)
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i64 %120
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %4, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %123 = call i32 @zio_vdev_io_redone(%struct.TYPE_12__* %122)
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load i64, i64* @ZIO_TYPE_READ, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 8
  %144 = load i32*, i32** @vdev_mirror_child_done, align 8
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %146 = call i32 @zio_vdev_child_io(%struct.TYPE_12__* %124, i32 %127, %struct.TYPE_15__* %130, i32 %133, i32 %136, i32 %139, i64 %140, i32 %143, i32 0, i32* %144, %struct.TYPE_14__* %145)
  %147 = call i32 @zio_nowait(i32 %146)
  br label %281

148:                                              ; preds = %99, %89
  %149 = load i32, i32* %6, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %148
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %153 = call i8* @vdev_mirror_worst_error(%struct.TYPE_13__* %152)
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 7
  store i8* %153, i8** %155, align 8
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 7
  %158 = load i8*, i8** %157, align 8
  %159 = icmp ne i8* %158, null
  %160 = zext i1 %159 to i32
  %161 = call i32 @ASSERT(i32 %160)
  br label %162

162:                                              ; preds = %151, %148
  %163 = load i32, i32* %6, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %281

165:                                              ; preds = %162
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 6
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @spa_writeable(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %281

171:                                              ; preds = %165
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %193, label %174

174:                                              ; preds = %171
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @ZIO_FLAG_RESILVER, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %193, label %181

181:                                              ; preds = %174
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @ZIO_FLAG_SCRUB, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %281

188:                                              ; preds = %181
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 2
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %281

193:                                              ; preds = %188, %174, %171
  store i32 0, i32* %5, align 4
  br label %194

194:                                              ; preds = %277, %193
  %195 = load i32, i32* %5, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp slt i32 %195, %198
  br i1 %199, label %200, label %280

200:                                              ; preds = %194
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 1
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = load i32, i32* %5, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i64 %205
  store %struct.TYPE_14__* %206, %struct.TYPE_14__** %4, align 8
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %247

211:                                              ; preds = %200
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 3
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %211
  br label %277

217:                                              ; preds = %211
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @ZIO_FLAG_SCRUB, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %242, label %224

224:                                              ; preds = %217
  %225 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = icmp ne i32* %229, @vdev_indirect_ops
  br i1 %230, label %231, label %242

231:                                              ; preds = %224
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = load i32, i32* @DTL_PARTIAL, align 4
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @vdev_dtl_contains(%struct.TYPE_15__* %234, i32 %235, i32 %238, i32 1)
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %231
  br label %277

242:                                              ; preds = %231, %224, %217
  %243 = load i32, i32* @ESTALE, align 4
  %244 = call i64 @SET_ERROR(i32 %243)
  %245 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 0
  store i64 %244, i64* %246, align 8
  br label %247

247:                                              ; preds = %242, %200
  %248 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 4
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 2
  %254 = load %struct.TYPE_15__*, %struct.TYPE_15__** %253, align 8
  %255 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %261, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %265 = load i32, i32* @ZIO_PRIORITY_ASYNC_WRITE, align 4
  %266 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %267 = load i32, i32* %7, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %271

269:                                              ; preds = %247
  %270 = load i32, i32* @ZIO_FLAG_SELF_HEAL, align 4
  br label %272

271:                                              ; preds = %247
  br label %272

272:                                              ; preds = %271, %269
  %273 = phi i32 [ %270, %269 ], [ 0, %271 ]
  %274 = or i32 %266, %273
  %275 = call i32 @zio_vdev_child_io(%struct.TYPE_12__* %248, i32 %251, %struct.TYPE_15__* %254, i32 %257, i32 %260, i32 %263, i64 %264, i32 %265, i32 %274, i32* null, %struct.TYPE_14__* null)
  %276 = call i32 @zio_nowait(i32 %275)
  br label %277

277:                                              ; preds = %272, %241, %216
  %278 = load i32, i32* %5, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %5, align 4
  br label %194

280:                                              ; preds = %194
  br label %281

281:                                              ; preds = %13, %80, %87, %112, %280, %188, %181, %165, %162
  ret void
}

declare dso_local i8* @vdev_mirror_worst_error(%struct.TYPE_13__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @vdev_mirror_child_select(%struct.TYPE_12__*) #1

declare dso_local i32 @zio_vdev_io_redone(%struct.TYPE_12__*) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_vdev_child_io(%struct.TYPE_12__*, i32, %struct.TYPE_15__*, i32, i32, i32, i64, i32, i32, i32*, %struct.TYPE_14__*) #1

declare dso_local i64 @spa_writeable(i32) #1

declare dso_local i32 @vdev_dtl_contains(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i64 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
