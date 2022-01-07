; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_sfs_vgetx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ctldir.c_sfs_vgetx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vop_vector = type { i32 }
%struct.vnode = type { i32*, i32 }

@.str = private unnamed_addr constant [23 x i8] c"sfs vnode with no data\00", align 1
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32, i32, i32, i8*, %struct.vop_vector*, i32 (%struct.vnode*, i8*)*, i8*, %struct.vnode**)* @sfs_vgetx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfs_vgetx(%struct.mount* %0, i32 %1, i32 %2, i32 %3, i8* %4, %struct.vop_vector* %5, i32 (%struct.vnode*, i8*)* %6, i8* %7, %struct.vnode** %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mount*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.vop_vector*, align 8
  %17 = alloca i32 (%struct.vnode*, i8*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.vnode**, align 8
  %20 = alloca %struct.vnode*, align 8
  %21 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store %struct.vop_vector* %5, %struct.vop_vector** %16, align 8
  store i32 (%struct.vnode*, i8*)* %6, i32 (%struct.vnode*, i8*)** %17, align 8
  store i8* %7, i8** %18, align 8
  store %struct.vnode** %8, %struct.vnode*** %19, align 8
  %22 = load %struct.mount*, %struct.mount** %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %27 = call i32 @sfs_vnode_get(%struct.mount* %22, i32 %23, i32 %24, i32 %25, %struct.vnode** %26)
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* %21, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %9
  %31 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %32 = load %struct.vnode*, %struct.vnode** %31, align 8
  %33 = icmp ne %struct.vnode* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %30, %9
  %35 = load i32, i32* %21, align 4
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %39 = load %struct.vnode*, %struct.vnode** %38, align 8
  %40 = getelementptr inbounds %struct.vnode, %struct.vnode* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT_IMPLY(i32 %37, i32 %43, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* %21, align 4
  store i32 %45, i32* %10, align 4
  br label %102

46:                                               ; preds = %30
  %47 = load i8*, i8** %15, align 8
  %48 = load %struct.mount*, %struct.mount** %11, align 8
  %49 = load %struct.vop_vector*, %struct.vop_vector** %16, align 8
  %50 = call i32 @getnewvnode(i8* %47, %struct.mount* %48, %struct.vop_vector* %49, %struct.vnode** %20)
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %21, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load %struct.vnode**, %struct.vnode*** %19, align 8
  store %struct.vnode* null, %struct.vnode** %54, align 8
  %55 = load i32, i32* %21, align 4
  store i32 %55, i32* %10, align 4
  br label %102

56:                                               ; preds = %46
  %57 = load %struct.vnode*, %struct.vnode** %20, align 8
  %58 = getelementptr inbounds %struct.vnode, %struct.vnode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @LK_EXCLUSIVE, align 4
  %61 = call i32 @lockmgr(i32 %59, i32 %60, i32* null)
  %62 = load %struct.vnode*, %struct.vnode** %20, align 8
  %63 = load %struct.mount*, %struct.mount** %11, align 8
  %64 = call i32 @insmntque(%struct.vnode* %62, %struct.mount* %63)
  store i32 %64, i32* %21, align 4
  %65 = load i32, i32* %21, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.vnode**, %struct.vnode*** %19, align 8
  store %struct.vnode* null, %struct.vnode** %68, align 8
  %69 = load i32, i32* %21, align 4
  store i32 %69, i32* %10, align 4
  br label %102

70:                                               ; preds = %56
  %71 = load i32 (%struct.vnode*, i8*)*, i32 (%struct.vnode*, i8*)** %17, align 8
  %72 = load %struct.vnode*, %struct.vnode** %20, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = call i32 %71(%struct.vnode* %72, i8* %73)
  %75 = load %struct.vnode*, %struct.vnode** %20, align 8
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %80 = call i32 @sfs_vnode_insert(%struct.vnode* %75, i32 %76, i32 %77, i32 %78, %struct.vnode** %79)
  store i32 %80, i32* %21, align 4
  %81 = load i32, i32* %21, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %70
  %84 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %85 = load %struct.vnode*, %struct.vnode** %84, align 8
  %86 = icmp ne %struct.vnode* %85, null
  br i1 %86, label %87, label %99

87:                                               ; preds = %83, %70
  %88 = load i32, i32* %21, align 4
  %89 = icmp eq i32 %88, 0
  %90 = zext i1 %89 to i32
  %91 = load %struct.vnode**, %struct.vnode*** %19, align 8
  %92 = load %struct.vnode*, %struct.vnode** %91, align 8
  %93 = getelementptr inbounds %struct.vnode, %struct.vnode* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = icmp ne i32* %94, null
  %96 = zext i1 %95 to i32
  %97 = call i32 @KASSERT_IMPLY(i32 %90, i32 %96, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %98 = load i32, i32* %21, align 4
  store i32 %98, i32* %10, align 4
  br label %102

99:                                               ; preds = %83
  %100 = load %struct.vnode*, %struct.vnode** %20, align 8
  %101 = load %struct.vnode**, %struct.vnode*** %19, align 8
  store %struct.vnode* %100, %struct.vnode** %101, align 8
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %99, %87, %67, %53, %34
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local i32 @sfs_vnode_get(%struct.mount*, i32, i32, i32, %struct.vnode**) #1

declare dso_local i32 @KASSERT_IMPLY(i32, i32, i8*) #1

declare dso_local i32 @getnewvnode(i8*, %struct.mount*, %struct.vop_vector*, %struct.vnode**) #1

declare dso_local i32 @lockmgr(i32, i32, i32*) #1

declare dso_local i32 @insmntque(%struct.vnode*, %struct.mount*) #1

declare dso_local i32 @sfs_vnode_insert(%struct.vnode*, i32, i32, i32, %struct.vnode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
