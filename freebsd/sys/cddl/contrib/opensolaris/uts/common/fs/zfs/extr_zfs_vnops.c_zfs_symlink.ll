; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_40__ = type { i64 }
%struct.TYPE_37__ = type { i8, i32, i64, i32, %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_36__*, i32, i64, i64, i32* }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_39__ = type { %struct.TYPE_35__* }
%struct.TYPE_35__ = type { i64 }

@TX_SYMLINK = common dso_local global i64 0, align 8
@VLNK = common dso_local global i64 0, align 8
@U8_VALIDATE_ENTIRE = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ZNEW = common dso_local global i32 0, align 4
@ACE_ADD_FILE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@DMU_NEW_OBJECT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ZFS_SA_BASE_ATTR_SIZE = common dso_local global i64 0, align 8
@ZFS_ACE_SPACE = common dso_local global i64 0, align 8
@TXG_WAIT = common dso_local global i32 0, align 4
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32**, i8*, %struct.TYPE_40__*, i8*, i32*, i32*)* @zfs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_symlink(i32* %0, i32** %1, i8* %2, %struct.TYPE_40__* %3, i8* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_40__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_37__*, align 8
  %17 = alloca %struct.TYPE_37__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_38__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_39__, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32** %1, i32*** %10, align 8
  store i8* %2, i8** %11, align 8
  store %struct.TYPE_40__* %3, %struct.TYPE_40__** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = call %struct.TYPE_37__* @VTOZ(i32* %27)
  store %struct.TYPE_37__* %28, %struct.TYPE_37__** %17, align 8
  %29 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %30 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_38__*, %struct.TYPE_38__** %30, align 8
  store %struct.TYPE_38__* %31, %struct.TYPE_38__** %19, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = call i64 @strlen(i8* %32)
  store i64 %33, i64* %21, align 8
  %34 = load i64, i64* @TX_SYMLINK, align 8
  store i64 %34, i64* %25, align 8
  store i32 0, i32* %26, align 4
  %35 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %36 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VLNK, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @ASSERT(i32 %40)
  %42 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %43 = call i32 @ZFS_ENTER(%struct.TYPE_38__* %42)
  %44 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %45 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_37__* %44)
  %46 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %20, align 8
  %49 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %50 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %7
  %54 = load i8*, i8** %11, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = load i32, i32* @U8_VALIDATE_ENTIRE, align 4
  %58 = call i64 @u8_validate(i8* %54, i64 %56, i32* null, i32 %57, i32* %22)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %53
  %61 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %62 = call i32 @ZFS_EXIT(%struct.TYPE_38__* %61)
  %63 = load i32, i32* @EILSEQ, align 4
  %64 = call i32 @SET_ERROR(i32 %63)
  store i32 %64, i32* %8, align 4
  br label %278

65:                                               ; preds = %53, %7
  %66 = load i64, i64* %21, align 8
  %67 = load i64, i64* @MAXPATHLEN, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %71 = call i32 @ZFS_EXIT(%struct.TYPE_38__* %70)
  %72 = load i32, i32* @ENAMETOOLONG, align 4
  %73 = call i32 @SET_ERROR(i32 %72)
  store i32 %73, i32* %8, align 4
  br label %278

74:                                               ; preds = %65
  %75 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %76 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @zfs_acl_ids_create(%struct.TYPE_37__* %75, i32 0, %struct.TYPE_40__* %76, i32* %77, i32* null, %struct.TYPE_39__* %23)
  store i32 %78, i32* %22, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %74
  %81 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %82 = call i32 @ZFS_EXIT(%struct.TYPE_38__* %81)
  %83 = load i32, i32* %22, align 4
  store i32 %83, i32* %8, align 4
  br label %278

