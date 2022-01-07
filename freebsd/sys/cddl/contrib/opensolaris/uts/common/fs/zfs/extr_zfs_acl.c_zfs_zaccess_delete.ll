; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_zaccess_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_acl.c_zfs_zaccess_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }

@B_TRUE = common dso_local global i32 0, align 4
@ZFS_IMMUTABLE = common dso_local global i32 0, align 4
@ZFS_NOUNLINK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ACE_DELETE_CHILD = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@ACE_DELETE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ACE_EXECUTE = common dso_local global i32 0, align 4
@ACE_WRITE_DATA = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_zaccess_delete(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* @B_TRUE, align 4
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @B_TRUE, align 4
  store i32 %16, i32* %14, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ZFS_IMMUTABLE, align 4
  %21 = load i32, i32* @ZFS_NOUNLINK, align 4
  %22 = or i32 %20, %21
  %23 = and i32 %19, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EPERM, align 4
  %27 = call i32 @SET_ERROR(i32 %26)
  store i32 %27, i32* %4, align 4
  br label %113

28:                                               ; preds = %3
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %30 = load i32, i32* @ACE_DELETE_CHILD, align 4
  %31 = load i32, i32* @B_FALSE, align 4
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @zfs_zaccess_common(%struct.TYPE_8__* %29, i32 %30, i32* %8, i32* %13, i32 %31, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %113

36:                                               ; preds = %28
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %38 = load i32, i32* @ACE_DELETE, align 4
  %39 = load i32, i32* @B_FALSE, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @zfs_zaccess_common(%struct.TYPE_8__* %37, i32 %38, i32* %9, i32* %14, i32 %39, i32* %40)
  store i32 %41, i32* %11, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i32 0, i32* %4, align 4
  br label %113

44:                                               ; preds = %36
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi i1 [ false, %44 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @ASSERT(i32 %52)
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %58, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %113

58:                                               ; preds = %50
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %63, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %113

63:                                               ; preds = %58
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @EACCES, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %63
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %69 = call i32 @ZTOV(%struct.TYPE_8__* %68)
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @secpolicy_vnode_remove(i32 %69, i32* %70)
  store i32 %71, i32* %4, align 4
  br label %113

72:                                               ; preds = %63
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = load i32, i32* @ACE_EXECUTE, align 4
  %75 = load i32, i32* @ACE_WRITE_DATA, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @B_FALSE, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = call i32 @zfs_zaccess_common(%struct.TYPE_8__* %73, i32 %76, i32* %8, i32* %13, i32 %77, i32* %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %72
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %4, align 4
  br label %113

87:                                               ; preds = %82, %72
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @ACE_WRITE_DATA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @VWRITE, align 4
  br label %95

95:                                               ; preds = %93, %92
  %96 = phi i32 [ 0, %92 ], [ %94, %93 ]
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @ACE_EXECUTE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  br label %104

102:                                              ; preds = %95
  %103 = load i32, i32* @VEXEC, align 4
  br label %104

104:                                              ; preds = %102, %101
  %105 = phi i32 [ 0, %101 ], [ %103, %102 ]
  %106 = load i32, i32* %12, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %12, align 4
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = load i32, i32* %12, align 4
  %111 = load i32*, i32** %7, align 8
  %112 = call i32 @zfs_delete_final_check(%struct.TYPE_8__* %108, %struct.TYPE_8__* %109, i32 %110, i32* %111)
  store i32 %112, i32* %4, align 4
  br label %113

113:                                              ; preds = %104, %85, %67, %61, %56, %43, %35, %25
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @zfs_zaccess_common(%struct.TYPE_8__*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @secpolicy_vnode_remove(i32, i32*) #1

declare dso_local i32 @ZTOV(%struct.TYPE_8__*) #1

declare dso_local i32 @zfs_delete_final_check(%struct.TYPE_8__*, %struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
