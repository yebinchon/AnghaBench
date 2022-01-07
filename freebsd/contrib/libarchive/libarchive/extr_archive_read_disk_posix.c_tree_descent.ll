; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_descent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_tree_descent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree = type { i32, i64, i64, i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@TREE_ERROR_DIR = common dso_local global i32 0, align 4
@isDirLink = common dso_local global i32 0, align 4
@onWorkingDir = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tree*)* @tree_descent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_descent(%struct.tree* %0) #0 {
  %2 = alloca %struct.tree*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tree* %0, %struct.tree** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.tree*, %struct.tree** %2, align 8
  %7 = getelementptr inbounds %struct.tree, %struct.tree* %6, i32 0, i32 7
  %8 = call i32 @archive_strlen(i32* %7)
  %9 = load %struct.tree*, %struct.tree** %2, align 8
  %10 = getelementptr inbounds %struct.tree, %struct.tree* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @O_RDONLY, align 4
  %12 = load i32, i32* @O_CLOEXEC, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.tree*, %struct.tree** %2, align 8
  %15 = load %struct.tree*, %struct.tree** %2, align 8
  %16 = getelementptr inbounds %struct.tree, %struct.tree* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @open_on_current_dir(%struct.tree* %14, i32 %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @__archive_ensure_cloexec_flag(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @errno, align 4
  %29 = load %struct.tree*, %struct.tree** %2, align 8
  %30 = getelementptr inbounds %struct.tree, %struct.tree* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @TREE_ERROR_DIR, align 4
  store i32 %31, i32* %5, align 4
  br label %86

32:                                               ; preds = %1
  %33 = load %struct.tree*, %struct.tree** %2, align 8
  %34 = getelementptr inbounds %struct.tree, %struct.tree* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.tree*, %struct.tree** %2, align 8
  %38 = getelementptr inbounds %struct.tree, %struct.tree* %37, i32 0, i32 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @isDirLink, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %32
  %46 = load %struct.tree*, %struct.tree** %2, align 8
  %47 = getelementptr inbounds %struct.tree, %struct.tree* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.tree*, %struct.tree** %2, align 8
  %50 = getelementptr inbounds %struct.tree, %struct.tree* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.tree*, %struct.tree** %2, align 8
  %54 = getelementptr inbounds %struct.tree, %struct.tree* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.tree*, %struct.tree** %2, align 8
  %58 = getelementptr inbounds %struct.tree, %struct.tree* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.tree*, %struct.tree** %2, align 8
  %61 = getelementptr inbounds %struct.tree, %struct.tree* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %45
  %65 = load %struct.tree*, %struct.tree** %2, align 8
  %66 = getelementptr inbounds %struct.tree, %struct.tree* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.tree*, %struct.tree** %2, align 8
  %69 = getelementptr inbounds %struct.tree, %struct.tree* %68, i32 0, i32 2
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %45
  br label %76

71:                                               ; preds = %32
  %72 = load %struct.tree*, %struct.tree** %2, align 8
  %73 = getelementptr inbounds %struct.tree, %struct.tree* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @close(i32 %74)
  br label %76

76:                                               ; preds = %71, %70
  %77 = load i32, i32* %4, align 4
  %78 = load %struct.tree*, %struct.tree** %2, align 8
  %79 = getelementptr inbounds %struct.tree, %struct.tree* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @onWorkingDir, align 4
  %81 = xor i32 %80, -1
  %82 = load %struct.tree*, %struct.tree** %2, align 8
  %83 = getelementptr inbounds %struct.tree, %struct.tree* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %76, %27
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @archive_strlen(i32*) #1

declare dso_local i32 @open_on_current_dir(%struct.tree*, i32, i32) #1

declare dso_local i32 @__archive_ensure_cloexec_flag(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
