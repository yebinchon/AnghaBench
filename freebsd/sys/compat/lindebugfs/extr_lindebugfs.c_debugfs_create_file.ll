; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/lindebugfs/extr_lindebugfs.c_debugfs_create_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/lindebugfs/extr_lindebugfs.c_debugfs_create_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfs_node = type { %struct.dentry_meta* }
%struct.dentry_meta = type { i32, i32, i8*, %struct.file_operations*, %struct.dentry }
%struct.file_operations = type { i64 }
%struct.dentry = type { %struct.pfs_node* }

@M_DFSINT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@DM_FILE = common dso_local global i32 0, align 4
@debugfs_root = common dso_local global %struct.pfs_node* null, align 8
@PFS_RDWR = common dso_local global i32 0, align 4
@PFS_RD = common dso_local global i32 0, align 4
@debugfs_fill = common dso_local global i32 0, align 4
@debugfs_attr = common dso_local global i32 0, align 4
@debugfs_destroy = common dso_local global i32 0, align 4
@PFS_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dentry* @debugfs_create_file(i8* %0, i32 %1, %struct.dentry* %2, i8* %3, %struct.file_operations* %4) #0 {
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.file_operations*, align 8
  %12 = alloca %struct.dentry_meta*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca %struct.pfs_node*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dentry* %2, %struct.dentry** %9, align 8
  store i8* %3, i8** %10, align 8
  store %struct.file_operations* %4, %struct.file_operations** %11, align 8
  %16 = load i32, i32* @M_DFSINT, align 4
  %17 = load i32, i32* @M_NOWAIT, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call %struct.dentry_meta* @malloc(i32 32, i32 %16, i32 %19)
  store %struct.dentry_meta* %20, %struct.dentry_meta** %12, align 8
  %21 = load %struct.dentry_meta*, %struct.dentry_meta** %12, align 8
  %22 = icmp eq %struct.dentry_meta* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store %struct.dentry* null, %struct.dentry** %6, align 8
  br label %84

24:                                               ; preds = %5
  %25 = load %struct.dentry_meta*, %struct.dentry_meta** %12, align 8
  %26 = getelementptr inbounds %struct.dentry_meta, %struct.dentry_meta* %25, i32 0, i32 4
  store %struct.dentry* %26, %struct.dentry** %13, align 8
  %27 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %28 = load %struct.dentry_meta*, %struct.dentry_meta** %12, align 8
  %29 = getelementptr inbounds %struct.dentry_meta, %struct.dentry_meta* %28, i32 0, i32 3
  store %struct.file_operations* %27, %struct.file_operations** %29, align 8
  %30 = load i8*, i8** %10, align 8
  %31 = load %struct.dentry_meta*, %struct.dentry_meta** %12, align 8
  %32 = getelementptr inbounds %struct.dentry_meta, %struct.dentry_meta* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.dentry_meta*, %struct.dentry_meta** %12, align 8
  %35 = getelementptr inbounds %struct.dentry_meta, %struct.dentry_meta* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @DM_FILE, align 4
  %37 = load %struct.dentry_meta*, %struct.dentry_meta** %12, align 8
  %38 = getelementptr inbounds %struct.dentry_meta, %struct.dentry_meta* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.dentry*, %struct.dentry** %9, align 8
  %40 = icmp ne %struct.dentry* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load %struct.dentry*, %struct.dentry** %9, align 8
  %43 = getelementptr inbounds %struct.dentry, %struct.dentry* %42, i32 0, i32 0
  %44 = load %struct.pfs_node*, %struct.pfs_node** %43, align 8
  store %struct.pfs_node* %44, %struct.pfs_node** %14, align 8
  br label %47

45:                                               ; preds = %24
  %46 = load %struct.pfs_node*, %struct.pfs_node** @debugfs_root, align 8
  store %struct.pfs_node* %46, %struct.pfs_node** %14, align 8
  br label %47

47:                                               ; preds = %45, %41
  %48 = load %struct.file_operations*, %struct.file_operations** %11, align 8
  %49 = getelementptr inbounds %struct.file_operations, %struct.file_operations* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @PFS_RDWR, align 4
  br label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @PFS_RD, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %15, align 4
  %58 = load %struct.pfs_node*, %struct.pfs_node** %14, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @debugfs_fill, align 4
  %61 = load i32, i32* @debugfs_attr, align 4
  %62 = load i32, i32* @debugfs_destroy, align 4
  %63 = load i32, i32* %15, align 4
  %64 = load i32, i32* @PFS_NOWAIT, align 4
  %65 = or i32 %63, %64
  %66 = call %struct.pfs_node* @pfs_create_file(%struct.pfs_node* %58, i8* %59, i32 %60, i32 %61, i32* null, i32 %62, i32 %65)
  %67 = load %struct.dentry*, %struct.dentry** %13, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 0
  store %struct.pfs_node* %66, %struct.pfs_node** %68, align 8
  %69 = load %struct.dentry*, %struct.dentry** %13, align 8
  %70 = getelementptr inbounds %struct.dentry, %struct.dentry* %69, i32 0, i32 0
  %71 = load %struct.pfs_node*, %struct.pfs_node** %70, align 8
  %72 = icmp eq %struct.pfs_node* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %56
  %74 = load %struct.dentry_meta*, %struct.dentry_meta** %12, align 8
  %75 = load i32, i32* @M_DFSINT, align 4
  %76 = call i32 @free(%struct.dentry_meta* %74, i32 %75)
  store %struct.dentry* null, %struct.dentry** %6, align 8
  br label %84

77:                                               ; preds = %56
  %78 = load %struct.dentry_meta*, %struct.dentry_meta** %12, align 8
  %79 = load %struct.dentry*, %struct.dentry** %13, align 8
  %80 = getelementptr inbounds %struct.dentry, %struct.dentry* %79, i32 0, i32 0
  %81 = load %struct.pfs_node*, %struct.pfs_node** %80, align 8
  %82 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %81, i32 0, i32 0
  store %struct.dentry_meta* %78, %struct.dentry_meta** %82, align 8
  %83 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %83, %struct.dentry** %6, align 8
  br label %84

84:                                               ; preds = %77, %73, %23
  %85 = load %struct.dentry*, %struct.dentry** %6, align 8
  ret %struct.dentry* %85
}

declare dso_local %struct.dentry_meta* @malloc(i32, i32, i32) #1

declare dso_local %struct.pfs_node* @pfs_create_file(%struct.pfs_node*, i8*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @free(%struct.dentry_meta*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
