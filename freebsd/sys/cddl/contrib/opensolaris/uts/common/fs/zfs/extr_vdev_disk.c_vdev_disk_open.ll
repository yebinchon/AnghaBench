; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_disk.c_vdev_disk_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_disk.c_vdev_disk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8*, i64, i8*, i8*, %struct.TYPE_11__, %struct.TYPE_13__*, i32, i32* }
%struct.TYPE_11__ = type { i8* }
%struct.TYPE_13__ = type { i32*, i32, i32, i32, i64 }
%struct.TYPE_14__ = type { i32 }
%union.anon = type { %struct.dk_minfo_ext }
%struct.dk_minfo_ext = type { i32, i32, i32 }
%struct.dk_minfo = type { i32, i32 }

@B_FALSE = common dso_local global i8* null, align 8
@VDEV_AUX_BAD_LABEL = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@vdev_disk_bypass_devid = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"vdev_disk_open, devid %s bypassed\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"vdev_disk_open: invalid vdev_devid '%s'\00", align 1
@KM_SLEEP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"%ss0\00", align 1
@kcred = common dso_local global i32 0, align 4
@zfs_li = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"vdev_disk_open: devid mismatch: %s != %s\00", align 1
@CE_NOTE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"vdev_disk_open %s: devid mismatch: %s != %s\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to open by devid (%s)\00", align 1
@B_TRUE = common dso_local global i8* null, align 8
@NODEV = common dso_local global i32 0, align 4
@OTYP_BLK = common dso_local global i32 0, align 4
@VDEV_AUX_OPEN_FAILED = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"vdev_disk_open: failed to open [error=%d]\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"vdev_disk_open: update devid from '%s' to '%s'\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"vdev_disk_open %s: update devid from '%s' to '%s'\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@MAXPATHLEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@LDI_EV_OFFLINE = common dso_local global i32 0, align 4
@LDI_EV_SUCCESS = common dso_local global i64 0, align 8
@vdev_disk_off_callb = common dso_local global i32 0, align 4
@LDI_EV_DEGRADE = common dso_local global i32 0, align 4
@vdev_disk_dgrd_callb = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"vdev_disk_open: failed to get size\00", align 1
@DKIOCGMEDIAINFOEXT = common dso_local global i32 0, align 4
@FKIOCTL = common dso_local global i32 0, align 4
@DKIOCGMEDIAINFO = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [51 x i8] c"vdev_disk_open(\22%s\22): fallback to DKIOCGMEDIAINFO\0A\00", align 1
@.str.13 = private unnamed_addr constant [67 x i8] c"vdev_disk_open(\22%s\22): both DKIOCGMEDIAINFO{,EXT} calls failed, %d\0A\00", align 1
@DEV_BSIZE = common dso_local global i32 0, align 4
@SPA_MINBLOCKSIZE = common dso_local global i32 0, align 4
@DKIOCSETWCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32*, i32*)* @vdev_disk_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_disk_open(%struct.TYPE_12__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %union.anon, align 4
  %15 = alloca %struct.dk_minfo_ext*, align 8
  %16 = alloca %struct.dk_minfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 8
  %34 = load i32*, i32** %33, align 8
  store i32* %34, i32** %10, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 6
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %11, align 8
  %38 = bitcast %union.anon* %14 to %struct.dk_minfo_ext*
  store %struct.dk_minfo_ext* %38, %struct.dk_minfo_ext** %15, align 8
  %39 = bitcast %union.anon* %14 to %struct.dk_minfo*
  store %struct.dk_minfo* %39, %struct.dk_minfo** %16, align 8
  %40 = load i8*, i8** @B_FALSE, align 8
  store i8* %40, i8** %20, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = icmp eq i8* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 47
  br i1 %52, label %53, label %60

53:                                               ; preds = %45, %4
  %54 = load i8*, i8** @VDEV_AUX_BAD_LABEL, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i8* %54, i8** %57, align 8
  %58 = load i32, i32* @EINVAL, align 4
  %59 = call i32 @SET_ERROR(i32 %58)
  store i32 %59, i32* %5, align 4
  br label %657

60:                                               ; preds = %45
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %62 = icmp ne %struct.TYPE_13__* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %75 = call i32 @vdev_disk_free(%struct.TYPE_12__* %74)
  br label %81

76:                                               ; preds = %68, %63
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ASSERT(i32 %79)
  br label %552

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %60
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %84 = call i32 @vdev_disk_alloc(%struct.TYPE_12__* %83)
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 6
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %86, align 8
  store %struct.TYPE_13__* %87, %struct.TYPE_13__** %11, align 8
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %107

92:                                               ; preds = %82
  %93 = load i64, i64* @vdev_disk_bypass_devid, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 (%struct.TYPE_12__*, i8*, ...) @vdev_dbgmsg(%struct.TYPE_12__* %96, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %99)
  %101 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 @spa_strfree(i8* %103)
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  store i8* null, i8** %106, align 8
  br label %107

107:                                              ; preds = %95, %92, %82
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br i1 %111, label %112, label %135

112:                                              ; preds = %107
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = call i64 @ddi_devid_str_decode(i8* %115, i32* %117, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %112
  %123 = load i8*, i8** @VDEV_AUX_BAD_LABEL, align 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (%struct.TYPE_12__*, i8*, ...) @vdev_dbgmsg(%struct.TYPE_12__* %127, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = call i32 @SET_ERROR(i32 %132)
  store i32 %133, i32* %5, align 4
  br label %657

134:                                              ; preds = %112
  br label %135

135:                                              ; preds = %134, %107
  %136 = load i32, i32* @EINVAL, align 4
  store i32 %136, i32* %17, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %273

141:                                              ; preds = %135
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, -1
  br i1 %145, label %146, label %189

146:                                              ; preds = %141
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 @strlen(i8* %149)
  %151 = add nsw i32 %150, 3
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %25, align 8
  %153 = load i64, i64* %25, align 8
  %154 = trunc i64 %153 to i32
  %155 = load i32, i32* @KM_SLEEP, align 4
  %156 = call i8* @kmem_alloc(i32 %154, i32 %155)
  store i8* %156, i8** %26, align 8
  %157 = load i8*, i8** %26, align 8
  %158 = load i64, i64* %25, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @snprintf(i8* %157, i64 %158, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %161)
  %163 = load i8*, i8** %26, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @spa_mode(i32* %164)
  %166 = load i32, i32* @kcred, align 4
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* @zfs_li, align 4
  %170 = call i32 @ldi_open_by_name(i8* %163, i32 %165, i32 %166, i32** %168, i32 %169)
  store i32 %170, i32* %17, align 4
  %171 = load i32, i32* %17, align 4
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %183

173:                                              ; preds = %146
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 @spa_strfree(i8* %176)
  %178 = load i8*, i8** %26, align 8
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  store i8* %178, i8** %180, align 8
  %181 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %181, i32 0, i32 2
  store i64 1, i64* %182, align 8
  br label %188

183:                                              ; preds = %146
  %184 = load i8*, i8** %26, align 8
  %185 = load i64, i64* %25, align 8
  %186 = trunc i64 %185 to i32
  %187 = call i32 @kmem_free(i8* %184, i32 %186)
  br label %188

188:                                              ; preds = %183, %173
  br label %189

189:                                              ; preds = %188, %141
  %190 = load i32, i32* %17, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %189
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = load i32*, i32** %10, align 8
  %197 = call i32 @spa_mode(i32* %196)
  %198 = load i32, i32* @kcred, align 4
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = load i32, i32* @zfs_li, align 4
  %202 = call i32 @ldi_open_by_name(i8* %195, i32 %197, i32 %198, i32** %200, i32 %201)
  store i32 %202, i32* %17, align 4
  br label %203

203:                                              ; preds = %192, %189
  %204 = load i32, i32* %17, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %261

206:                                              ; preds = %203
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %261

211:                                              ; preds = %206
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = call i64 @ldi_get_devid(i32* %214, i32* %21)
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %261

217:                                              ; preds = %211
  %218 = load i32, i32* %21, align 4
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @ddi_devid_compare(i32 %218, i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %258

224:                                              ; preds = %217
  %225 = load i32, i32* %21, align 4
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = call i8* @ddi_devid_str_encode(i32 %225, i32 %228)
  store i8* %229, i8** %27, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %231 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 1
  %233 = load i8*, i8** %232, align 8
  %234 = load i8*, i8** %27, align 8
  %235 = call i32 (%struct.TYPE_12__*, i8*, ...) @vdev_dbgmsg(%struct.TYPE_12__* %230, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %233, i8* %234)
  %236 = load i32, i32* @CE_NOTE, align 4
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %241 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %240, i32 0, i32 1
  %242 = load i8*, i8** %241, align 8
  %243 = load i8*, i8** %27, align 8
  %244 = call i32 @cmn_err(i32 %236, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i8* %239, i8* %242, i8* %243)
  %245 = load i8*, i8** %27, align 8
  %246 = call i32 @ddi_devid_str_free(i8* %245)
  %247 = load i32, i32* @EINVAL, align 4
  %248 = call i32 @SET_ERROR(i32 %247)
  store i32 %248, i32* %17, align 4
  %249 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = load i32*, i32** %10, align 8
  %253 = call i32 @spa_mode(i32* %252)
  %254 = load i32, i32* @kcred, align 4
  %255 = call i32 @ldi_close(i32* %251, i32 %253, i32 %254)
  %256 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  store i32* null, i32** %257, align 8
  br label %258

258:                                              ; preds = %224, %217
  %259 = load i32, i32* %21, align 4
  %260 = call i32 @ddi_devid_free(i32 %259)
  br label %261

261:                                              ; preds = %258, %211, %206, %203
  %262 = load i32, i32* %17, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %261
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = icmp eq i64 %267, -1
  br i1 %268, label %269, label %272

269:                                              ; preds = %264
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %270, i32 0, i32 2
  store i64 0, i64* %271, align 8
  br label %272

272:                                              ; preds = %269, %264, %261
  br label %273

273:                                              ; preds = %272, %135
  %274 = load i32, i32* %17, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %304

276:                                              ; preds = %273
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 1
  %279 = load i8*, i8** %278, align 8
  %280 = icmp ne i8* %279, null
  br i1 %280, label %281, label %304

281:                                              ; preds = %276
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** %10, align 8
  %289 = call i32 @spa_mode(i32* %288)
  %290 = load i32, i32* @kcred, align 4
  %291 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  %293 = load i32, i32* @zfs_li, align 4
  %294 = call i32 @ldi_open_by_devid(i32 %284, i32 %287, i32 %289, i32 %290, i32** %292, i32 %293)
  store i32 %294, i32* %17, align 4
  %295 = load i32, i32* %17, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %281
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 1
  %301 = load i8*, i8** %300, align 8
  %302 = call i32 (%struct.TYPE_12__*, i8*, ...) @vdev_dbgmsg(%struct.TYPE_12__* %298, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %301)
  br label %303

303:                                              ; preds = %297, %281
  br label %304

304:                                              ; preds = %303, %276, %273
  %305 = load i32, i32* %17, align 4
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %307, label %355

307:                                              ; preds = %304
  %308 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 1
  %310 = load i8*, i8** %309, align 8
  %311 = icmp ne i8* %310, null
  br i1 %311, label %312, label %314

312:                                              ; preds = %307
  %313 = load i8*, i8** @B_TRUE, align 8
  store i8* %313, i8** %20, align 8
  br label %314

314:                                              ; preds = %312, %307
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 3
  %317 = load i8*, i8** %316, align 8
  %318 = icmp ne i8* %317, null
  br i1 %318, label %319, label %335

319:                                              ; preds = %314
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 3
  %322 = load i8*, i8** %321, align 8
  %323 = call i32 @ddi_pathname_to_dev_t(i8* %322)
  store i32 %323, i32* %18, align 4
  %324 = load i32, i32* @NODEV, align 4
  %325 = icmp ne i32 %323, %324
  br i1 %325, label %326, label %335

326:                                              ; preds = %319
  %327 = load i32, i32* @OTYP_BLK, align 4
  %328 = load i32*, i32** %10, align 8
  %329 = call i32 @spa_mode(i32* %328)
  %330 = load i32, i32* @kcred, align 4
  %331 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %332 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %331, i32 0, i32 0
  %333 = load i32, i32* @zfs_li, align 4
  %334 = call i32 @ldi_open_by_dev(i32* %18, i32 %327, i32 %329, i32 %330, i32** %332, i32 %333)
  store i32 %334, i32* %17, align 4
  br label %335

335:                                              ; preds = %326, %319, %314
  %336 = load i32, i32* %17, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %354

338:                                              ; preds = %335
  %339 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %340 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %339, i32 0, i32 0
  %341 = load i8*, i8** %340, align 8
  %342 = icmp ne i8* %341, null
  br i1 %342, label %343, label %354

343:                                              ; preds = %338
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %345 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %344, i32 0, i32 0
  %346 = load i8*, i8** %345, align 8
  %347 = load i32*, i32** %10, align 8
  %348 = call i32 @spa_mode(i32* %347)
  %349 = load i32, i32* @kcred, align 4
  %350 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %351 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %350, i32 0, i32 0
  %352 = load i32, i32* @zfs_li, align 4
  %353 = call i32 @ldi_open_by_name(i8* %346, i32 %348, i32 %349, i32** %351, i32 %352)
  store i32 %353, i32* %17, align 4
  br label %354

354:                                              ; preds = %343, %338, %335
  br label %355

355:                                              ; preds = %354, %304
  %356 = load i32, i32* %17, align 4
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %367

358:                                              ; preds = %355
  %359 = load i8*, i8** @VDEV_AUX_OPEN_FAILED, align 8
  %360 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %361 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %360, i32 0, i32 5
  %362 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %361, i32 0, i32 0
  store i8* %359, i8** %362, align 8
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %364 = load i32, i32* %17, align 4
  %365 = call i32 (%struct.TYPE_12__*, i8*, ...) @vdev_dbgmsg(%struct.TYPE_12__* %363, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %364)
  %366 = load i32, i32* %17, align 4
  store i32 %366, i32* %5, align 4
  br label %657

367:                                              ; preds = %355
  %368 = load i8*, i8** %20, align 8
  %369 = icmp ne i8* %368, null
  br i1 %369, label %370, label %429

370:                                              ; preds = %367
  %371 = load i32*, i32** %10, align 8
  %372 = call i64 @spa_writeable(i32* %371)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %429

374:                                              ; preds = %370
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 8
  %378 = call i64 @ldi_get_devid(i32* %377, i32* %21)
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %380, label %429

380:                                              ; preds = %374
  %381 = load i32, i32* %21, align 4
  %382 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %383 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %382, i32 0, i32 3
  %384 = load i32, i32* %383, align 8
  %385 = call i64 @ddi_devid_compare(i32 %381, i32 %384)
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %426

387:                                              ; preds = %380
  %388 = load i32, i32* %21, align 4
  %389 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %390 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %389, i32 0, i32 2
  %391 = load i32, i32* %390, align 4
  %392 = call i8* @ddi_devid_str_encode(i32 %388, i32 %391)
  store i8* %392, i8** %28, align 8
  %393 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 1
  %396 = load i8*, i8** %395, align 8
  %397 = load i8*, i8** %28, align 8
  %398 = call i32 (%struct.TYPE_12__*, i8*, ...) @vdev_dbgmsg(%struct.TYPE_12__* %393, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %396, i8* %397)
  %399 = load i32, i32* @CE_NOTE, align 4
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 0
  %402 = load i8*, i8** %401, align 8
  %403 = icmp ne i8* %402, null
  br i1 %403, label %404, label %408

404:                                              ; preds = %387
  %405 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 0
  %407 = load i8*, i8** %406, align 8
  br label %409

408:                                              ; preds = %387
  br label %409

409:                                              ; preds = %408, %404
  %410 = phi i8* [ %407, %404 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), %408 ]
  %411 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %412 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %411, i32 0, i32 1
  %413 = load i8*, i8** %412, align 8
  %414 = load i8*, i8** %28, align 8
  %415 = call i32 @cmn_err(i32 %399, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* %410, i8* %413, i8* %414)
  %416 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %416, i32 0, i32 1
  %418 = load i8*, i8** %417, align 8
  %419 = call i32 @spa_strfree(i8* %418)
  %420 = load i8*, i8** %28, align 8
  %421 = call i8* @spa_strdup(i8* %420)
  %422 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i32 0, i32 1
  store i8* %421, i8** %423, align 8
  %424 = load i8*, i8** %28, align 8
  %425 = call i32 @ddi_devid_str_free(i8* %424)
  br label %426

426:                                              ; preds = %409, %380
  %427 = load i32, i32* %21, align 4
  %428 = call i32 @ddi_devid_free(i32 %427)
  br label %429

429:                                              ; preds = %426, %374, %370, %367
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 0
  %432 = load i32*, i32** %431, align 8
  %433 = call i64 @ldi_get_dev(i32* %432, i32* %18)
  %434 = icmp eq i64 %433, 0
  br i1 %434, label %435, label %503

435:                                              ; preds = %429
  %436 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %437 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %436, i32 0, i32 0
  %438 = load i32*, i32** %437, align 8
  %439 = call i64 @ldi_get_otyp(i32* %438, i32* %19)
  %440 = icmp eq i64 %439, 0
  br i1 %440, label %441, label %503

441:                                              ; preds = %435
  %442 = load i32, i32* @MAXPATHLEN, align 4
  %443 = load i32, i32* @KM_SLEEP, align 4
  %444 = call i8* @kmem_alloc(i32 %442, i32 %443)
  store i8* %444, i8** %29, align 8
  store i8* null, i8** %30, align 8
  %445 = load i32, i32* %18, align 4
  %446 = load i32, i32* %19, align 4
  %447 = load i8*, i8** %29, align 8
  %448 = call i64 @ddi_dev_pathname(i32 %445, i32 %446, i8* %447)
  %449 = icmp eq i64 %448, 0
  br i1 %449, label %450, label %490

450:                                              ; preds = %441
  %451 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %452 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %451, i32 0, i32 0
  %453 = load i32*, i32** %452, align 8
  %454 = call i64 @ldi_get_minor_name(i32* %453, i8** %30)
  %455 = icmp eq i64 %454, 0
  br i1 %455, label %456, label %490

456:                                              ; preds = %450
  %457 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %458 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %457, i32 0, i32 3
  %459 = load i8*, i8** %458, align 8
  %460 = icmp eq i8* %459, null
  br i1 %460, label %468, label %461

461:                                              ; preds = %456
  %462 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %463 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %462, i32 0, i32 3
  %464 = load i8*, i8** %463, align 8
  %465 = load i8*, i8** %29, align 8
  %466 = call i64 @strcmp(i8* %464, i8* %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %490

468:                                              ; preds = %461, %456
  %469 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i32 0, i32 3
  %471 = load i8*, i8** %470, align 8
  %472 = icmp ne i8* %471, null
  br i1 %472, label %473, label %478

473:                                              ; preds = %468
  %474 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %475 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %474, i32 0, i32 3
  %476 = load i8*, i8** %475, align 8
  %477 = call i32 @spa_strfree(i8* %476)
  br label %478

478:                                              ; preds = %473, %468
  %479 = load i8*, i8** %29, align 8
  %480 = load i32, i32* @MAXPATHLEN, align 4
  %481 = call i32 @strlcat(i8* %479, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 %480)
  %482 = load i8*, i8** %29, align 8
  %483 = load i8*, i8** %30, align 8
  %484 = load i32, i32* @MAXPATHLEN, align 4
  %485 = call i32 @strlcat(i8* %482, i8* %483, i32 %484)
  %486 = load i8*, i8** %29, align 8
  %487 = call i8* @spa_strdup(i8* %486)
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %488, i32 0, i32 3
  store i8* %487, i8** %489, align 8
  br label %490

490:                                              ; preds = %478, %461, %450, %441
  %491 = load i8*, i8** %30, align 8
  %492 = icmp ne i8* %491, null
  br i1 %492, label %493, label %499

493:                                              ; preds = %490
  %494 = load i8*, i8** %30, align 8
  %495 = load i8*, i8** %30, align 8
  %496 = call i32 @strlen(i8* %495)
  %497 = add nsw i32 %496, 1
  %498 = call i32 @kmem_free(i8* %494, i32 %497)
  br label %499

499:                                              ; preds = %493, %490
  %500 = load i8*, i8** %29, align 8
  %501 = load i32, i32* @MAXPATHLEN, align 4
  %502 = call i32 @kmem_free(i8* %500, i32 %501)
  br label %503

503:                                              ; preds = %499, %435, %429
  %504 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %505 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %504, i32 0, i32 0
  %506 = load i32*, i32** %505, align 8
  %507 = load i32, i32* @LDI_EV_OFFLINE, align 4
  %508 = call i64 @ldi_ev_get_cookie(i32* %506, i32 %507, i32* %12)
  %509 = load i64, i64* @LDI_EV_SUCCESS, align 8
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %511, label %527

511:                                              ; preds = %503
  %512 = load i32, i32* @KM_SLEEP, align 4
  %513 = call %struct.TYPE_14__* @kmem_zalloc(i32 4, i32 %512)
  store %struct.TYPE_14__* %513, %struct.TYPE_14__** %13, align 8
  %514 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %515 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %514, i32 0, i32 1
  %516 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %517 = call i32 @list_insert_tail(i32* %515, %struct.TYPE_14__* %516)
  %518 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %519 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %518, i32 0, i32 0
  %520 = load i32*, i32** %519, align 8
  %521 = load i32, i32* %12, align 4
  %522 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %523 = bitcast %struct.TYPE_12__* %522 to i8*
  %524 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %525 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %524, i32 0, i32 0
  %526 = call i32 @ldi_ev_register_callbacks(i32* %520, i32 %521, i32* @vdev_disk_off_callb, i8* %523, i32* %525)
  br label %527

527:                                              ; preds = %511, %503
  %528 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %529 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %528, i32 0, i32 0
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* @LDI_EV_DEGRADE, align 4
  %532 = call i64 @ldi_ev_get_cookie(i32* %530, i32 %531, i32* %12)
  %533 = load i64, i64* @LDI_EV_SUCCESS, align 8
  %534 = icmp eq i64 %532, %533
  br i1 %534, label %535, label %551

535:                                              ; preds = %527
  %536 = load i32, i32* @KM_SLEEP, align 4
  %537 = call %struct.TYPE_14__* @kmem_zalloc(i32 4, i32 %536)
  store %struct.TYPE_14__* %537, %struct.TYPE_14__** %13, align 8
  %538 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %539 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %538, i32 0, i32 1
  %540 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %541 = call i32 @list_insert_tail(i32* %539, %struct.TYPE_14__* %540)
  %542 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %543 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %542, i32 0, i32 0
  %544 = load i32*, i32** %543, align 8
  %545 = load i32, i32* %12, align 4
  %546 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %547 = bitcast %struct.TYPE_12__* %546 to i8*
  %548 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %549 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %548, i32 0, i32 0
  %550 = call i32 @ldi_ev_register_callbacks(i32* %544, i32 %545, i32* @vdev_disk_dgrd_callb, i8* %547, i32* %549)
  br label %551

551:                                              ; preds = %535, %527
  br label %552

552:                                              ; preds = %551, %76
  %553 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %554 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %553, i32 0, i32 0
  %555 = load i32*, i32** %554, align 8
  %556 = load i32*, i32** %7, align 8
  %557 = call i64 @ldi_get_size(i32* %555, i32* %556)
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %568

559:                                              ; preds = %552
  %560 = load i8*, i8** @VDEV_AUX_OPEN_FAILED, align 8
  %561 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %562 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %561, i32 0, i32 5
  %563 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %562, i32 0, i32 0
  store i8* %560, i8** %563, align 8
  %564 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %565 = call i32 (%struct.TYPE_12__*, i8*, ...) @vdev_dbgmsg(%struct.TYPE_12__* %564, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %566 = load i32, i32* @EINVAL, align 4
  %567 = call i32 @SET_ERROR(i32 %566)
  store i32 %567, i32* %5, align 4
  br label %657

568:                                              ; preds = %552
  %569 = load i32*, i32** %7, align 8
  %570 = load i32, i32* %569, align 4
  %571 = load i32*, i32** %8, align 8
  store i32 %570, i32* %571, align 4
  %572 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %573 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %572, i32 0, i32 0
  %574 = load i32*, i32** %573, align 8
  %575 = load i32, i32* @DKIOCGMEDIAINFOEXT, align 4
  %576 = load %struct.dk_minfo_ext*, %struct.dk_minfo_ext** %15, align 8
  %577 = ptrtoint %struct.dk_minfo_ext* %576 to i64
  %578 = load i32, i32* @FKIOCTL, align 4
  %579 = load i32, i32* @kcred, align 4
  %580 = call i32 @ldi_ioctl(i32* %574, i32 %575, i64 %577, i32 %578, i32 %579, i32* null)
  store i32 %580, i32* %17, align 4
  %581 = icmp eq i32 %580, 0
  br i1 %581, label %582, label %593

582:                                              ; preds = %568
  %583 = load %struct.dk_minfo_ext*, %struct.dk_minfo_ext** %15, align 8
  %584 = getelementptr inbounds %struct.dk_minfo_ext, %struct.dk_minfo_ext* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = sub nsw i32 %585, 1
  store i32 %586, i32* %22, align 4
  %587 = load %struct.dk_minfo_ext*, %struct.dk_minfo_ext** %15, align 8
  %588 = getelementptr inbounds %struct.dk_minfo_ext, %struct.dk_minfo_ext* %587, i32 0, i32 1
  %589 = load i32, i32* %588, align 4
  store i32 %589, i32* %23, align 4
  %590 = load %struct.dk_minfo_ext*, %struct.dk_minfo_ext** %15, align 8
  %591 = getelementptr inbounds %struct.dk_minfo_ext, %struct.dk_minfo_ext* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 4
  store i32 %592, i32* %24, align 4
  br label %625

593:                                              ; preds = %568
  %594 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %595 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %594, i32 0, i32 0
  %596 = load i32*, i32** %595, align 8
  %597 = load i32, i32* @DKIOCGMEDIAINFO, align 4
  %598 = load %struct.dk_minfo*, %struct.dk_minfo** %16, align 8
  %599 = ptrtoint %struct.dk_minfo* %598 to i64
  %600 = load i32, i32* @FKIOCTL, align 4
  %601 = load i32, i32* @kcred, align 4
  %602 = call i32 @ldi_ioctl(i32* %596, i32 %597, i64 %599, i32 %600, i32 %601, i32* null)
  store i32 %602, i32* %17, align 4
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %617

604:                                              ; preds = %593
  %605 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %606 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %605, i32 0, i32 0
  %607 = load i8*, i8** %606, align 8
  %608 = call i32 (i8*, i8*, ...) @VDEV_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0), i8* %607)
  %609 = load %struct.dk_minfo*, %struct.dk_minfo** %16, align 8
  %610 = getelementptr inbounds %struct.dk_minfo, %struct.dk_minfo* %609, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = sub nsw i32 %611, 1
  store i32 %612, i32* %22, align 4
  %613 = load %struct.dk_minfo*, %struct.dk_minfo** %16, align 8
  %614 = getelementptr inbounds %struct.dk_minfo, %struct.dk_minfo* %613, i32 0, i32 1
  %615 = load i32, i32* %614, align 4
  store i32 %615, i32* %23, align 4
  %616 = load i32, i32* %23, align 4
  store i32 %616, i32* %24, align 4
  br label %624

617:                                              ; preds = %593
  %618 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %619 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %618, i32 0, i32 0
  %620 = load i8*, i8** %619, align 8
  %621 = load i32, i32* %17, align 4
  %622 = call i32 (i8*, i8*, ...) @VDEV_DEBUG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.13, i64 0, i64 0), i8* %620, i32 %621)
  %623 = load i32, i32* @DEV_BSIZE, align 4
  store i32 %623, i32* %24, align 4
  br label %624

624:                                              ; preds = %617, %604
  br label %625

625:                                              ; preds = %624, %582
  %626 = load i32, i32* %24, align 4
  %627 = load i32, i32* @SPA_MINBLOCKSIZE, align 4
  %628 = call i32 @MAX(i32 %626, i32 %627)
  %629 = call i32 @highbit64(i32 %628)
  %630 = sub nsw i32 %629, 1
  %631 = load i32*, i32** %9, align 8
  store i32 %630, i32* %631, align 4
  %632 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %633 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %632, i32 0, i32 2
  %634 = load i64, i64* %633, align 8
  %635 = icmp eq i64 %634, 1
  br i1 %635, label %636, label %653

636:                                              ; preds = %625
  store i32 1, i32* %31, align 4
  %637 = load i32, i32* %17, align 4
  %638 = icmp eq i32 %637, 0
  br i1 %638, label %639, label %644

639:                                              ; preds = %636
  %640 = load i32, i32* %22, align 4
  %641 = load i32, i32* %23, align 4
  %642 = mul nsw i32 %640, %641
  %643 = load i32*, i32** %8, align 8
  store i32 %642, i32* %643, align 4
  br label %644

644:                                              ; preds = %639, %636
  %645 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %646 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %645, i32 0, i32 0
  %647 = load i32*, i32** %646, align 8
  %648 = load i32, i32* @DKIOCSETWCE, align 4
  %649 = ptrtoint i32* %31 to i64
  %650 = load i32, i32* @FKIOCTL, align 4
  %651 = load i32, i32* @kcred, align 4
  %652 = call i32 @ldi_ioctl(i32* %647, i32 %648, i64 %649, i32 %650, i32 %651, i32* null)
  br label %653

653:                                              ; preds = %644, %625
  %654 = load i8*, i8** @B_FALSE, align 8
  %655 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %656 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %655, i32 0, i32 4
  store i8* %654, i8** %656, align 8
  store i32 0, i32* %5, align 4
  br label %657

657:                                              ; preds = %653, %559, %358, %122, %53
  %658 = load i32, i32* %5, align 4
  ret i32 %658
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vdev_disk_free(%struct.TYPE_12__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @vdev_disk_alloc(%struct.TYPE_12__*) #1

declare dso_local i32 @vdev_dbgmsg(%struct.TYPE_12__*, i8*, ...) #1

declare dso_local i32 @spa_strfree(i8*) #1

declare dso_local i64 @ddi_devid_str_decode(i8*, i32*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @kmem_alloc(i32, i32) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i8*) #1

declare dso_local i32 @ldi_open_by_name(i8*, i32, i32, i32**, i32) #1

declare dso_local i32 @spa_mode(i32*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local i64 @ldi_get_devid(i32*, i32*) #1

declare dso_local i64 @ddi_devid_compare(i32, i32) #1

declare dso_local i8* @ddi_devid_str_encode(i32, i32) #1

declare dso_local i32 @cmn_err(i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @ddi_devid_str_free(i8*) #1

declare dso_local i32 @ldi_close(i32*, i32, i32) #1

declare dso_local i32 @ddi_devid_free(i32) #1

declare dso_local i32 @ldi_open_by_devid(i32, i32, i32, i32, i32**, i32) #1

declare dso_local i32 @ddi_pathname_to_dev_t(i8*) #1

declare dso_local i32 @ldi_open_by_dev(i32*, i32, i32, i32, i32**, i32) #1

declare dso_local i64 @spa_writeable(i32*) #1

declare dso_local i8* @spa_strdup(i8*) #1

declare dso_local i64 @ldi_get_dev(i32*, i32*) #1

declare dso_local i64 @ldi_get_otyp(i32*, i32*) #1

declare dso_local i64 @ddi_dev_pathname(i32, i32, i8*) #1

declare dso_local i64 @ldi_get_minor_name(i32*, i8**) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @strlcat(i8*, i8*, i32) #1

declare dso_local i64 @ldi_ev_get_cookie(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_14__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @list_insert_tail(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @ldi_ev_register_callbacks(i32*, i32, i32*, i8*, i32*) #1

declare dso_local i64 @ldi_get_size(i32*, i32*) #1

declare dso_local i32 @ldi_ioctl(i32*, i32, i64, i32, i32, i32*) #1

declare dso_local i32 @VDEV_DEBUG(i8*, i8*, ...) #1

declare dso_local i32 @highbit64(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
