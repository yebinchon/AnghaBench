; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_next_header_empty.c_test_empty_file1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_read_next_header_empty.c_test_empty_file1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"emptyfile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_empty_file1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_empty_file1() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %2, %struct.archive** %1, align 8
  %3 = load i32, i32* @ARCHIVE_OK, align 4
  %4 = load %struct.archive*, %struct.archive** %1, align 8
  %5 = call i32 @archive_read_support_format_raw(%struct.archive* %4)
  %6 = call i32 @assertEqualInt(i32 %3, i32 %5)
  %7 = load %struct.archive*, %struct.archive** %1, align 8
  %8 = call i32 @archive_errno(%struct.archive* %7)
  %9 = call i32 @assertEqualInt(i32 0, i32 %8)
  %10 = load %struct.archive*, %struct.archive** %1, align 8
  %11 = call i32* @archive_error_string(%struct.archive* %10)
  %12 = call i32 @assertEqualString(i32* null, i32* %11)
  %13 = load i32, i32* @ARCHIVE_FATAL, align 4
  %14 = load %struct.archive*, %struct.archive** %1, align 8
  %15 = call i32 @archive_read_open_filename(%struct.archive* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %16 = call i32 @assertEqualInt(i32 %13, i32 %15)
  %17 = load %struct.archive*, %struct.archive** %1, align 8
  %18 = call i32* @archive_error_string(%struct.archive* %17)
  %19 = icmp ne i32* null, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.archive*, %struct.archive** %1, align 8
  %23 = call i32 @archive_read_free(%struct.archive* %22)
  ret void
}

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_read_support_format_raw(%struct.archive*) #1

declare dso_local i32 @archive_errno(%struct.archive*) #1

declare dso_local i32 @assertEqualString(i32*, i32*) #1

declare dso_local i32* @archive_error_string(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
