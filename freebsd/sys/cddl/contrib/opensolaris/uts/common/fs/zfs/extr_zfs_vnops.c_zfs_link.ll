; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vnops.c_zfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64 }
%struct.TYPE_25__ = type { i32, i32, i32, i32, %struct.TYPE_26__* }
%struct.TYPE_26__ = type { i64, %struct.TYPE_24__*, i64, i32* }
%struct.TYPE_24__ = type { i64 }

@VDIR = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@ZFS_APPENDONLY = common dso_local global i32 0, align 4
@ZFS_IMMUTABLE = common dso_local global i32 0, align 4
@ZFS_READONLY = common dso_local global i32 0, align 4
@U8_VALIDATE_ENTIRE = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@ZFS_XATTR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZFS_OWNER = common dso_local global i32 0, align 4
@ACE_ADD_FILE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ZNEW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@TX_LINK = common dso_local global i64 0, align 8
@ZFS_SYNC_ALWAYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_27__*, i8*, i32*, i32*, i32)* @zfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_link(%struct.TYPE_27__* %0, %struct.TYPE_27__* %1, i8* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_27__*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_25__*, align 8
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_26__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %8, align 8
  store %struct.TYPE_27__* %1, %struct.TYPE_27__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %25 = call %struct.TYPE_25__* @VTOZ(%struct.TYPE_27__* %24)
  store %struct.TYPE_25__* %25, %struct.TYPE_25__** %14, align 8
  %26 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  store %struct.TYPE_26__* %28, %struct.TYPE_26__** %17, align 8
  %29 = load %struct.TYPE_27__*, %struct.TYPE_27__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VDIR, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %37 = call i32 @ZFS_ENTER(%struct.TYPE_26__* %36)
  %38 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %39 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_25__* %38)
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %18, align 8
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VDIR, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %6
  %49 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %50 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %49)
  %51 = load i32, i32* @EPERM, align 4
  %52 = call i32 @SET_ERROR(i32 %51)
  store i32 %52, i32* %7, align 4
  br label %250

53:                                               ; preds = %6
  %54 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %55 = call %struct.TYPE_25__* @VTOZ(%struct.TYPE_27__* %54)
  store %struct.TYPE_25__* %55, %struct.TYPE_25__** %16, align 8
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %57 = call i32 @ZFS_VERIFY_ZP(%struct.TYPE_25__* %56)
  %58 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ZFS_APPENDONLY, align 4
  %62 = load i32, i32* @ZFS_IMMUTABLE, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @ZFS_READONLY, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %60, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %53
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %70 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %69)
  %71 = load i32, i32* @EPERM, align 4
  %72 = call i32 @SET_ERROR(i32 %71)
  store i32 %72, i32* %7, align 4
  br label %250

73:                                               ; preds = %53
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %78 = call i32 @SA_ZPL_PARENT(%struct.TYPE_26__* %77)
  %79 = call i32 @sa_lookup(i32 %76, i32 %78, i64* %21, i32 8)
  store i32 %79, i32* %20, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %83 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %82)
  %84 = load i32, i32* %20, align 4
  store i32 %84, i32* %7, align 4
  br label %250

85:                                               ; preds = %73
  %86 = load i64, i64* %21, align 8
  %87 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %86, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %93 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %92)
  %94 = load i32, i32* @EPERM, align 4
  %95 = call i32 @SET_ERROR(i32 %94)
  store i32 %95, i32* %7, align 4
  br label %250

96:                                               ; preds = %85
  %97 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %98 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load i8*, i8** %10, align 8
  %103 = load i8*, i8** %10, align 8
  %104 = call i32 @strlen(i8* %103)
  %105 = load i32, i32* @U8_VALIDATE_ENTIRE, align 4
  %106 = call i64 @u8_validate(i8* %102, i32 %104, i32* null, i32 %105, i32* %20)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %101
  %109 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %110 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %109)
  %111 = load i32, i32* @EILSEQ, align 4
  %112 = call i32 @SET_ERROR(i32 %111)
  store i32 %112, i32* %7, align 4
  br label %250

