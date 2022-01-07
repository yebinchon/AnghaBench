; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_mtree_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_mtree.c_archive_write_mtree_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.mtree_writer* }
%struct.mtree_writer = type { i32, %struct.mtree_entry*, i64, i32, i64, i32, i64 }
%struct.mtree_entry = type { i64 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"#mtree\0A\00", align 1
@SET_KEYS = common dso_local global i32 0, align 4
@AE_IFDIR = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.archive_entry*)* @archive_write_mtree_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_mtree_header(%struct.archive_write* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.mtree_writer*, align 8
  %7 = alloca %struct.mtree_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 0
  %12 = load %struct.mtree_writer*, %struct.mtree_writer** %11, align 8
  store %struct.mtree_writer* %12, %struct.mtree_writer** %6, align 8
  %13 = load %struct.mtree_writer*, %struct.mtree_writer** %6, align 8
  %14 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %13, i32 0, i32 6
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %2
  %18 = load %struct.mtree_writer*, %struct.mtree_writer** %6, align 8
  %19 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %18, i32 0, i32 6
  store i64 0, i64* %19, align 8
  %20 = load %struct.mtree_writer*, %struct.mtree_writer** %6, align 8
  %21 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %20, i32 0, i32 5
  %22 = call i32 @archive_strcat(i32* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.mtree_writer*, %struct.mtree_writer** %6, align 8
  %24 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SET_KEYS, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %17
  %30 = load %struct.mtree_writer*, %struct.mtree_writer** %6, align 8
  %31 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %30, i32 0, i32 4
  store i64 0, i64* %31, align 8
  br label %32

32:                                               ; preds = %29, %17
  br label %33

33:                                               ; preds = %32, %2
  %34 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %35 = call i32 @archive_entry_size(%struct.archive_entry* %34)
  %36 = load %struct.mtree_writer*, %struct.mtree_writer** %6, align 8
  %37 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.mtree_writer*, %struct.mtree_writer** %6, align 8
  %39 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %33
  %43 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %44 = call i64 @archive_entry_filetype(%struct.archive_entry* %43)
  %45 = load i64, i64* @AE_IFDIR, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %48, i32* %3, align 4
  br label %81

49:                                               ; preds = %42, %33
  %50 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %51 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %52 = call i32 @mtree_entry_new(%struct.archive_write* %50, %struct.archive_entry* %51, %struct.mtree_entry** %7)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @ARCHIVE_WARN, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %3, align 4
  br label %81

58:                                               ; preds = %49
  %59 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %60 = call i32 @mtree_entry_tree_add(%struct.archive_write* %59, %struct.mtree_entry** %7)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @ARCHIVE_WARN, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %66 = call i32 @mtree_entry_free(%struct.mtree_entry* %65)
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %81

68:                                               ; preds = %58
  %69 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %70 = load %struct.mtree_writer*, %struct.mtree_writer** %6, align 8
  %71 = getelementptr inbounds %struct.mtree_writer, %struct.mtree_writer* %70, i32 0, i32 1
  store %struct.mtree_entry* %69, %struct.mtree_entry** %71, align 8
  %72 = load %struct.mtree_entry*, %struct.mtree_entry** %7, align 8
  %73 = getelementptr inbounds %struct.mtree_entry, %struct.mtree_entry* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %68
  %77 = load %struct.mtree_writer*, %struct.mtree_writer** %6, align 8
  %78 = call i32 @sum_init(%struct.mtree_writer* %77)
  br label %79

79:                                               ; preds = %76, %68
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %79, %64, %56, %47
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @archive_strcat(i32*, i8*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

declare dso_local i64 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @mtree_entry_new(%struct.archive_write*, %struct.archive_entry*, %struct.mtree_entry**) #1

declare dso_local i32 @mtree_entry_tree_add(%struct.archive_write*, %struct.mtree_entry**) #1

declare dso_local i32 @mtree_entry_free(%struct.mtree_entry*) #1

declare dso_local i32 @sum_init(%struct.mtree_writer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
