; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_putpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_putpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_37__* }
%struct.TYPE_37__ = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { %struct.TYPE_31__ }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_36__ = type { i32, %struct.TYPE_37__* }
%struct.TYPE_34__ = type { i32, i32, i32, i32*, i32, %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i32, %struct.TYPE_32__* }
%struct.TYPE_32__ = type { i64 }
%struct.sf_buf = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"mismatching object\00", align 1
@PAGE_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"unexpected length\00", align 1
@zfs_vm_pagerret_error = common dso_local global i32 0, align 4
@RL_WRITER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"zfs_putpages: page %p is not read-only\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@zfs_vm_pagerret_bad = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@CONTENT_MODIFIED = common dso_local global i32 0, align 4
@TX_WRITE = common dso_local global i32 0, align 4
@zfs_vm_pagerret_ok = common dso_local global i32 0, align 4
@v_vnodeout = common dso_local global i32 0, align 4
@v_vnodepgsout = common dso_local global i32 0, align 4
@zfs_vm_pagerput_sync = common dso_local global i32 0, align 4
@zfs_vm_pagerput_inval = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.TYPE_36__**, i64, i32, i32*)* @zfs_putpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_putpages(%struct.vnode* %0, %struct.TYPE_36__** %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.TYPE_36__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_34__*, align 8
  %12 = alloca %struct.TYPE_35__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.sf_buf*, align 8
  %16 = alloca %struct.TYPE_37__*, align 8
  %17 = alloca %struct.TYPE_36__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca [2 x i32], align 4
  %30 = alloca [2 x i32], align 4
  %31 = alloca [3 x i32], align 4
  %32 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.TYPE_36__** %1, %struct.TYPE_36__*** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %33 = load %struct.vnode*, %struct.vnode** %6, align 8
  %34 = call %struct.TYPE_34__* @VTOZ(%struct.vnode* %33)
  store %struct.TYPE_34__* %34, %struct.TYPE_34__** %11, align 8
  %35 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %35, i32 0, i32 5
  %37 = load %struct.TYPE_35__*, %struct.TYPE_35__** %36, align 8
  store %struct.TYPE_35__* %37, %struct.TYPE_35__** %12, align 8
  %38 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %39 = call i32 @ZFS_ENTER(%struct.TYPE_35__* %38)
  %40 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %41 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_34__* %40)
  %42 = load %struct.vnode*, %struct.vnode** %6, align 8
  %43 = getelementptr inbounds %struct.vnode, %struct.vnode* %42, i32 0, i32 0
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %43, align 8
  store %struct.TYPE_37__* %44, %struct.TYPE_37__** %16, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @btoc(i64 %45)
  store i32 %46, i32* %25, align 4
  %47 = load i32, i32* %25, align 4
  store i32 %47, i32* %24, align 4
  %48 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %48, i64 0
  %50 = load %struct.TYPE_36__*, %struct.TYPE_36__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_37__*, %struct.TYPE_37__** %51, align 8
  %53 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %54 = icmp eq %struct.TYPE_37__* %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @KASSERT(i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %57 = load i64, i64* %8, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %5
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @PAGE_MASK, align 8
  %62 = and i64 %60, %61
  %63 = icmp eq i64 %62, 0
  br label %64

64:                                               ; preds = %59, %5
  %65 = phi i1 [ false, %5 ], [ %63, %59 ]
  %66 = zext i1 %65 to i32
  %67 = call i32 @KASSERT(i32 %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %27, align 4
  br label %68

68:                                               ; preds = %78, %64
  %69 = load i32, i32* %27, align 4
  %70 = load i32, i32* %25, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32, i32* @zfs_vm_pagerret_error, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32, i32* %27, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %73, i32* %77, align 4
  br label %78

78:                                               ; preds = %72
  %79 = load i32, i32* %27, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %27, align 4
  br label %68

81:                                               ; preds = %68
  %82 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %82, i64 0
  %84 = load %struct.TYPE_36__*, %struct.TYPE_36__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @IDX_TO_OFF(i32 %86)
  store i64 %87, i64* %22, align 8
  %88 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  store i32 %90, i32* %23, align 4
  %91 = load i64, i64* %22, align 8
  %92 = load i32, i32* %23, align 4
  %93 = call i64 @rounddown(i64 %91, i32 %92)
  store i64 %93, i64* %21, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %22, align 8
  %96 = load i64, i64* %21, align 8
  %97 = sub nsw i64 %95, %96
  %98 = add i64 %94, %97
  %99 = load i32, i32* %23, align 4
  %100 = call i64 @roundup(i64 %98, i32 %99)
  store i64 %100, i64* %20, align 8
  %101 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %101, i32 0, i32 4
  %103 = load i64, i64* %21, align 8
  %104 = load i64, i64* %20, align 8
  %105 = load i32, i32* @RL_WRITER, align 4
  %106 = call i32* @rangelock_enter(i32* %102, i64 %103, i64 %104, i32 %105)
  store i32* %106, i32** %13, align 8
  %107 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %108 = call i32 @zfs_vmobject_wlock(%struct.TYPE_37__* %107)
  %109 = load i64, i64* %8, align 8
  %110 = load i64, i64* %22, align 8
  %111 = add i64 %109, %110
  %112 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %113 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ugt i64 %111, %116
  br i1 %117, label %118, label %189

118:                                              ; preds = %81
  %119 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %22, align 8
  %125 = icmp sgt i64 %123, %124
  br i1 %125, label %126, label %167

126:                                              ; preds = %118
  %127 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %128 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %22, align 8
  %133 = sub nsw i64 %131, %132
  store i64 %133, i64* %8, align 8
  %134 = load i64, i64* %8, align 8
  %135 = call i32 @btoc(i64 %134)
  store i32 %135, i32* %24, align 4
  %136 = load i64, i64* %8, align 8
  %137 = trunc i64 %136 to i32
  %138 = sext i32 %137 to i64
  %139 = load i64, i64* @PAGE_MASK, align 8
  %140 = and i64 %138, %139
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %28, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %166

143:                                              ; preds = %126
  %144 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %7, align 8
  %145 = load i32, i32* %24, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %144, i64 %147
  %149 = load %struct.TYPE_36__*, %struct.TYPE_36__** %148, align 8
  store %struct.TYPE_36__* %149, %struct.TYPE_36__** %17, align 8
  %150 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %151 = call i32 @vm_page_assert_sbusied(%struct.TYPE_36__* %150)
  %152 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %153 = call i32 @pmap_page_is_write_mapped(%struct.TYPE_36__* %152)
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %158 = bitcast %struct.TYPE_36__* %157 to i8*
  %159 = call i32 @KASSERT(i32 %156, i8* %158)
  %160 = load %struct.TYPE_36__*, %struct.TYPE_36__** %17, align 8
  %161 = load i32, i32* %28, align 4
  %162 = load i32, i32* @PAGE_SIZE, align 4
  %163 = load i32, i32* %28, align 4
  %164 = sub nsw i32 %162, %163
  %165 = call i32 @vm_page_clear_dirty(%struct.TYPE_36__* %160, i32 %161, i32 %164)
  br label %166

166:                                              ; preds = %143, %126
  br label %168

167:                                              ; preds = %118
  store i64 0, i64* %8, align 8
  store i32 0, i32* %24, align 4
  br label %168

168:                                              ; preds = %167, %166
  %169 = load i32, i32* %24, align 4
  %170 = load i32, i32* %25, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %188

172:                                              ; preds = %168
  %173 = load i32, i32* %24, align 4
  store i32 %173, i32* %27, align 4
  br label %174

174:                                              ; preds = %184, %172
  %175 = load i32, i32* %27, align 4
  %176 = load i32, i32* %25, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %187

178:                                              ; preds = %174
  %179 = load i32, i32* @zfs_vm_pagerret_bad, align 4
  %180 = load i32*, i32** %10, align 8
  %181 = load i32, i32* %27, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %180, i64 %182
  store i32 %179, i32* %183, align 4
  br label %184

184:                                              ; preds = %178
  %185 = load i32, i32* %27, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %27, align 4
  br label %174

187:                                              ; preds = %174
  br label %188

188:                                              ; preds = %187, %168
  br label %189

189:                                              ; preds = %188, %81
  %190 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %191 = call i32 @zfs_vmobject_wunlock(%struct.TYPE_37__* %190)
  %192 = load i32, i32* %24, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  br label %379

195:                                              ; preds = %189
  %196 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %197 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %198 = load i32, i32* @B_FALSE, align 4
  %199 = call i64 @zfs_owner_overquota(%struct.TYPE_35__* %196, %struct.TYPE_34__* %197, i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %207, label %201

201:                                              ; preds = %195
  %202 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %204 = load i32, i32* @B_TRUE, align 4
  %205 = call i64 @zfs_owner_overquota(%struct.TYPE_35__* %202, %struct.TYPE_34__* %203, i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %201, %195
  br label %379

208:                                              ; preds = %201
  %209 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %209, i32 0, i32 1
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %210, align 8
  %212 = call i32* @dmu_tx_create(%struct.TYPE_32__* %211)
  store i32* %212, i32** %14, align 8
  %213 = load i32*, i32** %14, align 8
  %214 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %215 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i64, i64* %22, align 8
  %218 = load i64, i64* %8, align 8
  %219 = call i32 @dmu_tx_hold_write(i32* %213, i32 %216, i64 %217, i64 %218)
  %220 = load i32*, i32** %14, align 8
  %221 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %222 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = load i32, i32* @B_FALSE, align 4
  %225 = call i32 @dmu_tx_hold_sa(i32* %220, i32 %223, i32 %224)
  %226 = load i32*, i32** %14, align 8
  %227 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %228 = call i32 @zfs_sa_upgrade_txholds(i32* %226, %struct.TYPE_34__* %227)
  %229 = load i32*, i32** %14, align 8
  %230 = load i32, i32* @TXG_WAIT, align 4
  %231 = call i32 @dmu_tx_assign(i32* %229, i32 %230)
  store i32 %231, i32* %26, align 4
  %232 = load i32, i32* %26, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %208
  %235 = load i32*, i32** %14, align 8
  %236 = call i32 @dmu_tx_abort(i32* %235)
  br label %379

237:                                              ; preds = %208
  %238 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %239 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @PAGE_SIZE, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %288

243:                                              ; preds = %237
  store i32 0, i32* %27, align 4
  br label %244

244:                                              ; preds = %278, %243
  %245 = load i64, i64* %8, align 8
  %246 = icmp ugt i64 %245, 0
  br i1 %246, label %247, label %287

247:                                              ; preds = %244
  %248 = load i64, i64* %8, align 8
  %249 = load i32, i32* @PAGE_SIZE, align 4
  %250 = sext i32 %249 to i64
  %251 = icmp ugt i64 %248, %250
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load i32, i32* @PAGE_SIZE, align 4
  %254 = sext i32 %253 to i64
  br label %257

255:                                              ; preds = %247
  %256 = load i64, i64* %8, align 8
  br label %257

257:                                              ; preds = %255, %252
  %258 = phi i64 [ %254, %252 ], [ %256, %255 ]
  store i64 %258, i64* %19, align 8
  %259 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %7, align 8
  %260 = load i32, i32* %27, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %259, i64 %261
  %263 = load %struct.TYPE_36__*, %struct.TYPE_36__** %262, align 8
  %264 = call i32 @zfs_map_page(%struct.TYPE_36__* %263, %struct.sf_buf** %15)
  store i32 %264, i32* %18, align 4
  %265 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %266 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_32__*, %struct.TYPE_32__** %266, align 8
  %268 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %269 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load i64, i64* %22, align 8
  %272 = load i64, i64* %19, align 8
  %273 = load i32, i32* %18, align 4
  %274 = load i32*, i32** %14, align 8
  %275 = call i32 @dmu_write(%struct.TYPE_32__* %267, i32 %270, i64 %271, i64 %272, i32 %273, i32* %274)
  %276 = load %struct.sf_buf*, %struct.sf_buf** %15, align 8
  %277 = call i32 @zfs_unmap_page(%struct.sf_buf* %276)
  br label %278

278:                                              ; preds = %257
  %279 = load i64, i64* %19, align 8
  %280 = load i64, i64* %22, align 8
  %281 = add i64 %280, %279
  store i64 %281, i64* %22, align 8
  %282 = load i64, i64* %19, align 8
  %283 = load i64, i64* %8, align 8
  %284 = sub i64 %283, %282
  store i64 %284, i64* %8, align 8
  %285 = load i32, i32* %27, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %27, align 4
  br label %244

287:                                              ; preds = %244
  br label %300

288:                                              ; preds = %237
  %289 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %290 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %289, i32 0, i32 1
  %291 = load %struct.TYPE_32__*, %struct.TYPE_32__** %290, align 8
  %292 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load i64, i64* %22, align 8
  %296 = load i64, i64* %8, align 8
  %297 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %7, align 8
  %298 = load i32*, i32** %14, align 8
  %299 = call i32 @dmu_write_pages(%struct.TYPE_32__* %291, i32 %294, i64 %295, i64 %296, %struct.TYPE_36__** %297, i32* %298)
  store i32 %299, i32* %26, align 4
  br label %300

300:                                              ; preds = %288, %287
  %301 = load i32, i32* %26, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %376

303:                                              ; preds = %300
  store i32 0, i32* %32, align 4
  %304 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 0, i64 0
  %305 = load i32, i32* %32, align 4
  %306 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %307 = call i32 @SA_ZPL_MTIME(%struct.TYPE_35__* %306)
  %308 = bitcast [2 x i32]* %29 to i32**
  %309 = call i32 @SA_ADD_BULK_ATTR(i32* %304, i32 %305, i32 %307, i32* null, i32** %308, i32 16)
  %310 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 0, i64 0
  %311 = load i32, i32* %32, align 4
  %312 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %313 = call i32 @SA_ZPL_CTIME(%struct.TYPE_35__* %312)
  %314 = bitcast [2 x i32]* %30 to i32**
  %315 = call i32 @SA_ADD_BULK_ATTR(i32* %310, i32 %311, i32 %313, i32* null, i32** %314, i32 16)
  %316 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 0, i64 0
  %317 = load i32, i32* %32, align 4
  %318 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %319 = call i32 @SA_ZPL_FLAGS(%struct.TYPE_35__* %318)
  %320 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %321 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %320, i32 0, i32 3
  %322 = call i32 @SA_ADD_BULK_ATTR(i32* %316, i32 %317, i32 %319, i32* null, i32** %321, i32 8)
  %323 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %324 = load i32, i32* @CONTENT_MODIFIED, align 4
  %325 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 0
  %326 = getelementptr inbounds [2 x i32], [2 x i32]* %30, i64 0, i64 0
  %327 = load i32, i32* @B_TRUE, align 4
  %328 = call i32 @zfs_tstamp_update_setup(%struct.TYPE_34__* %323, i32 %324, i32* %325, i32* %326, i32 %327)
  %329 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %330 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 8
  %332 = getelementptr inbounds [3 x i32], [3 x i32]* %31, i64 0, i64 0
  %333 = load i32, i32* %32, align 4
  %334 = load i32*, i32** %14, align 8
  %335 = call i32 @sa_bulk_update(i32 %331, i32* %332, i32 %333, i32* %334)
  store i32 %335, i32* %26, align 4
  %336 = load i32, i32* %26, align 4
  %337 = call i32 @ASSERT0(i32 %336)
  %338 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %339 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32*, i32** %14, align 8
  %342 = load i32, i32* @TX_WRITE, align 4
  %343 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %344 = load i64, i64* %22, align 8
  %345 = load i64, i64* %8, align 8
  %346 = call i32 @zfs_log_write(i32 %340, i32* %341, i32 %342, %struct.TYPE_34__* %343, i64 %344, i64 %345, i32 0)
  %347 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %348 = call i32 @zfs_vmobject_wlock(%struct.TYPE_37__* %347)
  store i32 0, i32* %27, align 4
  br label %349

349:                                              ; preds = %365, %303
  %350 = load i32, i32* %27, align 4
  %351 = load i32, i32* %24, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %368

353:                                              ; preds = %349
  %354 = load i32, i32* @zfs_vm_pagerret_ok, align 4
  %355 = load i32*, i32** %10, align 8
  %356 = load i32, i32* %27, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  store i32 %354, i32* %358, align 4
  %359 = load %struct.TYPE_36__**, %struct.TYPE_36__*** %7, align 8
  %360 = load i32, i32* %27, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds %struct.TYPE_36__*, %struct.TYPE_36__** %359, i64 %361
  %363 = load %struct.TYPE_36__*, %struct.TYPE_36__** %362, align 8
  %364 = call i32 @vm_page_undirty(%struct.TYPE_36__* %363)
  br label %365

365:                                              ; preds = %353
  %366 = load i32, i32* %27, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %27, align 4
  br label %349

368:                                              ; preds = %349
  %369 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %370 = call i32 @zfs_vmobject_wunlock(%struct.TYPE_37__* %369)
  %371 = load i32, i32* @v_vnodeout, align 4
  %372 = call i32 @VM_CNT_INC(i32 %371)
  %373 = load i32, i32* @v_vnodepgsout, align 4
  %374 = load i32, i32* %24, align 4
  %375 = call i32 @VM_CNT_ADD(i32 %373, i32 %374)
  br label %376

376:                                              ; preds = %368, %300
  %377 = load i32*, i32** %14, align 8
  %378 = call i32 @dmu_tx_commit(i32* %377)
  br label %379

379:                                              ; preds = %376, %234, %207, %194
  %380 = load i32*, i32** %13, align 8
  %381 = call i32 @rangelock_exit(i32* %380)
  %382 = load i32, i32* %9, align 4
  %383 = load i32, i32* @zfs_vm_pagerput_sync, align 4
  %384 = load i32, i32* @zfs_vm_pagerput_inval, align 4
  %385 = or i32 %383, %384
  %386 = and i32 %382, %385
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %396, label %388

388:                                              ; preds = %379
  %389 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %389, i32 0, i32 1
  %391 = load %struct.TYPE_32__*, %struct.TYPE_32__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %395 = icmp eq i64 %393, %394
  br i1 %395, label %396, label %404

396:                                              ; preds = %388, %379
  %397 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %398 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load %struct.TYPE_34__*, %struct.TYPE_34__** %11, align 8
  %401 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @zil_commit(i32 %399, i32 %402)
  br label %404

404:                                              ; preds = %396, %388
  %405 = load %struct.TYPE_35__*, %struct.TYPE_35__** %12, align 8
  %406 = call i32 @ZFS_EXIT(%struct.TYPE_35__* %405)
  %407 = load i32*, i32** %10, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 0
  %409 = load i32, i32* %408, align 4
  ret i32 %409
}

declare dso_local %struct.TYPE_34__* @VTOZ(%struct.vnode*) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_35__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_34__*) #1

declare dso_local i32 @btoc(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @IDX_TO_OFF(i32) #1

declare dso_local i64 @rounddown(i64, i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32* @rangelock_enter(i32*, i64, i64, i32) #1

declare dso_local i32 @zfs_vmobject_wlock(%struct.TYPE_37__*) #1

declare dso_local i32 @vm_page_assert_sbusied(%struct.TYPE_36__*) #1

declare dso_local i32 @pmap_page_is_write_mapped(%struct.TYPE_36__*) #1

declare dso_local i32 @vm_page_clear_dirty(%struct.TYPE_36__*, i32, i32) #1

declare dso_local i32 @zfs_vmobject_wunlock(%struct.TYPE_37__*) #1

declare dso_local i64 @zfs_owner_overquota(%struct.TYPE_35__*, %struct.TYPE_34__*, i32) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_32__*) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i32, i64, i64) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @zfs_sa_upgrade_txholds(i32*, %struct.TYPE_34__*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zfs_map_page(%struct.TYPE_36__*, %struct.sf_buf**) #1

declare dso_local i32 @dmu_write(%struct.TYPE_32__*, i32, i64, i64, i32, i32*) #1

declare dso_local i32 @zfs_unmap_page(%struct.sf_buf*) #1

declare dso_local i32 @dmu_write_pages(%struct.TYPE_32__*, i32, i64, i64, %struct.TYPE_36__**, i32*) #1

declare dso_local i32 @SA_ADD_BULK_ATTR(i32*, i32, i32, i32*, i32**, i32) #1

declare dso_local i32 @SA_ZPL_MTIME(%struct.TYPE_35__*) #1

declare dso_local i32 @SA_ZPL_CTIME(%struct.TYPE_35__*) #1

declare dso_local i32 @SA_ZPL_FLAGS(%struct.TYPE_35__*) #1

declare dso_local i32 @zfs_tstamp_update_setup(%struct.TYPE_34__*, i32, i32*, i32*, i32) #1

declare dso_local i32 @sa_bulk_update(i32, i32*, i32, i32*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @zfs_log_write(i32, i32*, i32, %struct.TYPE_34__*, i64, i64, i32) #1

declare dso_local i32 @vm_page_undirty(%struct.TYPE_36__*) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @VM_CNT_ADD(i32, i32) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @rangelock_exit(i32*) #1

declare dso_local i32 @zil_commit(i32, i32) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_35__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