84:                                               ; preds = %74
  %85 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* @ZNEW, align 4
  %88 = call i32 @zfs_dirent_lookup(%struct.TYPE_37__* %85, i8* %86, %struct.TYPE_37__** %16, i32 %87)
  store i32 %88, i32* %22, align 4
  %89 = load i32, i32* %22, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = call i32 @zfs_acl_ids_free(%struct.TYPE_39__* %23)
  %93 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %94 = call i32 @ZFS_EXIT(%struct.TYPE_38__* %93)
  %95 = load i32, i32* %22, align 4
  store i32 %95, i32* %8, align 4
  br label %278

96:                                               ; preds = %84
  %97 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %98 = load i32, i32* @ACE_ADD_FILE, align 4
  %99 = load i32, i32* @B_FALSE, align 4
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @zfs_zaccess(%struct.TYPE_37__* %97, i32 %98, i32 0, i32 %99, i32* %100)
  store i32 %101, i32* %22, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = call i32 @zfs_acl_ids_free(%struct.TYPE_39__* %23)
  %105 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %106 = call i32 @ZFS_EXIT(%struct.TYPE_38__* %105)
  %107 = load i32, i32* %22, align 4
  store i32 %107, i32* %8, align 4
  br label %278

108:                                              ; preds = %96
  %109 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %110 = call i64 @zfs_acl_ids_overquota(%struct.TYPE_38__* %109, %struct.TYPE_39__* %23)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = call i32 @zfs_acl_ids_free(%struct.TYPE_39__* %23)
  %114 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %115 = call i32 @ZFS_EXIT(%struct.TYPE_38__* %114)
  %116 = load i32, i32* @EDQUOT, align 4
  %117 = call i32 @SET_ERROR(i32 %116)
  store i32 %117, i32* %8, align 4
  br label %278

118:                                              ; preds = %108
  %119 = call i32 @getnewvnode_reserve(i32 1)
  %120 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_36__*, %struct.TYPE_36__** %121, align 8
  %123 = call i32* @dmu_tx_create(%struct.TYPE_36__* %122)
  store i32* %123, i32** %18, align 8
  %124 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %125 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  store i64 %126, i64* %24, align 8
  %127 = load i32*, i32** %18, align 8
  %128 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %129 = load i64, i64* %21, align 8
  %130 = call i64 @MAX(i32 1, i64 %129)
  %131 = call i32 @dmu_tx_hold_write(i32* %127, i32 %128, i32 0, i64 %130)
  %132 = load i32*, i32** %18, align 8
  %133 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %134 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @TRUE, align 4
  %137 = load i8*, i8** %11, align 8
  %138 = call i32 @dmu_tx_hold_zap(i32* %132, i32 %135, i32 %136, i8* %137)
  %139 = load i32*, i32** %18, align 8
  %140 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %23, i32 0, i32 0
  %141 = load %struct.TYPE_35__*, %struct.TYPE_35__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @ZFS_SA_BASE_ATTR_SIZE, align 8
  %145 = add nsw i64 %143, %144
  %146 = load i64, i64* %21, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @dmu_tx_hold_sa_create(i32* %139, i64 %147)
  %149 = load i32*, i32** %18, align 8
  %150 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %151 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @B_FALSE, align 4
  %154 = call i32 @dmu_tx_hold_sa(i32* %149, i32 %152, i32 %153)
  %155 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %156 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %174, label %159

159:                                              ; preds = %118
  %160 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %23, i32 0, i32 0
  %161 = load %struct.TYPE_35__*, %struct.TYPE_35__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @ZFS_ACE_SPACE, align 8
  %165 = icmp sgt i64 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %159
  %167 = load i32*, i32** %18, align 8
  %168 = load i32, i32* @DMU_NEW_OBJECT, align 4
  %169 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %23, i32 0, i32 0
  %170 = load %struct.TYPE_35__*, %struct.TYPE_35__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @dmu_tx_hold_write(i32* %167, i32 %168, i32 0, i64 %172)
  br label %174

