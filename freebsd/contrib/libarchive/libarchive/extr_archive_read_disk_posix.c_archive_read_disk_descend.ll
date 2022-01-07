; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_descend.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_disk_posix.c_archive_read_disk_descend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read_disk = type { %struct.tree* }
%struct.tree = type { i64, i64, %struct.TYPE_8__*, i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@ARCHIVE_READ_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_HEADER = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"archive_read_disk_descend\00", align 1
@TREE_REGULAR = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@isDir = common dso_local global i32 0, align 4
@isDirLink = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_read_disk_descend(%struct.archive* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive*, align 8
  %4 = alloca %struct.archive_read_disk*, align 8
  %5 = alloca %struct.tree*, align 8
  store %struct.archive* %0, %struct.archive** %3, align 8
  %6 = load %struct.archive*, %struct.archive** %3, align 8
  %7 = bitcast %struct.archive* %6 to %struct.archive_read_disk*
  store %struct.archive_read_disk* %7, %struct.archive_read_disk** %4, align 8
  %8 = load %struct.archive_read_disk*, %struct.archive_read_disk** %4, align 8
  %9 = getelementptr inbounds %struct.archive_read_disk, %struct.archive_read_disk* %8, i32 0, i32 0
  %10 = load %struct.tree*, %struct.tree** %9, align 8
  store %struct.tree* %10, %struct.tree** %5, align 8
  %11 = load %struct.archive*, %struct.archive** %3, align 8
  %12 = load i32, i32* @ARCHIVE_READ_DISK_MAGIC, align 4
  %13 = load i32, i32* @ARCHIVE_STATE_HEADER, align 4
  %14 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @archive_check_magic(%struct.archive* %11, i32 %12, i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.tree*, %struct.tree** %5, align 8
  %18 = getelementptr inbounds %struct.tree, %struct.tree* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TREE_REGULAR, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.tree*, %struct.tree** %5, align 8
  %24 = getelementptr inbounds %struct.tree, %struct.tree* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %1
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %28, i32* %2, align 4
  br label %112

29:                                               ; preds = %22
  %30 = load %struct.tree*, %struct.tree** %5, align 8
  %31 = call i64 @tree_current_is_physical_dir(%struct.tree* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %29
  %34 = load %struct.tree*, %struct.tree** %5, align 8
  %35 = load %struct.tree*, %struct.tree** %5, align 8
  %36 = getelementptr inbounds %struct.tree, %struct.tree* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.tree*, %struct.tree** %5, align 8
  %39 = getelementptr inbounds %struct.tree, %struct.tree* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tree*, %struct.tree** %5, align 8
  %42 = getelementptr inbounds %struct.tree, %struct.tree* %41, i32 0, i32 7
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.tree*, %struct.tree** %5, align 8
  %46 = getelementptr inbounds %struct.tree, %struct.tree* %45, i32 0, i32 7
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tree*, %struct.tree** %5, align 8
  %50 = getelementptr inbounds %struct.tree, %struct.tree* %49, i32 0, i32 3
  %51 = call i32 @tree_push(%struct.tree* %34, i32 %37, i32 %40, i32 %44, i32 %48, i32* %50)
  %52 = load %struct.tree*, %struct.tree** %5, align 8
  %53 = getelementptr inbounds %struct.tree, %struct.tree* %52, i32 0, i32 2
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %33
  %61 = load i32, i32* @isDir, align 4
  %62 = load %struct.tree*, %struct.tree** %5, align 8
  %63 = getelementptr inbounds %struct.tree, %struct.tree* %62, i32 0, i32 2
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 8
  br label %76

68:                                               ; preds = %33
  %69 = load i32, i32* @isDirLink, align 4
  %70 = load %struct.tree*, %struct.tree** %5, align 8
  %71 = getelementptr inbounds %struct.tree, %struct.tree* %70, i32 0, i32 2
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %69
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %68, %60
  br label %108

77:                                               ; preds = %29
  %78 = load %struct.tree*, %struct.tree** %5, align 8
  %79 = call i64 @tree_current_is_dir(%struct.tree* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %107

81:                                               ; preds = %77
  %82 = load %struct.tree*, %struct.tree** %5, align 8
  %83 = load %struct.tree*, %struct.tree** %5, align 8
  %84 = getelementptr inbounds %struct.tree, %struct.tree* %83, i32 0, i32 6
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.tree*, %struct.tree** %5, align 8
  %87 = getelementptr inbounds %struct.tree, %struct.tree* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.tree*, %struct.tree** %5, align 8
  %90 = getelementptr inbounds %struct.tree, %struct.tree* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.tree*, %struct.tree** %5, align 8
  %94 = getelementptr inbounds %struct.tree, %struct.tree* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.tree*, %struct.tree** %5, align 8
  %98 = getelementptr inbounds %struct.tree, %struct.tree* %97, i32 0, i32 3
  %99 = call i32 @tree_push(%struct.tree* %82, i32 %85, i32 %88, i32 %92, i32 %96, i32* %98)
  %100 = load i32, i32* @isDirLink, align 4
  %101 = load %struct.tree*, %struct.tree** %5, align 8
  %102 = getelementptr inbounds %struct.tree, %struct.tree* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %81, %77
  br label %108

108:                                              ; preds = %107, %76
  %109 = load %struct.tree*, %struct.tree** %5, align 8
  %110 = getelementptr inbounds %struct.tree, %struct.tree* %109, i32 0, i32 1
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %27
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i64 @tree_current_is_physical_dir(%struct.tree*) #1

declare dso_local i32 @tree_push(%struct.tree*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @tree_current_is_dir(%struct.tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
