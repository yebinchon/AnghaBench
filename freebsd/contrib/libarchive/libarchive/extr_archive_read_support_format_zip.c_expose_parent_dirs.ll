; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_expose_parent_dirs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_expose_parent_dirs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zip = type { i32, i32 }
%struct.archive_string = type { i32 }
%struct.zip_entry = type { i32, %struct.archive_string }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zip*, i8*, i64)* @expose_parent_dirs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expose_parent_dirs(%struct.zip* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.archive_string, align 4
  %8 = alloca %struct.zip_entry*, align 8
  %9 = alloca i8*, align 8
  store %struct.zip* %0, %struct.zip** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = call i32 @archive_string_init(%struct.archive_string* %7)
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @archive_strncpy(%struct.archive_string* %7, i8* %11, i64 %12)
  br label %14

14:                                               ; preds = %32, %3
  %15 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @strrchr(i32 %16, i8 signext 47)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %46

21:                                               ; preds = %14
  %22 = load i8*, i8** %9, align 8
  store i8 0, i8* %22, align 1
  %23 = load %struct.zip*, %struct.zip** %4, align 8
  %24 = getelementptr inbounds %struct.zip, %struct.zip* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @__archive_rb_tree_find_node(i32* %24, i32 %26)
  %28 = inttoptr i64 %27 to %struct.zip_entry*
  store %struct.zip_entry* %28, %struct.zip_entry** %8, align 8
  %29 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8
  %30 = icmp eq %struct.zip_entry* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %46

32:                                               ; preds = %21
  %33 = load %struct.zip*, %struct.zip** %4, align 8
  %34 = getelementptr inbounds %struct.zip, %struct.zip* %33, i32 0, i32 1
  %35 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8
  %36 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %35, i32 0, i32 0
  %37 = call i32 @__archive_rb_tree_remove_node(i32* %34, i32* %36)
  %38 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8
  %39 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %38, i32 0, i32 1
  %40 = call i32 @archive_string_free(%struct.archive_string* %39)
  %41 = load %struct.zip*, %struct.zip** %4, align 8
  %42 = getelementptr inbounds %struct.zip, %struct.zip* %41, i32 0, i32 0
  %43 = load %struct.zip_entry*, %struct.zip_entry** %8, align 8
  %44 = getelementptr inbounds %struct.zip_entry, %struct.zip_entry* %43, i32 0, i32 0
  %45 = call i32 @__archive_rb_tree_insert_node(i32* %42, i32* %44)
  br label %14

46:                                               ; preds = %31, %20
  %47 = call i32 @archive_string_free(%struct.archive_string* %7)
  ret void
}

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i32 @archive_strncpy(%struct.archive_string*, i8*, i64) #1

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i64 @__archive_rb_tree_find_node(i32*, i32) #1

declare dso_local i32 @__archive_rb_tree_remove_node(i32*, i32*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i32 @__archive_rb_tree_insert_node(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
