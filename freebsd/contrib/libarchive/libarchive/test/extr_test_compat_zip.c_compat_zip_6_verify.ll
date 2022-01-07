; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_zip.c_compat_zip_6_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_compat_zip.c_compat_zip_6_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"New Folder/New Folder/\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"New Folder/New Folder/New Text Document.txt\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*)* @compat_zip_6_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compat_zip_6_verify(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %4 = load %struct.archive*, %struct.archive** %2, align 8
  %5 = load i32, i32* @ARCHIVE_OK, align 4
  %6 = load %struct.archive*, %struct.archive** %2, align 8
  %7 = call i32 @archive_read_next_header(%struct.archive* %6, %struct.archive_entry** %3)
  %8 = call i32 @assertEqualIntA(%struct.archive* %4, i32 %5, i32 %7)
  %9 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %10 = call i32 @archive_entry_pathname(%struct.archive_entry* %9)
  %11 = call i32 @assertEqualString(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @AE_IFDIR, align 4
  %13 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %14 = call i32 @archive_entry_filetype(%struct.archive_entry* %13)
  %15 = call i32 @assertEqualInt(i32 %12, i32 %14)
  %16 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %17 = call i32 @archive_entry_size(%struct.archive_entry* %16)
  %18 = call i32 @assertEqualInt(i32 0, i32 %17)
  %19 = load %struct.archive*, %struct.archive** %2, align 8
  %20 = load i32, i32* @ARCHIVE_OK, align 4
  %21 = load %struct.archive*, %struct.archive** %2, align 8
  %22 = call i32 @archive_read_next_header(%struct.archive* %21, %struct.archive_entry** %3)
  %23 = call i32 @assertEqualIntA(%struct.archive* %19, i32 %20, i32 %22)
  %24 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %25 = call i32 @archive_entry_pathname(%struct.archive_entry* %24)
  %26 = call i32 @assertEqualString(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @AE_IFREG, align 4
  %28 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %29 = call i32 @archive_entry_filetype(%struct.archive_entry* %28)
  %30 = call i32 @assertEqualInt(i32 %27, i32 %29)
  %31 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %32 = call i32 @archive_entry_size(%struct.archive_entry* %31)
  %33 = call i32 @assertEqualInt(i32 11, i32 %32)
  %34 = load %struct.archive*, %struct.archive** %2, align 8
  %35 = load i32, i32* @ARCHIVE_EOF, align 4
  %36 = load %struct.archive*, %struct.archive** %2, align 8
  %37 = call i32 @archive_read_next_header(%struct.archive* %36, %struct.archive_entry** %3)
  %38 = call i32 @assertEqualIntA(%struct.archive* %34, i32 %35, i32 %37)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_size(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
