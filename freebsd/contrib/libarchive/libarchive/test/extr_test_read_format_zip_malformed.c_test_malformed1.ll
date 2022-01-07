; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_malformed.c_test_malformed1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_malformed.c_test_malformed1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"test_read_format_zip_malformed1.zip\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_malformed1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_malformed1() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %6 = load i8*, i8** %1, align 8
  %7 = call i32 @extract_reference_file(i8* %6)
  %8 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %8, %struct.archive** %2, align 8
  %9 = icmp ne %struct.archive* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load %struct.archive*, %struct.archive** %2, align 8
  %13 = load i32, i32* @ARCHIVE_OK, align 4
  %14 = load %struct.archive*, %struct.archive** %2, align 8
  %15 = call i32 @archive_read_support_filter_all(%struct.archive* %14)
  %16 = call i32 @assertEqualIntA(%struct.archive* %12, i32 %13, i32 %15)
  %17 = load %struct.archive*, %struct.archive** %2, align 8
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = load %struct.archive*, %struct.archive** %2, align 8
  %20 = call i32 @archive_read_support_format_all(%struct.archive* %19)
  %21 = call i32 @assertEqualIntA(%struct.archive* %17, i32 %18, i32 %20)
  %22 = load %struct.archive*, %struct.archive** %2, align 8
  %23 = load i32, i32* @ARCHIVE_OK, align 4
  %24 = load %struct.archive*, %struct.archive** %2, align 8
  %25 = load i8*, i8** %1, align 8
  %26 = call i32 @archive_read_open_filename(%struct.archive* %24, i8* %25, i32 10240)
  %27 = call i32 @assertEqualIntA(%struct.archive* %22, i32 %23, i32 %26)
  %28 = load %struct.archive*, %struct.archive** %2, align 8
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = load %struct.archive*, %struct.archive** %2, align 8
  %31 = call i32 @archive_read_next_header(%struct.archive* %30, %struct.archive_entry** %3)
  %32 = call i32 @assertEqualIntA(%struct.archive* %28, i32 %29, i32 %31)
  %33 = load %struct.archive*, %struct.archive** %2, align 8
  %34 = load i32, i32* @ARCHIVE_OK, align 4
  %35 = load %struct.archive*, %struct.archive** %2, align 8
  %36 = call i32 @archive_read_free(%struct.archive* %35)
  %37 = call i32 @assertEqualIntA(%struct.archive* %33, i32 %34, i32 %36)
  %38 = load i8*, i8** %1, align 8
  %39 = call i8* @slurpfile(i64* %5, i8* %38)
  store i8* %39, i8** %4, align 8
  %40 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %40, %struct.archive** %2, align 8
  %41 = icmp ne %struct.archive* %40, null
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  %44 = load %struct.archive*, %struct.archive** %2, align 8
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  %46 = load %struct.archive*, %struct.archive** %2, align 8
  %47 = call i32 @archive_read_support_filter_all(%struct.archive* %46)
  %48 = call i32 @assertEqualIntA(%struct.archive* %44, i32 %45, i32 %47)
  %49 = load %struct.archive*, %struct.archive** %2, align 8
  %50 = load i32, i32* @ARCHIVE_OK, align 4
  %51 = load %struct.archive*, %struct.archive** %2, align 8
  %52 = call i32 @archive_read_support_format_all(%struct.archive* %51)
  %53 = call i32 @assertEqualIntA(%struct.archive* %49, i32 %50, i32 %52)
  %54 = load %struct.archive*, %struct.archive** %2, align 8
  %55 = load i32, i32* @ARCHIVE_OK, align 4
  %56 = load %struct.archive*, %struct.archive** %2, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @read_open_memory(%struct.archive* %56, i8* %57, i64 %58, i32 31)
  %60 = call i32 @assertEqualIntA(%struct.archive* %54, i32 %55, i32 %59)
  %61 = load %struct.archive*, %struct.archive** %2, align 8
  %62 = load i32, i32* @ARCHIVE_OK, align 4
  %63 = load %struct.archive*, %struct.archive** %2, align 8
  %64 = call i32 @archive_read_next_header(%struct.archive* %63, %struct.archive_entry** %3)
  %65 = call i32 @assertEqualIntA(%struct.archive* %61, i32 %62, i32 %64)
  %66 = load %struct.archive*, %struct.archive** %2, align 8
  %67 = load i32, i32* @ARCHIVE_OK, align 4
  %68 = load %struct.archive*, %struct.archive** %2, align 8
  %69 = call i32 @archive_read_free(%struct.archive* %68)
  %70 = call i32 @assertEqualIntA(%struct.archive* %66, i32 %67, i32 %69)
  %71 = load i8*, i8** %4, align 8
  %72 = call i32 @free(i8* %71)
  ret void
}

declare dso_local i32 @extract_reference_file(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_support_filter_all(%struct.archive*) #1

declare dso_local i32 @archive_read_support_format_all(%struct.archive*) #1

declare dso_local i32 @archive_read_open_filename(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

declare dso_local i8* @slurpfile(i64*, i8*) #1

declare dso_local i32 @read_open_memory(%struct.archive*, i8*, i64, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
