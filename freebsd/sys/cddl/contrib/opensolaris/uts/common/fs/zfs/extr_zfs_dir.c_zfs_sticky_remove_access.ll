; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_dir.c_zfs_sticky_remove_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_dir.c_zfs_sticky_remove_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i64 }

@S_ISVTX = common dso_local global i32 0, align 4
@ZFS_OWNER = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_sticky_remove_access(%struct.TYPE_10__* %0, %struct.TYPE_10__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  store %struct.TYPE_11__* %14, %struct.TYPE_11__** %11, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %73

22:                                               ; preds = %3
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @S_ISVTX, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %73

30:                                               ; preds = %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* @ZFS_OWNER, align 4
  %37 = call i64 @zfs_fuid_map_id(%struct.TYPE_11__* %31, i32 %34, i32* %35, i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @ZFS_OWNER, align 4
  %44 = call i64 @zfs_fuid_map_id(%struct.TYPE_11__* %38, i32 %41, i32* %42, i32 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @crgetuid(i32* %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %67, label %49

49:                                               ; preds = %30
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* %10, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %67, label %53

53:                                               ; preds = %49
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = call %struct.TYPE_12__* @ZTOV(%struct.TYPE_10__* %54)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VREG, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %53
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %62 = load i32, i32* @ACE_WRITE_DATA, align 4
  %63 = load i32, i32* @B_FALSE, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = call i64 @zfs_zaccess(%struct.TYPE_10__* %61, i32 %62, i32 0, i32 %63, i32* %64)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60, %49, %30
  store i32 0, i32* %4, align 4
  br label %73

68:                                               ; preds = %60, %53
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = call %struct.TYPE_12__* @ZTOV(%struct.TYPE_10__* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = call i32 @secpolicy_vnode_remove(%struct.TYPE_12__* %70, i32* %71)
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %67, %29, %21
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i64 @zfs_fuid_map_id(%struct.TYPE_11__*, i32, i32*, i32) #1

declare dso_local i64 @crgetuid(i32*) #1

declare dso_local %struct.TYPE_12__* @ZTOV(%struct.TYPE_10__*) #1

declare dso_local i64 @zfs_zaccess(%struct.TYPE_10__*, i32, i32, i32, i32*) #1

declare dso_local i32 @secpolicy_vnode_remove(%struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
