; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/lindebugfs/extr_lindebugfs.c_debugfs_create_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/lindebugfs/extr_lindebugfs.c_debugfs_create_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_node = type { %struct.dentry_meta* }
%struct.dentry_meta = type { i32, i32, %struct.dentry }
%struct.dentry = type { %struct.pfs_node* }

@M_DFSINT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DM_DIR = common dso_local global i32 0, align 4
@debugfs_root = common dso_local global %struct.pfs_node* null, align 8
@debugfs_attr = common dso_local global i32 0, align 4
@debugfs_destroy = common dso_local global i32 0, align 4
@PFS_RD = common dso_local global i32 0, align 4
@PFS_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_create_dir(i8* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry_meta*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.pfs_node*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %9 = load i32, i32* @M_DFSINT, align 4
  %10 = load i32, i32* @M_NOWAIT, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.dentry_meta* @malloc(i32 16, i32 %9, i32 %12)
  store %struct.dentry_meta* %13, %struct.dentry_meta** %6, align 8
  %14 = load %struct.dentry_meta*, %struct.dentry_meta** %6, align 8
  %15 = icmp eq %struct.dentry_meta* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.dentry_meta*, %struct.dentry_meta** %6, align 8
  %19 = getelementptr inbounds %struct.dentry_meta, %struct.dentry_meta* %18, i32 0, i32 2
  store %struct.dentry* %19, %struct.dentry** %7, align 8
  %20 = load %struct.dentry_meta*, %struct.dentry_meta** %6, align 8
  %21 = getelementptr inbounds %struct.dentry_meta, %struct.dentry_meta* %20, i32 0, i32 0
  store i32 448, i32* %21, align 8
  %22 = load i32, i32* @DM_DIR, align 4
  %23 = load %struct.dentry_meta*, %struct.dentry_meta** %6, align 8
  %24 = getelementptr inbounds %struct.dentry_meta, %struct.dentry_meta* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = icmp ne %struct.dentry* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 0
  %30 = load %struct.pfs_node*, %struct.pfs_node** %29, align 8
  store %struct.pfs_node* %30, %struct.pfs_node** %8, align 8
  br label %33

31:                                               ; preds = %17
  %32 = load %struct.pfs_node*, %struct.pfs_node** @debugfs_root, align 8
  store %struct.pfs_node* %32, %struct.pfs_node** %8, align 8
  br label %33

33:                                               ; preds = %31, %27
  %34 = load %struct.pfs_node*, %struct.pfs_node** %8, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i32, i32* @debugfs_attr, align 4
  %37 = load i32, i32* @debugfs_destroy, align 4
  %38 = load i32, i32* @PFS_RD, align 4
  %39 = load i32, i32* @PFS_NOWAIT, align 4
  %40 = or i32 %38, %39
  %41 = call %struct.pfs_node* @pfs_create_dir(%struct.pfs_node* %34, i8* %35, i32 %36, i32* null, i32 %37, i32 %40)
  %42 = load %struct.dentry*, %struct.dentry** %7, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  store %struct.pfs_node* %41, %struct.pfs_node** %43, align 8
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 0
  %46 = load %struct.pfs_node*, %struct.pfs_node** %45, align 8
  %47 = icmp eq %struct.pfs_node* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %33
  %49 = load %struct.dentry_meta*, %struct.dentry_meta** %6, align 8
  %50 = load i32, i32* @M_DFSINT, align 4
  %51 = call i32 @free(%struct.dentry_meta* %49, i32 %50)
  store %struct.dentry* null, %struct.dentry** %3, align 8
  br label %59

52:                                               ; preds = %33
  %53 = load %struct.dentry_meta*, %struct.dentry_meta** %6, align 8
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 0
  %56 = load %struct.pfs_node*, %struct.pfs_node** %55, align 8
  %57 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %56, i32 0, i32 0
  store %struct.dentry_meta* %53, %struct.dentry_meta** %57, align 8
  %58 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %58, %struct.dentry** %3, align 8
  br label %59

59:                                               ; preds = %52, %48, %16
  %60 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %60
}

declare dso_local %struct.dentry_meta* @malloc(i32, i32, i32) #1

declare dso_local %struct.pfs_node* @pfs_create_dir(%struct.pfs_node*, i8*, i32, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.dentry_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
