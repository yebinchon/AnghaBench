; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_filename.c_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_format_iso9660_filename.c_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@S_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i8*, i8*)* @add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_entry(%struct.archive* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %8, %struct.archive_entry** %7, align 8
  %9 = icmp ne %struct.archive_entry* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %13 = call i32 @archive_entry_set_birthtime(%struct.archive_entry* %12, i32 2, i32 20)
  %14 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %15 = call i32 @archive_entry_set_atime(%struct.archive_entry* %14, i32 3, i32 30)
  %16 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %17 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %16, i32 4, i32 40)
  %18 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %19 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %18, i32 5, i32 50)
  %20 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %20, i8* %21)
  %23 = load i8*, i8** %6, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 @archive_entry_set_symlink(%struct.archive_entry* %26, i8* %27)
  br label %29

29:                                               ; preds = %25, %3
  %30 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %31 = load i32, i32* @S_IFREG, align 4
  %32 = or i32 %31, 365
  %33 = call i32 @archive_entry_set_mode(%struct.archive_entry* %30, i32 %32)
  %34 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %35 = call i32 @archive_entry_set_size(%struct.archive_entry* %34, i32 0)
  %36 = load %struct.archive*, %struct.archive** %4, align 8
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  %38 = load %struct.archive*, %struct.archive** %4, align 8
  %39 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %40 = call i32 @archive_write_header(%struct.archive* %38, %struct.archive_entry* %39)
  %41 = call i32 @assertEqualIntA(%struct.archive* %36, i32 %37, i32 %40)
  %42 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %43 = call i32 @archive_entry_free(%struct.archive_entry* %42)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_birthtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_atime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_symlink(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
