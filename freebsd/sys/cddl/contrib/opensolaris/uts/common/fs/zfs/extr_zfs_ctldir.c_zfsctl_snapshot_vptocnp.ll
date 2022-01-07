; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_vptocnp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_snapshot_vptocnp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_vptocnp_args = type { i64*, i64, %struct.TYPE_9__**, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.mount*, %struct.TYPE_10__* }
%struct.mount = type { i32 }
%struct.TYPE_10__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"vfs_busy(mp, 0) failed with %d\00", align 1
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_vptocnp_args*)* @zfsctl_snapshot_vptocnp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfsctl_snapshot_vptocnp(%struct.vop_vptocnp_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_vptocnp_args*, align 8
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vop_vptocnp_args* %0, %struct.vop_vptocnp_args** %3, align 8
  %12 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %13 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %12, i32 0, i32 3
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  store %struct.TYPE_9__* %14, %struct.TYPE_9__** %6, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %7, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @strlen(i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @SET_ERROR(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %99

31:                                               ; preds = %1
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.mount*, %struct.mount** %33, align 8
  store %struct.mount* %34, %struct.mount** %4, align 8
  %35 = load %struct.mount*, %struct.mount** %4, align 8
  %36 = icmp eq %struct.mount* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOENT, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %99

40:                                               ; preds = %31
  %41 = load %struct.mount*, %struct.mount** %4, align 8
  %42 = call i32 @vfs_busy(%struct.mount* %41, i32 0)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @KASSERT(i32 %45, i8* %48)
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = call i32 @VOP_ISLOCKED(%struct.TYPE_9__* %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %53 = call i32 @vget_prep(%struct.TYPE_9__* %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = call i32 @vput(%struct.TYPE_9__* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @LK_SHARED, align 4
  %60 = call i32 @zfsctl_snapdir_vnode(i32 %58, i32* null, i32 %59, %struct.TYPE_9__** %5)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %89

63:                                               ; preds = %40
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %65 = call i32 @VOP_UNLOCK(%struct.TYPE_9__* %64, i32 0)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %67 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %68 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %68, align 8
  store %struct.TYPE_9__* %66, %struct.TYPE_9__** %69, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %72 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i64, i64* %73, align 8
  %75 = sub i64 %74, %70
  store i64 %75, i64* %73, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %80 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.vop_vptocnp_args*, %struct.vop_vptocnp_args** %3, align 8
  %83 = getelementptr inbounds %struct.vop_vptocnp_args, %struct.vop_vptocnp_args* %82, i32 0, i32 0
  %84 = load i64*, i64** %83, align 8
  %85 = load i64, i64* %84, align 8
  %86 = add i64 %81, %85
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @bcopy(i32 %78, i64 %86, i64 %87)
  br label %89

89:                                               ; preds = %63, %40
  %90 = load %struct.mount*, %struct.mount** %4, align 8
  %91 = call i32 @vfs_unbusy(%struct.mount* %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @LK_RETRY, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @vget_finish(%struct.TYPE_9__* %92, i32 %95, i32 %96)
  %98 = load i32, i32* %11, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %89, %37, %28
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.TYPE_9__*) #1

declare dso_local i32 @vget_prep(%struct.TYPE_9__*) #1

declare dso_local i32 @vput(%struct.TYPE_9__*) #1

declare dso_local i32 @zfsctl_snapdir_vnode(i32, i32*, i32, %struct.TYPE_9__**) #1

declare dso_local i32 @VOP_UNLOCK(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @bcopy(i32, i64, i64) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @vget_finish(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
