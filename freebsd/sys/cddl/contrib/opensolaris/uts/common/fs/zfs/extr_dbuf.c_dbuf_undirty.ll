; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_undirty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_undirty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_35__ = type { i64, i64, i64, i64, i64, i64, i32*, i32, i32*, %struct.TYPE_27__, %struct.TYPE_25__*, i32 }
%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i64, %struct.TYPE_32__, %struct.TYPE_30__*, %struct.TYPE_25__*, i32, %struct.TYPE_35__* }
%struct.TYPE_32__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i32* }
%struct.TYPE_30__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_34__ = type { i64 }
%struct.TYPE_33__ = type { i64, i64, i64, i32, i32* }
%struct.TYPE_26__ = type { i64 }

@DMU_BONUS_BLKID = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"size=%llx\0A\00", align 1
@DMU_SPILL_BLKID = common dso_local global i64 0, align 8
@TXG_MASK = common dso_local global i64 0, align 8
@DB_NOFILL = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_35__*, %struct.TYPE_34__*)* @dbuf_undirty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbuf_undirty(%struct.TYPE_35__* %0, %struct.TYPE_34__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_35__*, align 8
  %5 = alloca %struct.TYPE_34__*, align 8
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca %struct.TYPE_25__**, align 8
  store %struct.TYPE_35__* %0, %struct.TYPE_35__** %4, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %5, align 8
  %10 = load %struct.TYPE_34__*, %struct.TYPE_34__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call %struct.TYPE_26__* @dmu_objset_pool(i64 %22)
  %24 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %19, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %2
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @dmu_objset_spa(i64 %31)
  %33 = call i64 @spa_syncing_txg(i32 %32)
  %34 = icmp ne i64 %28, %33
  br label %35

35:                                               ; preds = %27, %2
  %36 = phi i1 [ true, %2 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DMU_BONUS_BLKID, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @ASSERT(i32 %44)
  %46 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ASSERT0(i64 %48)
  %50 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %50, i32 0, i32 11
  %52 = call i32 @MUTEX_HELD(i32* %51)
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %54, i32 0, i32 10
  store %struct.TYPE_25__** %55, %struct.TYPE_25__*** %9, align 8
  br label %56

56:                                               ; preds = %68, %35
  %57 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %9, align 8
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %57, align 8
  store %struct.TYPE_25__* %58, %struct.TYPE_25__** %8, align 8
  %59 = icmp ne %struct.TYPE_25__* %58, null
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = icmp ule i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  br label %71

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 3
  store %struct.TYPE_25__** %70, %struct.TYPE_25__*** %9, align 8
  br label %56

71:                                               ; preds = %66, %56
  %72 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %73 = icmp eq %struct.TYPE_25__* %72, null
  br i1 %73, label %80, label %74

74:                                               ; preds = %71
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %74, %71
  %81 = load i32, i32* @B_FALSE, align 4
  store i32 %81, i32* %3, align 4
  br label %286

82:                                               ; preds = %74
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %7, align 8
  %87 = icmp eq i64 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT(i32 %88)
  %90 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %90, i32 0, i32 5
  %92 = load %struct.TYPE_35__*, %struct.TYPE_35__** %91, align 8
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %94 = icmp eq %struct.TYPE_35__* %92, %93
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %98 = call i32 @DB_DNODE_ENTER(%struct.TYPE_35__* %97)
  %99 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %100 = call %struct.TYPE_33__* @DB_DNODE(%struct.TYPE_35__* %99)
  store %struct.TYPE_33__* %100, %struct.TYPE_33__** %6, align 8
  %101 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %102 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = call i32 @dprintf_dbuf(%struct.TYPE_35__* %101, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %106)
  %108 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %108, i32 0, i32 9
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  %113 = zext i1 %112 to i32
  %114 = call i32 @ASSERT(i32 %113)
  %115 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = call %struct.TYPE_26__* @dmu_objset_pool(i64 %117)
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* %7, align 8
  %123 = call i32 @dsl_pool_undirty_space(%struct.TYPE_26__* %118, i32 %121, i64 %122)
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_25__*, %struct.TYPE_25__** %125, align 8
  %127 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %9, align 8
  store %struct.TYPE_25__* %126, %struct.TYPE_25__** %127, align 8
  %128 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_30__*, %struct.TYPE_30__** %129, align 8
  %131 = icmp ne %struct.TYPE_30__* %130, null
  br i1 %131, label %132, label %155

132:                                              ; preds = %82
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_30__*, %struct.TYPE_30__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %137, i32 0, i32 0
  %139 = call i32 @mutex_enter(i32* %138)
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %144, i32 0, i32 1
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %147 = call i32 @list_remove(i32* %145, %struct.TYPE_25__* %146)
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_30__*, %struct.TYPE_30__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 0
  %154 = call i32 @mutex_exit(i32* %153)
  br label %203

155:                                              ; preds = %82
  %156 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @DMU_SPILL_BLKID, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %170, label %161

161:                                              ; preds = %155
  %162 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, 1
  %166 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %165, %168
  br i1 %169, label %170, label %202

170:                                              ; preds = %161, %155
  %171 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %171, i32 0, i32 8
  %173 = load i32*, i32** %172, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %183, label %175

175:                                              ; preds = %170
  %176 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %178, %181
  br label %183

183:                                              ; preds = %175, %170
  %184 = phi i1 [ true, %170 ], [ %182, %175 ]
  %185 = zext i1 %184 to i32
  %186 = call i32 @ASSERT(i32 %185)
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 3
  %189 = call i32 @mutex_enter(i32* %188)
  %190 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %190, i32 0, i32 4
  %192 = load i32*, i32** %191, align 8
  %193 = load i64, i64* %7, align 8
  %194 = load i64, i64* @TXG_MASK, align 8
  %195 = and i64 %193, %194
  %196 = getelementptr inbounds i32, i32* %192, i64 %195
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %198 = call i32 @list_remove(i32* %196, %struct.TYPE_25__* %197)
  %199 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %199, i32 0, i32 3
  %201 = call i32 @mutex_exit(i32* %200)
  br label %202

202:                                              ; preds = %183, %161
  br label %203

203:                                              ; preds = %202, %132
  %204 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %205 = call i32 @DB_DNODE_EXIT(%struct.TYPE_35__* %204)
  %206 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %206, i32 0, i32 4
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @DB_NOFILL, align 8
  %210 = icmp ne i64 %208, %209
  br i1 %210, label %211, label %246

211:                                              ; preds = %203
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %213 = call i32 @dbuf_unoverride(%struct.TYPE_25__* %212)
  %214 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %214, i32 0, i32 6
  %216 = load i32*, i32** %215, align 8
  %217 = icmp ne i32* %216, null
  %218 = zext i1 %217 to i32
  %219 = call i32 @ASSERT(i32 %218)
  %220 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %221 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = icmp ne i32* %224, null
  %226 = zext i1 %225 to i32
  %227 = call i32 @ASSERT(i32 %226)
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %230, i32 0, i32 0
  %232 = load i32*, i32** %231, align 8
  %233 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %233, i32 0, i32 6
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %232, %235
  br i1 %236, label %237, label %245

237:                                              ; preds = %211
  %238 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %240, i32 0, i32 0
  %242 = load i32*, i32** %241, align 8
  %243 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %244 = call i32 @arc_buf_destroy(i32* %242, %struct.TYPE_35__* %243)
  br label %245

245:                                              ; preds = %237, %211
  br label %246

246:                                              ; preds = %245, %203
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %248 = call i32 @kmem_free(%struct.TYPE_25__* %247, i32 48)
  %249 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %249, i32 0, i32 5
  %251 = load i64, i64* %250, align 8
  %252 = icmp sgt i64 %251, 0
  %253 = zext i1 %252 to i32
  %254 = call i32 @ASSERT(i32 %253)
  %255 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %255, i32 0, i32 5
  %257 = load i64, i64* %256, align 8
  %258 = sub nsw i64 %257, 1
  store i64 %258, i64* %256, align 8
  %259 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %259, i32 0, i32 7
  %261 = load i64, i64* %7, align 8
  %262 = inttoptr i64 %261 to i8*
  %263 = call i64 @zfs_refcount_remove(i32* %260, i8* %262)
  %264 = icmp eq i64 %263, 0
  br i1 %264, label %265, label %284

265:                                              ; preds = %246
  %266 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @DB_NOFILL, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %277, label %271

271:                                              ; preds = %265
  %272 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %273 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %272, i32 0, i32 6
  %274 = load i32*, i32** %273, align 8
  %275 = call i64 @arc_released(i32* %274)
  %276 = icmp ne i64 %275, 0
  br label %277

277:                                              ; preds = %271, %265
  %278 = phi i1 [ true, %265 ], [ %276, %271 ]
  %279 = zext i1 %278 to i32
  %280 = call i32 @ASSERT(i32 %279)
  %281 = load %struct.TYPE_35__*, %struct.TYPE_35__** %4, align 8
  %282 = call i32 @dbuf_destroy(%struct.TYPE_35__* %281)
  %283 = load i32, i32* @B_TRUE, align 4
  store i32 %283, i32* %3, align 4
  br label %286

284:                                              ; preds = %246
  %285 = load i32, i32* @B_FALSE, align 4
  store i32 %285, i32* %3, align 4
  br label %286

286:                                              ; preds = %284, %277, %80
  %287 = load i32, i32* %3, align 4
  ret i32 %287
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_26__* @dmu_objset_pool(i64) #1

declare dso_local i64 @spa_syncing_txg(i32) #1

declare dso_local i32 @dmu_objset_spa(i64) #1

declare dso_local i32 @ASSERT0(i64) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @DB_DNODE_ENTER(%struct.TYPE_35__*) #1

declare dso_local %struct.TYPE_33__* @DB_DNODE(%struct.TYPE_35__*) #1

declare dso_local i32 @dprintf_dbuf(%struct.TYPE_35__*, i8*, i32) #1

declare dso_local i32 @dsl_pool_undirty_space(%struct.TYPE_26__*, i32, i64) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @list_remove(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @DB_DNODE_EXIT(%struct.TYPE_35__*) #1

declare dso_local i32 @dbuf_unoverride(%struct.TYPE_25__*) #1

declare dso_local i32 @arc_buf_destroy(i32*, %struct.TYPE_35__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @zfs_refcount_remove(i32*, i8*) #1

declare dso_local i64 @arc_released(i32*) #1

declare dso_local i32 @dbuf_destroy(%struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
