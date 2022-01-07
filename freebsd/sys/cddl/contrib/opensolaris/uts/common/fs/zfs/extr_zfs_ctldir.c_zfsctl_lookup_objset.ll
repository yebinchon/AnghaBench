; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_lookup_objset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_zfsctl_lookup_objset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.mount = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@ZFSCTL_INO_SNAPDIR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfsctl_lookup_objset(%struct.TYPE_13__* %0, i32 %1, %struct.TYPE_11__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__**, align 8
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_11__** %2, %struct.TYPE_11__*** %7, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %9, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %21, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %23 = load i32, i32* @LK_EXCLUSIVE, align 4
  %24 = load i32, i32* @ZFSCTL_INO_SNAPDIR, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @sfs_vnode_get(%struct.TYPE_13__* %22, i32 %23, i32 %24, i32 %25, %struct.TYPE_12__** %10)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %47

29:                                               ; preds = %3
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %31 = icmp ne %struct.TYPE_12__* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %29
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = icmp ne %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %43, align 8
  br label %44

44:                                               ; preds = %37, %32
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = call i32 @vput(%struct.TYPE_12__* %45)
  br label %47

47:                                               ; preds = %44, %29, %3
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = icmp eq %struct.TYPE_11__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @SET_ERROR(i32 %52)
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %47
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @sfs_vnode_get(%struct.TYPE_13__*, i32, i32, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @vput(%struct.TYPE_12__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
