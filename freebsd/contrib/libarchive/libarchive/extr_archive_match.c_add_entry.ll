; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.archive_entry = type { i32 }
%struct.match_file = type { i32, i32, i32, i32, i32, i32, i32 }

@rb_ops_wcs = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"pathname is NULL\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@rb_ops_mbs = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@TIME_IS_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, i32, %struct.archive_entry*)* @add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_entry(%struct.archive_match* %0, i32 %1, %struct.archive_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_match*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.match_file*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.match_file*, align 8
  store %struct.archive_match* %0, %struct.archive_match** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.archive_entry* %2, %struct.archive_entry** %7, align 8
  %12 = call %struct.match_file* @calloc(i32 1, i32 28)
  store %struct.match_file* %12, %struct.match_file** %8, align 8
  %13 = load %struct.match_file*, %struct.match_file** %8, align 8
  %14 = icmp eq %struct.match_file* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %17 = call i32 @error_nomem(%struct.archive_match* %16)
  store i32 %17, i32* %4, align 4
  br label %118

18:                                               ; preds = %3
  %19 = load i32, i32* @rb_ops_wcs, align 4
  %20 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %21 = call i8* @archive_entry_pathname(%struct.archive_entry* %20)
  store i8* %21, i8** %9, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load %struct.match_file*, %struct.match_file** %8, align 8
  %26 = call i32 @free(%struct.match_file* %25)
  %27 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %28 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %27, i32 0, i32 3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = call i32 @archive_set_error(i32* %28, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %31, i32* %4, align 4
  br label %118

32:                                               ; preds = %18
  %33 = load %struct.match_file*, %struct.match_file** %8, align 8
  %34 = getelementptr inbounds %struct.match_file, %struct.match_file* %33, i32 0, i32 1
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @archive_mstring_copy_mbs(i32* %34, i8* %35)
  %37 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %38 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32* @rb_ops_mbs, i32** %39, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.match_file*, %struct.match_file** %8, align 8
  %42 = getelementptr inbounds %struct.match_file, %struct.match_file* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %44 = call i32 @archive_entry_mtime(%struct.archive_entry* %43)
  %45 = load %struct.match_file*, %struct.match_file** %8, align 8
  %46 = getelementptr inbounds %struct.match_file, %struct.match_file* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  %47 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %48 = call i32 @archive_entry_mtime_nsec(%struct.archive_entry* %47)
  %49 = load %struct.match_file*, %struct.match_file** %8, align 8
  %50 = getelementptr inbounds %struct.match_file, %struct.match_file* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %52 = call i32 @archive_entry_ctime(%struct.archive_entry* %51)
  %53 = load %struct.match_file*, %struct.match_file** %8, align 8
  %54 = getelementptr inbounds %struct.match_file, %struct.match_file* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %56 = call i32 @archive_entry_ctime_nsec(%struct.archive_entry* %55)
  %57 = load %struct.match_file*, %struct.match_file** %8, align 8
  %58 = getelementptr inbounds %struct.match_file, %struct.match_file* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %60 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %59, i32 0, i32 2
  %61 = load %struct.match_file*, %struct.match_file** %8, align 8
  %62 = getelementptr inbounds %struct.match_file, %struct.match_file* %61, i32 0, i32 6
  %63 = call i32 @__archive_rb_tree_insert_node(%struct.TYPE_3__* %60, i32* %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %107, label %66

66:                                               ; preds = %32
  %67 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %68 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %67, i32 0, i32 2
  %69 = load i8*, i8** %9, align 8
  %70 = call i64 @__archive_rb_tree_find_node(%struct.TYPE_3__* %68, i8* %69)
  %71 = inttoptr i64 %70 to %struct.match_file*
  store %struct.match_file* %71, %struct.match_file** %11, align 8
  %72 = load %struct.match_file*, %struct.match_file** %11, align 8
  %73 = icmp ne %struct.match_file* %72, null
  br i1 %73, label %74, label %100

74:                                               ; preds = %66
  %75 = load %struct.match_file*, %struct.match_file** %8, align 8
  %76 = getelementptr inbounds %struct.match_file, %struct.match_file* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.match_file*, %struct.match_file** %11, align 8
  %79 = getelementptr inbounds %struct.match_file, %struct.match_file* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  %80 = load %struct.match_file*, %struct.match_file** %8, align 8
  %81 = getelementptr inbounds %struct.match_file, %struct.match_file* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.match_file*, %struct.match_file** %11, align 8
  %84 = getelementptr inbounds %struct.match_file, %struct.match_file* %83, i32 0, i32 5
  store i32 %82, i32* %84, align 4
  %85 = load %struct.match_file*, %struct.match_file** %8, align 8
  %86 = getelementptr inbounds %struct.match_file, %struct.match_file* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.match_file*, %struct.match_file** %11, align 8
  %89 = getelementptr inbounds %struct.match_file, %struct.match_file* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 4
  %90 = load %struct.match_file*, %struct.match_file** %8, align 8
  %91 = getelementptr inbounds %struct.match_file, %struct.match_file* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.match_file*, %struct.match_file** %11, align 8
  %94 = getelementptr inbounds %struct.match_file, %struct.match_file* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load %struct.match_file*, %struct.match_file** %8, align 8
  %96 = getelementptr inbounds %struct.match_file, %struct.match_file* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.match_file*, %struct.match_file** %11, align 8
  %99 = getelementptr inbounds %struct.match_file, %struct.match_file* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %74, %66
  %101 = load %struct.match_file*, %struct.match_file** %8, align 8
  %102 = getelementptr inbounds %struct.match_file, %struct.match_file* %101, i32 0, i32 1
  %103 = call i32 @archive_mstring_clean(i32* %102)
  %104 = load %struct.match_file*, %struct.match_file** %8, align 8
  %105 = call i32 @free(%struct.match_file* %104)
  %106 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %106, i32* %4, align 4
  br label %118

107:                                              ; preds = %32
  %108 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %109 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %108, i32 0, i32 1
  %110 = load %struct.match_file*, %struct.match_file** %8, align 8
  %111 = call i32 @entry_list_add(i32* %109, %struct.match_file* %110)
  %112 = load i32, i32* @TIME_IS_SET, align 4
  %113 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %114 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %107, %100, %24, %15
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local %struct.match_file* @calloc(i32, i32) #1

declare dso_local i32 @error_nomem(%struct.archive_match*) #1

declare dso_local i8* @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @free(%struct.match_file*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @archive_mstring_copy_mbs(i32*, i8*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_ctime_nsec(%struct.archive_entry*) #1

declare dso_local i32 @__archive_rb_tree_insert_node(%struct.TYPE_3__*, i32*) #1

declare dso_local i64 @__archive_rb_tree_find_node(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @archive_mstring_clean(i32*) #1

declare dso_local i32 @entry_list_add(i32*, %struct.match_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
