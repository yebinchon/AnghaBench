; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar.c_verifyEmpty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_tar.c_verifyEmpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@archiveEmpty = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FILTER_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"512 zero bytes should be recognized as a tar archive.\00", align 1
@ARCHIVE_FORMAT_TAR = common dso_local global i32 0, align 4
@ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @verifyEmpty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verifyEmpty() #0 {
  %1 = alloca %struct.archive_entry*, align 8
  %2 = alloca %struct.archive*, align 8
  %3 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %3, %struct.archive** %2, align 8
  %4 = icmp ne %struct.archive* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.archive*, %struct.archive** %2, align 8
  %8 = call i64 @archive_read_support_filter_all(%struct.archive* %7)
  %9 = icmp eq i64 0, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assertA(i32 %10)
  %12 = load %struct.archive*, %struct.archive** %2, align 8
  %13 = call i64 @archive_read_support_format_all(%struct.archive* %12)
  %14 = icmp eq i64 0, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @assertA(i32 %15)
  %17 = load %struct.archive*, %struct.archive** %2, align 8
  %18 = load i32, i32* @archiveEmpty, align 4
  %19 = call i64 @archive_read_open_memory(%struct.archive* %17, i32 %18, i32 512)
  %20 = icmp eq i64 0, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assertA(i32 %21)
  %23 = load %struct.archive*, %struct.archive** %2, align 8
  %24 = load i32, i32* @ARCHIVE_EOF, align 4
  %25 = load %struct.archive*, %struct.archive** %2, align 8
  %26 = call i32 @archive_read_next_header(%struct.archive* %25, %struct.archive_entry** %1)
  %27 = call i32 @assertEqualIntA(%struct.archive* %23, i32 %24, i32 %26)
  %28 = load %struct.archive*, %struct.archive** %2, align 8
  %29 = call i32 @archive_filter_code(%struct.archive* %28, i32 0)
  %30 = load i32, i32* @ARCHIVE_FILTER_NONE, align 4
  %31 = call i32 @assertEqualInt(i32 %29, i32 %30)
  %32 = load %struct.archive*, %struct.archive** %2, align 8
  %33 = call i32 @archive_filter_name(%struct.archive* %32, i32 0)
  %34 = call i32 @assertEqualString(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %35 = call i32 @failure(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.archive*, %struct.archive** %2, align 8
  %37 = call i32 @archive_format(%struct.archive* %36)
  %38 = load i32, i32* @ARCHIVE_FORMAT_TAR, align 4
  %39 = call i32 @assertEqualInt(i32 %37, i32 %38)
  %40 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %41 = call i32 @archive_entry_is_encrypted(%struct.archive_entry* %40)
  %42 = call i32 @assertEqualInt(i32 %41, i32 0)
  %43 = load %struct.archive*, %struct.archive** %2, align 8
  %44 = load %struct.archive*, %struct.archive** %2, align 8
  %45 = call i32 @archive_read_has_encrypted_entries(%struct.archive* %44)
  %46 = load i32, i32* @ARCHIVE_READ_FORMAT_ENCRYPTION_UNSUPPORTED, align 4
  %47 = call i32 @assertEqualIntA(%struct.archive* %43, i32 %45, i32 %46)
  %48 = load %struct.archive*, %struct.archive** %2, align 8
  %49 = load i32, i32* @ARCHIVE_OK, align 4
  %50 = load %struct.archive*, %struct.archive** %2, align 8
  %51 = call i32 @archive_read_close(%struct.archive* %50)
  %52 = call i32 @assertEqualIntA(%struct.archive* %48, i32 %49, i32 %51)
  %53 = load i32, i32* @ARCHIVE_OK, align 4
  %54 = load %struct.archive*, %struct.archive** %2, align 8
  %55 = call i32 @archive_read_free(%struct.archive* %54)
  %56 = call i32 @assertEqualInt(i32 %53, i32 %55)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local i64 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i64 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i64 @archive_read_open_memory(%struct.archive*, i32, i32) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_filter_code(%struct.archive*, i32) #1

declare dso_local i32 @assertEqualString(i32, i8*) #1

declare dso_local i32 @archive_filter_name(%struct.archive*, i32) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @archive_format(%struct.archive*) #1

declare dso_local i32 @archive_entry_is_encrypted(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_has_encrypted_entries(%struct.archive*) #1

declare dso_local i32 @archive_read_close(%struct.archive*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
