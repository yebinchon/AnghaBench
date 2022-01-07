; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_next_header_empty.c_test_empty_file2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_next_header_empty.c_test_empty_file2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"emptyfile\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_empty_file2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_empty_file2() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %3, %struct.archive** %1, align 8
  %4 = load i32, i32* @ARCHIVE_OK, align 4
  %5 = load %struct.archive*, %struct.archive** %1, align 8
  %6 = call i32 @archive_read_support_format_raw(%struct.archive* %5)
  %7 = call i32 @assertEqualInt(i32 %4, i32 %6)
  %8 = load i32, i32* @ARCHIVE_OK, align 4
  %9 = load %struct.archive*, %struct.archive** %1, align 8
  %10 = call i32 @archive_read_support_format_empty(%struct.archive* %9)
  %11 = call i32 @assertEqualInt(i32 %8, i32 %10)
  %12 = load %struct.archive*, %struct.archive** %1, align 8
  %13 = call i32 @archive_errno(%struct.archive* %12)
  %14 = call i32 @assertEqualInt(i32 0, i32 %13)
  %15 = load %struct.archive*, %struct.archive** %1, align 8
  %16 = call i32 @archive_error_string(%struct.archive* %15)
  %17 = call i32 @assertEqualString(i32* null, i32 %16)
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = load %struct.archive*, %struct.archive** %1, align 8
  %20 = call i32 @archive_read_open_filename(%struct.archive* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %21 = call i32 @assertEqualInt(i32 %18, i32 %20)
  %22 = load %struct.archive*, %struct.archive** %1, align 8
  %23 = call i32 @archive_errno(%struct.archive* %22)
  %24 = call i32 @assertEqualInt(i32 0, i32 %23)
  %25 = load %struct.archive*, %struct.archive** %1, align 8
  %26 = call i32 @archive_error_string(%struct.archive* %25)
  %27 = call i32 @assertEqualString(i32* null, i32 %26)
  %28 = load i32, i32* @ARCHIVE_EOF, align 4
  %29 = load %struct.archive*, %struct.archive** %1, align 8
  %30 = call i32 @archive_read_next_header(%struct.archive* %29, %struct.archive_entry** %2)
  %31 = call i32 @assertEqualInt(i32 %28, i32 %30)
  %32 = load %struct.archive*, %struct.archive** %1, align 8
  %33 = call i32 @archive_errno(%struct.archive* %32)
  %34 = call i32 @assertEqualInt(i32 0, i32 %33)
  %35 = load %struct.archive*, %struct.archive** %1, align 8
  %36 = call i32 @archive_error_string(%struct.archive* %35)
  %37 = call i32 @assertEqualString(i32* null, i32 %36)
  %38 = load %struct.archive*, %struct.archive** %1, align 8
  %39 = call i32 @archive_read_free(%struct.archive* %38)
  ret void
}

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_read_support_format_raw(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_empty(%struct.archive*) #1

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
