; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_mtree.c_test_read_format_mtree2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_mtree.c_test_read_format_mtree2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@test_read_format_mtree2.archive = internal global [29 x i8] c"#mtree\0Ad type=dir content=.\0A\00", align 16
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mtree:checkfs\00", align 1
@ARCHIVE_FORMAT_MTREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@AE_IFDIR = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_read_format_mtree2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_read_format_mtree2() #0 {
  %1 = alloca %struct.archive_entry*, align 8
  %2 = alloca %struct.archive*, align 8
  %3 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %3, %struct.archive** %2, align 8
  %4 = icmp ne %struct.archive* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.archive*, %struct.archive** %2, align 8
  %8 = load i32, i32* @ARCHIVE_OK, align 4
  %9 = load %struct.archive*, %struct.archive** %2, align 8
  %10 = call i32 @archive_read_support_filter_all(%struct.archive* %9)
  %11 = call i32 @assertEqualIntA(%struct.archive* %7, i32 %8, i32 %10)
  %12 = load %struct.archive*, %struct.archive** %2, align 8
  %13 = load i32, i32* @ARCHIVE_OK, align 4
  %14 = load %struct.archive*, %struct.archive** %2, align 8
  %15 = call i32 @archive_read_support_format_all(%struct.archive* %14)
  %16 = call i32 @assertEqualIntA(%struct.archive* %12, i32 %13, i32 %15)
  %17 = load %struct.archive*, %struct.archive** %2, align 8
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = load %struct.archive*, %struct.archive** %2, align 8
  %20 = call i32 @archive_read_set_options(%struct.archive* %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @assertEqualIntA(%struct.archive* %17, i32 %18, i32 %20)
  %22 = load %struct.archive*, %struct.archive** %2, align 8
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = load %struct.archive*, %struct.archive** %2, align 8
  %25 = call i32 @archive_read_open_memory(%struct.archive* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @test_read_format_mtree2.archive, i64 0, i64 0), i32 29)
  %26 = call i32 @assertEqualIntA(%struct.archive* %22, i32 %23, i32 %25)
  %27 = load %struct.archive*, %struct.archive** %2, align 8
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  %29 = load %struct.archive*, %struct.archive** %2, align 8
  %30 = call i32 @archive_read_next_header(%struct.archive* %29, %struct.archive_entry** %1)
  %31 = call i32 @assertEqualIntA(%struct.archive* %27, i32 %28, i32 %30)
  %32 = load %struct.archive*, %struct.archive** %2, align 8
  %33 = call i32 @archive_format(%struct.archive* %32)
  %34 = load i32, i32* @ARCHIVE_FORMAT_MTREE, align 4
  %35 = call i32 @assertEqualInt(i32 %33, i32 %34)
  %36 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %37 = call i32 @archive_entry_pathname(%struct.archive_entry* %36)
  %38 = call i32 @assertEqualString(i32 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %40 = call i32 @archive_entry_filetype(%struct.archive_entry* %39)
  %41 = load i32, i32* @AE_IFDIR, align 4
  %42 = call i32 @assertEqualInt(i32 %40, i32 %41)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %44 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %43)
  %45 = call i32 @assertEqualInt(i32 %44, i32 0)
  %46 = load %struct.archive*, %struct.archive** %2, align 8
  %47 = load %struct.archive*, %struct.archive** %2, align 8
  %48 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %47)
  %49 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %50 = call i32 @assertEqualIntA(%struct.archive* %46, i32 %48, i32 %49)
  %51 = load %struct.archive*, %struct.archive** %2, align 8
  %52 = load i32, i32* @ARCHIVE_EOF, align 4
  %53 = load %struct.archive*, %struct.archive** %2, align 8
  %54 = call i32 @archive_read_next_header(%struct.archive* %53, %struct.archive_entry** %1)
  %55 = call i32 @assertEqualIntA(%struct.archive* %51, i32 %52, i32 %54)
  %56 = load %struct.archive*, %struct.archive** %2, align 8
  %57 = call i32 @archive_file_count(%struct.archive* %56)
  %58 = call i32 @assertEqualInt(i32 1, i32 %57)
  %59 = load i32, i32* @ARCHIVE_OK, align 4
  %60 = load %struct.archive*, %struct.archive** %2, align 8
  %61 = call i32 @archive_read_close(%struct.archive* %60)
  %62 = call i32 @assertEqualInt(i32 %59, i32 %61)
  %63 = load i32, i32* @ARCHIVE_OK, align 4
  %64 = load %struct.archive*, %struct.archive** %2, align 8
  %65 = call i32 @archive_read_free(%struct.archive* %64)
  %66 = call i32 @assertEqualInt(i32 %63, i32 %65)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_set_options(%struct.archive*, i8*) #1

declare dso_local i32 @archive_read_open_memory(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @assertEqualString(i32, i8*) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_filetype(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_file_count(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
