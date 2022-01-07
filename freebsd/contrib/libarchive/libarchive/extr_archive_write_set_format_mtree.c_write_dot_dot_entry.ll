; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_write_dot_dot_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_write_dot_dot_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.mtree_writer* }
%struct.mtree_writer = type { i32, %struct.TYPE_9__, i64, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.mtree_entry = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"# %s/%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"..\0A\0A\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.mtree_entry*)* @write_dot_dot_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_dot_dot_entry(%struct.archive_write* %0, %struct.mtree_entry* %1) #0 {
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.mtree_entry*, align 8
  %5 = alloca %struct.mtree_writer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  store %struct.mtree_entry* %1, %struct.mtree_entry** %4, align 8
  %9 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %10 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %9, i32 0, i32 0
  %11 = load %struct.mtree_writer*, %struct.mtree_writer** %10, align 8
  store %struct.mtree_writer* %11, %struct.mtree_writer** %5, align 8
  %12 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %13 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %51

17:                                               ; preds = %2
  %18 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %19 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %17
  %23 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %24 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = mul nsw i32 %25, 4
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %35, %22
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %27
  %32 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %33 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %32, i32 0, i32 1
  %34 = call i32 @archive_strappend_char(%struct.TYPE_9__* %33, i8 signext 32)
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %27

38:                                               ; preds = %27
  br label %39

39:                                               ; preds = %38, %17
  %40 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %41 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %40, i32 0, i32 1
  %42 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %43 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mtree_entry*, %struct.mtree_entry** %4, align 8
  %47 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @archive_string_sprintf(%struct.TYPE_9__* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %49)
  br label %51

51:                                               ; preds = %39, %2
  %52 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %53 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %58 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %57, i32 0, i32 3
  %59 = call i32 @archive_string_empty(%struct.TYPE_9__* %58)
  %60 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %61 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %60, i32 0, i32 3
  %62 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %63 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 3, i32 4
  %68 = call i32 @archive_strncat(%struct.TYPE_9__* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %70 = call i32 @mtree_indent(%struct.mtree_writer* %69)
  br label %81

71:                                               ; preds = %51
  %72 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %73 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %72, i32 0, i32 1
  %74 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %75 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 3, i32 4
  %80 = call i32 @archive_strncat(%struct.TYPE_9__* %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %71, %56
  %82 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %83 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp sgt i32 %85, 32768
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %89 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %90 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %94 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @__archive_write_output(%struct.archive_write* %88, i32 %92, i32 %96)
  store i32 %97, i32* %6, align 4
  %98 = load %struct.mtree_writer*, %struct.mtree_writer** %5, align 8
  %99 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %98, i32 0, i32 1
  %100 = call i32 @archive_string_empty(%struct.TYPE_9__* %99)
  br label %103

101:                                              ; preds = %81
  %102 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %101, %87
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @archive_strappend_char(%struct.TYPE_9__*, i8 signext) #1

declare dso_local i32 @archive_string_sprintf(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i32 @archive_string_empty(%struct.TYPE_9__*) #1

declare dso_local i32 @archive_strncat(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @mtree_indent(%struct.mtree_writer*) #1

declare dso_local i32 @__archive_write_output(%struct.archive_write*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