113:                                              ; preds = %101, %96
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ZFS_XATTR, align 4
  %118 = and i32 %116, %117
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @ZFS_XATTR, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %118, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %113
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %127 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %126)
  %128 = load i32, i32* @EINVAL, align 4
  %129 = call i32 @SET_ERROR(i32 %128)
  store i32 %129, i32* %7, align 4
  br label %250

130:                                              ; preds = %113
  %131 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %11, align 8
  %136 = load i32, i32* @ZFS_OWNER, align 4
  %137 = call i64 @zfs_fuid_map_id(%struct.TYPE_26__* %131, i32 %134, i32* %135, i32 %136)
  store i64 %137, i64* %22, align 8
  %138 = load i64, i64* %22, align 8
  %139 = load i32*, i32** %11, align 8
  %140 = call i64 @crgetuid(i32* %139)
  %141 = icmp ne i64 %138, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %130
  %143 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %144 = load i32*, i32** %11, align 8
  %145 = call i64 @secpolicy_basic_link(%struct.TYPE_27__* %143, i32* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %149 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %148)
  %150 = load i32, i32* @EPERM, align 4
  %151 = call i32 @SET_ERROR(i32 %150)
  store i32 %151, i32* %7, align 4
  br label %250

152:                                              ; preds = %142, %130
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %154 = load i32, i32* @ACE_ADD_FILE, align 4
  %155 = load i32, i32* @B_FALSE, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = call i32 @zfs_zaccess(%struct.TYPE_25__* %153, i32 %154, i32 0, i32 %155, i32* %156)
  store i32 %157, i32* %20, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  %160 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %161 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %160)
  %162 = load i32, i32* %20, align 4
  store i32 %162, i32* %7, align 4
  br label %250

163:                                              ; preds = %152
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = load i32, i32* @ZNEW, align 4
  %167 = call i32 @zfs_dirent_lookup(%struct.TYPE_25__* %164, i8* %165, %struct.TYPE_25__** %15, i32 %166)
  store i32 %167, i32* %20, align 4
  %168 = load i32, i32* %20, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %163
  %171 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %172 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %171)
  %173 = load i32, i32* %20, align 4
  store i32 %173, i32* %7, align 4
  br label %250

174:                                              ; preds = %163
  %175 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %176 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_24__*, %struct.TYPE_24__** %176, align 8
  %178 = call i32* @dmu_tx_create(%struct.TYPE_24__* %177)
  store i32* %178, i32** %19, align 8
  %179 = load i32*, i32** %19, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @B_FALSE, align 4
  %184 = call i32 @dmu_tx_hold_sa(i32* %179, i32 %182, i32 %183)
  %185 = load i32*, i32** %19, align 8
  %186 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @TRUE, align 4
  %190 = load i8*, i8** %10, align 8
  %191 = call i32 @dmu_tx_hold_zap(i32* %185, i32 %188, i32 %189, i8* %190)
  %192 = load i32*, i32** %19, align 8
  %193 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %194 = call i32 @zfs_sa_upgrade_txholds(i32* %192, %struct.TYPE_25__* %193)
  %195 = load i32*, i32** %19, align 8
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %197 = call i32 @zfs_sa_upgrade_txholds(i32* %195, %struct.TYPE_25__* %196)
  %198 = load i32*, i32** %19, align 8
  %199 = load i32, i32* @TXG_WAIT, align 4
  %200 = call i32 @dmu_tx_assign(i32* %198, i32 %199)
  store i32 %200, i32* %20, align 4
  %201 = load i32, i32* %20, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %209

203:                                              ; preds = %174
  %204 = load i32*, i32** %19, align 8
  %205 = call i32 @dmu_tx_abort(i32* %204)
  %206 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %207 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %206)
  %208 = load i32, i32* %20, align 4
  store i32 %208, i32* %7, align 4
  br label %250