174:                                              ; preds = %166, %159, %118
  %175 = load i64, i64* %24, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %179 = load i32*, i32** %18, align 8
  %180 = call i32 @zfs_fuid_txhold(%struct.TYPE_38__* %178, i32* %179)
  br label %181

181:                                              ; preds = %177, %174
  %182 = load i32*, i32** %18, align 8
  %183 = load i32, i32* @TXG_WAIT, align 4
  %184 = call i32 @dmu_tx_assign(i32* %182, i32 %183)
  store i32 %184, i32* %22, align 4
  %185 = load i32, i32* %22, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %195

187:                                              ; preds = %181
  %188 = call i32 @zfs_acl_ids_free(%struct.TYPE_39__* %23)
  %189 = load i32*, i32** %18, align 8
  %190 = call i32 @dmu_tx_abort(i32* %189)
  %191 = call i32 (...) @getnewvnode_drop_reserve()
  %192 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %193 = call i32 @ZFS_EXIT(%struct.TYPE_38__* %192)
  %194 = load i32, i32* %22, align 4
  store i32 %194, i32* %8, align 4
  br label %278

195:                                              ; preds = %181
  %196 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %197 = load %struct.TYPE_40__*, %struct.TYPE_40__** %12, align 8
  %198 = load i32*, i32** %18, align 8
  %199 = load i32*, i32** %14, align 8
  %200 = call i32 @zfs_mknode(%struct.TYPE_37__* %196, %struct.TYPE_40__* %197, i32* %198, i32* %199, i32 0, %struct.TYPE_37__** %16, %struct.TYPE_39__* %23)
  %201 = load i64, i64* %24, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %195
  %204 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %205 = load i32*, i32** %18, align 8
  %206 = call i32 @zfs_fuid_sync(%struct.TYPE_38__* %204, i32* %205)
  br label %207

207:                                              ; preds = %203, %195
  %208 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %223

212:                                              ; preds = %207
  %213 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %214 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %217 = call i32 @SA_ZPL_SYMLINK(%struct.TYPE_38__* %216)
  %218 = load i8*, i8** %13, align 8
  %219 = load i64, i64* %21, align 8
  %220 = trunc i64 %219 to i32
  %221 = load i32*, i32** %18, align 8
  %222 = call i32 @sa_update(i32 %215, i32 %217, i8* %218, i32 %220, i32* %221)
  store i32 %222, i32* %22, align 4
  br label %229

223:                                              ; preds = %207
  %224 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %225 = load i8*, i8** %13, align 8
  %226 = load i64, i64* %21, align 8
  %227 = load i32*, i32** %18, align 8
  %228 = call i32 @zfs_sa_symlink(%struct.TYPE_37__* %224, i8* %225, i64 %226, i32* %227)
  br label %229

229:                                              ; preds = %223, %212
  %230 = load i64, i64* %21, align 8
  %231 = trunc i64 %230 to i8
  %232 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %232, i32 0, i32 0
  store i8 %231, i8* %233, align 8
  %234 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %235 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %238 = call i32 @SA_ZPL_SIZE(%struct.TYPE_38__* %237)
  %239 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %240 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %239, i32 0, i32 0
  %241 = load i32*, i32** %18, align 8
  %242 = call i32 @sa_update(i32 %236, i32 %238, i8* %240, i32 1, i32* %241)
  %243 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %244 = load i8*, i8** %11, align 8
  %245 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %246 = load i32*, i32** %18, align 8
  %247 = load i32, i32* @ZNEW, align 4
  %248 = call i32 @zfs_link_create(%struct.TYPE_37__* %243, i8* %244, %struct.TYPE_37__* %245, i32* %246, i32 %247)
  %249 = load i32*, i32** %20, align 8
  %250 = load i32*, i32** %18, align 8
  %251 = load i64, i64* %25, align 8
  %252 = load %struct.TYPE_37__*, %struct.TYPE_37__** %17, align 8
  %253 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %254 = load i8*, i8** %11, align 8
  %255 = load i8*, i8** %13, align 8
  %256 = call i32 @zfs_log_symlink(i32* %249, i32* %250, i64 %251, %struct.TYPE_37__* %252, %struct.TYPE_37__* %253, i8* %254, i8* %255)
  %257 = load %struct.TYPE_37__*, %struct.TYPE_37__** %16, align 8
  %258 = call i32* @ZTOV(%struct.TYPE_37__* %257)
  %259 = load i32**, i32*** %10, align 8
  store i32* %258, i32** %259, align 8
  %260 = call i32 @zfs_acl_ids_free(%struct.TYPE_39__* %23)
  %261 = load i32*, i32** %18, align 8
  %262 = call i32 @dmu_tx_commit(i32* %261)
  %263 = call i32 (...) @getnewvnode_drop_reserve()
  %264 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %265 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_36__*, %struct.TYPE_36__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %271, label %274

