; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_vfsops.c_zfs_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i32* }
%struct.TYPE_27__ = type { i8* }
%struct.TYPE_26__ = type { i32, i64, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_28__*, i32, %struct.TYPE_29__* }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_29__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_31__ = type { i32, i32 }

@curthread = common dso_local global %struct.TYPE_32__* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"from\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@zfs_super_owner = common dso_local global i64 0, align 8
@ZFS_DELEG_PERM_MOUNT = common dso_local global i32 0, align 4
@ECANCELED = common dso_local global i64 0, align 8
@MS_REMOUNT = common dso_local global i32 0, align 4
@AT_UID = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@MNT_NFS4ACLS = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@MNT_UPDATE = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@MS_DATA = common dso_local global i32 0, align 4
@MS_OVERLAY = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@VROOT = common dso_local global i32 0, align 4
@fromspace = common dso_local global i32 0, align 4
@spn = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@uap = common dso_local global %struct.TYPE_26__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_30__*)* @zfs_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_mount(%struct.TYPE_30__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_32__*, align 8
  %5 = alloca %struct.TYPE_29__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__, align 4
  %11 = alloca %struct.TYPE_28__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %3, align 8
  %15 = load %struct.TYPE_32__*, %struct.TYPE_32__** @curthread, align 8
  store %struct.TYPE_32__* %15, %struct.TYPE_32__** %4, align 8
  %16 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  store %struct.TYPE_29__* %18, %struct.TYPE_29__** %5, align 8
  %19 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @vfs_getopt(i32 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %7, i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = call i32 @SET_ERROR(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %189

30:                                               ; preds = %1
  %31 = load i64, i64* @zfs_super_owner, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @ZFS_DELEG_PERM_MOUNT, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i64 @dsl_deleg_access(i8* %34, i32 %35, i32* %36)
  %38 = load i64, i64* @ECANCELED, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %33
  %41 = load i32*, i32** %6, align 8
  %42 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %43 = call i32 @secpolicy_fs_mount_clearopts(i32* %41, %struct.TYPE_30__* %42)
  br label %44

44:                                               ; preds = %40, %33, %30
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %47 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %48 = call i32 @secpolicy_fs_mount(i32* %45, %struct.TYPE_29__* %46, %struct.TYPE_30__* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %104

51:                                               ; preds = %44
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* @ZFS_DELEG_PERM_MOUNT, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = call i64 @dsl_deleg_access(i8* %52, i32 %53, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %187

58:                                               ; preds = %51
  %59 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @MS_REMOUNT, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %100, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @AT_UID, align 4
  %67 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %69 = load i32, i32* @LK_SHARED, align 4
  %70 = load i32, i32* @LK_RETRY, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @vn_lock(%struct.TYPE_29__* %68, i32 %71)
  %73 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = call i64 @VOP_GETATTR(%struct.TYPE_29__* %73, %struct.TYPE_31__* %10, i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %65
  %78 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %79 = call i32 @VOP_UNLOCK(%struct.TYPE_29__* %78, i32 0)
  br label %187

80:                                               ; preds = %65
  %81 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i64 @secpolicy_vnode_owner(%struct.TYPE_29__* %81, i32* %82, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %80
  %88 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %89 = load i32, i32* @VWRITE, align 4
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_32__*, %struct.TYPE_32__** %4, align 8
  %92 = call i64 @VOP_ACCESS(%struct.TYPE_29__* %88, i32 %89, i32* %90, %struct.TYPE_32__* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %96 = call i32 @VOP_UNLOCK(%struct.TYPE_29__* %95, i32 0)
  br label %187

97:                                               ; preds = %87, %80
  %98 = load %struct.TYPE_29__*, %struct.TYPE_29__** %5, align 8
  %99 = call i32 @VOP_UNLOCK(%struct.TYPE_29__* %98, i32 0)
  br label %100

100:                                              ; preds = %97, %58
  %101 = load i32*, i32** %6, align 8
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %103 = call i32 @secpolicy_fs_mount_clearopts(i32* %101, %struct.TYPE_30__* %102)
  br label %104

104:                                              ; preds = %100, %44
  %105 = load %struct.TYPE_32__*, %struct.TYPE_32__** @curthread, align 8
  %106 = call i32 @INGLOBALZONE(%struct.TYPE_32__* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %118, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %7, align 8
  %110 = call i32 @zone_dataset_visible(i8* %109, i32* %9)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %118, label %115

115:                                              ; preds = %112, %108
  %116 = load i32, i32* @EPERM, align 4
  %117 = call i32 @SET_ERROR(i32 %116)
  store i32 %117, i32* %8, align 4
  br label %187

118:                                              ; preds = %112, %104
  %119 = load i32, i32* @MNT_NFS4ACLS, align 4
  %120 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @MS_REMOUNT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %118
  %131 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %132, align 8
  store %struct.TYPE_28__* %133, %struct.TYPE_28__** %11, align 8
  %134 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 1
  %136 = load i32, i32* @RW_WRITER, align 4
  %137 = load i32, i32* @FTAG, align 4
  %138 = call i32 @rrm_enter(i32* %135, i32 %136, i32 %137)
  %139 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %140 = call i32 @zfs_unregister_callbacks(%struct.TYPE_28__* %139)
  %141 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %142 = call i32 @zfs_register_callbacks(%struct.TYPE_30__* %141)
  store i32 %142, i32* %8, align 4
  %143 = load %struct.TYPE_28__*, %struct.TYPE_28__** %11, align 8
  %144 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %143, i32 0, i32 1
  %145 = load i32, i32* @FTAG, align 4
  %146 = call i32 @rrm_exit(i32* %144, i32 %145)
  br label %187

147:                                              ; preds = %118
  %148 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %149 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @MNT_ROOTFS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %181

154:                                              ; preds = %147
  %155 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load i32, i32* @MNT_UPDATE, align 4
  %159 = and i32 %157, %158
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %154
  %162 = load i32, i32* @MAXNAMELEN, align 4
  %163 = zext i32 %162 to i64
  %164 = call i8* @llvm.stacksave()
  store i8* %164, i8** %12, align 8
  %165 = alloca i8, i64 %163, align 16
  store i64 %163, i64* %13, align 8
  %166 = load i8*, i8** %7, align 8
  %167 = call i32 @getpoolname(i8* %166, i8* %165)
  store i32 %167, i32* %8, align 4
  %168 = load i32, i32* %8, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %161
  %171 = call i32 @spa_import_rootpool(i8* %165)
  store i32 %171, i32* %8, align 4
  br label %172

172:                                              ; preds = %170, %161
  %173 = load i32, i32* %8, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %172
  store i32 2, i32* %14, align 4
  br label %177

176:                                              ; preds = %172
  store i32 0, i32* %14, align 4
  br label %177

177:                                              ; preds = %175, %176
  %178 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %178)
  %179 = load i32, i32* %14, align 4
  switch i32 %179, label %191 [
    i32 0, label %180
    i32 2, label %187
  ]

180:                                              ; preds = %177
  br label %181

181:                                              ; preds = %180, %154, %147
  %182 = call i32 (...) @DROP_GIANT()
  %183 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  %184 = load i8*, i8** %7, align 8
  %185 = call i32 @zfs_domount(%struct.TYPE_30__* %183, i8* %184)
  store i32 %185, i32* %8, align 4
  %186 = call i32 (...) @PICKUP_GIANT()
  br label %187

187:                                              ; preds = %181, %177, %130, %115, %94, %77, %57
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %187, %27
  %190 = load i32, i32* %2, align 4
  ret i32 %190

191:                                              ; preds = %177
  unreachable
}

declare dso_local i64 @vfs_getopt(i32, i8*, i8**, i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @dsl_deleg_access(i8*, i32, i32*) #1

declare dso_local i32 @secpolicy_fs_mount_clearopts(i32*, %struct.TYPE_30__*) #1

declare dso_local i32 @secpolicy_fs_mount(i32*, %struct.TYPE_29__*, %struct.TYPE_30__*) #1

declare dso_local i32 @vn_lock(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @VOP_GETATTR(%struct.TYPE_29__*, %struct.TYPE_31__*, i32*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_29__*, i32) #1

declare dso_local i64 @secpolicy_vnode_owner(%struct.TYPE_29__*, i32*, i32) #1

declare dso_local i64 @VOP_ACCESS(%struct.TYPE_29__*, i32, i32*, %struct.TYPE_32__*) #1

declare dso_local i32 @INGLOBALZONE(%struct.TYPE_32__*) #1

declare dso_local i32 @zone_dataset_visible(i8*, i32*) #1

declare dso_local i32 @rrm_enter(i32*, i32, i32) #1

declare dso_local i32 @zfs_unregister_callbacks(%struct.TYPE_28__*) #1

declare dso_local i32 @zfs_register_callbacks(%struct.TYPE_30__*) #1

declare dso_local i32 @rrm_exit(i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @getpoolname(i8*, i8*) #1

declare dso_local i32 @spa_import_rootpool(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @DROP_GIANT(...) #1

declare dso_local i32 @zfs_domount(%struct.TYPE_30__*, i8*) #1

declare dso_local i32 @PICKUP_GIANT(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
