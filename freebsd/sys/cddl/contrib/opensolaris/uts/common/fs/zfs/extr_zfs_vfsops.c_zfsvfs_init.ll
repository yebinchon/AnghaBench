; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfsvfs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfsvfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32*, i32, i32, i32 }

@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@ZFS_SNAPDIR_VISIBLE = common dso_local global i32 0, align 4
@ZFS_PROP_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [113 x i8] c"Can't mount a version %lld file system on a version %lld pool\0A. Pool must be upgraded to mount this file system.\00", align 1
@ENOTSUP = common dso_local global i32 0, align 4
@ZFS_PROP_NORMALIZE = common dso_local global i32 0, align 4
@ZFS_PROP_UTF8ONLY = common dso_local global i32 0, align 4
@ZFS_PROP_CASE = common dso_local global i32 0, align 4
@ZFS_CASE_INSENSITIVE = common dso_local global i64 0, align 8
@ZFS_CASE_MIXED = common dso_local global i64 0, align 8
@U8_TEXTPREP_TOUPPER = common dso_local global i32 0, align 4
@MASTER_NODE_OBJ = common dso_local global i32 0, align 4
@ZFS_SA_ATTRS = common dso_local global i32 0, align 4
@zfs_attr_table = common dso_local global i32 0, align 4
@ZPL_END = common dso_local global i32 0, align 4
@ZPL_VERSION_SA = common dso_local global i64 0, align 8
@zfs_sa_upgrade = common dso_local global i32 0, align 4
@ZFS_ROOT_OBJ = common dso_local global i32 0, align 4
@ZFS_UNLINKED_SET = common dso_local global i32 0, align 4
@zfs_userquota_prop_prefixes = common dso_local global i32* null, align 8
@ZFS_PROP_USERQUOTA = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@ZFS_PROP_GROUPQUOTA = common dso_local global i64 0, align 8
@ZFS_FUID_TABLES = common dso_local global i32 0, align 4
@ZFS_SHARES_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32*)* @zfsvfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsvfs_init(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 16
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @ZFS_SNAPDIR_VISIBLE, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 15
  store i32 %12, i32* %14, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 13
  store i32* %15, i32** %17, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @ZFS_PROP_VERSION, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @zfs_get_zplprop(i32* %18, i32 %19, i64* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %294

27:                                               ; preds = %2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i32 @dmu_objset_spa(i32* %31)
  %33 = call i64 @spa_version(i32 %32)
  %34 = call i64 @zfs_zpl_version_map(i64 %33)
  %35 = icmp sgt i64 %30, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %27
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = trunc i64 %39 to i32
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @dmu_objset_spa(i32* %41)
  %43 = call i64 @spa_version(i32 %42)
  %44 = trunc i64 %43 to i32
  %45 = call i32 @printf(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %44)
  %46 = load i32, i32* @ENOTSUP, align 4
  %47 = call i32 @SET_ERROR(i32 %46)
  store i32 %47, i32* %3, align 4
  br label %294

48:                                               ; preds = %27
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* @ZFS_PROP_NORMALIZE, align 4
  %51 = call i32 @zfs_get_zplprop(i32* %49, i32 %50, i64* %7)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %294

56:                                               ; preds = %48
  %57 = load i64, i64* %7, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* @ZFS_PROP_UTF8ONLY, align 4
  %63 = call i32 @zfs_get_zplprop(i32* %61, i32 %62, i64* %7)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %294

68:                                               ; preds = %56
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i32
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = load i32, i32* @ZFS_PROP_CASE, align 4
  %76 = call i32 @zfs_get_zplprop(i32* %74, i32 %75, i64* %7)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %294

81:                                               ; preds = %68
  %82 = load i64, i64* %7, align 8
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ZFS_CASE_INSENSITIVE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %96, label %90

90:                                               ; preds = %81
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @ZFS_CASE_MIXED, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %90, %81
  %97 = load i32, i32* @U8_TEXTPREP_TOUPPER, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %90
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 13
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @USE_FUIDS(i64 %105, i32* %108)
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 14
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 13
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @USE_SA(i64 %114, i32* %117)
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 12
  store i64 %118, i64* %120, align 8
  store i64 0, i64* %8, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 12
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %102
  %126 = load i32*, i32** %5, align 8
  %127 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %128 = load i32, i32* @ZFS_SA_ATTRS, align 4
  %129 = call i32 @zap_lookup(i32* %126, i32 %127, i32 %128, i32 8, i32 1, i64* %8)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %3, align 4
  br label %294

134:                                              ; preds = %125
  br label %135

135:                                              ; preds = %134, %102
  %136 = load i32*, i32** %5, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load i32, i32* @zfs_attr_table, align 4
  %139 = load i32, i32* @ZPL_END, align 4
  %140 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 11
  %142 = call i32 @sa_setup(i32* %136, i64 %137, i32 %138, i32 %139, i32* %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* %6, align 4
  store i32 %146, i32* %3, align 4
  br label %294

147:                                              ; preds = %135
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @ZPL_VERSION_SA, align 8
  %152 = icmp sge i64 %150, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %147
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* @zfs_sa_upgrade, align 4
  %156 = call i32 @sa_register_update_callback(i32* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %147
  %158 = load i32*, i32** %5, align 8
  %159 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %160 = load i32, i32* @ZFS_ROOT_OBJ, align 4
  %161 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 4
  %163 = call i32 @zap_lookup(i32* %158, i32 %159, i32 %160, i32 8, i32 1, i64* %162)
  store i32 %163, i32* %6, align 4
  %164 = load i32, i32* %6, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i32, i32* %6, align 4
  store i32 %167, i32* %3, align 4
  br label %294

168:                                              ; preds = %157
  %169 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 4
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  %173 = zext i1 %172 to i32
  %174 = call i32 @ASSERT(i32 %173)
  %175 = load i32*, i32** %5, align 8
  %176 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %177 = load i32, i32* @ZFS_UNLINKED_SET, align 4
  %178 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 5
  %180 = call i32 @zap_lookup(i32* %175, i32 %176, i32 %177, i32 8, i32 1, i64* %179)
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* %6, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %168
  %184 = load i32, i32* %6, align 4
  store i32 %184, i32* %3, align 4
  br label %294

185:                                              ; preds = %168
  %186 = load i32*, i32** %5, align 8
  %187 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %188 = load i32*, i32** @zfs_userquota_prop_prefixes, align 8
  %189 = load i64, i64* @ZFS_PROP_USERQUOTA, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 6
  %194 = call i32 @zap_lookup(i32* %186, i32 %187, i32 %191, i32 8, i32 1, i64* %193)
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %6, align 4
  %196 = load i32, i32* @ENOENT, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %185
  %199 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %199, i32 0, i32 6
  store i64 0, i64* %200, align 8
  br label %207

201:                                              ; preds = %185
  %202 = load i32, i32* %6, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = load i32, i32* %6, align 4
  store i32 %205, i32* %3, align 4
  br label %294

206:                                              ; preds = %201
  br label %207

207:                                              ; preds = %206, %198
  %208 = load i32*, i32** %5, align 8
  %209 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %210 = load i32*, i32** @zfs_userquota_prop_prefixes, align 8
  %211 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %212 = getelementptr inbounds i32, i32* %210, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %215 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %214, i32 0, i32 7
  %216 = call i32 @zap_lookup(i32* %208, i32 %209, i32 %213, i32 8, i32 1, i64* %215)
  store i32 %216, i32* %6, align 4
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @ENOENT, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %223

220:                                              ; preds = %207
  %221 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %222 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %221, i32 0, i32 7
  store i64 0, i64* %222, align 8
  br label %229

223:                                              ; preds = %207
  %224 = load i32, i32* %6, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = load i32, i32* %6, align 4
  store i32 %227, i32* %3, align 4
  br label %294

228:                                              ; preds = %223
  br label %229

229:                                              ; preds = %228, %220
  %230 = load i32*, i32** %5, align 8
  %231 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %232 = load i32, i32* @ZFS_FUID_TABLES, align 4
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 8
  %235 = call i32 @zap_lookup(i32* %230, i32 %231, i32 %232, i32 8, i32 1, i64* %234)
  store i32 %235, i32* %6, align 4
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @ENOENT, align 4
  %238 = icmp eq i32 %236, %237
  br i1 %238, label %239, label %242

239:                                              ; preds = %229
  %240 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 8
  store i64 0, i64* %241, align 8
  br label %248

242:                                              ; preds = %229
  %243 = load i32, i32* %6, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %242
  %246 = load i32, i32* %6, align 4
  store i32 %246, i32* %3, align 4
  br label %294

247:                                              ; preds = %242
  br label %248

248:                                              ; preds = %247, %239
  %249 = load i32*, i32** %5, align 8
  %250 = load i32, i32* @MASTER_NODE_OBJ, align 4
  %251 = load i32, i32* @ZFS_SHARES_DIR, align 4
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 9
  %254 = call i32 @zap_lookup(i32* %249, i32 %250, i32 %251, i32 8, i32 1, i64* %253)
  store i32 %254, i32* %6, align 4
  %255 = load i32, i32* %6, align 4
  %256 = load i32, i32* @ENOENT, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %248
  %259 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %259, i32 0, i32 9
  store i64 0, i64* %260, align 8
  br label %267

261:                                              ; preds = %248
  %262 = load i32, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %266

264:                                              ; preds = %261
  %265 = load i32, i32* %6, align 4
  store i32 %265, i32* %3, align 4
  br label %294

266:                                              ; preds = %261
  br label %267

267:                                              ; preds = %266, %258
  %268 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %289

272:                                              ; preds = %267
  %273 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %274 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %273, i32 0, i32 3
  %275 = load i64, i64* %274, align 8
  %276 = load i64, i64* @ZFS_CASE_MIXED, align 8
  %277 = icmp eq i64 %275, %276
  br i1 %277, label %278, label %287

278:                                              ; preds = %272
  %279 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %280 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @U8_TEXTPREP_TOUPPER, align 4
  %283 = xor i32 %282, -1
  %284 = and i32 %281, %283
  %285 = icmp ne i32 %284, 0
  %286 = xor i1 %285, true
  br label %287

287:                                              ; preds = %278, %272
  %288 = phi i1 [ false, %272 ], [ %286, %278 ]
  br label %289

289:                                              ; preds = %287, %267
  %290 = phi i1 [ true, %267 ], [ %288, %287 ]
  %291 = zext i1 %290 to i32
  %292 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 10
  store i32 %291, i32* %293, align 8
  store i32 0, i32* %3, align 4
  br label %294

294:                                              ; preds = %289, %264, %245, %226, %204, %183, %166, %145, %132, %79, %66, %54, %36, %25
  %295 = load i32, i32* %3, align 4
  ret i32 %295
}

declare dso_local i32 @zfs_get_zplprop(i32*, i32, i64*) #1

declare dso_local i64 @zfs_zpl_version_map(i64) #1

declare dso_local i64 @spa_version(i32) #1

declare dso_local i32 @dmu_objset_spa(i32*) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @USE_FUIDS(i64, i32*) #1

declare dso_local i64 @USE_SA(i64, i32*) #1

declare dso_local i32 @zap_lookup(i32*, i32, i32, i32, i32, i64*) #1

declare dso_local i32 @sa_setup(i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @sa_register_update_callback(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