271:                                              ; preds = %229
  %272 = load i32*, i32** %20, align 8
  %273 = call i32 @zil_commit(i32* %272, i32 0)
  br label %274

274:                                              ; preds = %271, %229
  %275 = load %struct.TYPE_38__*, %struct.TYPE_38__** %19, align 8
  %276 = call i32 @ZFS_EXIT(%struct.TYPE_38__* %275)
  %277 = load i32, i32* %22, align 4
  store i32 %277, i32* %8, align 4
  br label %278

278:                                              ; preds = %274, %187, %112, %103, %91, %80, %69, %60
  %279 = load i32, i32* %8, align 4
  ret i32 %279
}

declare dso_local %struct.TYPE_37__* @VTOZ(i32*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_38__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_37__*) #1

declare dso_local i64 @u8_validate(i8*, i64, i32*, i32, i32*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_38__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_acl_ids_create(%struct.TYPE_37__*, i32, %struct.TYPE_40__*, i32*, i32*, %struct.TYPE_39__*) #1

declare dso_local i32 @zfs_dirent_lookup(%struct.TYPE_37__*, i8*, %struct.TYPE_37__**, i32) #1

declare dso_local i32 @zfs_acl_ids_free(%struct.TYPE_39__*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_37__*, i32, i32, i32, i32*) #1

declare dso_local i64 @zfs_acl_ids_overquota(%struct.TYPE_38__*, %struct.TYPE_39__*) #1

declare dso_local i32 @getnewvnode_reserve(i32) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_36__*) #1

declare dso_local i32 @dmu_tx_hold_write(i32*, i32, i32, i64) #1

declare dso_local i64 @MAX(i32, i64) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i8*) #1

declare dso_local i32 @dmu_tx_hold_sa_create(i32*, i64) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @zfs_fuid_txhold(%struct.TYPE_38__*, i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @getnewvnode_drop_reserve(...) #1

declare dso_local i32 @zfs_mknode(%struct.TYPE_37__*, %struct.TYPE_40__*, i32*, i32*, i32, %struct.TYPE_37__**, %struct.TYPE_39__*) #1

declare dso_local i32 @zfs_fuid_sync(%struct.TYPE_38__*, i32*) #1

declare dso_local i32 @sa_update(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @SA_ZPL_SYMLINK(%struct.TYPE_38__*) #1

declare dso_local i32 @zfs_sa_symlink(%struct.TYPE_37__*, i8*, i64, i32*) #1

declare dso_local i32 @SA_ZPL_SIZE(%struct.TYPE_38__*) #1

declare dso_local i32 @zfs_link_create(%struct.TYPE_37__*, i8*, %struct.TYPE_37__*, i32*, i32) #1

declare dso_local i32 @zfs_log_symlink(i32*, i32*, i64, %struct.TYPE_37__*, %struct.TYPE_37__*, i8*, i8*) #1

declare dso_local i32* @ZTOV(%struct.TYPE_37__*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
