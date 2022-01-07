; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_ascend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_ascend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i32, i32, i32, i32, %struct.tree_entry* }
%struct.tree_entry = type { i32, i32, i32 }

@isDirLink = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@TREE_ERROR_FATAL = common dso_local global i32 0, align 4
@onWorkingDir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*)* @tree_ascend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_ascend(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca %struct.tree_entry*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.tree*, %struct.tree** %2, align 8
  %8 = getelementptr inbounds %struct.tree, %struct.tree* %7, i32 0, i32 5
  %9 = load %struct.tree_entry*, %struct.tree_entry** %8, align 8
  store %struct.tree_entry* %9, %struct.tree_entry** %3, align 8
  %10 = load %struct.tree*, %struct.tree** %2, align 8
  %11 = getelementptr inbounds %struct.tree, %struct.tree* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %6, align 4
  %13 = load %struct.tree_entry*, %struct.tree_entry** %3, align 8
  %14 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @isDirLink, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.tree_entry*, %struct.tree_entry** %3, align 8
  %21 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %4, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.tree*, %struct.tree** %2, align 8
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = load i32, i32* @O_CLOEXEC, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @open_on_current_dir(%struct.tree* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @__archive_ensure_cloexec_flag(i32 %29)
  br label %31

31:                                               ; preds = %23, %19
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* @errno, align 4
  %36 = load %struct.tree*, %struct.tree** %2, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @TREE_ERROR_FATAL, align 4
  store i32 %38, i32* %5, align 4
  br label %72

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.tree*, %struct.tree** %2, align 8
  %42 = getelementptr inbounds %struct.tree, %struct.tree* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @onWorkingDir, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.tree*, %struct.tree** %2, align 8
  %46 = getelementptr inbounds %struct.tree, %struct.tree* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.tree*, %struct.tree** %2, align 8
  %51 = load %struct.tree_entry*, %struct.tree_entry** %3, align 8
  %52 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %51, i32 0, i32 2
  %53 = call i32 @close_and_restore_time(i32 %49, %struct.tree* %50, i32* %52)
  %54 = load %struct.tree_entry*, %struct.tree_entry** %3, align 8
  %55 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @isDirLink, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %39
  %61 = load %struct.tree*, %struct.tree** %2, align 8
  %62 = getelementptr inbounds %struct.tree, %struct.tree* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %62, align 8
  %65 = load %struct.tree_entry*, %struct.tree_entry** %3, align 8
  %66 = getelementptr inbounds %struct.tree_entry, %struct.tree_entry* %65, i32 0, i32 1
  store i32 -1, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %39
  %68 = load %struct.tree*, %struct.tree** %2, align 8
  %69 = getelementptr inbounds %struct.tree, %struct.tree* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %67, %34
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @open_on_current_dir(%struct.tree*, i8*, i32) #1

declare dso_local i32 @__archive_ensure_cloexec_flag(i32) #1

declare dso_local i32 @close_and_restore_time(i32, %struct.tree*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
