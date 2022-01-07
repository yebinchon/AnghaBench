; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_vfs.c_mount_snapshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/compat/opensolaris/kern/extr_opensolaris_vfs.c_mount_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.TYPE_18__ = type { %struct.ucred* }
%struct.TYPE_17__ = type { i64, i32, %struct.mount*, %struct.TYPE_16__* }
%struct.mount = type { i32, i32*, i32, i32*, i32* }
%struct.TYPE_16__ = type { i32 }
%struct.vfsconf = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"mount_snapshot\00", align 1
@MFSNAMELEN = common dso_local global i64 0, align 8
@MNAMELEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@VI_MOUNT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@MNT_UPDATEMASK = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@MNT_NOSUID = common dso_local global i32 0, align 4
@MNT_IGNORE = common dso_local global i32 0, align 4
@kcred = common dso_local global %struct.ucred* null, align 8
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@mountlist_mtx = common dso_local global i32 0, align 4
@mountlist = common dso_local global i32 0, align 4
@mnt_list = common dso_local global i32 0, align 4
@VQ_MOUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"mount: lost mount\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mount_snapshot(%struct.TYPE_18__* %0, %struct.TYPE_17__** %1, i8* %2, i8* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca %struct.TYPE_17__**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vfsconf*, align 8
  %15 = alloca %struct.mount*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_17__*, align 8
  %18 = alloca %struct.ucred*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store %struct.TYPE_17__** %1, %struct.TYPE_17__*** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = call i32 @ASSERT_VOP_ELOCKED(%struct.TYPE_17__* %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %23, align 8
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %16, align 8
  %25 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %25, align 8
  store i32 0, i32* %19, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = call i64 @strlen(i8* %26)
  %28 = load i64, i64* @MFSNAMELEN, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %6
  %31 = load i8*, i8** %11, align 8
  %32 = call i64 @strlen(i8* %31)
  %33 = load i64, i64* @MNAMELEN, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %30, %6
  %36 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %36, i32* %19, align 4
  br label %37

37:                                               ; preds = %35, %30
  %38 = load i32, i32* %19, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %43 = call %struct.vfsconf* @vfs_byname_kld(i8* %41, %struct.TYPE_18__* %42, i32* %19)
  store %struct.vfsconf* %43, %struct.vfsconf** %14, align 8
  %44 = icmp eq %struct.vfsconf* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @ENODEV, align 4
  store i32 %46, i32* %19, align 4
  br label %47

47:                                               ; preds = %45, %40, %37
  %48 = load i32, i32* %19, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %47
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VDIR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @ENOTDIR, align 4
  store i32 %57, i32* %19, align 4
  br label %58

58:                                               ; preds = %56, %50, %47
  %59 = load i32, i32* %19, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %58
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %63 = call i32 @VI_LOCK(%struct.TYPE_17__* %62)
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @VI_MOUNT, align 4
  %68 = and i32 %66, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %61
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 2
  %73 = load %struct.mount*, %struct.mount** %72, align 8
  %74 = icmp eq %struct.mount* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* @VI_MOUNT, align 4
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %83

81:                                               ; preds = %70, %61
  %82 = load i32, i32* @EBUSY, align 4
  store i32 %82, i32* %19, align 4
  br label %83

83:                                               ; preds = %81, %75
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %85 = call i32 @VI_UNLOCK(%struct.TYPE_17__* %84)
  br label %86

86:                                               ; preds = %83, %58
  %87 = load i32, i32* %19, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %91 = call i32 @vput(%struct.TYPE_17__* %90)
  %92 = load i32, i32* %19, align 4
  store i32 %92, i32* %7, align 4
  br label %241

93:                                               ; preds = %86
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %95 = call i32 @VOP_UNLOCK(%struct.TYPE_17__* %94, i32 0)
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %97 = load %struct.vfsconf*, %struct.vfsconf** %14, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call %struct.mount* @vfs_mount_alloc(%struct.TYPE_17__* %96, %struct.vfsconf* %97, i8* %98, i32 %103)
  store %struct.mount* %104, %struct.mount** %15, align 8
  %105 = load %struct.mount*, %struct.mount** %15, align 8
  %106 = getelementptr inbounds %struct.mount, %struct.mount* %105, i32 0, i32 1
  store i32* null, i32** %106, align 8
  %107 = load %struct.mount*, %struct.mount** %15, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = call i32 @vfs_setmntopt(%struct.mount* %107, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %108, i32 0)
  %110 = load %struct.mount*, %struct.mount** %15, align 8
  %111 = getelementptr inbounds %struct.mount, %struct.mount* %110, i32 0, i32 3
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.mount*, %struct.mount** %15, align 8
  %114 = getelementptr inbounds %struct.mount, %struct.mount* %113, i32 0, i32 1
  store i32* %112, i32** %114, align 8
  %115 = load %struct.mount*, %struct.mount** %15, align 8
  %116 = getelementptr inbounds %struct.mount, %struct.mount* %115, i32 0, i32 3
  store i32* null, i32** %116, align 8
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @MNT_UPDATEMASK, align 4
  %119 = and i32 %117, %118
  %120 = load %struct.mount*, %struct.mount** %15, align 8
  %121 = getelementptr inbounds %struct.mount, %struct.mount* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @MNT_RDONLY, align 4
  %123 = load %struct.mount*, %struct.mount** %15, align 8
  %124 = getelementptr inbounds %struct.mount, %struct.mount* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* @MNT_NOSUID, align 4
  %128 = load %struct.mount*, %struct.mount** %15, align 8
  %129 = getelementptr inbounds %struct.mount, %struct.mount* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  %132 = load i32, i32* @MNT_IGNORE, align 4
  %133 = load %struct.mount*, %struct.mount** %15, align 8
  %134 = getelementptr inbounds %struct.mount, %struct.mount* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 0
  %139 = load %struct.ucred*, %struct.ucred** %138, align 8
  store %struct.ucred* %139, %struct.ucred** %18, align 8
  %140 = load %struct.ucred*, %struct.ucred** @kcred, align 8
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 0
  store %struct.ucred* %140, %struct.ucred** %142, align 8
  %143 = load %struct.mount*, %struct.mount** %15, align 8
  %144 = call i32 @VFS_MOUNT(%struct.mount* %143)
  store i32 %144, i32* %19, align 4
  %145 = load %struct.ucred*, %struct.ucred** %18, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  store %struct.ucred* %145, %struct.ucred** %147, align 8
  %148 = load i32, i32* %19, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %179

150:                                              ; preds = %93
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %152 = load i32, i32* @LK_EXCLUSIVE, align 4
  %153 = load i32, i32* @LK_RETRY, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @vn_lock(%struct.TYPE_17__* %151, i32 %154)
  %156 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %157 = call i32 @VI_LOCK(%struct.TYPE_17__* %156)
  %158 = load i32, i32* @VI_MOUNT, align 4
  %159 = xor i32 %158, -1
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = and i32 %162, %159
  store i32 %163, i32* %161, align 8
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %165 = call i32 @VI_UNLOCK(%struct.TYPE_17__* %164)
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %167 = call i32 @vput(%struct.TYPE_17__* %166)
  %168 = load %struct.mount*, %struct.mount** %15, align 8
  %169 = call i32 @vfs_unbusy(%struct.mount* %168)
  %170 = load %struct.mount*, %struct.mount** %15, align 8
  %171 = getelementptr inbounds %struct.mount, %struct.mount* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @vfs_freeopts(i32* %172)
  %174 = load %struct.mount*, %struct.mount** %15, align 8
  %175 = getelementptr inbounds %struct.mount, %struct.mount* %174, i32 0, i32 4
  store i32* null, i32** %175, align 8
  %176 = load %struct.mount*, %struct.mount** %15, align 8
  %177 = call i32 @vfs_mount_destroy(%struct.mount* %176)
  %178 = load i32, i32* %19, align 4
  store i32 %178, i32* %7, align 4
  br label %241

179:                                              ; preds = %93
  %180 = load %struct.mount*, %struct.mount** %15, align 8
  %181 = getelementptr inbounds %struct.mount, %struct.mount* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = icmp ne i32* %182, null
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load %struct.mount*, %struct.mount** %15, align 8
  %186 = getelementptr inbounds %struct.mount, %struct.mount* %185, i32 0, i32 3
  %187 = load i32*, i32** %186, align 8
  %188 = call i32 @vfs_freeopts(i32* %187)
  br label %189

189:                                              ; preds = %184, %179
  %190 = load %struct.mount*, %struct.mount** %15, align 8
  %191 = getelementptr inbounds %struct.mount, %struct.mount* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.mount*, %struct.mount** %15, align 8
  %194 = getelementptr inbounds %struct.mount, %struct.mount* %193, i32 0, i32 3
  store i32* %192, i32** %194, align 8
  %195 = load %struct.mount*, %struct.mount** %15, align 8
  %196 = load %struct.mount*, %struct.mount** %15, align 8
  %197 = getelementptr inbounds %struct.mount, %struct.mount* %196, i32 0, i32 2
  %198 = call i32 @VFS_STATFS(%struct.mount* %195, i32* %197)
  %199 = load %struct.mount*, %struct.mount** %15, align 8
  %200 = getelementptr inbounds %struct.mount, %struct.mount* %199, i32 0, i32 1
  store i32* null, i32** %200, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %202 = load i32, i32* @LK_EXCLUSIVE, align 4
  %203 = load i32, i32* @LK_RETRY, align 4
  %204 = or i32 %202, %203
  %205 = call i32 @vn_lock(%struct.TYPE_17__* %201, i32 %204)
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %207 = call i32 @VI_LOCK(%struct.TYPE_17__* %206)
  %208 = load i32, i32* @VI_MOUNT, align 4
  %209 = xor i32 %208, -1
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = and i32 %212, %209
  store i32 %213, i32* %211, align 8
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %215 = call i32 @VI_UNLOCK(%struct.TYPE_17__* %214)
  %216 = load %struct.mount*, %struct.mount** %15, align 8
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 2
  store %struct.mount* %216, %struct.mount** %218, align 8
  %219 = call i32 @mtx_lock(i32* @mountlist_mtx)
  %220 = load %struct.mount*, %struct.mount** %15, align 8
  %221 = load i32, i32* @mnt_list, align 4
  %222 = call i32 @TAILQ_INSERT_TAIL(i32* @mountlist, %struct.mount* %220, i32 %221)
  %223 = call i32 @mtx_unlock(i32* @mountlist_mtx)
  %224 = load i32, i32* @VQ_MOUNT, align 4
  %225 = call i32 @vfs_event_signal(i32* null, i32 %224, i32 0)
  %226 = load %struct.mount*, %struct.mount** %15, align 8
  %227 = load i32, i32* @LK_EXCLUSIVE, align 4
  %228 = call i64 @VFS_ROOT(%struct.mount* %226, i32 %227, %struct.TYPE_17__** %17)
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %189
  %231 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %232

232:                                              ; preds = %230, %189
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %234 = call i32 @VOP_UNLOCK(%struct.TYPE_17__* %233, i32 0)
  %235 = load %struct.mount*, %struct.mount** %15, align 8
  %236 = call i32 @vfs_op_exit(%struct.mount* %235)
  %237 = load %struct.mount*, %struct.mount** %15, align 8
  %238 = call i32 @vfs_unbusy(%struct.mount* %237)
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %17, align 8
  %240 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %9, align 8
  store %struct.TYPE_17__* %239, %struct.TYPE_17__** %240, align 8
  store i32 0, i32* %7, align 4
  br label %241

241:                                              ; preds = %232, %150, %89
  %242 = load i32, i32* %7, align 4
  ret i32 %242
}

declare dso_local i32 @ASSERT_VOP_ELOCKED(%struct.TYPE_17__*, i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.vfsconf* @vfs_byname_kld(i8*, %struct.TYPE_18__*, i32*) #1

declare dso_local i32 @VI_LOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @VI_UNLOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @vput(%struct.TYPE_17__*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_17__*, i32) #1

declare dso_local %struct.mount* @vfs_mount_alloc(%struct.TYPE_17__*, %struct.vfsconf*, i8*, i32) #1

declare dso_local i32 @vfs_setmntopt(%struct.mount*, i8*, i8*, i32) #1

declare dso_local i32 @VFS_MOUNT(%struct.mount*) #1

declare dso_local i32 @vn_lock(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @vfs_freeopts(i32*) #1

declare dso_local i32 @vfs_mount_destroy(%struct.mount*) #1

declare dso_local i32 @VFS_STATFS(%struct.mount*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mount*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vfs_event_signal(i32*, i32, i32) #1

declare dso_local i64 @VFS_ROOT(%struct.mount*, i32, %struct.TYPE_17__**) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vfs_op_exit(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
