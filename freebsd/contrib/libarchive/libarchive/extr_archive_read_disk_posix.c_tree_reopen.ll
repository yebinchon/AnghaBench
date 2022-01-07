; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_reopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_2__*, i64, i64, i32, i32, i32, i32, i32*, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@needsRestoreTimes = common dso_local global i32 0, align 4
@onInitialDir = common dso_local global i32 0, align 4
@INVALID_DIR_HANDLE = common dso_local global i32 0, align 4
@needsFirstVisit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@O_EXEC = common dso_local global i32 0, align 4
@O_PATH = common dso_local global i32 0, align 4
@O_SEARCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tree* (%struct.tree*, i8*, i32)* @tree_reopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tree* @tree_reopen(%struct.tree* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.tree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = load i32, i32* @needsRestoreTimes, align 4
  br label %12

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ 0, %11 ]
  %14 = load %struct.tree*, %struct.tree** %4, align 8
  %15 = getelementptr inbounds %struct.tree, %struct.tree* %14, i32 0, i32 19
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @onInitialDir, align 4
  %17 = load %struct.tree*, %struct.tree** %4, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 19
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.tree*, %struct.tree** %4, align 8
  %22 = getelementptr inbounds %struct.tree, %struct.tree* %21, i32 0, i32 18
  store i64 0, i64* %22, align 8
  %23 = load %struct.tree*, %struct.tree** %4, align 8
  %24 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 17
  store i64 0, i64* %24, align 8
  %25 = load %struct.tree*, %struct.tree** %4, align 8
  %26 = getelementptr inbounds %struct.tree, %struct.tree* %25, i32 0, i32 16
  store i64 0, i64* %26, align 8
  %27 = load %struct.tree*, %struct.tree** %4, align 8
  %28 = getelementptr inbounds %struct.tree, %struct.tree* %27, i32 0, i32 15
  store i64 0, i64* %28, align 8
  %29 = load %struct.tree*, %struct.tree** %4, align 8
  %30 = getelementptr inbounds %struct.tree, %struct.tree* %29, i32 0, i32 14
  store i64 0, i64* %30, align 8
  %31 = load %struct.tree*, %struct.tree** %4, align 8
  %32 = getelementptr inbounds %struct.tree, %struct.tree* %31, i32 0, i32 13
  store i32* null, i32** %32, align 8
  %33 = load i32, i32* @INVALID_DIR_HANDLE, align 4
  %34 = load %struct.tree*, %struct.tree** %4, align 8
  %35 = getelementptr inbounds %struct.tree, %struct.tree* %34, i32 0, i32 12
  store i32 %33, i32* %35, align 4
  %36 = load %struct.tree*, %struct.tree** %4, align 8
  %37 = getelementptr inbounds %struct.tree, %struct.tree* %36, i32 0, i32 10
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tree*, %struct.tree** %4, align 8
  %40 = getelementptr inbounds %struct.tree, %struct.tree* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 8
  %41 = load %struct.tree*, %struct.tree** %4, align 8
  %42 = getelementptr inbounds %struct.tree, %struct.tree* %41, i32 0, i32 9
  %43 = call i32 @archive_string_empty(i32* %42)
  %44 = load %struct.tree*, %struct.tree** %4, align 8
  %45 = getelementptr inbounds %struct.tree, %struct.tree* %44, i32 0, i32 0
  store i32 -1, i32* %45, align 8
  %46 = load %struct.tree*, %struct.tree** %4, align 8
  %47 = getelementptr inbounds %struct.tree, %struct.tree* %46, i32 0, i32 8
  store i64 0, i64* %47, align 8
  %48 = load %struct.tree*, %struct.tree** %4, align 8
  %49 = getelementptr inbounds %struct.tree, %struct.tree* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load %struct.tree*, %struct.tree** %4, align 8
  %51 = getelementptr inbounds %struct.tree, %struct.tree* %50, i32 0, i32 1
  store i32 -1, i32* %51, align 4
  %52 = load %struct.tree*, %struct.tree** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = call i32 @tree_push(%struct.tree* %52, i8* %53, i32 0, i32 0, i32 0, i32* null)
  %55 = load i32, i32* @needsFirstVisit, align 4
  %56 = load %struct.tree*, %struct.tree** %4, align 8
  %57 = getelementptr inbounds %struct.tree, %struct.tree* %56, i32 0, i32 6
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %55, i32* %59, align 4
  %60 = load %struct.tree*, %struct.tree** %4, align 8
  %61 = getelementptr inbounds %struct.tree, %struct.tree* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = load %struct.tree*, %struct.tree** %4, align 8
  %63 = getelementptr inbounds %struct.tree, %struct.tree* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load i32, i32* @O_RDONLY, align 4
  %65 = load i32, i32* @O_CLOEXEC, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @open(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.tree*, %struct.tree** %4, align 8
  %70 = getelementptr inbounds %struct.tree, %struct.tree* %69, i32 0, i32 4
  store i64 %68, i64* %70, align 8
  %71 = load %struct.tree*, %struct.tree** %4, align 8
  %72 = getelementptr inbounds %struct.tree, %struct.tree* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @__archive_ensure_cloexec_flag(i64 %73)
  %75 = load %struct.tree*, %struct.tree** %4, align 8
  %76 = getelementptr inbounds %struct.tree, %struct.tree* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @tree_dup(i64 %77)
  %79 = load %struct.tree*, %struct.tree** %4, align 8
  %80 = getelementptr inbounds %struct.tree, %struct.tree* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.tree*, %struct.tree** %4, align 8
  ret %struct.tree* %81
}

declare dso_local i32 @archive_string_empty(i32*) #1

declare dso_local i32 @tree_push(%struct.tree*, i8*, i32, i32, i32, i32*) #1

declare dso_local i8* @open(i8*, i32) #1

declare dso_local i32 @__archive_ensure_cloexec_flag(i64) #1

declare dso_local i32 @tree_dup(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
