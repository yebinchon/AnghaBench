; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_register_callbacks.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_register_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, %struct.TYPE_21__* }
%struct.dsl_dataset = type { i32 }

@B_FALSE = common dso_local global i8* null, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MNTOPT_RO = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i8* null, align 8
@MNTOPT_RW = common dso_local global i32 0, align 4
@MNTOPT_NOSUID = common dso_local global i32 0, align 4
@MNTOPT_NOSETUID = common dso_local global i32 0, align 4
@MNTOPT_SETUID = common dso_local global i32 0, align 4
@MNTOPT_NOEXEC = common dso_local global i32 0, align 4
@MNTOPT_EXEC = common dso_local global i32 0, align 4
@MNTOPT_NOXATTR = common dso_local global i32 0, align 4
@MNTOPT_XATTR = common dso_local global i32 0, align 4
@MNTOPT_NOATIME = common dso_local global i32 0, align 4
@MNTOPT_ATIME = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@MNTOPT_NONBMAND = common dso_local global i32 0, align 4
@MNTOPT_NBMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"nbmand\00", align 1
@ZFS_PROP_ATIME = common dso_local global i32 0, align 4
@ZFS_PROP_XATTR = common dso_local global i32 0, align 4
@ZFS_PROP_RECORDSIZE = common dso_local global i32 0, align 4
@ZFS_PROP_READONLY = common dso_local global i32 0, align 4
@ZFS_PROP_SETUID = common dso_local global i32 0, align 4
@ZFS_PROP_EXEC = common dso_local global i32 0, align 4
@ZFS_PROP_SNAPDIR = common dso_local global i32 0, align 4
@ZFS_PROP_ACLMODE = common dso_local global i32 0, align 4
@ZFS_PROP_ACLINHERIT = common dso_local global i32 0, align 4
@ZFS_PROP_VSCAN = common dso_local global i32 0, align 4
@ZFS_PROP_DEVICES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*)* @zfs_register_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_register_callbacks(%struct.TYPE_21__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.dsl_dataset*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.dsl_dataset* null, %struct.dsl_dataset** %4, align 8
  store i32* null, i32** %5, align 8
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %6, align 8
  %19 = load i8*, i8** @B_FALSE, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** @B_FALSE, align 8
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** @B_FALSE, align 8
  store i8* %21, i8** %10, align 8
  %22 = load i8*, i8** @B_FALSE, align 8
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** @B_FALSE, align 8
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** @B_FALSE, align 8
  store i8* %24, i8** %13, align 8
  %25 = load i8*, i8** @B_FALSE, align 8
  store i8* %25, i8** %14, align 8
  %26 = load i8*, i8** @B_FALSE, align 8
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** @B_FALSE, align 8
  store i8* %27, i8** %16, align 8
  %28 = load i8*, i8** @B_FALSE, align 8
  store i8* %28, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %30 = call i32 @ASSERT(%struct.TYPE_21__* %29)
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %32, align 8
  store %struct.TYPE_21__* %33, %struct.TYPE_21__** %6, align 8
  %34 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %35 = call i32 @ASSERT(%struct.TYPE_21__* %34)
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  store i32* %38, i32** %5, align 8
  %39 = load i32*, i32** %5, align 8
  %40 = call i64 @dmu_objset_is_snapshot(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %1
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %43, i32* %2, align 4
  br label %341

44:                                               ; preds = %1
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %46 = load i32, i32* @MNTOPT_RO, align 4
  %47 = call i64 @vfs_optionisset(%struct.TYPE_21__* %45, i32 %46, i32* null)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @dmu_objset_spa(i32* %50)
  %52 = call i32 @spa_writeable(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49, %44
  %55 = load i8*, i8** @B_TRUE, align 8
  store i8* %55, i8** %8, align 8
  %56 = load i8*, i8** @B_TRUE, align 8
  store i8* %56, i8** %9, align 8
  br label %66

57:                                               ; preds = %49
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %59 = load i32, i32* @MNTOPT_RW, align 4
  %60 = call i64 @vfs_optionisset(%struct.TYPE_21__* %58, i32 %59, i32* null)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i8*, i8** @B_FALSE, align 8
  store i8* %63, i8** %8, align 8
  %64 = load i8*, i8** @B_TRUE, align 8
  store i8* %64, i8** %9, align 8
  br label %65

65:                                               ; preds = %62, %57
  br label %66

66:                                               ; preds = %65, %54
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %68 = load i32, i32* @MNTOPT_NOSUID, align 4
  %69 = call i64 @vfs_optionisset(%struct.TYPE_21__* %67, i32 %68, i32* null)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i8*, i8** @B_FALSE, align 8
  store i8* %72, i8** %10, align 8
  %73 = load i8*, i8** @B_TRUE, align 8
  store i8* %73, i8** %11, align 8
  br label %92

74:                                               ; preds = %66
  %75 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %76 = load i32, i32* @MNTOPT_NOSETUID, align 4
  %77 = call i64 @vfs_optionisset(%struct.TYPE_21__* %75, i32 %76, i32* null)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i8*, i8** @B_FALSE, align 8
  store i8* %80, i8** %10, align 8
  %81 = load i8*, i8** @B_TRUE, align 8
  store i8* %81, i8** %11, align 8
  br label %91

82:                                               ; preds = %74
  %83 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %84 = load i32, i32* @MNTOPT_SETUID, align 4
  %85 = call i64 @vfs_optionisset(%struct.TYPE_21__* %83, i32 %84, i32* null)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i8*, i8** @B_TRUE, align 8
  store i8* %88, i8** %10, align 8
  %89 = load i8*, i8** @B_TRUE, align 8
  store i8* %89, i8** %11, align 8
  br label %90

90:                                               ; preds = %87, %82
  br label %91

91:                                               ; preds = %90, %79
  br label %92

92:                                               ; preds = %91, %71
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %94 = load i32, i32* @MNTOPT_NOEXEC, align 4
  %95 = call i64 @vfs_optionisset(%struct.TYPE_21__* %93, i32 %94, i32* null)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i8*, i8** @B_FALSE, align 8
  store i8* %98, i8** %12, align 8
  %99 = load i8*, i8** @B_TRUE, align 8
  store i8* %99, i8** %13, align 8
  br label %109

100:                                              ; preds = %92
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %102 = load i32, i32* @MNTOPT_EXEC, align 4
  %103 = call i64 @vfs_optionisset(%struct.TYPE_21__* %101, i32 %102, i32* null)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load i8*, i8** @B_TRUE, align 8
  store i8* %106, i8** %12, align 8
  %107 = load i8*, i8** @B_TRUE, align 8
  store i8* %107, i8** %13, align 8
  br label %108

108:                                              ; preds = %105, %100
  br label %109

109:                                              ; preds = %108, %97
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %111 = load i32, i32* @MNTOPT_NOXATTR, align 4
  %112 = call i64 @vfs_optionisset(%struct.TYPE_21__* %110, i32 %111, i32* null)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** @B_FALSE, align 8
  store i8* %115, i8** %14, align 8
  %116 = load i8*, i8** @B_TRUE, align 8
  store i8* %116, i8** %15, align 8
  br label %126

117:                                              ; preds = %109
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %119 = load i32, i32* @MNTOPT_XATTR, align 4
  %120 = call i64 @vfs_optionisset(%struct.TYPE_21__* %118, i32 %119, i32* null)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** @B_TRUE, align 8
  store i8* %123, i8** %14, align 8
  %124 = load i8*, i8** @B_TRUE, align 8
  store i8* %124, i8** %15, align 8
  br label %125

125:                                              ; preds = %122, %117
  br label %126

126:                                              ; preds = %125, %114
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %128 = load i32, i32* @MNTOPT_NOATIME, align 4
  %129 = call i64 @vfs_optionisset(%struct.TYPE_21__* %127, i32 %128, i32* null)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load i8*, i8** @B_FALSE, align 8
  store i8* %132, i8** %16, align 8
  %133 = load i8*, i8** @B_TRUE, align 8
  store i8* %133, i8** %17, align 8
  br label %143

134:                                              ; preds = %126
  %135 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %136 = load i32, i32* @MNTOPT_ATIME, align 4
  %137 = call i64 @vfs_optionisset(%struct.TYPE_21__* %135, i32 %136, i32* null)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %134
  %140 = load i8*, i8** @B_TRUE, align 8
  store i8* %140, i8** %16, align 8
  %141 = load i8*, i8** @B_TRUE, align 8
  store i8* %141, i8** %17, align 8
  br label %142

142:                                              ; preds = %139, %134
  br label %143

143:                                              ; preds = %142, %131
  %144 = load i32*, i32** %5, align 8
  %145 = call %struct.dsl_dataset* @dmu_objset_ds(i32* %144)
  store %struct.dsl_dataset* %145, %struct.dsl_dataset** %4, align 8
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @dmu_objset_pool(i32* %146)
  %148 = load i32, i32* @FTAG, align 4
  %149 = call i32 @dsl_pool_config_enter(i32 %147, i32 %148)
  %150 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %151 = load i32, i32* @MNTOPT_NONBMAND, align 4
  %152 = call i64 @vfs_optionisset(%struct.TYPE_21__* %150, i32 %151, i32* null)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %143
  %155 = load i8*, i8** @B_FALSE, align 8
  store i8* %155, i8** %7, align 8
  br label %176

156:                                              ; preds = %143
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %158 = load i32, i32* @MNTOPT_NBMAND, align 4
  %159 = call i64 @vfs_optionisset(%struct.TYPE_21__* %157, i32 %158, i32* null)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %163

161:                                              ; preds = %156
  %162 = load i8*, i8** @B_TRUE, align 8
  store i8* %162, i8** %7, align 8
  br label %175

163:                                              ; preds = %156
  %164 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %165 = call i64 @dsl_prop_get_int_ds(%struct.dsl_dataset* %164, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %7)
  %166 = icmp ne i64 %165, 0
  %167 = zext i1 %166 to i32
  store i32 %167, i32* %18, align 4
  br i1 %166, label %168, label %174

168:                                              ; preds = %163
  %169 = load i32*, i32** %5, align 8
  %170 = call i32 @dmu_objset_pool(i32* %169)
  %171 = load i32, i32* @FTAG, align 4
  %172 = call i32 @dsl_pool_config_exit(i32 %170, i32 %171)
  %173 = load i32, i32* %18, align 4
  store i32 %173, i32* %2, align 4
  br label %341

174:                                              ; preds = %163
  br label %175

175:                                              ; preds = %174, %161
  br label %176

176:                                              ; preds = %175, %154
  %177 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %178 = load i32, i32* @ZFS_PROP_ATIME, align 4
  %179 = call i32 @zfs_prop_to_name(i32 %178)
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %181 = call i32 @dsl_prop_register(%struct.dsl_dataset* %177, i32 %179, i32 (%struct.TYPE_21__*, i8*)* @atime_changed_cb, %struct.TYPE_21__* %180)
  store i32 %181, i32* %18, align 4
  %182 = load i32, i32* %18, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %176
  %185 = load i32, i32* %18, align 4
  br label %192

186:                                              ; preds = %176
  %187 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %188 = load i32, i32* @ZFS_PROP_XATTR, align 4
  %189 = call i32 @zfs_prop_to_name(i32 %188)
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %191 = call i32 @dsl_prop_register(%struct.dsl_dataset* %187, i32 %189, i32 (%struct.TYPE_21__*, i8*)* @xattr_changed_cb, %struct.TYPE_21__* %190)
  br label %192

192:                                              ; preds = %186, %184
  %193 = phi i32 [ %185, %184 ], [ %191, %186 ]
  store i32 %193, i32* %18, align 4
  %194 = load i32, i32* %18, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* %18, align 4
  br label %204

198:                                              ; preds = %192
  %199 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %200 = load i32, i32* @ZFS_PROP_RECORDSIZE, align 4
  %201 = call i32 @zfs_prop_to_name(i32 %200)
  %202 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %203 = call i32 @dsl_prop_register(%struct.dsl_dataset* %199, i32 %201, i32 (%struct.TYPE_21__*, i8*)* @blksz_changed_cb, %struct.TYPE_21__* %202)
  br label %204

204:                                              ; preds = %198, %196
  %205 = phi i32 [ %197, %196 ], [ %203, %198 ]
  store i32 %205, i32* %18, align 4
  %206 = load i32, i32* %18, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i32, i32* %18, align 4
  br label %216

210:                                              ; preds = %204
  %211 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %212 = load i32, i32* @ZFS_PROP_READONLY, align 4
  %213 = call i32 @zfs_prop_to_name(i32 %212)
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %215 = call i32 @dsl_prop_register(%struct.dsl_dataset* %211, i32 %213, i32 (%struct.TYPE_21__*, i8*)* @readonly_changed_cb, %struct.TYPE_21__* %214)
  br label %216

216:                                              ; preds = %210, %208
  %217 = phi i32 [ %209, %208 ], [ %215, %210 ]
  store i32 %217, i32* %18, align 4
  %218 = load i32, i32* %18, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %216
  %221 = load i32, i32* %18, align 4
  br label %228

222:                                              ; preds = %216
  %223 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %224 = load i32, i32* @ZFS_PROP_SETUID, align 4
  %225 = call i32 @zfs_prop_to_name(i32 %224)
  %226 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %227 = call i32 @dsl_prop_register(%struct.dsl_dataset* %223, i32 %225, i32 (%struct.TYPE_21__*, i8*)* @setuid_changed_cb, %struct.TYPE_21__* %226)
  br label %228

228:                                              ; preds = %222, %220
  %229 = phi i32 [ %221, %220 ], [ %227, %222 ]
  store i32 %229, i32* %18, align 4
  %230 = load i32, i32* %18, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %228
  %233 = load i32, i32* %18, align 4
  br label %240

234:                                              ; preds = %228
  %235 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %236 = load i32, i32* @ZFS_PROP_EXEC, align 4
  %237 = call i32 @zfs_prop_to_name(i32 %236)
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %239 = call i32 @dsl_prop_register(%struct.dsl_dataset* %235, i32 %237, i32 (%struct.TYPE_21__*, i8*)* @exec_changed_cb, %struct.TYPE_21__* %238)
  br label %240

240:                                              ; preds = %234, %232
  %241 = phi i32 [ %233, %232 ], [ %239, %234 ]
  store i32 %241, i32* %18, align 4
  %242 = load i32, i32* %18, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %240
  %245 = load i32, i32* %18, align 4
  br label %252

246:                                              ; preds = %240
  %247 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %248 = load i32, i32* @ZFS_PROP_SNAPDIR, align 4
  %249 = call i32 @zfs_prop_to_name(i32 %248)
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %251 = call i32 @dsl_prop_register(%struct.dsl_dataset* %247, i32 %249, i32 (%struct.TYPE_21__*, i8*)* @snapdir_changed_cb, %struct.TYPE_21__* %250)
  br label %252

252:                                              ; preds = %246, %244
  %253 = phi i32 [ %245, %244 ], [ %251, %246 ]
  store i32 %253, i32* %18, align 4
  %254 = load i32, i32* %18, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %258

256:                                              ; preds = %252
  %257 = load i32, i32* %18, align 4
  br label %264

258:                                              ; preds = %252
  %259 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %260 = load i32, i32* @ZFS_PROP_ACLMODE, align 4
  %261 = call i32 @zfs_prop_to_name(i32 %260)
  %262 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %263 = call i32 @dsl_prop_register(%struct.dsl_dataset* %259, i32 %261, i32 (%struct.TYPE_21__*, i8*)* @acl_mode_changed_cb, %struct.TYPE_21__* %262)
  br label %264

264:                                              ; preds = %258, %256
  %265 = phi i32 [ %257, %256 ], [ %263, %258 ]
  store i32 %265, i32* %18, align 4
  %266 = load i32, i32* %18, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %264
  %269 = load i32, i32* %18, align 4
  br label %276

270:                                              ; preds = %264
  %271 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %272 = load i32, i32* @ZFS_PROP_ACLINHERIT, align 4
  %273 = call i32 @zfs_prop_to_name(i32 %272)
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %275 = call i32 @dsl_prop_register(%struct.dsl_dataset* %271, i32 %273, i32 (%struct.TYPE_21__*, i8*)* @acl_inherit_changed_cb, %struct.TYPE_21__* %274)
  br label %276

276:                                              ; preds = %270, %268
  %277 = phi i32 [ %269, %268 ], [ %275, %270 ]
  store i32 %277, i32* %18, align 4
  %278 = load i32, i32* %18, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %282

280:                                              ; preds = %276
  %281 = load i32, i32* %18, align 4
  br label %288

282:                                              ; preds = %276
  %283 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %284 = load i32, i32* @ZFS_PROP_VSCAN, align 4
  %285 = call i32 @zfs_prop_to_name(i32 %284)
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %287 = call i32 @dsl_prop_register(%struct.dsl_dataset* %283, i32 %285, i32 (%struct.TYPE_21__*, i8*)* @vscan_changed_cb, %struct.TYPE_21__* %286)
  br label %288

288:                                              ; preds = %282, %280
  %289 = phi i32 [ %281, %280 ], [ %287, %282 ]
  store i32 %289, i32* %18, align 4
  %290 = load i32*, i32** %5, align 8
  %291 = call i32 @dmu_objset_pool(i32* %290)
  %292 = load i32, i32* @FTAG, align 4
  %293 = call i32 @dsl_pool_config_exit(i32 %291, i32 %292)
  %294 = load i32, i32* %18, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %297

296:                                              ; preds = %288
  br label %336

297:                                              ; preds = %288
  %298 = load i8*, i8** %9, align 8
  %299 = icmp ne i8* %298, null
  br i1 %299, label %300, label %304

300:                                              ; preds = %297
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %302 = load i8*, i8** %8, align 8
  %303 = call i32 @readonly_changed_cb(%struct.TYPE_21__* %301, i8* %302)
  br label %304

304:                                              ; preds = %300, %297
  %305 = load i8*, i8** %11, align 8
  %306 = icmp ne i8* %305, null
  br i1 %306, label %307, label %311

307:                                              ; preds = %304
  %308 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %309 = load i8*, i8** %10, align 8
  %310 = call i32 @setuid_changed_cb(%struct.TYPE_21__* %308, i8* %309)
  br label %311

311:                                              ; preds = %307, %304
  %312 = load i8*, i8** %13, align 8
  %313 = icmp ne i8* %312, null
  br i1 %313, label %314, label %318

314:                                              ; preds = %311
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %316 = load i8*, i8** %12, align 8
  %317 = call i32 @exec_changed_cb(%struct.TYPE_21__* %315, i8* %316)
  br label %318

318:                                              ; preds = %314, %311
  %319 = load i8*, i8** %15, align 8
  %320 = icmp ne i8* %319, null
  br i1 %320, label %321, label %325

321:                                              ; preds = %318
  %322 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %323 = load i8*, i8** %14, align 8
  %324 = call i32 @xattr_changed_cb(%struct.TYPE_21__* %322, i8* %323)
  br label %325

325:                                              ; preds = %321, %318
  %326 = load i8*, i8** %17, align 8
  %327 = icmp ne i8* %326, null
  br i1 %327, label %328, label %332

328:                                              ; preds = %325
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %330 = load i8*, i8** %16, align 8
  %331 = call i32 @atime_changed_cb(%struct.TYPE_21__* %329, i8* %330)
  br label %332

332:                                              ; preds = %328, %325
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %334 = load i8*, i8** %7, align 8
  %335 = call i32 @nbmand_changed_cb(%struct.TYPE_21__* %333, i8* %334)
  store i32 0, i32* %2, align 4
  br label %341

336:                                              ; preds = %296
  %337 = load %struct.dsl_dataset*, %struct.dsl_dataset** %4, align 8
  %338 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %339 = call i32 @dsl_prop_unregister_all(%struct.dsl_dataset* %337, %struct.TYPE_21__* %338)
  %340 = load i32, i32* %18, align 4
  store i32 %340, i32* %2, align 4
  br label %341

341:                                              ; preds = %336, %332, %168, %42
  %342 = load i32, i32* %2, align 4
  ret i32 %342
}

declare dso_local i32 @ASSERT(%struct.TYPE_21__*) #1

declare dso_local i64 @dmu_objset_is_snapshot(i32*) #1

declare dso_local i64 @vfs_optionisset(%struct.TYPE_21__*, i32, i32*) #1

declare dso_local i32 @spa_writeable(i32) #1

declare dso_local i32 @dmu_objset_spa(i32*) #1

declare dso_local %struct.dsl_dataset* @dmu_objset_ds(i32*) #1

declare dso_local i32 @dsl_pool_config_enter(i32, i32) #1

declare dso_local i32 @dmu_objset_pool(i32*) #1

declare dso_local i64 @dsl_prop_get_int_ds(%struct.dsl_dataset*, i8*, i8**) #1

declare dso_local i32 @dsl_pool_config_exit(i32, i32) #1

declare dso_local i32 @dsl_prop_register(%struct.dsl_dataset*, i32, i32 (%struct.TYPE_21__*, i8*)*, %struct.TYPE_21__*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @atime_changed_cb(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @xattr_changed_cb(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @blksz_changed_cb(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @readonly_changed_cb(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @setuid_changed_cb(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @exec_changed_cb(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @snapdir_changed_cb(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @acl_mode_changed_cb(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @acl_inherit_changed_cb(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @vscan_changed_cb(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @nbmand_changed_cb(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @dsl_prop_unregister_all(%struct.dsl_dataset*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
