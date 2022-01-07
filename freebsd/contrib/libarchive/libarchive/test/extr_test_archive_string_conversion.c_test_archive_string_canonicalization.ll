; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_test_archive_string_canonicalization.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_string_conversion.c_test_archive_string_canonicalization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_string_conv = type { i32 }

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"en_US.UTF-8\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Charset name should be UTF-8\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"UTF-16BE\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Charset name should be UTF-16BE\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"UTF16BE\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"utf16be\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"UTF-16LE\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Charset name should be UTF-16LE\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"UTF16LE\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"utf16le\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_archive_string_canonicalization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_archive_string_canonicalization() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_string_conv*, align 8
  %3 = load i32, i32* @LC_ALL, align 4
  %4 = call i32 @setlocale(i32 %3, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %5 = call %struct.archive* (...) @archive_read_new()
  store %struct.archive* %5, %struct.archive** %1, align 8
  %6 = icmp ne %struct.archive* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = load %struct.archive*, %struct.archive** %1, align 8
  %10 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 1)
  store %struct.archive_string_conv* %10, %struct.archive_string_conv** %2, align 8
  %11 = icmp ne %struct.archive_string_conv* null, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @assertA(i32 %12)
  %14 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %15 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %16 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %15)
  %17 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %16)
  %18 = load %struct.archive*, %struct.archive** %1, align 8
  %19 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 1)
  store %struct.archive_string_conv* %19, %struct.archive_string_conv** %2, align 8
  %20 = icmp ne %struct.archive_string_conv* null, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @assertA(i32 %21)
  %23 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %24 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %25 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %24)
  %26 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load %struct.archive*, %struct.archive** %1, align 8
  %28 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 1)
  store %struct.archive_string_conv* %28, %struct.archive_string_conv** %2, align 8
  %29 = icmp ne %struct.archive_string_conv* null, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assertA(i32 %30)
  %32 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %33 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %34 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %33)
  %35 = call i32 @assertEqualString(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.archive*, %struct.archive** %1, align 8
  %37 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %36, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store %struct.archive_string_conv* %37, %struct.archive_string_conv** %2, align 8
  %38 = icmp ne %struct.archive_string_conv* null, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assertA(i32 %39)
  %41 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %42 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %43 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %42)
  %44 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %43)
  %45 = load %struct.archive*, %struct.archive** %1, align 8
  %46 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 1)
  store %struct.archive_string_conv* %46, %struct.archive_string_conv** %2, align 8
  %47 = icmp ne %struct.archive_string_conv* null, %46
  %48 = zext i1 %47 to i32
  %49 = call i32 @assertA(i32 %48)
  %50 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %51 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %52 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %51)
  %53 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %52)
  %54 = load %struct.archive*, %struct.archive** %1, align 8
  %55 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %54, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i32 1)
  store %struct.archive_string_conv* %55, %struct.archive_string_conv** %2, align 8
  %56 = icmp ne %struct.archive_string_conv* null, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assertA(i32 %57)
  %59 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %60 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %61 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %60)
  %62 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %61)
  %63 = load %struct.archive*, %struct.archive** %1, align 8
  %64 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %63, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 1)
  store %struct.archive_string_conv* %64, %struct.archive_string_conv** %2, align 8
  %65 = icmp ne %struct.archive_string_conv* null, %64
  %66 = zext i1 %65 to i32
  %67 = call i32 @assertA(i32 %66)
  %68 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %69 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %70 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %69)
  %71 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %70)
  %72 = load %struct.archive*, %struct.archive** %1, align 8
  %73 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0), i32 1)
  store %struct.archive_string_conv* %73, %struct.archive_string_conv** %2, align 8
  %74 = icmp ne %struct.archive_string_conv* null, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @assertA(i32 %75)
  %77 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %78 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %79 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %78)
  %80 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  %81 = load %struct.archive*, %struct.archive** %1, align 8
  %82 = call %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive* %81, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 1)
  store %struct.archive_string_conv* %82, %struct.archive_string_conv** %2, align 8
  %83 = icmp ne %struct.archive_string_conv* null, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @assertA(i32 %84)
  %86 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %87 = load %struct.archive_string_conv*, %struct.archive_string_conv** %2, align 8
  %88 = call i32 @archive_string_conversion_charset_name(%struct.archive_string_conv* %87)
  %89 = call i32 @assertEqualString(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %88)
  %90 = load i32, i32* @ARCHIVE_OK, align 4
  %91 = load %struct.archive*, %struct.archive** %1, align 8
  %92 = call i32 @archive_read_free(%struct.archive* %91)
  %93 = call i32 @assertEqualInt(i32 %90, i32 %92)
  ret void
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_read_new(...) #1

declare dso_local i32 @assertA(i32) #1

declare dso_local %struct.archive_string_conv* @archive_string_conversion_to_charset(%struct.archive*, i8*, i32) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualString(i8*, i32) #1

declare dso_local i32 @archive_string_conversion_charset_name(%struct.archive_string_conv*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