209:                                              ; preds = %174
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %211 = load i8*, i8** %10, align 8
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %213 = load i32*, i32** %19, align 8
  %214 = call i32 @zfs_link_create(%struct.TYPE_25__* %210, i8* %211, %struct.TYPE_25__* %212, i32* %213, i32 0)
  store i32 %214, i32* %20, align 4
  %215 = load i32, i32* %20, align 4
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %209
  %218 = load i64, i64* @TX_LINK, align 8
  store i64 %218, i64* %23, align 8
  %219 = load i32*, i32** %18, align 8
  %220 = load i32*, i32** %19, align 8
  %221 = load i64, i64* %23, align 8
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %14, align 8
  %223 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %224 = load i8*, i8** %10, align 8
  %225 = call i32 @zfs_log_link(i32* %219, i32* %220, i64 %221, %struct.TYPE_25__* %222, %struct.TYPE_25__* %223, i8* %224)
  br label %226

226:                                              ; preds = %217, %209
  %227 = load i32*, i32** %19, align 8
  %228 = call i32 @dmu_tx_commit(i32* %227)
  %229 = load i32, i32* %20, align 4
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %226
  %232 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %233 = load i32*, i32** %12, align 8
  %234 = call i32 @vnevent_link(%struct.TYPE_27__* %232, i32* %233)
  br label %235

235:                                              ; preds = %231, %226
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 1
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @ZFS_SYNC_ALWAYS, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %246

243:                                              ; preds = %235
  %244 = load i32*, i32** %18, align 8
  %245 = call i32 @zil_commit(i32* %244, i32 0)
  br label %246

246:                                              ; preds = %243, %235
  %247 = load %struct.TYPE_26__*, %struct.TYPE_26__** %17, align 8
  %248 = call i32 @ZFS_EXIT(%struct.TYPE_26__* %247)
  %249 = load i32, i32* %20, align 4
  store i32 %249, i32* %7, align 4
  br label %250

250:                                              ; preds = %246, %203, %170, %159, %147, %125, %108, %91, %81, %68, %48
  %251 = load i32, i32* %7, align 4
  ret i32 %251
}

declare dso_local %struct.TYPE_25__* @VTOZ(%struct.TYPE_27__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @ZFS_ENTER(%struct.TYPE_26__*) #1

declare dso_local i32 @ZFS_VERIFY_ZP(%struct.TYPE_25__*) #1

declare dso_local i32 @ZFS_EXIT(%struct.TYPE_26__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @sa_lookup(i32, i32, i64*, i32) #1

declare dso_local i32 @SA_ZPL_PARENT(%struct.TYPE_26__*) #1

declare dso_local i64 @u8_validate(i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @zfs_fuid_map_id(%struct.TYPE_26__*, i32, i32*, i32) #1

declare dso_local i64 @crgetuid(i32*) #1

declare dso_local i64 @secpolicy_basic_link(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @zfs_zaccess(%struct.TYPE_25__*, i32, i32, i32, i32*) #1

declare dso_local i32 @zfs_dirent_lookup(%struct.TYPE_25__*, i8*, %struct.TYPE_25__**, i32) #1

declare dso_local i32* @dmu_tx_create(%struct.TYPE_24__*) #1

declare dso_local i32 @dmu_tx_hold_sa(i32*, i32, i32) #1

declare dso_local i32 @dmu_tx_hold_zap(i32*, i32, i32, i8*) #1

declare dso_local i32 @zfs_sa_upgrade_txholds(i32*, %struct.TYPE_25__*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32 @zfs_link_create(%struct.TYPE_25__*, i8*, %struct.TYPE_25__*, i32*, i32) #1

declare dso_local i32 @zfs_log_link(i32*, i32*, i64, %struct.TYPE_25__*, %struct.TYPE_25__*, i8*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

declare dso_local i32 @vnevent_link(%struct.TYPE_27__*, i32*) #1

declare dso_local i32 @zil_commit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
