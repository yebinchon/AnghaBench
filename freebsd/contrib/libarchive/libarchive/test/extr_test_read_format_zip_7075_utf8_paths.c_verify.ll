; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_7075_utf8_paths.c_verify.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_format_zip_7075_utf8_paths.c_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"File 1.txt\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"File 2 - \C3\B6.txt\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"File 3 - \C3\A4.txt\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"File 4 - xx.txt\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*)* @verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i8*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %5 = load %struct.archive*, %struct.archive** %2, align 8
  %6 = load i32, i32* @ARCHIVE_OK, align 4
  %7 = load %struct.archive*, %struct.archive** %2, align 8
  %8 = call i32 @archive_read_next_header(%struct.archive* %7, %struct.archive_entry** %3)
  %9 = call i32 @assertEqualIntA(%struct.archive* %5, i32 %6, i32 %8)
  %10 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %11 = call i8* @archive_entry_pathname_utf8(%struct.archive_entry* %10)
  store i8* %11, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load i8*, i8** %4, align 8
  %16 = call i32 @assertEqualUTF8String(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.archive*, %struct.archive** %2, align 8
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = load %struct.archive*, %struct.archive** %2, align 8
  %20 = call i32 @archive_read_next_header(%struct.archive* %19, %struct.archive_entry** %3)
  %21 = call i32 @assertEqualIntA(%struct.archive* %17, i32 %18, i32 %20)
  %22 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %23 = call i8* @archive_entry_pathname_utf8(%struct.archive_entry* %22)
  store i8* %23, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @assertEqualUTF8String(i8* %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.archive*, %struct.archive** %2, align 8
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  %31 = load %struct.archive*, %struct.archive** %2, align 8
  %32 = call i32 @archive_read_next_header(%struct.archive* %31, %struct.archive_entry** %3)
  %33 = call i32 @assertEqualIntA(%struct.archive* %29, i32 %30, i32 %32)
  %34 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %35 = call i8* @archive_entry_pathname_utf8(%struct.archive_entry* %34)
  store i8* %35, i8** %4, align 8
  %36 = icmp ne i8* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @assert(i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @assertEqualUTF8String(i8* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.archive*, %struct.archive** %2, align 8
  %42 = load i32, i32* @ARCHIVE_OK, align 4
  %43 = load %struct.archive*, %struct.archive** %2, align 8
  %44 = call i32 @archive_read_next_header(%struct.archive* %43, %struct.archive_entry** %3)
  %45 = call i32 @assertEqualIntA(%struct.archive* %41, i32 %42, i32 %44)
  %46 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %47 = call i8* @archive_entry_pathname_utf8(%struct.archive_entry* %46)
  store i8* %47, i8** %4, align 8
  %48 = icmp ne i8* %47, null
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  %51 = load i8*, i8** %4, align 8
  %52 = call i32 @assertEqualUTF8String(i8* %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.archive*, %struct.archive** %2, align 8
  %54 = load i32, i32* @ARCHIVE_EOF, align 4
  %55 = load %struct.archive*, %struct.archive** %2, align 8
  %56 = call i32 @archive_read_next_header(%struct.archive* %55, %struct.archive_entry** %3)
  %57 = call i32 @assertEqualIntA(%struct.archive* %53, i32 %54, i32 %56)
  ret void
}

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_next_header(%struct.archive*, %struct.archive_entry**) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @archive_entry_pathname_utf8(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualUTF8String(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
