; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_next_header_empty.c_test_empty_tarfile.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_next_header_empty.c_test_empty_tarfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"empty.tar\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_empty_tarfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_empty_tarfile() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %3, %struct.archive** %1, align 8
  %4 = load i32, i32* @ARCHIVE_OK, align 4
  %5 = load %struct.archive*, %struct.archive** %1, align 8
  %6 = call i32 @archive_read_support_format_tar(%struct.archive* %5)
  %7 = call i32 @assertEqualInt(i32 %4, i32 %6)
  %8 = load %struct.archive*, %struct.archive** %1, align 8
  %9 = call i32 @archive_errno(%struct.archive* %8)
  %10 = call i32 @assertEqualInt(i32 0, i32 %9)
  %11 = load %struct.archive*, %struct.archive** %1, align 8
  %12 = call i32 @archive_error_string(%struct.archive* %11)
  %13 = call i32 @assertEqualString(i32* null, i32 %12)
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  %15 = load %struct.archive*, %struct.archive** %1, align 8
  %16 = call i32 @archive_read_open_filename(%struct.archive* %15, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %17 = call i32 @assertEqualInt(i32 %14, i32 %16)
  %18 = load %struct.archive*, %struct.archive** %1, align 8
  %19 = call i32 @archive_errno(%struct.archive* %18)
  %20 = call i32 @assertEqualInt(i32 0, i32 %19)
  %21 = load %struct.archive*, %struct.archive** %1, align 8
  %22 = call i32 @archive_error_string(%struct.archive* %21)
  %23 = call i32 @assertEqualString(i32* null, i32 %22)
  %24 = load i32, i32* @ARCHIVE_EOF, align 4
  %25 = load %struct.archive*, %struct.archive** %1, align 8
  %26 = call i32 @archive_read_next_header(%struct.archive* %25, %struct.archive_entry** %2)
  %27 = call i32 @assertEqualInt(i32 %24, i32 %26)
  %28 = load %struct.archive*, %struct.archive** %1, align 8
  %29 = call i32 @archive_errno(%struct.archive* %28)
  %30 = call i32 @assertEqualInt(i32 0, i32 %29)
  %31 = load %struct.archive*, %struct.archive** %1, align 8
  %32 = call i32 @archive_error_string(%struct.archive* %31)
  %33 = call i32 @assertEqualString(i32* null, i32 %32)
  %34 = load %struct.archive*, %struct.archive** %1, align 8
  %35 = call i32 @archive_read_free(%struct.archive* %34)
  ret void
}

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_read_support_format_tar(%struct.archive*) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

declare dso_local i32 @assertEqualString(i32*, i32) #1

declare dso_local i32 @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
