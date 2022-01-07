; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isofile_register_hardlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isofile_register_hardlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { i32 }
%struct.isofile = type { i32, %struct.isofile* }
%struct.hardlink = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.isofile**, %struct.isofile* }
%struct.archive_rb_node = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Can't allocate memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.isofile*)* @isofile_register_hardlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isofile_register_hardlink(%struct.archive_write* %0, %struct.isofile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.isofile*, align 8
  %6 = alloca %struct.iso9660*, align 8
  %7 = alloca %struct.hardlink*, align 8
  %8 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.isofile* %1, %struct.isofile** %5, align 8
  %9 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %10 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %9, i32 0, i32 1
  %11 = load %struct.iso9660*, %struct.iso9660** %10, align 8
  store %struct.iso9660* %11, %struct.iso9660** %6, align 8
  %12 = load %struct.isofile*, %struct.isofile** %5, align 8
  %13 = getelementptr inbounds %struct.isofile, %struct.isofile* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @archive_entry_set_nlink(i32 %14, i32 1)
  %16 = load %struct.isofile*, %struct.isofile** %5, align 8
  %17 = getelementptr inbounds %struct.isofile, %struct.isofile* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @archive_entry_hardlink(i32 %18)
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %51

22:                                               ; preds = %2
  %23 = call %struct.hardlink* @malloc(i32 24)
  store %struct.hardlink* %23, %struct.hardlink** %7, align 8
  %24 = load %struct.hardlink*, %struct.hardlink** %7, align 8
  %25 = icmp eq %struct.hardlink* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %28 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %27, i32 0, i32 0
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = call i32 @archive_set_error(i32* %28, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %31, i32* %3, align 4
  br label %83

32:                                               ; preds = %22
  %33 = load %struct.hardlink*, %struct.hardlink** %7, align 8
  %34 = getelementptr inbounds %struct.hardlink, %struct.hardlink* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.isofile*, %struct.isofile** %5, align 8
  %36 = getelementptr inbounds %struct.isofile, %struct.isofile* %35, i32 0, i32 1
  store %struct.isofile* null, %struct.isofile** %36, align 8
  %37 = load %struct.isofile*, %struct.isofile** %5, align 8
  %38 = load %struct.hardlink*, %struct.hardlink** %7, align 8
  %39 = getelementptr inbounds %struct.hardlink, %struct.hardlink* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store %struct.isofile* %37, %struct.isofile** %40, align 8
  %41 = load %struct.isofile*, %struct.isofile** %5, align 8
  %42 = getelementptr inbounds %struct.isofile, %struct.isofile* %41, i32 0, i32 1
  %43 = load %struct.hardlink*, %struct.hardlink** %7, align 8
  %44 = getelementptr inbounds %struct.hardlink, %struct.hardlink* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store %struct.isofile** %42, %struct.isofile*** %45, align 8
  %46 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %47 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %46, i32 0, i32 0
  %48 = load %struct.hardlink*, %struct.hardlink** %7, align 8
  %49 = bitcast %struct.hardlink* %48 to %struct.archive_rb_node*
  %50 = call i32 @__archive_rb_tree_insert_node(i32* %47, %struct.archive_rb_node* %49)
  br label %81

51:                                               ; preds = %2
  %52 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %53 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %52, i32 0, i32 0
  %54 = load i8*, i8** %8, align 8
  %55 = call i64 @__archive_rb_tree_find_node(i32* %53, i8* %54)
  %56 = inttoptr i64 %55 to %struct.hardlink*
  store %struct.hardlink* %56, %struct.hardlink** %7, align 8
  %57 = load %struct.hardlink*, %struct.hardlink** %7, align 8
  %58 = icmp ne %struct.hardlink* %57, null
  br i1 %58, label %59, label %76

59:                                               ; preds = %51
  %60 = load %struct.isofile*, %struct.isofile** %5, align 8
  %61 = getelementptr inbounds %struct.isofile, %struct.isofile* %60, i32 0, i32 1
  store %struct.isofile* null, %struct.isofile** %61, align 8
  %62 = load %struct.isofile*, %struct.isofile** %5, align 8
  %63 = load %struct.hardlink*, %struct.hardlink** %7, align 8
  %64 = getelementptr inbounds %struct.hardlink, %struct.hardlink* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.isofile**, %struct.isofile*** %65, align 8
  store %struct.isofile* %62, %struct.isofile** %66, align 8
  %67 = load %struct.isofile*, %struct.isofile** %5, align 8
  %68 = getelementptr inbounds %struct.isofile, %struct.isofile* %67, i32 0, i32 1
  %69 = load %struct.hardlink*, %struct.hardlink** %7, align 8
  %70 = getelementptr inbounds %struct.hardlink, %struct.hardlink* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store %struct.isofile** %68, %struct.isofile*** %71, align 8
  %72 = load %struct.hardlink*, %struct.hardlink** %7, align 8
  %73 = getelementptr inbounds %struct.hardlink, %struct.hardlink* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %59, %51
  %77 = load %struct.isofile*, %struct.isofile** %5, align 8
  %78 = getelementptr inbounds %struct.isofile, %struct.isofile* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @archive_entry_unset_size(i32 %79)
  br label %81

81:                                               ; preds = %76, %32
  %82 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %26
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @archive_entry_set_nlink(i32, i32) #1

declare dso_local i8* @archive_entry_hardlink(i32) #1

declare dso_local %struct.hardlink* @malloc(i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @__archive_rb_tree_insert_node(i32*, %struct.archive_rb_node*) #1

declare dso_local i64 @__archive_rb_tree_find_node(i32*, i8*) #1

declare dso_local i32 @archive_entry_unset_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
