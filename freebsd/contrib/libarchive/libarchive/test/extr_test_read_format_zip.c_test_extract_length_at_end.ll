; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip.c_test_extract_length_at_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip.c_test_extract_length_at_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"test_read_format_zip_length_at_end.zip\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_extract_length_at_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_extract_length_at_end() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.archive*, align 8
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  %6 = call i32 @extract_reference_file(i8* %5)
  %7 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %7, %struct.archive** %4, align 8
  %8 = icmp ne %struct.archive* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.archive*, %struct.archive** %4, align 8
  %12 = load i32, i32* @ARCHIVE_OK, align 4
  %13 = load %struct.archive*, %struct.archive** %4, align 8
  %14 = call i32 @archive_read_support_filter_all(%struct.archive* %13)
  %15 = call i32 @assertEqualIntA(%struct.archive* %11, i32 %12, i32 %14)
  %16 = load %struct.archive*, %struct.archive** %4, align 8
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  %18 = load %struct.archive*, %struct.archive** %4, align 8
  %19 = call i32 @archive_read_support_format_all(%struct.archive* %18)
  %20 = call i32 @assertEqualIntA(%struct.archive* %16, i32 %17, i32 %19)
  %21 = load %struct.archive*, %struct.archive** %4, align 8
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  %23 = load %struct.archive*, %struct.archive** %4, align 8
  %24 = load i8*, i8** %1, align 8
  %25 = call i32 @archive_read_open_filename(%struct.archive* %23, i8* %24, i32 10240)
  %26 = call i32 @assertEqualIntA(%struct.archive* %21, i32 %22, i32 %25)
  %27 = load %struct.archive*, %struct.archive** %4, align 8
  %28 = call i32 @verify_extract_length_at_end(%struct.archive* %27, i32 1)
  %29 = load i8*, i8** %1, align 8
  %30 = call i8* @slurpfile(i64* %3, i8* %29)
  store i8* %30, i8** %2, align 8
  %31 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %31, %struct.archive** %4, align 8
  %32 = icmp ne %struct.archive* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @assert(i32 %33)
  %35 = load %struct.archive*, %struct.archive** %4, align 8
  %36 = load i32, i32* @ARCHIVE_OK, align 4
  %37 = load %struct.archive*, %struct.archive** %4, align 8
  %38 = call i32 @archive_read_support_filter_all(%struct.archive* %37)
  %39 = call i32 @assertEqualIntA(%struct.archive* %35, i32 %36, i32 %38)
  %40 = load %struct.archive*, %struct.archive** %4, align 8
  %41 = load i32, i32* @ARCHIVE_OK, align 4
  %42 = load %struct.archive*, %struct.archive** %4, align 8
  %43 = call i32 @archive_read_support_format_all(%struct.archive* %42)
  %44 = call i32 @assertEqualIntA(%struct.archive* %40, i32 %41, i32 %43)
  %45 = load %struct.archive*, %struct.archive** %4, align 8
  %46 = load i32, i32* @ARCHIVE_OK, align 4
  %47 = load %struct.archive*, %struct.archive** %4, align 8
  %48 = load i8*, i8** %2, align 8
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @read_open_memory(%struct.archive* %47, i8* %48, i64 %49, i32 108)
  %51 = call i32 @assertEqualIntA(%struct.archive* %45, i32 %46, i32 %50)
  %52 = load %struct.archive*, %struct.archive** %4, align 8
  %53 = call i32 @verify_extract_length_at_end(%struct.archive* %52, i32 0)
  %54 = load i8*, i8** %2, align 8
  %55 = call i32 @free(i8* %54)
  ret void
}

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @verify_extract_length_at_end(%struct.archive*, i32) #1

declare dso_local i8* @slurpfile(i64*, i8*) #1

declare dso_local i32 @read_open_memory(%struct.archive*, i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
